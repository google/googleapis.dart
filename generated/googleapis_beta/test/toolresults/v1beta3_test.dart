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

import 'package:googleapis_beta/toolresults/v1beta3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterANR = 0;
api.ANR buildANR() {
  final o = api.ANR();
  buildCounterANR++;
  if (buildCounterANR < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterANR--;
  return o;
}

void checkANR(api.ANR o) {
  buildCounterANR++;
  if (buildCounterANR < 3) {
    checkStackTrace(o.stackTrace!);
  }
  buildCounterANR--;
}

core.int buildCounterAndroidAppInfo = 0;
api.AndroidAppInfo buildAndroidAppInfo() {
  final o = api.AndroidAppInfo();
  buildCounterAndroidAppInfo++;
  if (buildCounterAndroidAppInfo < 3) {
    o.name = 'foo';
    o.packageName = 'foo';
    o.versionCode = 'foo';
    o.versionName = 'foo';
  }
  buildCounterAndroidAppInfo--;
  return o;
}

void checkAndroidAppInfo(api.AndroidAppInfo o) {
  buildCounterAndroidAppInfo++;
  if (buildCounterAndroidAppInfo < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAndroidAppInfo--;
}

core.List<core.String> buildUnnamed8075() => [
      'foo',
      'foo',
    ];

void checkUnnamed8075(core.List<core.String> o) {
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

core.int buildCounterAndroidInstrumentationTest = 0;
api.AndroidInstrumentationTest buildAndroidInstrumentationTest() {
  final o = api.AndroidInstrumentationTest();
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    o.testPackageId = 'foo';
    o.testRunnerClass = 'foo';
    o.testTargets = buildUnnamed8075();
    o.useOrchestrator = true;
  }
  buildCounterAndroidInstrumentationTest--;
  return o;
}

void checkAndroidInstrumentationTest(api.AndroidInstrumentationTest o) {
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    unittest.expect(
      o.testPackageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testRunnerClass!,
      unittest.equals('foo'),
    );
    checkUnnamed8075(o.testTargets!);
    unittest.expect(o.useOrchestrator!, unittest.isTrue);
  }
  buildCounterAndroidInstrumentationTest--;
}

core.int buildCounterAndroidRoboTest = 0;
api.AndroidRoboTest buildAndroidRoboTest() {
  final o = api.AndroidRoboTest();
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    o.appInitialActivity = 'foo';
    o.bootstrapPackageId = 'foo';
    o.bootstrapRunnerClass = 'foo';
    o.maxDepth = 42;
    o.maxSteps = 42;
  }
  buildCounterAndroidRoboTest--;
  return o;
}

void checkAndroidRoboTest(api.AndroidRoboTest o) {
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    unittest.expect(
      o.appInitialActivity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootstrapPackageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootstrapRunnerClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDepth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxSteps!,
      unittest.equals(42),
    );
  }
  buildCounterAndroidRoboTest--;
}

core.int buildCounterAndroidTest = 0;
api.AndroidTest buildAndroidTest() {
  final o = api.AndroidTest();
  buildCounterAndroidTest++;
  if (buildCounterAndroidTest < 3) {
    o.androidAppInfo = buildAndroidAppInfo();
    o.androidInstrumentationTest = buildAndroidInstrumentationTest();
    o.androidRoboTest = buildAndroidRoboTest();
    o.androidTestLoop = buildAndroidTestLoop();
    o.testTimeout = buildDuration();
  }
  buildCounterAndroidTest--;
  return o;
}

void checkAndroidTest(api.AndroidTest o) {
  buildCounterAndroidTest++;
  if (buildCounterAndroidTest < 3) {
    checkAndroidAppInfo(o.androidAppInfo!);
    checkAndroidInstrumentationTest(o.androidInstrumentationTest!);
    checkAndroidRoboTest(o.androidRoboTest!);
    checkAndroidTestLoop(o.androidTestLoop!);
    checkDuration(o.testTimeout!);
  }
  buildCounterAndroidTest--;
}

core.int buildCounterAndroidTestLoop = 0;
api.AndroidTestLoop buildAndroidTestLoop() {
  final o = api.AndroidTestLoop();
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {}
  buildCounterAndroidTestLoop--;
  return o;
}

void checkAndroidTestLoop(api.AndroidTestLoop o) {
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {}
  buildCounterAndroidTestLoop--;
}

core.int buildCounterAny = 0;
api.Any buildAny() {
  final o = api.Any();
  buildCounterAny++;
  if (buildCounterAny < 3) {
    o.typeUrl = 'foo';
    o.value = 'foo';
  }
  buildCounterAny--;
  return o;
}

void checkAny(api.Any o) {
  buildCounterAny++;
  if (buildCounterAny < 3) {
    unittest.expect(
      o.typeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterAny--;
}

core.int buildCounterAppStartTime = 0;
api.AppStartTime buildAppStartTime() {
  final o = api.AppStartTime();
  buildCounterAppStartTime++;
  if (buildCounterAppStartTime < 3) {
    o.fullyDrawnTime = buildDuration();
    o.initialDisplayTime = buildDuration();
  }
  buildCounterAppStartTime--;
  return o;
}

void checkAppStartTime(api.AppStartTime o) {
  buildCounterAppStartTime++;
  if (buildCounterAppStartTime < 3) {
    checkDuration(o.fullyDrawnTime!);
    checkDuration(o.initialDisplayTime!);
  }
  buildCounterAppStartTime--;
}

core.int buildCounterAvailableDeepLinks = 0;
api.AvailableDeepLinks buildAvailableDeepLinks() {
  final o = api.AvailableDeepLinks();
  buildCounterAvailableDeepLinks++;
  if (buildCounterAvailableDeepLinks < 3) {}
  buildCounterAvailableDeepLinks--;
  return o;
}

void checkAvailableDeepLinks(api.AvailableDeepLinks o) {
  buildCounterAvailableDeepLinks++;
  if (buildCounterAvailableDeepLinks < 3) {}
  buildCounterAvailableDeepLinks--;
}

core.int buildCounterBasicPerfSampleSeries = 0;
api.BasicPerfSampleSeries buildBasicPerfSampleSeries() {
  final o = api.BasicPerfSampleSeries();
  buildCounterBasicPerfSampleSeries++;
  if (buildCounterBasicPerfSampleSeries < 3) {
    o.perfMetricType = 'foo';
    o.perfUnit = 'foo';
    o.sampleSeriesLabel = 'foo';
  }
  buildCounterBasicPerfSampleSeries--;
  return o;
}

void checkBasicPerfSampleSeries(api.BasicPerfSampleSeries o) {
  buildCounterBasicPerfSampleSeries++;
  if (buildCounterBasicPerfSampleSeries < 3) {
    unittest.expect(
      o.perfMetricType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.perfUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleSeriesLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterBasicPerfSampleSeries--;
}

core.List<api.PerfSample> buildUnnamed8076() => [
      buildPerfSample(),
      buildPerfSample(),
    ];

void checkUnnamed8076(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterBatchCreatePerfSamplesRequest = 0;
api.BatchCreatePerfSamplesRequest buildBatchCreatePerfSamplesRequest() {
  final o = api.BatchCreatePerfSamplesRequest();
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    o.perfSamples = buildUnnamed8076();
  }
  buildCounterBatchCreatePerfSamplesRequest--;
  return o;
}

void checkBatchCreatePerfSamplesRequest(api.BatchCreatePerfSamplesRequest o) {
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    checkUnnamed8076(o.perfSamples!);
  }
  buildCounterBatchCreatePerfSamplesRequest--;
}

core.List<api.PerfSample> buildUnnamed8077() => [
      buildPerfSample(),
      buildPerfSample(),
    ];

void checkUnnamed8077(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterBatchCreatePerfSamplesResponse = 0;
api.BatchCreatePerfSamplesResponse buildBatchCreatePerfSamplesResponse() {
  final o = api.BatchCreatePerfSamplesResponse();
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    o.perfSamples = buildUnnamed8077();
  }
  buildCounterBatchCreatePerfSamplesResponse--;
  return o;
}

void checkBatchCreatePerfSamplesResponse(api.BatchCreatePerfSamplesResponse o) {
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    checkUnnamed8077(o.perfSamples!);
  }
  buildCounterBatchCreatePerfSamplesResponse--;
}

core.int buildCounterBlankScreen = 0;
api.BlankScreen buildBlankScreen() {
  final o = api.BlankScreen();
  buildCounterBlankScreen++;
  if (buildCounterBlankScreen < 3) {
    o.screenId = 'foo';
  }
  buildCounterBlankScreen--;
  return o;
}

void checkBlankScreen(api.BlankScreen o) {
  buildCounterBlankScreen++;
  if (buildCounterBlankScreen < 3) {
    unittest.expect(
      o.screenId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlankScreen--;
}

core.int buildCounterCPUInfo = 0;
api.CPUInfo buildCPUInfo() {
  final o = api.CPUInfo();
  buildCounterCPUInfo++;
  if (buildCounterCPUInfo < 3) {
    o.cpuProcessor = 'foo';
    o.cpuSpeedInGhz = 42.0;
    o.numberOfCores = 42;
  }
  buildCounterCPUInfo--;
  return o;
}

void checkCPUInfo(api.CPUInfo o) {
  buildCounterCPUInfo++;
  if (buildCounterCPUInfo < 3) {
    unittest.expect(
      o.cpuProcessor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuSpeedInGhz!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.numberOfCores!,
      unittest.equals(42),
    );
  }
  buildCounterCPUInfo--;
}

core.int buildCounterCrashDialogError = 0;
api.CrashDialogError buildCrashDialogError() {
  final o = api.CrashDialogError();
  buildCounterCrashDialogError++;
  if (buildCounterCrashDialogError < 3) {
    o.crashPackage = 'foo';
  }
  buildCounterCrashDialogError--;
  return o;
}

void checkCrashDialogError(api.CrashDialogError o) {
  buildCounterCrashDialogError++;
  if (buildCounterCrashDialogError < 3) {
    unittest.expect(
      o.crashPackage!,
      unittest.equals('foo'),
    );
  }
  buildCounterCrashDialogError--;
}

core.int buildCounterDeviceOutOfMemory = 0;
api.DeviceOutOfMemory buildDeviceOutOfMemory() {
  final o = api.DeviceOutOfMemory();
  buildCounterDeviceOutOfMemory++;
  if (buildCounterDeviceOutOfMemory < 3) {}
  buildCounterDeviceOutOfMemory--;
  return o;
}

void checkDeviceOutOfMemory(api.DeviceOutOfMemory o) {
  buildCounterDeviceOutOfMemory++;
  if (buildCounterDeviceOutOfMemory < 3) {}
  buildCounterDeviceOutOfMemory--;
}

core.int buildCounterDuration = 0;
api.Duration buildDuration() {
  final o = api.Duration();
  buildCounterDuration++;
  if (buildCounterDuration < 3) {
    o.nanos = 42;
    o.seconds = 'foo';
  }
  buildCounterDuration--;
  return o;
}

void checkDuration(api.Duration o) {
  buildCounterDuration++;
  if (buildCounterDuration < 3) {
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterDuration--;
}

core.List<core.String> buildUnnamed8078() => [
      'foo',
      'foo',
    ];

void checkUnnamed8078(core.List<core.String> o) {
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

core.int buildCounterEncounteredLoginScreen = 0;
api.EncounteredLoginScreen buildEncounteredLoginScreen() {
  final o = api.EncounteredLoginScreen();
  buildCounterEncounteredLoginScreen++;
  if (buildCounterEncounteredLoginScreen < 3) {
    o.distinctScreens = 42;
    o.screenIds = buildUnnamed8078();
  }
  buildCounterEncounteredLoginScreen--;
  return o;
}

void checkEncounteredLoginScreen(api.EncounteredLoginScreen o) {
  buildCounterEncounteredLoginScreen++;
  if (buildCounterEncounteredLoginScreen < 3) {
    unittest.expect(
      o.distinctScreens!,
      unittest.equals(42),
    );
    checkUnnamed8078(o.screenIds!);
  }
  buildCounterEncounteredLoginScreen--;
}

core.List<core.String> buildUnnamed8079() => [
      'foo',
      'foo',
    ];

void checkUnnamed8079(core.List<core.String> o) {
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

core.int buildCounterEncounteredNonAndroidUiWidgetScreen = 0;
api.EncounteredNonAndroidUiWidgetScreen
    buildEncounteredNonAndroidUiWidgetScreen() {
  final o = api.EncounteredNonAndroidUiWidgetScreen();
  buildCounterEncounteredNonAndroidUiWidgetScreen++;
  if (buildCounterEncounteredNonAndroidUiWidgetScreen < 3) {
    o.distinctScreens = 42;
    o.screenIds = buildUnnamed8079();
  }
  buildCounterEncounteredNonAndroidUiWidgetScreen--;
  return o;
}

void checkEncounteredNonAndroidUiWidgetScreen(
    api.EncounteredNonAndroidUiWidgetScreen o) {
  buildCounterEncounteredNonAndroidUiWidgetScreen++;
  if (buildCounterEncounteredNonAndroidUiWidgetScreen < 3) {
    unittest.expect(
      o.distinctScreens!,
      unittest.equals(42),
    );
    checkUnnamed8079(o.screenIds!);
  }
  buildCounterEncounteredNonAndroidUiWidgetScreen--;
}

core.List<api.EnvironmentDimensionValueEntry> buildUnnamed8080() => [
      buildEnvironmentDimensionValueEntry(),
      buildEnvironmentDimensionValueEntry(),
    ];

void checkUnnamed8080(core.List<api.EnvironmentDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentDimensionValueEntry(o[0]);
  checkEnvironmentDimensionValueEntry(o[1]);
}

core.List<api.ShardSummary> buildUnnamed8081() => [
      buildShardSummary(),
      buildShardSummary(),
    ];

void checkUnnamed8081(core.List<api.ShardSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShardSummary(o[0]);
  checkShardSummary(o[1]);
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.dimensionValue = buildUnnamed8080();
    o.displayName = 'foo';
    o.environmentId = 'foo';
    o.environmentResult = buildMergedResult();
    o.executionId = 'foo';
    o.historyId = 'foo';
    o.projectId = 'foo';
    o.resultsStorage = buildResultsStorage();
    o.shardSummaries = buildUnnamed8081();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkTimestamp(o.completionTime!);
    checkTimestamp(o.creationTime!);
    checkUnnamed8080(o.dimensionValue!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environmentId!,
      unittest.equals('foo'),
    );
    checkMergedResult(o.environmentResult!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkResultsStorage(o.resultsStorage!);
    checkUnnamed8081(o.shardSummaries!);
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentDimensionValueEntry = 0;
api.EnvironmentDimensionValueEntry buildEnvironmentDimensionValueEntry() {
  final o = api.EnvironmentDimensionValueEntry();
  buildCounterEnvironmentDimensionValueEntry++;
  if (buildCounterEnvironmentDimensionValueEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterEnvironmentDimensionValueEntry--;
  return o;
}

void checkEnvironmentDimensionValueEntry(api.EnvironmentDimensionValueEntry o) {
  buildCounterEnvironmentDimensionValueEntry++;
  if (buildCounterEnvironmentDimensionValueEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvironmentDimensionValueEntry--;
}

core.List<api.MatrixDimensionDefinition> buildUnnamed8082() => [
      buildMatrixDimensionDefinition(),
      buildMatrixDimensionDefinition(),
    ];

void checkUnnamed8082(core.List<api.MatrixDimensionDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatrixDimensionDefinition(o[0]);
  checkMatrixDimensionDefinition(o[1]);
}

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  final o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.dimensionDefinitions = buildUnnamed8082();
    o.executionId = 'foo';
    o.outcome = buildOutcome();
    o.specification = buildSpecification();
    o.state = 'foo';
    o.testExecutionMatrixId = 'foo';
  }
  buildCounterExecution--;
  return o;
}

void checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    checkTimestamp(o.completionTime!);
    checkTimestamp(o.creationTime!);
    checkUnnamed8082(o.dimensionDefinitions!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkOutcome(o.outcome!);
    checkSpecification(o.specification!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testExecutionMatrixId!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecution--;
}

core.int buildCounterFailedToInstall = 0;
api.FailedToInstall buildFailedToInstall() {
  final o = api.FailedToInstall();
  buildCounterFailedToInstall++;
  if (buildCounterFailedToInstall < 3) {}
  buildCounterFailedToInstall--;
  return o;
}

void checkFailedToInstall(api.FailedToInstall o) {
  buildCounterFailedToInstall++;
  if (buildCounterFailedToInstall < 3) {}
  buildCounterFailedToInstall--;
}

core.int buildCounterFailureDetail = 0;
api.FailureDetail buildFailureDetail() {
  final o = api.FailureDetail();
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    o.crashed = true;
    o.deviceOutOfMemory = true;
    o.failedRoboscript = true;
    o.notInstalled = true;
    o.otherNativeCrash = true;
    o.timedOut = true;
    o.unableToCrawl = true;
  }
  buildCounterFailureDetail--;
  return o;
}

void checkFailureDetail(api.FailureDetail o) {
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    unittest.expect(o.crashed!, unittest.isTrue);
    unittest.expect(o.deviceOutOfMemory!, unittest.isTrue);
    unittest.expect(o.failedRoboscript!, unittest.isTrue);
    unittest.expect(o.notInstalled!, unittest.isTrue);
    unittest.expect(o.otherNativeCrash!, unittest.isTrue);
    unittest.expect(o.timedOut!, unittest.isTrue);
    unittest.expect(o.unableToCrawl!, unittest.isTrue);
  }
  buildCounterFailureDetail--;
}

core.int buildCounterFatalException = 0;
api.FatalException buildFatalException() {
  final o = api.FatalException();
  buildCounterFatalException++;
  if (buildCounterFatalException < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterFatalException--;
  return o;
}

void checkFatalException(api.FatalException o) {
  buildCounterFatalException++;
  if (buildCounterFatalException < 3) {
    checkStackTrace(o.stackTrace!);
  }
  buildCounterFatalException--;
}

core.int buildCounterFileReference = 0;
api.FileReference buildFileReference() {
  final o = api.FileReference();
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    o.fileUri = 'foo';
  }
  buildCounterFileReference--;
  return o;
}

void checkFileReference(api.FileReference o) {
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    unittest.expect(
      o.fileUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileReference--;
}

core.List<api.GraphicsStatsBucket> buildUnnamed8083() => [
      buildGraphicsStatsBucket(),
      buildGraphicsStatsBucket(),
    ];

void checkUnnamed8083(core.List<api.GraphicsStatsBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphicsStatsBucket(o[0]);
  checkGraphicsStatsBucket(o[1]);
}

core.int buildCounterGraphicsStats = 0;
api.GraphicsStats buildGraphicsStats() {
  final o = api.GraphicsStats();
  buildCounterGraphicsStats++;
  if (buildCounterGraphicsStats < 3) {
    o.buckets = buildUnnamed8083();
    o.highInputLatencyCount = 'foo';
    o.jankyFrames = 'foo';
    o.missedVsyncCount = 'foo';
    o.p50Millis = 'foo';
    o.p90Millis = 'foo';
    o.p95Millis = 'foo';
    o.p99Millis = 'foo';
    o.slowBitmapUploadCount = 'foo';
    o.slowDrawCount = 'foo';
    o.slowUiThreadCount = 'foo';
    o.totalFrames = 'foo';
  }
  buildCounterGraphicsStats--;
  return o;
}

void checkGraphicsStats(api.GraphicsStats o) {
  buildCounterGraphicsStats++;
  if (buildCounterGraphicsStats < 3) {
    checkUnnamed8083(o.buckets!);
    unittest.expect(
      o.highInputLatencyCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jankyFrames!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.missedVsyncCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.p50Millis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.p90Millis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.p95Millis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.p99Millis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slowBitmapUploadCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slowDrawCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slowUiThreadCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalFrames!,
      unittest.equals('foo'),
    );
  }
  buildCounterGraphicsStats--;
}

core.int buildCounterGraphicsStatsBucket = 0;
api.GraphicsStatsBucket buildGraphicsStatsBucket() {
  final o = api.GraphicsStatsBucket();
  buildCounterGraphicsStatsBucket++;
  if (buildCounterGraphicsStatsBucket < 3) {
    o.frameCount = 'foo';
    o.renderMillis = 'foo';
  }
  buildCounterGraphicsStatsBucket--;
  return o;
}

void checkGraphicsStatsBucket(api.GraphicsStatsBucket o) {
  buildCounterGraphicsStatsBucket++;
  if (buildCounterGraphicsStatsBucket < 3) {
    unittest.expect(
      o.frameCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renderMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterGraphicsStatsBucket--;
}

core.int buildCounterHistory = 0;
api.History buildHistory() {
  final o = api.History();
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    o.displayName = 'foo';
    o.historyId = 'foo';
    o.name = 'foo';
    o.testPlatform = 'foo';
  }
  buildCounterHistory--;
  return o;
}

void checkHistory(api.History o) {
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testPlatform!,
      unittest.equals('foo'),
    );
  }
  buildCounterHistory--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.error = buildStatus();
    o.sourceImage = buildToolOutputReference();
    o.stepId = 'foo';
    o.thumbnail = buildThumbnail();
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    checkStatus(o.error!);
    checkToolOutputReference(o.sourceImage!);
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
    checkThumbnail(o.thumbnail!);
  }
  buildCounterImage--;
}

core.int buildCounterInAppPurchasesFound = 0;
api.InAppPurchasesFound buildInAppPurchasesFound() {
  final o = api.InAppPurchasesFound();
  buildCounterInAppPurchasesFound++;
  if (buildCounterInAppPurchasesFound < 3) {
    o.inAppPurchasesFlowsExplored = 42;
    o.inAppPurchasesFlowsStarted = 42;
  }
  buildCounterInAppPurchasesFound--;
  return o;
}

void checkInAppPurchasesFound(api.InAppPurchasesFound o) {
  buildCounterInAppPurchasesFound++;
  if (buildCounterInAppPurchasesFound < 3) {
    unittest.expect(
      o.inAppPurchasesFlowsExplored!,
      unittest.equals(42),
    );
    unittest.expect(
      o.inAppPurchasesFlowsStarted!,
      unittest.equals(42),
    );
  }
  buildCounterInAppPurchasesFound--;
}

core.int buildCounterInconclusiveDetail = 0;
api.InconclusiveDetail buildInconclusiveDetail() {
  final o = api.InconclusiveDetail();
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    o.abortedByUser = true;
    o.hasErrorLogs = true;
    o.infrastructureFailure = true;
  }
  buildCounterInconclusiveDetail--;
  return o;
}

void checkInconclusiveDetail(api.InconclusiveDetail o) {
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    unittest.expect(o.abortedByUser!, unittest.isTrue);
    unittest.expect(o.hasErrorLogs!, unittest.isTrue);
    unittest.expect(o.infrastructureFailure!, unittest.isTrue);
  }
  buildCounterInconclusiveDetail--;
}

core.int buildCounterIndividualOutcome = 0;
api.IndividualOutcome buildIndividualOutcome() {
  final o = api.IndividualOutcome();
  buildCounterIndividualOutcome++;
  if (buildCounterIndividualOutcome < 3) {
    o.multistepNumber = 42;
    o.outcomeSummary = 'foo';
    o.runDuration = buildDuration();
    o.stepId = 'foo';
  }
  buildCounterIndividualOutcome--;
  return o;
}

void checkIndividualOutcome(api.IndividualOutcome o) {
  buildCounterIndividualOutcome++;
  if (buildCounterIndividualOutcome < 3) {
    unittest.expect(
      o.multistepNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.outcomeSummary!,
      unittest.equals('foo'),
    );
    checkDuration(o.runDuration!);
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIndividualOutcome--;
}

core.int buildCounterInsufficientCoverage = 0;
api.InsufficientCoverage buildInsufficientCoverage() {
  final o = api.InsufficientCoverage();
  buildCounterInsufficientCoverage++;
  if (buildCounterInsufficientCoverage < 3) {}
  buildCounterInsufficientCoverage--;
  return o;
}

void checkInsufficientCoverage(api.InsufficientCoverage o) {
  buildCounterInsufficientCoverage++;
  if (buildCounterInsufficientCoverage < 3) {}
  buildCounterInsufficientCoverage--;
}

core.int buildCounterIosAppCrashed = 0;
api.IosAppCrashed buildIosAppCrashed() {
  final o = api.IosAppCrashed();
  buildCounterIosAppCrashed++;
  if (buildCounterIosAppCrashed < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterIosAppCrashed--;
  return o;
}

void checkIosAppCrashed(api.IosAppCrashed o) {
  buildCounterIosAppCrashed++;
  if (buildCounterIosAppCrashed < 3) {
    checkStackTrace(o.stackTrace!);
  }
  buildCounterIosAppCrashed--;
}

core.int buildCounterIosAppInfo = 0;
api.IosAppInfo buildIosAppInfo() {
  final o = api.IosAppInfo();
  buildCounterIosAppInfo++;
  if (buildCounterIosAppInfo < 3) {
    o.name = 'foo';
  }
  buildCounterIosAppInfo--;
  return o;
}

void checkIosAppInfo(api.IosAppInfo o) {
  buildCounterIosAppInfo++;
  if (buildCounterIosAppInfo < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosAppInfo--;
}

core.int buildCounterIosRoboTest = 0;
api.IosRoboTest buildIosRoboTest() {
  final o = api.IosRoboTest();
  buildCounterIosRoboTest++;
  if (buildCounterIosRoboTest < 3) {}
  buildCounterIosRoboTest--;
  return o;
}

void checkIosRoboTest(api.IosRoboTest o) {
  buildCounterIosRoboTest++;
  if (buildCounterIosRoboTest < 3) {}
  buildCounterIosRoboTest--;
}

core.int buildCounterIosTest = 0;
api.IosTest buildIosTest() {
  final o = api.IosTest();
  buildCounterIosTest++;
  if (buildCounterIosTest < 3) {
    o.iosAppInfo = buildIosAppInfo();
    o.iosRoboTest = buildIosRoboTest();
    o.iosTestLoop = buildIosTestLoop();
    o.iosXcTest = buildIosXcTest();
    o.testTimeout = buildDuration();
  }
  buildCounterIosTest--;
  return o;
}

void checkIosTest(api.IosTest o) {
  buildCounterIosTest++;
  if (buildCounterIosTest < 3) {
    checkIosAppInfo(o.iosAppInfo!);
    checkIosRoboTest(o.iosRoboTest!);
    checkIosTestLoop(o.iosTestLoop!);
    checkIosXcTest(o.iosXcTest!);
    checkDuration(o.testTimeout!);
  }
  buildCounterIosTest--;
}

core.int buildCounterIosTestLoop = 0;
api.IosTestLoop buildIosTestLoop() {
  final o = api.IosTestLoop();
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    o.bundleId = 'foo';
  }
  buildCounterIosTestLoop--;
  return o;
}

void checkIosTestLoop(api.IosTestLoop o) {
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosTestLoop--;
}

core.int buildCounterIosXcTest = 0;
api.IosXcTest buildIosXcTest() {
  final o = api.IosXcTest();
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    o.bundleId = 'foo';
    o.xcodeVersion = 'foo';
  }
  buildCounterIosXcTest--;
  return o;
}

void checkIosXcTest(api.IosXcTest o) {
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.xcodeVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosXcTest--;
}

core.int buildCounterLauncherActivityNotFound = 0;
api.LauncherActivityNotFound buildLauncherActivityNotFound() {
  final o = api.LauncherActivityNotFound();
  buildCounterLauncherActivityNotFound++;
  if (buildCounterLauncherActivityNotFound < 3) {}
  buildCounterLauncherActivityNotFound--;
  return o;
}

void checkLauncherActivityNotFound(api.LauncherActivityNotFound o) {
  buildCounterLauncherActivityNotFound++;
  if (buildCounterLauncherActivityNotFound < 3) {}
  buildCounterLauncherActivityNotFound--;
}

core.List<api.Environment> buildUnnamed8084() => [
      buildEnvironment(),
      buildEnvironment(),
    ];

void checkUnnamed8084(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.int buildCounterListEnvironmentsResponse = 0;
api.ListEnvironmentsResponse buildListEnvironmentsResponse() {
  final o = api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed8084();
    o.executionId = 'foo';
    o.historyId = 'foo';
    o.nextPageToken = 'foo';
    o.projectId = 'foo';
  }
  buildCounterListEnvironmentsResponse--;
  return o;
}

void checkListEnvironmentsResponse(api.ListEnvironmentsResponse o) {
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    checkUnnamed8084(o.environments!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEnvironmentsResponse--;
}

core.List<api.Execution> buildUnnamed8085() => [
      buildExecution(),
      buildExecution(),
    ];

void checkUnnamed8085(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  final o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed8085();
    o.nextPageToken = 'foo';
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed8085(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.History> buildUnnamed8086() => [
      buildHistory(),
      buildHistory(),
    ];

void checkUnnamed8086(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoriesResponse = 0;
api.ListHistoriesResponse buildListHistoriesResponse() {
  final o = api.ListHistoriesResponse();
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    o.histories = buildUnnamed8086();
    o.nextPageToken = 'foo';
  }
  buildCounterListHistoriesResponse--;
  return o;
}

void checkListHistoriesResponse(api.ListHistoriesResponse o) {
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    checkUnnamed8086(o.histories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListHistoriesResponse--;
}

core.List<api.PerfSampleSeries> buildUnnamed8087() => [
      buildPerfSampleSeries(),
      buildPerfSampleSeries(),
    ];

void checkUnnamed8087(core.List<api.PerfSampleSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSampleSeries(o[0]);
  checkPerfSampleSeries(o[1]);
}

core.int buildCounterListPerfSampleSeriesResponse = 0;
api.ListPerfSampleSeriesResponse buildListPerfSampleSeriesResponse() {
  final o = api.ListPerfSampleSeriesResponse();
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    o.perfSampleSeries = buildUnnamed8087();
  }
  buildCounterListPerfSampleSeriesResponse--;
  return o;
}

void checkListPerfSampleSeriesResponse(api.ListPerfSampleSeriesResponse o) {
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    checkUnnamed8087(o.perfSampleSeries!);
  }
  buildCounterListPerfSampleSeriesResponse--;
}

core.List<api.PerfSample> buildUnnamed8088() => [
      buildPerfSample(),
      buildPerfSample(),
    ];

void checkUnnamed8088(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterListPerfSamplesResponse = 0;
api.ListPerfSamplesResponse buildListPerfSamplesResponse() {
  final o = api.ListPerfSamplesResponse();
  buildCounterListPerfSamplesResponse++;
  if (buildCounterListPerfSamplesResponse < 3) {
    o.nextPageToken = 'foo';
    o.perfSamples = buildUnnamed8088();
  }
  buildCounterListPerfSamplesResponse--;
  return o;
}

void checkListPerfSamplesResponse(api.ListPerfSamplesResponse o) {
  buildCounterListPerfSamplesResponse++;
  if (buildCounterListPerfSamplesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8088(o.perfSamples!);
  }
  buildCounterListPerfSamplesResponse--;
}

core.List<api.ScreenshotCluster> buildUnnamed8089() => [
      buildScreenshotCluster(),
      buildScreenshotCluster(),
    ];

void checkUnnamed8089(core.List<api.ScreenshotCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreenshotCluster(o[0]);
  checkScreenshotCluster(o[1]);
}

core.int buildCounterListScreenshotClustersResponse = 0;
api.ListScreenshotClustersResponse buildListScreenshotClustersResponse() {
  final o = api.ListScreenshotClustersResponse();
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    o.clusters = buildUnnamed8089();
  }
  buildCounterListScreenshotClustersResponse--;
  return o;
}

void checkListScreenshotClustersResponse(api.ListScreenshotClustersResponse o) {
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    checkUnnamed8089(o.clusters!);
  }
  buildCounterListScreenshotClustersResponse--;
}

core.List<api.SuggestionClusterProto> buildUnnamed8090() => [
      buildSuggestionClusterProto(),
      buildSuggestionClusterProto(),
    ];

void checkUnnamed8090(core.List<api.SuggestionClusterProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionClusterProto(o[0]);
  checkSuggestionClusterProto(o[1]);
}

core.int buildCounterListStepAccessibilityClustersResponse = 0;
api.ListStepAccessibilityClustersResponse
    buildListStepAccessibilityClustersResponse() {
  final o = api.ListStepAccessibilityClustersResponse();
  buildCounterListStepAccessibilityClustersResponse++;
  if (buildCounterListStepAccessibilityClustersResponse < 3) {
    o.clusters = buildUnnamed8090();
    o.name = 'foo';
  }
  buildCounterListStepAccessibilityClustersResponse--;
  return o;
}

void checkListStepAccessibilityClustersResponse(
    api.ListStepAccessibilityClustersResponse o) {
  buildCounterListStepAccessibilityClustersResponse++;
  if (buildCounterListStepAccessibilityClustersResponse < 3) {
    checkUnnamed8090(o.clusters!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterListStepAccessibilityClustersResponse--;
}

core.List<api.Image> buildUnnamed8091() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed8091(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterListStepThumbnailsResponse = 0;
api.ListStepThumbnailsResponse buildListStepThumbnailsResponse() {
  final o = api.ListStepThumbnailsResponse();
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    o.nextPageToken = 'foo';
    o.thumbnails = buildUnnamed8091();
  }
  buildCounterListStepThumbnailsResponse--;
  return o;
}

void checkListStepThumbnailsResponse(api.ListStepThumbnailsResponse o) {
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8091(o.thumbnails!);
  }
  buildCounterListStepThumbnailsResponse--;
}

core.List<api.Step> buildUnnamed8092() => [
      buildStep(),
      buildStep(),
    ];

void checkUnnamed8092(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterListStepsResponse = 0;
api.ListStepsResponse buildListStepsResponse() {
  final o = api.ListStepsResponse();
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    o.nextPageToken = 'foo';
    o.steps = buildUnnamed8092();
  }
  buildCounterListStepsResponse--;
  return o;
}

void checkListStepsResponse(api.ListStepsResponse o) {
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8092(o.steps!);
  }
  buildCounterListStepsResponse--;
}

core.List<api.TestCase> buildUnnamed8093() => [
      buildTestCase(),
      buildTestCase(),
    ];

void checkUnnamed8093(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0]);
  checkTestCase(o[1]);
}

core.int buildCounterListTestCasesResponse = 0;
api.ListTestCasesResponse buildListTestCasesResponse() {
  final o = api.ListTestCasesResponse();
  buildCounterListTestCasesResponse++;
  if (buildCounterListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed8093();
  }
  buildCounterListTestCasesResponse--;
  return o;
}

void checkListTestCasesResponse(api.ListTestCasesResponse o) {
  buildCounterListTestCasesResponse++;
  if (buildCounterListTestCasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8093(o.testCases!);
  }
  buildCounterListTestCasesResponse--;
}

core.int buildCounterLogcatCollectionError = 0;
api.LogcatCollectionError buildLogcatCollectionError() {
  final o = api.LogcatCollectionError();
  buildCounterLogcatCollectionError++;
  if (buildCounterLogcatCollectionError < 3) {}
  buildCounterLogcatCollectionError--;
  return o;
}

void checkLogcatCollectionError(api.LogcatCollectionError o) {
  buildCounterLogcatCollectionError++;
  if (buildCounterLogcatCollectionError < 3) {}
  buildCounterLogcatCollectionError--;
}

core.int buildCounterMatrixDimensionDefinition = 0;
api.MatrixDimensionDefinition buildMatrixDimensionDefinition() {
  final o = api.MatrixDimensionDefinition();
  buildCounterMatrixDimensionDefinition++;
  if (buildCounterMatrixDimensionDefinition < 3) {}
  buildCounterMatrixDimensionDefinition--;
  return o;
}

void checkMatrixDimensionDefinition(api.MatrixDimensionDefinition o) {
  buildCounterMatrixDimensionDefinition++;
  if (buildCounterMatrixDimensionDefinition < 3) {}
  buildCounterMatrixDimensionDefinition--;
}

core.int buildCounterMemoryInfo = 0;
api.MemoryInfo buildMemoryInfo() {
  final o = api.MemoryInfo();
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    o.memoryCapInKibibyte = 'foo';
    o.memoryTotalInKibibyte = 'foo';
  }
  buildCounterMemoryInfo--;
  return o;
}

void checkMemoryInfo(api.MemoryInfo o) {
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    unittest.expect(
      o.memoryCapInKibibyte!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryTotalInKibibyte!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemoryInfo--;
}

core.List<api.TestSuiteOverview> buildUnnamed8094() => [
      buildTestSuiteOverview(),
      buildTestSuiteOverview(),
    ];

void checkUnnamed8094(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0]);
  checkTestSuiteOverview(o[1]);
}

core.int buildCounterMergedResult = 0;
api.MergedResult buildMergedResult() {
  final o = api.MergedResult();
  buildCounterMergedResult++;
  if (buildCounterMergedResult < 3) {
    o.outcome = buildOutcome();
    o.state = 'foo';
    o.testSuiteOverviews = buildUnnamed8094();
  }
  buildCounterMergedResult--;
  return o;
}

void checkMergedResult(api.MergedResult o) {
  buildCounterMergedResult++;
  if (buildCounterMergedResult < 3) {
    checkOutcome(o.outcome!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed8094(o.testSuiteOverviews!);
  }
  buildCounterMergedResult--;
}

core.int buildCounterMultiStep = 0;
api.MultiStep buildMultiStep() {
  final o = api.MultiStep();
  buildCounterMultiStep++;
  if (buildCounterMultiStep < 3) {
    o.multistepNumber = 42;
    o.primaryStep = buildPrimaryStep();
    o.primaryStepId = 'foo';
  }
  buildCounterMultiStep--;
  return o;
}

void checkMultiStep(api.MultiStep o) {
  buildCounterMultiStep++;
  if (buildCounterMultiStep < 3) {
    unittest.expect(
      o.multistepNumber!,
      unittest.equals(42),
    );
    checkPrimaryStep(o.primaryStep!);
    unittest.expect(
      o.primaryStepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultiStep--;
}

core.int buildCounterNativeCrash = 0;
api.NativeCrash buildNativeCrash() {
  final o = api.NativeCrash();
  buildCounterNativeCrash++;
  if (buildCounterNativeCrash < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterNativeCrash--;
  return o;
}

void checkNativeCrash(api.NativeCrash o) {
  buildCounterNativeCrash++;
  if (buildCounterNativeCrash < 3) {
    checkStackTrace(o.stackTrace!);
  }
  buildCounterNativeCrash--;
}

core.List<core.String> buildUnnamed8095() => [
      'foo',
      'foo',
    ];

void checkUnnamed8095(core.List<core.String> o) {
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

core.List<api.NonSdkApiInsight> buildUnnamed8096() => [
      buildNonSdkApiInsight(),
      buildNonSdkApiInsight(),
    ];

void checkUnnamed8096(core.List<api.NonSdkApiInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonSdkApiInsight(o[0]);
  checkNonSdkApiInsight(o[1]);
}

core.int buildCounterNonSdkApi = 0;
api.NonSdkApi buildNonSdkApi() {
  final o = api.NonSdkApi();
  buildCounterNonSdkApi++;
  if (buildCounterNonSdkApi < 3) {
    o.apiSignature = 'foo';
    o.exampleStackTraces = buildUnnamed8095();
    o.insights = buildUnnamed8096();
    o.invocationCount = 42;
    o.list = 'foo';
  }
  buildCounterNonSdkApi--;
  return o;
}

void checkNonSdkApi(api.NonSdkApi o) {
  buildCounterNonSdkApi++;
  if (buildCounterNonSdkApi < 3) {
    unittest.expect(
      o.apiSignature!,
      unittest.equals('foo'),
    );
    checkUnnamed8095(o.exampleStackTraces!);
    checkUnnamed8096(o.insights!);
    unittest.expect(
      o.invocationCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.list!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonSdkApi--;
}

core.List<core.String> buildUnnamed8097() => [
      'foo',
      'foo',
    ];

void checkUnnamed8097(core.List<core.String> o) {
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

core.int buildCounterNonSdkApiInsight = 0;
api.NonSdkApiInsight buildNonSdkApiInsight() {
  final o = api.NonSdkApiInsight();
  buildCounterNonSdkApiInsight++;
  if (buildCounterNonSdkApiInsight < 3) {
    o.exampleTraceMessages = buildUnnamed8097();
    o.matcherId = 'foo';
    o.pendingGoogleUpdateInsight = buildPendingGoogleUpdateInsight();
    o.upgradeInsight = buildUpgradeInsight();
  }
  buildCounterNonSdkApiInsight--;
  return o;
}

void checkNonSdkApiInsight(api.NonSdkApiInsight o) {
  buildCounterNonSdkApiInsight++;
  if (buildCounterNonSdkApiInsight < 3) {
    checkUnnamed8097(o.exampleTraceMessages!);
    unittest.expect(
      o.matcherId!,
      unittest.equals('foo'),
    );
    checkPendingGoogleUpdateInsight(o.pendingGoogleUpdateInsight!);
    checkUpgradeInsight(o.upgradeInsight!);
  }
  buildCounterNonSdkApiInsight--;
}

core.List<core.String> buildUnnamed8098() => [
      'foo',
      'foo',
    ];

void checkUnnamed8098(core.List<core.String> o) {
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

core.int buildCounterNonSdkApiUsageViolation = 0;
api.NonSdkApiUsageViolation buildNonSdkApiUsageViolation() {
  final o = api.NonSdkApiUsageViolation();
  buildCounterNonSdkApiUsageViolation++;
  if (buildCounterNonSdkApiUsageViolation < 3) {
    o.apiSignatures = buildUnnamed8098();
    o.uniqueApis = 42;
  }
  buildCounterNonSdkApiUsageViolation--;
  return o;
}

void checkNonSdkApiUsageViolation(api.NonSdkApiUsageViolation o) {
  buildCounterNonSdkApiUsageViolation++;
  if (buildCounterNonSdkApiUsageViolation < 3) {
    checkUnnamed8098(o.apiSignatures!);
    unittest.expect(
      o.uniqueApis!,
      unittest.equals(42),
    );
  }
  buildCounterNonSdkApiUsageViolation--;
}

core.List<api.NonSdkApi> buildUnnamed8099() => [
      buildNonSdkApi(),
      buildNonSdkApi(),
    ];

void checkUnnamed8099(core.List<api.NonSdkApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonSdkApi(o[0]);
  checkNonSdkApi(o[1]);
}

core.int buildCounterNonSdkApiUsageViolationReport = 0;
api.NonSdkApiUsageViolationReport buildNonSdkApiUsageViolationReport() {
  final o = api.NonSdkApiUsageViolationReport();
  buildCounterNonSdkApiUsageViolationReport++;
  if (buildCounterNonSdkApiUsageViolationReport < 3) {
    o.exampleApis = buildUnnamed8099();
    o.minSdkVersion = 42;
    o.targetSdkVersion = 42;
    o.uniqueApis = 42;
  }
  buildCounterNonSdkApiUsageViolationReport--;
  return o;
}

void checkNonSdkApiUsageViolationReport(api.NonSdkApiUsageViolationReport o) {
  buildCounterNonSdkApiUsageViolationReport++;
  if (buildCounterNonSdkApiUsageViolationReport < 3) {
    checkUnnamed8099(o.exampleApis!);
    unittest.expect(
      o.minSdkVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.targetSdkVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uniqueApis!,
      unittest.equals(42),
    );
  }
  buildCounterNonSdkApiUsageViolationReport--;
}

core.int buildCounterOutcome = 0;
api.Outcome buildOutcome() {
  final o = api.Outcome();
  buildCounterOutcome++;
  if (buildCounterOutcome < 3) {
    o.failureDetail = buildFailureDetail();
    o.inconclusiveDetail = buildInconclusiveDetail();
    o.skippedDetail = buildSkippedDetail();
    o.successDetail = buildSuccessDetail();
    o.summary = 'foo';
  }
  buildCounterOutcome--;
  return o;
}

void checkOutcome(api.Outcome o) {
  buildCounterOutcome++;
  if (buildCounterOutcome < 3) {
    checkFailureDetail(o.failureDetail!);
    checkInconclusiveDetail(o.inconclusiveDetail!);
    checkSkippedDetail(o.skippedDetail!);
    checkSuccessDetail(o.successDetail!);
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
  }
  buildCounterOutcome--;
}

core.List<core.String> buildUnnamed8100() => [
      'foo',
      'foo',
    ];

void checkUnnamed8100(core.List<core.String> o) {
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

core.int buildCounterOverlappingUIElements = 0;
api.OverlappingUIElements buildOverlappingUIElements() {
  final o = api.OverlappingUIElements();
  buildCounterOverlappingUIElements++;
  if (buildCounterOverlappingUIElements < 3) {
    o.resourceName = buildUnnamed8100();
    o.screenId = 'foo';
  }
  buildCounterOverlappingUIElements--;
  return o;
}

void checkOverlappingUIElements(api.OverlappingUIElements o) {
  buildCounterOverlappingUIElements++;
  if (buildCounterOverlappingUIElements < 3) {
    checkUnnamed8100(o.resourceName!);
    unittest.expect(
      o.screenId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOverlappingUIElements--;
}

core.int buildCounterPendingGoogleUpdateInsight = 0;
api.PendingGoogleUpdateInsight buildPendingGoogleUpdateInsight() {
  final o = api.PendingGoogleUpdateInsight();
  buildCounterPendingGoogleUpdateInsight++;
  if (buildCounterPendingGoogleUpdateInsight < 3) {
    o.nameOfGoogleLibrary = 'foo';
  }
  buildCounterPendingGoogleUpdateInsight--;
  return o;
}

void checkPendingGoogleUpdateInsight(api.PendingGoogleUpdateInsight o) {
  buildCounterPendingGoogleUpdateInsight++;
  if (buildCounterPendingGoogleUpdateInsight < 3) {
    unittest.expect(
      o.nameOfGoogleLibrary!,
      unittest.equals('foo'),
    );
  }
  buildCounterPendingGoogleUpdateInsight--;
}

core.int buildCounterPerfEnvironment = 0;
api.PerfEnvironment buildPerfEnvironment() {
  final o = api.PerfEnvironment();
  buildCounterPerfEnvironment++;
  if (buildCounterPerfEnvironment < 3) {
    o.cpuInfo = buildCPUInfo();
    o.memoryInfo = buildMemoryInfo();
  }
  buildCounterPerfEnvironment--;
  return o;
}

void checkPerfEnvironment(api.PerfEnvironment o) {
  buildCounterPerfEnvironment++;
  if (buildCounterPerfEnvironment < 3) {
    checkCPUInfo(o.cpuInfo!);
    checkMemoryInfo(o.memoryInfo!);
  }
  buildCounterPerfEnvironment--;
}

core.List<core.String> buildUnnamed8101() => [
      'foo',
      'foo',
    ];

void checkUnnamed8101(core.List<core.String> o) {
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

core.int buildCounterPerfMetricsSummary = 0;
api.PerfMetricsSummary buildPerfMetricsSummary() {
  final o = api.PerfMetricsSummary();
  buildCounterPerfMetricsSummary++;
  if (buildCounterPerfMetricsSummary < 3) {
    o.appStartTime = buildAppStartTime();
    o.executionId = 'foo';
    o.graphicsStats = buildGraphicsStats();
    o.historyId = 'foo';
    o.perfEnvironment = buildPerfEnvironment();
    o.perfMetrics = buildUnnamed8101();
    o.projectId = 'foo';
    o.stepId = 'foo';
  }
  buildCounterPerfMetricsSummary--;
  return o;
}

void checkPerfMetricsSummary(api.PerfMetricsSummary o) {
  buildCounterPerfMetricsSummary++;
  if (buildCounterPerfMetricsSummary < 3) {
    checkAppStartTime(o.appStartTime!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkGraphicsStats(o.graphicsStats!);
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    checkPerfEnvironment(o.perfEnvironment!);
    checkUnnamed8101(o.perfMetrics!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerfMetricsSummary--;
}

core.int buildCounterPerfSample = 0;
api.PerfSample buildPerfSample() {
  final o = api.PerfSample();
  buildCounterPerfSample++;
  if (buildCounterPerfSample < 3) {
    o.sampleTime = buildTimestamp();
    o.value = 42.0;
  }
  buildCounterPerfSample--;
  return o;
}

void checkPerfSample(api.PerfSample o) {
  buildCounterPerfSample++;
  if (buildCounterPerfSample < 3) {
    checkTimestamp(o.sampleTime!);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterPerfSample--;
}

core.int buildCounterPerfSampleSeries = 0;
api.PerfSampleSeries buildPerfSampleSeries() {
  final o = api.PerfSampleSeries();
  buildCounterPerfSampleSeries++;
  if (buildCounterPerfSampleSeries < 3) {
    o.basicPerfSampleSeries = buildBasicPerfSampleSeries();
    o.executionId = 'foo';
    o.historyId = 'foo';
    o.projectId = 'foo';
    o.sampleSeriesId = 'foo';
    o.stepId = 'foo';
  }
  buildCounterPerfSampleSeries--;
  return o;
}

void checkPerfSampleSeries(api.PerfSampleSeries o) {
  buildCounterPerfSampleSeries++;
  if (buildCounterPerfSampleSeries < 3) {
    checkBasicPerfSampleSeries(o.basicPerfSampleSeries!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleSeriesId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerfSampleSeries--;
}

core.int buildCounterPerformedGoogleLogin = 0;
api.PerformedGoogleLogin buildPerformedGoogleLogin() {
  final o = api.PerformedGoogleLogin();
  buildCounterPerformedGoogleLogin++;
  if (buildCounterPerformedGoogleLogin < 3) {}
  buildCounterPerformedGoogleLogin--;
  return o;
}

void checkPerformedGoogleLogin(api.PerformedGoogleLogin o) {
  buildCounterPerformedGoogleLogin++;
  if (buildCounterPerformedGoogleLogin < 3) {}
  buildCounterPerformedGoogleLogin--;
}

core.int buildCounterPerformedMonkeyActions = 0;
api.PerformedMonkeyActions buildPerformedMonkeyActions() {
  final o = api.PerformedMonkeyActions();
  buildCounterPerformedMonkeyActions++;
  if (buildCounterPerformedMonkeyActions < 3) {
    o.totalActions = 42;
  }
  buildCounterPerformedMonkeyActions--;
  return o;
}

void checkPerformedMonkeyActions(api.PerformedMonkeyActions o) {
  buildCounterPerformedMonkeyActions++;
  if (buildCounterPerformedMonkeyActions < 3) {
    unittest.expect(
      o.totalActions!,
      unittest.equals(42),
    );
  }
  buildCounterPerformedMonkeyActions--;
}

core.List<api.IndividualOutcome> buildUnnamed8102() => [
      buildIndividualOutcome(),
      buildIndividualOutcome(),
    ];

void checkUnnamed8102(core.List<api.IndividualOutcome> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndividualOutcome(o[0]);
  checkIndividualOutcome(o[1]);
}

core.int buildCounterPrimaryStep = 0;
api.PrimaryStep buildPrimaryStep() {
  final o = api.PrimaryStep();
  buildCounterPrimaryStep++;
  if (buildCounterPrimaryStep < 3) {
    o.individualOutcome = buildUnnamed8102();
    o.rollUp = 'foo';
  }
  buildCounterPrimaryStep--;
  return o;
}

void checkPrimaryStep(api.PrimaryStep o) {
  buildCounterPrimaryStep++;
  if (buildCounterPrimaryStep < 3) {
    checkUnnamed8102(o.individualOutcome!);
    unittest.expect(
      o.rollUp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrimaryStep--;
}

core.int buildCounterProjectSettings = 0;
api.ProjectSettings buildProjectSettings() {
  final o = api.ProjectSettings();
  buildCounterProjectSettings++;
  if (buildCounterProjectSettings < 3) {
    o.defaultBucket = 'foo';
    o.name = 'foo';
  }
  buildCounterProjectSettings--;
  return o;
}

void checkProjectSettings(api.ProjectSettings o) {
  buildCounterProjectSettings++;
  if (buildCounterProjectSettings < 3) {
    unittest.expect(
      o.defaultBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectSettings--;
}

core.List<api.FileReference> buildUnnamed8103() => [
      buildFileReference(),
      buildFileReference(),
    ];

void checkUnnamed8103(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.int buildCounterPublishXunitXmlFilesRequest = 0;
api.PublishXunitXmlFilesRequest buildPublishXunitXmlFilesRequest() {
  final o = api.PublishXunitXmlFilesRequest();
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    o.xunitXmlFiles = buildUnnamed8103();
  }
  buildCounterPublishXunitXmlFilesRequest--;
  return o;
}

void checkPublishXunitXmlFilesRequest(api.PublishXunitXmlFilesRequest o) {
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    checkUnnamed8103(o.xunitXmlFiles!);
  }
  buildCounterPublishXunitXmlFilesRequest--;
}

core.int buildCounterRegionProto = 0;
api.RegionProto buildRegionProto() {
  final o = api.RegionProto();
  buildCounterRegionProto++;
  if (buildCounterRegionProto < 3) {
    o.heightPx = 42;
    o.leftPx = 42;
    o.topPx = 42;
    o.widthPx = 42;
  }
  buildCounterRegionProto--;
  return o;
}

void checkRegionProto(api.RegionProto o) {
  buildCounterRegionProto++;
  if (buildCounterRegionProto < 3) {
    unittest.expect(
      o.heightPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.leftPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.topPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.widthPx!,
      unittest.equals(42),
    );
  }
  buildCounterRegionProto--;
}

core.int buildCounterResultsStorage = 0;
api.ResultsStorage buildResultsStorage() {
  final o = api.ResultsStorage();
  buildCounterResultsStorage++;
  if (buildCounterResultsStorage < 3) {
    o.resultsStoragePath = buildFileReference();
    o.xunitXmlFile = buildFileReference();
  }
  buildCounterResultsStorage--;
  return o;
}

void checkResultsStorage(api.ResultsStorage o) {
  buildCounterResultsStorage++;
  if (buildCounterResultsStorage < 3) {
    checkFileReference(o.resultsStoragePath!);
    checkFileReference(o.xunitXmlFile!);
  }
  buildCounterResultsStorage--;
}

core.int buildCounterRoboScriptExecution = 0;
api.RoboScriptExecution buildRoboScriptExecution() {
  final o = api.RoboScriptExecution();
  buildCounterRoboScriptExecution++;
  if (buildCounterRoboScriptExecution < 3) {
    o.successfulActions = 42;
    o.totalActions = 42;
  }
  buildCounterRoboScriptExecution--;
  return o;
}

void checkRoboScriptExecution(api.RoboScriptExecution o) {
  buildCounterRoboScriptExecution++;
  if (buildCounterRoboScriptExecution < 3) {
    unittest.expect(
      o.successfulActions!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalActions!,
      unittest.equals(42),
    );
  }
  buildCounterRoboScriptExecution--;
}

core.int buildCounterSafeHtmlProto = 0;
api.SafeHtmlProto buildSafeHtmlProto() {
  final o = api.SafeHtmlProto();
  buildCounterSafeHtmlProto++;
  if (buildCounterSafeHtmlProto < 3) {
    o.privateDoNotAccessOrElseSafeHtmlWrappedValue = 'foo';
  }
  buildCounterSafeHtmlProto--;
  return o;
}

void checkSafeHtmlProto(api.SafeHtmlProto o) {
  buildCounterSafeHtmlProto++;
  if (buildCounterSafeHtmlProto < 3) {
    unittest.expect(
      o.privateDoNotAccessOrElseSafeHtmlWrappedValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterSafeHtmlProto--;
}

core.int buildCounterScreen = 0;
api.Screen buildScreen() {
  final o = api.Screen();
  buildCounterScreen++;
  if (buildCounterScreen < 3) {
    o.fileReference = 'foo';
    o.locale = 'foo';
    o.model = 'foo';
    o.version = 'foo';
  }
  buildCounterScreen--;
  return o;
}

void checkScreen(api.Screen o) {
  buildCounterScreen++;
  if (buildCounterScreen < 3) {
    unittest.expect(
      o.fileReference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterScreen--;
}

core.List<api.Screen> buildUnnamed8104() => [
      buildScreen(),
      buildScreen(),
    ];

void checkUnnamed8104(core.List<api.Screen> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreen(o[0]);
  checkScreen(o[1]);
}

core.int buildCounterScreenshotCluster = 0;
api.ScreenshotCluster buildScreenshotCluster() {
  final o = api.ScreenshotCluster();
  buildCounterScreenshotCluster++;
  if (buildCounterScreenshotCluster < 3) {
    o.activity = 'foo';
    o.clusterId = 'foo';
    o.keyScreen = buildScreen();
    o.screens = buildUnnamed8104();
  }
  buildCounterScreenshotCluster--;
  return o;
}

void checkScreenshotCluster(api.ScreenshotCluster o) {
  buildCounterScreenshotCluster++;
  if (buildCounterScreenshotCluster < 3) {
    unittest.expect(
      o.activity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkScreen(o.keyScreen!);
    checkUnnamed8104(o.screens!);
  }
  buildCounterScreenshotCluster--;
}

core.List<api.StepSummary> buildUnnamed8105() => [
      buildStepSummary(),
      buildStepSummary(),
    ];

void checkUnnamed8105(core.List<api.StepSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepSummary(o[0]);
  checkStepSummary(o[1]);
}

core.int buildCounterShardSummary = 0;
api.ShardSummary buildShardSummary() {
  final o = api.ShardSummary();
  buildCounterShardSummary++;
  if (buildCounterShardSummary < 3) {
    o.runs = buildUnnamed8105();
    o.shardResult = buildMergedResult();
  }
  buildCounterShardSummary--;
  return o;
}

void checkShardSummary(api.ShardSummary o) {
  buildCounterShardSummary++;
  if (buildCounterShardSummary < 3) {
    checkUnnamed8105(o.runs!);
    checkMergedResult(o.shardResult!);
  }
  buildCounterShardSummary--;
}

core.int buildCounterSkippedDetail = 0;
api.SkippedDetail buildSkippedDetail() {
  final o = api.SkippedDetail();
  buildCounterSkippedDetail++;
  if (buildCounterSkippedDetail < 3) {
    o.incompatibleAppVersion = true;
    o.incompatibleArchitecture = true;
    o.incompatibleDevice = true;
  }
  buildCounterSkippedDetail--;
  return o;
}

void checkSkippedDetail(api.SkippedDetail o) {
  buildCounterSkippedDetail++;
  if (buildCounterSkippedDetail < 3) {
    unittest.expect(o.incompatibleAppVersion!, unittest.isTrue);
    unittest.expect(o.incompatibleArchitecture!, unittest.isTrue);
    unittest.expect(o.incompatibleDevice!, unittest.isTrue);
  }
  buildCounterSkippedDetail--;
}

core.int buildCounterSpecification = 0;
api.Specification buildSpecification() {
  final o = api.Specification();
  buildCounterSpecification++;
  if (buildCounterSpecification < 3) {
    o.androidTest = buildAndroidTest();
    o.iosTest = buildIosTest();
  }
  buildCounterSpecification--;
  return o;
}

void checkSpecification(api.Specification o) {
  buildCounterSpecification++;
  if (buildCounterSpecification < 3) {
    checkAndroidTest(o.androidTest!);
    checkIosTest(o.iosTest!);
  }
  buildCounterSpecification--;
}

core.int buildCounterStackTrace = 0;
api.StackTrace buildStackTrace() {
  final o = api.StackTrace();
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    o.exception = 'foo';
  }
  buildCounterStackTrace--;
  return o;
}

void checkStackTrace(api.StackTrace o) {
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    unittest.expect(
      o.exception!,
      unittest.equals('foo'),
    );
  }
  buildCounterStackTrace--;
}

core.int buildCounterStartActivityNotFound = 0;
api.StartActivityNotFound buildStartActivityNotFound() {
  final o = api.StartActivityNotFound();
  buildCounterStartActivityNotFound++;
  if (buildCounterStartActivityNotFound < 3) {
    o.action = 'foo';
    o.uri = 'foo';
  }
  buildCounterStartActivityNotFound--;
  return o;
}

void checkStartActivityNotFound(api.StartActivityNotFound o) {
  buildCounterStartActivityNotFound++;
  if (buildCounterStartActivityNotFound < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartActivityNotFound--;
}

core.Map<core.String, core.Object> buildUnnamed8106() => {
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

void checkUnnamed8106(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8107() => [
      buildUnnamed8106(),
      buildUnnamed8106(),
    ];

void checkUnnamed8107(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8106(o[0]);
  checkUnnamed8106(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8107();
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
    checkUnnamed8107(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.StepDimensionValueEntry> buildUnnamed8108() => [
      buildStepDimensionValueEntry(),
      buildStepDimensionValueEntry(),
    ];

void checkUnnamed8108(core.List<api.StepDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepDimensionValueEntry(o[0]);
  checkStepDimensionValueEntry(o[1]);
}

core.List<api.StepLabelsEntry> buildUnnamed8109() => [
      buildStepLabelsEntry(),
      buildStepLabelsEntry(),
    ];

void checkUnnamed8109(core.List<api.StepLabelsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepLabelsEntry(o[0]);
  checkStepLabelsEntry(o[1]);
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  final o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.description = 'foo';
    o.deviceUsageDuration = buildDuration();
    o.dimensionValue = buildUnnamed8108();
    o.hasImages = true;
    o.labels = buildUnnamed8109();
    o.multiStep = buildMultiStep();
    o.name = 'foo';
    o.outcome = buildOutcome();
    o.runDuration = buildDuration();
    o.state = 'foo';
    o.stepId = 'foo';
    o.testExecutionStep = buildTestExecutionStep();
    o.toolExecutionStep = buildToolExecutionStep();
  }
  buildCounterStep--;
  return o;
}

void checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    checkTimestamp(o.completionTime!);
    checkTimestamp(o.creationTime!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkDuration(o.deviceUsageDuration!);
    checkUnnamed8108(o.dimensionValue!);
    unittest.expect(o.hasImages!, unittest.isTrue);
    checkUnnamed8109(o.labels!);
    checkMultiStep(o.multiStep!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOutcome(o.outcome!);
    checkDuration(o.runDuration!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
    checkTestExecutionStep(o.testExecutionStep!);
    checkToolExecutionStep(o.toolExecutionStep!);
  }
  buildCounterStep--;
}

core.int buildCounterStepDimensionValueEntry = 0;
api.StepDimensionValueEntry buildStepDimensionValueEntry() {
  final o = api.StepDimensionValueEntry();
  buildCounterStepDimensionValueEntry++;
  if (buildCounterStepDimensionValueEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterStepDimensionValueEntry--;
  return o;
}

void checkStepDimensionValueEntry(api.StepDimensionValueEntry o) {
  buildCounterStepDimensionValueEntry++;
  if (buildCounterStepDimensionValueEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterStepDimensionValueEntry--;
}

core.int buildCounterStepLabelsEntry = 0;
api.StepLabelsEntry buildStepLabelsEntry() {
  final o = api.StepLabelsEntry();
  buildCounterStepLabelsEntry++;
  if (buildCounterStepLabelsEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterStepLabelsEntry--;
  return o;
}

void checkStepLabelsEntry(api.StepLabelsEntry o) {
  buildCounterStepLabelsEntry++;
  if (buildCounterStepLabelsEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterStepLabelsEntry--;
}

core.int buildCounterStepSummary = 0;
api.StepSummary buildStepSummary() {
  final o = api.StepSummary();
  buildCounterStepSummary++;
  if (buildCounterStepSummary < 3) {}
  buildCounterStepSummary--;
  return o;
}

void checkStepSummary(api.StepSummary o) {
  buildCounterStepSummary++;
  if (buildCounterStepSummary < 3) {}
  buildCounterStepSummary--;
}

core.int buildCounterSuccessDetail = 0;
api.SuccessDetail buildSuccessDetail() {
  final o = api.SuccessDetail();
  buildCounterSuccessDetail++;
  if (buildCounterSuccessDetail < 3) {
    o.otherNativeCrash = true;
  }
  buildCounterSuccessDetail--;
  return o;
}

void checkSuccessDetail(api.SuccessDetail o) {
  buildCounterSuccessDetail++;
  if (buildCounterSuccessDetail < 3) {
    unittest.expect(o.otherNativeCrash!, unittest.isTrue);
  }
  buildCounterSuccessDetail--;
}

core.List<api.SuggestionProto> buildUnnamed8110() => [
      buildSuggestionProto(),
      buildSuggestionProto(),
    ];

void checkUnnamed8110(core.List<api.SuggestionProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionProto(o[0]);
  checkSuggestionProto(o[1]);
}

core.int buildCounterSuggestionClusterProto = 0;
api.SuggestionClusterProto buildSuggestionClusterProto() {
  final o = api.SuggestionClusterProto();
  buildCounterSuggestionClusterProto++;
  if (buildCounterSuggestionClusterProto < 3) {
    o.category = 'foo';
    o.suggestions = buildUnnamed8110();
  }
  buildCounterSuggestionClusterProto--;
  return o;
}

void checkSuggestionClusterProto(api.SuggestionClusterProto o) {
  buildCounterSuggestionClusterProto++;
  if (buildCounterSuggestionClusterProto < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkUnnamed8110(o.suggestions!);
  }
  buildCounterSuggestionClusterProto--;
}

core.int buildCounterSuggestionProto = 0;
api.SuggestionProto buildSuggestionProto() {
  final o = api.SuggestionProto();
  buildCounterSuggestionProto++;
  if (buildCounterSuggestionProto < 3) {
    o.helpUrl = 'foo';
    o.longMessage = buildSafeHtmlProto();
    o.priority = 'foo';
    o.pseudoResourceId = 'foo';
    o.region = buildRegionProto();
    o.resourceName = 'foo';
    o.screenId = 'foo';
    o.secondaryPriority = 42.0;
    o.shortMessage = buildSafeHtmlProto();
    o.title = 'foo';
  }
  buildCounterSuggestionProto--;
  return o;
}

void checkSuggestionProto(api.SuggestionProto o) {
  buildCounterSuggestionProto++;
  if (buildCounterSuggestionProto < 3) {
    unittest.expect(
      o.helpUrl!,
      unittest.equals('foo'),
    );
    checkSafeHtmlProto(o.longMessage!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pseudoResourceId!,
      unittest.equals('foo'),
    );
    checkRegionProto(o.region!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondaryPriority!,
      unittest.equals(42.0),
    );
    checkSafeHtmlProto(o.shortMessage!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuggestionProto--;
}

core.List<api.StackTrace> buildUnnamed8111() => [
      buildStackTrace(),
      buildStackTrace(),
    ];

void checkUnnamed8111(core.List<api.StackTrace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackTrace(o[0]);
  checkStackTrace(o[1]);
}

core.List<api.ToolOutputReference> buildUnnamed8112() => [
      buildToolOutputReference(),
      buildToolOutputReference(),
    ];

void checkUnnamed8112(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0]);
  checkToolOutputReference(o[1]);
}

core.int buildCounterTestCase = 0;
api.TestCase buildTestCase() {
  final o = api.TestCase();
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    o.elapsedTime = buildDuration();
    o.endTime = buildTimestamp();
    o.skippedMessage = 'foo';
    o.stackTraces = buildUnnamed8111();
    o.startTime = buildTimestamp();
    o.status = 'foo';
    o.testCaseId = 'foo';
    o.testCaseReference = buildTestCaseReference();
    o.toolOutputs = buildUnnamed8112();
  }
  buildCounterTestCase--;
  return o;
}

void checkTestCase(api.TestCase o) {
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    checkDuration(o.elapsedTime!);
    checkTimestamp(o.endTime!);
    unittest.expect(
      o.skippedMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed8111(o.stackTraces!);
    checkTimestamp(o.startTime!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testCaseId!,
      unittest.equals('foo'),
    );
    checkTestCaseReference(o.testCaseReference!);
    checkUnnamed8112(o.toolOutputs!);
  }
  buildCounterTestCase--;
}

core.int buildCounterTestCaseReference = 0;
api.TestCaseReference buildTestCaseReference() {
  final o = api.TestCaseReference();
  buildCounterTestCaseReference++;
  if (buildCounterTestCaseReference < 3) {
    o.className = 'foo';
    o.name = 'foo';
    o.testSuiteName = 'foo';
  }
  buildCounterTestCaseReference--;
  return o;
}

void checkTestCaseReference(api.TestCaseReference o) {
  buildCounterTestCaseReference++;
  if (buildCounterTestCaseReference < 3) {
    unittest.expect(
      o.className!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testSuiteName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestCaseReference--;
}

core.List<api.TestIssue> buildUnnamed8113() => [
      buildTestIssue(),
      buildTestIssue(),
    ];

void checkUnnamed8113(core.List<api.TestIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestIssue(o[0]);
  checkTestIssue(o[1]);
}

core.List<api.TestSuiteOverview> buildUnnamed8114() => [
      buildTestSuiteOverview(),
      buildTestSuiteOverview(),
    ];

void checkUnnamed8114(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0]);
  checkTestSuiteOverview(o[1]);
}

core.int buildCounterTestExecutionStep = 0;
api.TestExecutionStep buildTestExecutionStep() {
  final o = api.TestExecutionStep();
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    o.testIssues = buildUnnamed8113();
    o.testSuiteOverviews = buildUnnamed8114();
    o.testTiming = buildTestTiming();
    o.toolExecution = buildToolExecution();
  }
  buildCounterTestExecutionStep--;
  return o;
}

void checkTestExecutionStep(api.TestExecutionStep o) {
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    checkUnnamed8113(o.testIssues!);
    checkUnnamed8114(o.testSuiteOverviews!);
    checkTestTiming(o.testTiming!);
    checkToolExecution(o.toolExecution!);
  }
  buildCounterTestExecutionStep--;
}

core.int buildCounterTestIssue = 0;
api.TestIssue buildTestIssue() {
  final o = api.TestIssue();
  buildCounterTestIssue++;
  if (buildCounterTestIssue < 3) {
    o.category = 'foo';
    o.errorMessage = 'foo';
    o.severity = 'foo';
    o.stackTrace = buildStackTrace();
    o.type = 'foo';
    o.warning = buildAny();
  }
  buildCounterTestIssue--;
  return o;
}

void checkTestIssue(api.TestIssue o) {
  buildCounterTestIssue++;
  if (buildCounterTestIssue < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    checkStackTrace(o.stackTrace!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkAny(o.warning!);
  }
  buildCounterTestIssue--;
}

core.int buildCounterTestSuiteOverview = 0;
api.TestSuiteOverview buildTestSuiteOverview() {
  final o = api.TestSuiteOverview();
  buildCounterTestSuiteOverview++;
  if (buildCounterTestSuiteOverview < 3) {
    o.elapsedTime = buildDuration();
    o.errorCount = 42;
    o.failureCount = 42;
    o.flakyCount = 42;
    o.name = 'foo';
    o.skippedCount = 42;
    o.totalCount = 42;
    o.xmlSource = buildFileReference();
  }
  buildCounterTestSuiteOverview--;
  return o;
}

void checkTestSuiteOverview(api.TestSuiteOverview o) {
  buildCounterTestSuiteOverview++;
  if (buildCounterTestSuiteOverview < 3) {
    checkDuration(o.elapsedTime!);
    unittest.expect(
      o.errorCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.failureCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.flakyCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skippedCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalCount!,
      unittest.equals(42),
    );
    checkFileReference(o.xmlSource!);
  }
  buildCounterTestSuiteOverview--;
}

core.int buildCounterTestTiming = 0;
api.TestTiming buildTestTiming() {
  final o = api.TestTiming();
  buildCounterTestTiming++;
  if (buildCounterTestTiming < 3) {
    o.testProcessDuration = buildDuration();
  }
  buildCounterTestTiming--;
  return o;
}

void checkTestTiming(api.TestTiming o) {
  buildCounterTestTiming++;
  if (buildCounterTestTiming < 3) {
    checkDuration(o.testProcessDuration!);
  }
  buildCounterTestTiming--;
}

core.int buildCounterThumbnail = 0;
api.Thumbnail buildThumbnail() {
  final o = api.Thumbnail();
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.heightPx = 42;
    o.widthPx = 42;
  }
  buildCounterThumbnail--;
  return o;
}

void checkThumbnail(api.Thumbnail o) {
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.heightPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.widthPx!,
      unittest.equals(42),
    );
  }
  buildCounterThumbnail--;
}

core.int buildCounterTimestamp = 0;
api.Timestamp buildTimestamp() {
  final o = api.Timestamp();
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    o.nanos = 42;
    o.seconds = 'foo';
  }
  buildCounterTimestamp--;
  return o;
}

void checkTimestamp(api.Timestamp o) {
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimestamp--;
}

core.List<core.String> buildUnnamed8115() => [
      'foo',
      'foo',
    ];

void checkUnnamed8115(core.List<core.String> o) {
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

core.List<api.FileReference> buildUnnamed8116() => [
      buildFileReference(),
      buildFileReference(),
    ];

void checkUnnamed8116(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.List<api.ToolOutputReference> buildUnnamed8117() => [
      buildToolOutputReference(),
      buildToolOutputReference(),
    ];

void checkUnnamed8117(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0]);
  checkToolOutputReference(o[1]);
}

core.int buildCounterToolExecution = 0;
api.ToolExecution buildToolExecution() {
  final o = api.ToolExecution();
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    o.commandLineArguments = buildUnnamed8115();
    o.exitCode = buildToolExitCode();
    o.toolLogs = buildUnnamed8116();
    o.toolOutputs = buildUnnamed8117();
  }
  buildCounterToolExecution--;
  return o;
}

void checkToolExecution(api.ToolExecution o) {
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    checkUnnamed8115(o.commandLineArguments!);
    checkToolExitCode(o.exitCode!);
    checkUnnamed8116(o.toolLogs!);
    checkUnnamed8117(o.toolOutputs!);
  }
  buildCounterToolExecution--;
}

core.int buildCounterToolExecutionStep = 0;
api.ToolExecutionStep buildToolExecutionStep() {
  final o = api.ToolExecutionStep();
  buildCounterToolExecutionStep++;
  if (buildCounterToolExecutionStep < 3) {
    o.toolExecution = buildToolExecution();
  }
  buildCounterToolExecutionStep--;
  return o;
}

void checkToolExecutionStep(api.ToolExecutionStep o) {
  buildCounterToolExecutionStep++;
  if (buildCounterToolExecutionStep < 3) {
    checkToolExecution(o.toolExecution!);
  }
  buildCounterToolExecutionStep--;
}

core.int buildCounterToolExitCode = 0;
api.ToolExitCode buildToolExitCode() {
  final o = api.ToolExitCode();
  buildCounterToolExitCode++;
  if (buildCounterToolExitCode < 3) {
    o.number = 42;
  }
  buildCounterToolExitCode--;
  return o;
}

void checkToolExitCode(api.ToolExitCode o) {
  buildCounterToolExitCode++;
  if (buildCounterToolExitCode < 3) {
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
  }
  buildCounterToolExitCode--;
}

core.int buildCounterToolOutputReference = 0;
api.ToolOutputReference buildToolOutputReference() {
  final o = api.ToolOutputReference();
  buildCounterToolOutputReference++;
  if (buildCounterToolOutputReference < 3) {
    o.creationTime = buildTimestamp();
    o.output = buildFileReference();
    o.testCase = buildTestCaseReference();
  }
  buildCounterToolOutputReference--;
  return o;
}

void checkToolOutputReference(api.ToolOutputReference o) {
  buildCounterToolOutputReference++;
  if (buildCounterToolOutputReference < 3) {
    checkTimestamp(o.creationTime!);
    checkFileReference(o.output!);
    checkTestCaseReference(o.testCase!);
  }
  buildCounterToolOutputReference--;
}

core.int buildCounterUIElementTooDeep = 0;
api.UIElementTooDeep buildUIElementTooDeep() {
  final o = api.UIElementTooDeep();
  buildCounterUIElementTooDeep++;
  if (buildCounterUIElementTooDeep < 3) {
    o.depth = 42;
    o.screenId = 'foo';
    o.screenStateId = 'foo';
  }
  buildCounterUIElementTooDeep--;
  return o;
}

void checkUIElementTooDeep(api.UIElementTooDeep o) {
  buildCounterUIElementTooDeep++;
  if (buildCounterUIElementTooDeep < 3) {
    unittest.expect(
      o.depth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenStateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUIElementTooDeep--;
}

core.int buildCounterUnspecifiedWarning = 0;
api.UnspecifiedWarning buildUnspecifiedWarning() {
  final o = api.UnspecifiedWarning();
  buildCounterUnspecifiedWarning++;
  if (buildCounterUnspecifiedWarning < 3) {}
  buildCounterUnspecifiedWarning--;
  return o;
}

void checkUnspecifiedWarning(api.UnspecifiedWarning o) {
  buildCounterUnspecifiedWarning++;
  if (buildCounterUnspecifiedWarning < 3) {}
  buildCounterUnspecifiedWarning--;
}

core.int buildCounterUnusedRoboDirective = 0;
api.UnusedRoboDirective buildUnusedRoboDirective() {
  final o = api.UnusedRoboDirective();
  buildCounterUnusedRoboDirective++;
  if (buildCounterUnusedRoboDirective < 3) {
    o.resourceName = 'foo';
  }
  buildCounterUnusedRoboDirective--;
  return o;
}

void checkUnusedRoboDirective(api.UnusedRoboDirective o) {
  buildCounterUnusedRoboDirective++;
  if (buildCounterUnusedRoboDirective < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnusedRoboDirective--;
}

core.int buildCounterUpgradeInsight = 0;
api.UpgradeInsight buildUpgradeInsight() {
  final o = api.UpgradeInsight();
  buildCounterUpgradeInsight++;
  if (buildCounterUpgradeInsight < 3) {
    o.packageName = 'foo';
    o.upgradeToVersion = 'foo';
  }
  buildCounterUpgradeInsight--;
  return o;
}

void checkUpgradeInsight(api.UpgradeInsight o) {
  buildCounterUpgradeInsight++;
  if (buildCounterUpgradeInsight < 3) {
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upgradeToVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeInsight--;
}

core.int buildCounterUsedRoboDirective = 0;
api.UsedRoboDirective buildUsedRoboDirective() {
  final o = api.UsedRoboDirective();
  buildCounterUsedRoboDirective++;
  if (buildCounterUsedRoboDirective < 3) {
    o.resourceName = 'foo';
  }
  buildCounterUsedRoboDirective--;
  return o;
}

void checkUsedRoboDirective(api.UsedRoboDirective o) {
  buildCounterUsedRoboDirective++;
  if (buildCounterUsedRoboDirective < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsedRoboDirective--;
}

core.int buildCounterUsedRoboIgnoreDirective = 0;
api.UsedRoboIgnoreDirective buildUsedRoboIgnoreDirective() {
  final o = api.UsedRoboIgnoreDirective();
  buildCounterUsedRoboIgnoreDirective++;
  if (buildCounterUsedRoboIgnoreDirective < 3) {
    o.resourceName = 'foo';
  }
  buildCounterUsedRoboIgnoreDirective--;
  return o;
}

void checkUsedRoboIgnoreDirective(api.UsedRoboIgnoreDirective o) {
  buildCounterUsedRoboIgnoreDirective++;
  if (buildCounterUsedRoboIgnoreDirective < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsedRoboIgnoreDirective--;
}

core.List<core.String> buildUnnamed8118() => [
      'foo',
      'foo',
    ];

void checkUnnamed8118(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-ANR', () {
    unittest.test('to-json--from-json', () async {
      final o = buildANR();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ANR.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkANR(od);
    });
  });

  unittest.group('obj-schema-AndroidAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidAppInfo(od);
    });
  });

  unittest.group('obj-schema-AndroidInstrumentationTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidInstrumentationTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidInstrumentationTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidInstrumentationTest(od);
    });
  });

  unittest.group('obj-schema-AndroidRoboTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidRoboTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidRoboTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidRoboTest(od);
    });
  });

  unittest.group('obj-schema-AndroidTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidTest(od);
    });
  });

  unittest.group('obj-schema-AndroidTestLoop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidTestLoop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidTestLoop.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidTestLoop(od);
    });
  });

  unittest.group('obj-schema-Any', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAny();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Any.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAny(od);
    });
  });

  unittest.group('obj-schema-AppStartTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppStartTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppStartTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppStartTime(od);
    });
  });

  unittest.group('obj-schema-AvailableDeepLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvailableDeepLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvailableDeepLinks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvailableDeepLinks(od);
    });
  });

  unittest.group('obj-schema-BasicPerfSampleSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicPerfSampleSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicPerfSampleSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicPerfSampleSeries(od);
    });
  });

  unittest.group('obj-schema-BatchCreatePerfSamplesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreatePerfSamplesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreatePerfSamplesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePerfSamplesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreatePerfSamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreatePerfSamplesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreatePerfSamplesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePerfSamplesResponse(od);
    });
  });

  unittest.group('obj-schema-BlankScreen', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlankScreen();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlankScreen.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlankScreen(od);
    });
  });

  unittest.group('obj-schema-CPUInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCPUInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CPUInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCPUInfo(od);
    });
  });

  unittest.group('obj-schema-CrashDialogError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrashDialogError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrashDialogError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrashDialogError(od);
    });
  });

  unittest.group('obj-schema-DeviceOutOfMemory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceOutOfMemory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceOutOfMemory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceOutOfMemory(od);
    });
  });

  unittest.group('obj-schema-Duration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Duration.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDuration(od);
    });
  });

  unittest.group('obj-schema-EncounteredLoginScreen', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncounteredLoginScreen();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncounteredLoginScreen.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncounteredLoginScreen(od);
    });
  });

  unittest.group('obj-schema-EncounteredNonAndroidUiWidgetScreen', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncounteredNonAndroidUiWidgetScreen();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncounteredNonAndroidUiWidgetScreen.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncounteredNonAndroidUiWidgetScreen(od);
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

  unittest.group('obj-schema-EnvironmentDimensionValueEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentDimensionValueEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentDimensionValueEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironmentDimensionValueEntry(od);
    });
  });

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Execution.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecution(od);
    });
  });

  unittest.group('obj-schema-FailedToInstall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailedToInstall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailedToInstall.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailedToInstall(od);
    });
  });

  unittest.group('obj-schema-FailureDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailureDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailureDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureDetail(od);
    });
  });

  unittest.group('obj-schema-FatalException', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFatalException();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FatalException.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFatalException(od);
    });
  });

  unittest.group('obj-schema-FileReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileReference(od);
    });
  });

  unittest.group('obj-schema-GraphicsStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphicsStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphicsStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGraphicsStats(od);
    });
  });

  unittest.group('obj-schema-GraphicsStatsBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphicsStatsBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphicsStatsBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGraphicsStatsBucket(od);
    });
  });

  unittest.group('obj-schema-History', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.History.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHistory(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-InAppPurchasesFound', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInAppPurchasesFound();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InAppPurchasesFound.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInAppPurchasesFound(od);
    });
  });

  unittest.group('obj-schema-InconclusiveDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInconclusiveDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InconclusiveDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInconclusiveDetail(od);
    });
  });

  unittest.group('obj-schema-IndividualOutcome', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndividualOutcome();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndividualOutcome.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndividualOutcome(od);
    });
  });

  unittest.group('obj-schema-InsufficientCoverage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsufficientCoverage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsufficientCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsufficientCoverage(od);
    });
  });

  unittest.group('obj-schema-IosAppCrashed', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosAppCrashed();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosAppCrashed.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosAppCrashed(od);
    });
  });

  unittest.group('obj-schema-IosAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IosAppInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosAppInfo(od);
    });
  });

  unittest.group('obj-schema-IosRoboTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosRoboTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosRoboTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosRoboTest(od);
    });
  });

  unittest.group('obj-schema-IosTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IosTest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosTest(od);
    });
  });

  unittest.group('obj-schema-IosTestLoop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosTestLoop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosTestLoop.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosTestLoop(od);
    });
  });

  unittest.group('obj-schema-IosXcTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosXcTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IosXcTest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosXcTest(od);
    });
  });

  unittest.group('obj-schema-LauncherActivityNotFound', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLauncherActivityNotFound();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LauncherActivityNotFound.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLauncherActivityNotFound(od);
    });
  });

  unittest.group('obj-schema-ListEnvironmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListHistoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHistoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHistoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHistoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPerfSampleSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPerfSampleSeriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPerfSampleSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPerfSampleSeriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPerfSamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPerfSamplesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPerfSamplesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPerfSamplesResponse(od);
    });
  });

  unittest.group('obj-schema-ListScreenshotClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScreenshotClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScreenshotClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScreenshotClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListStepAccessibilityClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStepAccessibilityClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStepAccessibilityClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepAccessibilityClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListStepThumbnailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStepThumbnailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStepThumbnailsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepThumbnailsResponse(od);
    });
  });

  unittest.group('obj-schema-ListStepsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStepsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStepsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTestCasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTestCasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTestCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTestCasesResponse(od);
    });
  });

  unittest.group('obj-schema-LogcatCollectionError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogcatCollectionError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogcatCollectionError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogcatCollectionError(od);
    });
  });

  unittest.group('obj-schema-MatrixDimensionDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatrixDimensionDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MatrixDimensionDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatrixDimensionDefinition(od);
    });
  });

  unittest.group('obj-schema-MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MemoryInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMemoryInfo(od);
    });
  });

  unittest.group('obj-schema-MergedResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergedResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMergedResult(od);
    });
  });

  unittest.group('obj-schema-MultiStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MultiStep.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMultiStep(od);
    });
  });

  unittest.group('obj-schema-NativeCrash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNativeCrash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NativeCrash.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNativeCrash(od);
    });
  });

  unittest.group('obj-schema-NonSdkApi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonSdkApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NonSdkApi.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApi(od);
    });
  });

  unittest.group('obj-schema-NonSdkApiInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonSdkApiInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonSdkApiInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApiInsight(od);
    });
  });

  unittest.group('obj-schema-NonSdkApiUsageViolation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonSdkApiUsageViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonSdkApiUsageViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApiUsageViolation(od);
    });
  });

  unittest.group('obj-schema-NonSdkApiUsageViolationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonSdkApiUsageViolationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonSdkApiUsageViolationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApiUsageViolationReport(od);
    });
  });

  unittest.group('obj-schema-Outcome', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutcome();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Outcome.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOutcome(od);
    });
  });

  unittest.group('obj-schema-OverlappingUIElements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOverlappingUIElements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OverlappingUIElements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOverlappingUIElements(od);
    });
  });

  unittest.group('obj-schema-PendingGoogleUpdateInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPendingGoogleUpdateInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PendingGoogleUpdateInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPendingGoogleUpdateInsight(od);
    });
  });

  unittest.group('obj-schema-PerfEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerfEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerfEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerfEnvironment(od);
    });
  });

  unittest.group('obj-schema-PerfMetricsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerfMetricsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerfMetricsSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerfMetricsSummary(od);
    });
  });

  unittest.group('obj-schema-PerfSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerfSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PerfSample.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPerfSample(od);
    });
  });

  unittest.group('obj-schema-PerfSampleSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerfSampleSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerfSampleSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerfSampleSeries(od);
    });
  });

  unittest.group('obj-schema-PerformedGoogleLogin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformedGoogleLogin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformedGoogleLogin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformedGoogleLogin(od);
    });
  });

  unittest.group('obj-schema-PerformedMonkeyActions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformedMonkeyActions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformedMonkeyActions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformedMonkeyActions(od);
    });
  });

  unittest.group('obj-schema-PrimaryStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrimaryStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrimaryStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrimaryStep(od);
    });
  });

  unittest.group('obj-schema-ProjectSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectSettings(od);
    });
  });

  unittest.group('obj-schema-PublishXunitXmlFilesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishXunitXmlFilesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishXunitXmlFilesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublishXunitXmlFilesRequest(od);
    });
  });

  unittest.group('obj-schema-RegionProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionProto(od);
    });
  });

  unittest.group('obj-schema-ResultsStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultsStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultsStorage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultsStorage(od);
    });
  });

  unittest.group('obj-schema-RoboScriptExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoboScriptExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoboScriptExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoboScriptExecution(od);
    });
  });

  unittest.group('obj-schema-SafeHtmlProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSafeHtmlProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SafeHtmlProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSafeHtmlProto(od);
    });
  });

  unittest.group('obj-schema-Screen', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreen();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Screen.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScreen(od);
    });
  });

  unittest.group('obj-schema-ScreenshotCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreenshotCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScreenshotCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScreenshotCluster(od);
    });
  });

  unittest.group('obj-schema-ShardSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShardSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShardSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShardSummary(od);
    });
  });

  unittest.group('obj-schema-SkippedDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkippedDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkippedDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSkippedDetail(od);
    });
  });

  unittest.group('obj-schema-Specification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpecification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Specification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpecification(od);
    });
  });

  unittest.group('obj-schema-StackTrace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StackTrace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStackTrace(od);
    });
  });

  unittest.group('obj-schema-StartActivityNotFound', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartActivityNotFound();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartActivityNotFound.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartActivityNotFound(od);
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

  unittest.group('obj-schema-StepDimensionValueEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStepDimensionValueEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StepDimensionValueEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepDimensionValueEntry(od);
    });
  });

  unittest.group('obj-schema-StepLabelsEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStepLabelsEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StepLabelsEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepLabelsEntry(od);
    });
  });

  unittest.group('obj-schema-StepSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStepSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StepSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepSummary(od);
    });
  });

  unittest.group('obj-schema-SuccessDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuccessDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuccessDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuccessDetail(od);
    });
  });

  unittest.group('obj-schema-SuggestionClusterProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestionClusterProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestionClusterProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestionClusterProto(od);
    });
  });

  unittest.group('obj-schema-SuggestionProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestionProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestionProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestionProto(od);
    });
  });

  unittest.group('obj-schema-TestCase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestCase.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestCase(od);
    });
  });

  unittest.group('obj-schema-TestCaseReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestCaseReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestCaseReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestCaseReference(od);
    });
  });

  unittest.group('obj-schema-TestExecutionStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestExecutionStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestExecutionStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestExecutionStep(od);
    });
  });

  unittest.group('obj-schema-TestIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestIssue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestIssue(od);
    });
  });

  unittest.group('obj-schema-TestSuiteOverview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestSuiteOverview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestSuiteOverview.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestSuiteOverview(od);
    });
  });

  unittest.group('obj-schema-TestTiming', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestTiming();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestTiming.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestTiming(od);
    });
  });

  unittest.group('obj-schema-Thumbnail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThumbnail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Thumbnail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThumbnail(od);
    });
  });

  unittest.group('obj-schema-Timestamp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestamp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Timestamp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimestamp(od);
    });
  });

  unittest.group('obj-schema-ToolExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolExecution(od);
    });
  });

  unittest.group('obj-schema-ToolExecutionStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolExecutionStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolExecutionStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolExecutionStep(od);
    });
  });

  unittest.group('obj-schema-ToolExitCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolExitCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolExitCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolExitCode(od);
    });
  });

  unittest.group('obj-schema-ToolOutputReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolOutputReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolOutputReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolOutputReference(od);
    });
  });

  unittest.group('obj-schema-UIElementTooDeep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUIElementTooDeep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UIElementTooDeep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUIElementTooDeep(od);
    });
  });

  unittest.group('obj-schema-UnspecifiedWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnspecifiedWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnspecifiedWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnspecifiedWarning(od);
    });
  });

  unittest.group('obj-schema-UnusedRoboDirective', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnusedRoboDirective();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnusedRoboDirective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnusedRoboDirective(od);
    });
  });

  unittest.group('obj-schema-UpgradeInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeInsight(od);
    });
  });

  unittest.group('obj-schema-UsedRoboDirective', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsedRoboDirective();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsedRoboDirective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsedRoboDirective(od);
    });
  });

  unittest.group('obj-schema-UsedRoboIgnoreDirective', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsedRoboIgnoreDirective();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsedRoboIgnoreDirective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsedRoboIgnoreDirective(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects;
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/settings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/settings'),
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
        final resp = convert.json.encode(buildProjectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getSettings(arg_projectId, $fields: arg_$fields);
      checkProjectSettings(response as api.ProjectSettings);
    });

    unittest.test('method--initializeSettings', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects;
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf(':initializeSettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals(':initializeSettings'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildProjectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.initializeSettings(arg_projectId, $fields: arg_$fields);
      checkProjectSettings(response as api.ProjectSettings);
    });
  });

  unittest.group('resource-ProjectsHistoriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories;
      final arg_request = buildHistory();
      final arg_projectId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.History.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHistory(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories', pathOffset);
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
          unittest.equals('/histories'),
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
        final resp = convert.json.encode(buildHistory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkHistory(response as api.History);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
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
        final resp = convert.json.encode(buildHistory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_projectId, arg_historyId, $fields: arg_$fields);
      checkHistory(response as api.History);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories;
      final arg_projectId = 'foo';
      final arg_filterByName = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories', pathOffset);
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
          unittest.equals('/histories'),
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
          queryMap['filterByName']!.first,
          unittest.equals(arg_filterByName),
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
        final resp = convert.json.encode(buildListHistoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          filterByName: arg_filterByName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListHistoriesResponse(response as api.ListHistoriesResponse);
    });
  });

  unittest.group('resource-ProjectsHistoriesExecutionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions;
      final arg_request = buildExecution();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Execution.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExecution(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/executions'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_projectId, arg_historyId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId,
          $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/executions'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_historyId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions;
      final arg_request = buildExecution();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Execution.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExecution(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_historyId, arg_executionId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });
  });

  unittest.group('resource-ProjectsHistoriesExecutionsClustersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ToolResultsApi(mock).projects.histories.executions.clusters;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
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
        final resp = convert.json.encode(buildScreenshotCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId, arg_clusterId,
          $fields: arg_$fields);
      checkScreenshotCluster(response as api.ScreenshotCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ToolResultsApi(mock).projects.histories.executions.clusters;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
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
        final resp = convert.json.encode(buildListScreenshotClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_projectId, arg_historyId, arg_executionId,
          $fields: arg_$fields);
      checkListScreenshotClustersResponse(
          response as api.ListScreenshotClustersResponse);
    });
  });

  unittest.group('resource-ProjectsHistoriesExecutionsEnvironmentsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ToolResultsApi(mock).projects.histories.executions.environments;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_environmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/environments/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentId'),
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
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId, arg_environmentId,
          $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ToolResultsApi(mock).projects.histories.executions.environments;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/environments'),
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
        final resp = convert.json.encode(buildListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_projectId, arg_historyId, arg_executionId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEnvironmentsResponse(response as api.ListEnvironmentsResponse);
    });
  });

  unittest.group('resource-ProjectsHistoriesExecutionsStepsResource', () {
    unittest.test('method--accessibilityClusters', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_name = 'foo';
      final arg_locale = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('toolresults/v1beta3/'),
        );
        pathOffset += 20;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListStepAccessibilityClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.accessibilityClusters(arg_name,
          locale: arg_locale, $fields: arg_$fields);
      checkListStepAccessibilityClustersResponse(
          response as api.ListStepAccessibilityClustersResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_request = buildStep();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Step.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStep(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/steps'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_projectId, arg_historyId, arg_executionId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkStep(response as api.Step);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
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
        final resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkStep(response as api.Step);
    });

    unittest.test('method--getPerfMetricsSummary', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfMetricsSummary', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/perfMetricsSummary'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildPerfMetricsSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPerfMetricsSummary(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkPerfMetricsSummary(response as api.PerfMetricsSummary);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/steps'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildListStepsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_projectId, arg_historyId, arg_executionId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListStepsResponse(response as api.ListStepsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_request = buildStep();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Step.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStep(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
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
        final resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkStep(response as api.Step);
    });

    unittest.test('method--publishXunitXmlFiles', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      final arg_request = buildPublishXunitXmlFilesRequest();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PublishXunitXmlFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPublishXunitXmlFilesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf(':publishXunitXmlFiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals(':publishXunitXmlFiles'),
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
        final resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.publishXunitXmlFiles(arg_request,
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkStep(response as api.Step);
    });
  });

  unittest.group(
      'resource-ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfMetricsSummary;
      final arg_request = buildPerfMetricsSummary();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PerfMetricsSummary.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPerfMetricsSummary(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfMetricsSummary', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/perfMetricsSummary'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildPerfMetricsSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkPerfMetricsSummary(response as api.PerfMetricsSummary);
    });
  });

  unittest.group(
      'resource-ProjectsHistoriesExecutionsStepsPerfSampleSeriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries;
      final arg_request = buildPerfSampleSeries();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PerfSampleSeries.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPerfSampleSeries(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfSampleSeries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/perfSampleSeries'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPerfSampleSeries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkPerfSampleSeries(response as api.PerfSampleSeries);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_sampleSeriesId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfSampleSeries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/perfSampleSeries/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sampleSeriesId'),
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
        final resp = convert.json.encode(buildPerfSampleSeries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_historyId,
          arg_executionId, arg_stepId, arg_sampleSeriesId,
          $fields: arg_$fields);
      checkPerfSampleSeries(response as api.PerfSampleSeries);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_filter = buildUnnamed8118();
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfSampleSeries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/perfSampleSeries'),
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
          queryMap['filter']!,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPerfSampleSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          filter: arg_filter, $fields: arg_$fields);
      checkListPerfSampleSeriesResponse(
          response as api.ListPerfSampleSeriesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResource',
      () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries
          .samples;
      final arg_request = buildBatchCreatePerfSamplesRequest();
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_sampleSeriesId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreatePerfSamplesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreatePerfSamplesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfSampleSeries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/perfSampleSeries/'),
        );
        pathOffset += 18;
        index = path.indexOf('/samples:batchCreate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sampleSeriesId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/samples:batchCreate'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildBatchCreatePerfSamplesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchCreate(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId, arg_sampleSeriesId,
          $fields: arg_$fields);
      checkBatchCreatePerfSamplesResponse(
          response as api.BatchCreatePerfSamplesResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries
          .samples;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_sampleSeriesId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/perfSampleSeries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/perfSampleSeries/'),
        );
        pathOffset += 18;
        index = path.indexOf('/samples', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sampleSeriesId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/samples'),
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
        final resp = convert.json.encode(buildListPerfSamplesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_historyId,
          arg_executionId, arg_stepId, arg_sampleSeriesId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPerfSamplesResponse(response as api.ListPerfSamplesResponse);
    });
  });

  unittest.group('resource-ProjectsHistoriesExecutionsStepsTestCasesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .testCases;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
      final arg_testCaseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testCases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/testCases/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_testCaseId'),
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
        final resp = convert.json.encode(buildTestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_historyId,
          arg_executionId, arg_stepId, arg_testCaseId,
          $fields: arg_$fields);
      checkTestCase(response as api.TestCase);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .testCases;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testCases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/testCases'),
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
        final resp = convert.json.encode(buildListTestCasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTestCasesResponse(response as api.ListTestCasesResponse);
    });
  });

  unittest.group('resource-ProjectsHistoriesExecutionsStepsThumbnailsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .thumbnails;
      final arg_projectId = 'foo';
      final arg_historyId = 'foo';
      final arg_executionId = 'foo';
      final arg_stepId = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('toolresults/v1beta3/projects/'),
        );
        pathOffset += 29;
        index = path.indexOf('/histories/', pathOffset);
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
          unittest.equals('/histories/'),
        );
        pathOffset += 11;
        index = path.indexOf('/executions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/executions/'),
        );
        pathOffset += 12;
        index = path.indexOf('/steps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/steps/'),
        );
        pathOffset += 7;
        index = path.indexOf('/thumbnails', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/thumbnails'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildListStepThumbnailsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListStepThumbnailsResponse(
          response as api.ListStepThumbnailsResponse);
    });
  });
}
