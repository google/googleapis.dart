// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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
  var o = api.ANR();
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
    checkStackTrace(o.stackTrace! as api.StackTrace);
  }
  buildCounterANR--;
}

core.int buildCounterAndroidAppInfo = 0;
api.AndroidAppInfo buildAndroidAppInfo() {
  var o = api.AndroidAppInfo();
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

core.List<core.String> buildUnnamed7590() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7590(core.List<core.String> o) {
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
  var o = api.AndroidInstrumentationTest();
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    o.testPackageId = 'foo';
    o.testRunnerClass = 'foo';
    o.testTargets = buildUnnamed7590();
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
    checkUnnamed7590(o.testTargets!);
    unittest.expect(o.useOrchestrator!, unittest.isTrue);
  }
  buildCounterAndroidInstrumentationTest--;
}

core.int buildCounterAndroidRoboTest = 0;
api.AndroidRoboTest buildAndroidRoboTest() {
  var o = api.AndroidRoboTest();
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
  var o = api.AndroidTest();
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
    checkAndroidAppInfo(o.androidAppInfo! as api.AndroidAppInfo);
    checkAndroidInstrumentationTest(
        o.androidInstrumentationTest! as api.AndroidInstrumentationTest);
    checkAndroidRoboTest(o.androidRoboTest! as api.AndroidRoboTest);
    checkAndroidTestLoop(o.androidTestLoop! as api.AndroidTestLoop);
    checkDuration(o.testTimeout! as api.Duration);
  }
  buildCounterAndroidTest--;
}

core.int buildCounterAndroidTestLoop = 0;
api.AndroidTestLoop buildAndroidTestLoop() {
  var o = api.AndroidTestLoop();
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
  var o = api.Any();
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
  var o = api.AppStartTime();
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
    checkDuration(o.fullyDrawnTime! as api.Duration);
    checkDuration(o.initialDisplayTime! as api.Duration);
  }
  buildCounterAppStartTime--;
}

core.int buildCounterAvailableDeepLinks = 0;
api.AvailableDeepLinks buildAvailableDeepLinks() {
  var o = api.AvailableDeepLinks();
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
  var o = api.BasicPerfSampleSeries();
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

core.List<api.PerfSample> buildUnnamed7591() {
  var o = <api.PerfSample>[];
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

void checkUnnamed7591(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0] as api.PerfSample);
  checkPerfSample(o[1] as api.PerfSample);
}

core.int buildCounterBatchCreatePerfSamplesRequest = 0;
api.BatchCreatePerfSamplesRequest buildBatchCreatePerfSamplesRequest() {
  var o = api.BatchCreatePerfSamplesRequest();
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    o.perfSamples = buildUnnamed7591();
  }
  buildCounterBatchCreatePerfSamplesRequest--;
  return o;
}

void checkBatchCreatePerfSamplesRequest(api.BatchCreatePerfSamplesRequest o) {
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    checkUnnamed7591(o.perfSamples!);
  }
  buildCounterBatchCreatePerfSamplesRequest--;
}

core.List<api.PerfSample> buildUnnamed7592() {
  var o = <api.PerfSample>[];
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

void checkUnnamed7592(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0] as api.PerfSample);
  checkPerfSample(o[1] as api.PerfSample);
}

core.int buildCounterBatchCreatePerfSamplesResponse = 0;
api.BatchCreatePerfSamplesResponse buildBatchCreatePerfSamplesResponse() {
  var o = api.BatchCreatePerfSamplesResponse();
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    o.perfSamples = buildUnnamed7592();
  }
  buildCounterBatchCreatePerfSamplesResponse--;
  return o;
}

void checkBatchCreatePerfSamplesResponse(api.BatchCreatePerfSamplesResponse o) {
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    checkUnnamed7592(o.perfSamples!);
  }
  buildCounterBatchCreatePerfSamplesResponse--;
}

core.int buildCounterBlankScreen = 0;
api.BlankScreen buildBlankScreen() {
  var o = api.BlankScreen();
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
  var o = api.CPUInfo();
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
  var o = api.CrashDialogError();
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
  var o = api.DeviceOutOfMemory();
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
  var o = api.Duration();
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

core.List<core.String> buildUnnamed7593() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7593(core.List<core.String> o) {
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
  var o = api.EncounteredLoginScreen();
  buildCounterEncounteredLoginScreen++;
  if (buildCounterEncounteredLoginScreen < 3) {
    o.distinctScreens = 42;
    o.screenIds = buildUnnamed7593();
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
    checkUnnamed7593(o.screenIds!);
  }
  buildCounterEncounteredLoginScreen--;
}

core.List<core.String> buildUnnamed7594() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7594(core.List<core.String> o) {
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
  var o = api.EncounteredNonAndroidUiWidgetScreen();
  buildCounterEncounteredNonAndroidUiWidgetScreen++;
  if (buildCounterEncounteredNonAndroidUiWidgetScreen < 3) {
    o.distinctScreens = 42;
    o.screenIds = buildUnnamed7594();
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
    checkUnnamed7594(o.screenIds!);
  }
  buildCounterEncounteredNonAndroidUiWidgetScreen--;
}

core.List<api.EnvironmentDimensionValueEntry> buildUnnamed7595() {
  var o = <api.EnvironmentDimensionValueEntry>[];
  o.add(buildEnvironmentDimensionValueEntry());
  o.add(buildEnvironmentDimensionValueEntry());
  return o;
}

void checkUnnamed7595(core.List<api.EnvironmentDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentDimensionValueEntry(
      o[0] as api.EnvironmentDimensionValueEntry);
  checkEnvironmentDimensionValueEntry(
      o[1] as api.EnvironmentDimensionValueEntry);
}

core.List<api.ShardSummary> buildUnnamed7596() {
  var o = <api.ShardSummary>[];
  o.add(buildShardSummary());
  o.add(buildShardSummary());
  return o;
}

void checkUnnamed7596(core.List<api.ShardSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShardSummary(o[0] as api.ShardSummary);
  checkShardSummary(o[1] as api.ShardSummary);
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.dimensionValue = buildUnnamed7595();
    o.displayName = 'foo';
    o.environmentId = 'foo';
    o.environmentResult = buildMergedResult();
    o.executionId = 'foo';
    o.historyId = 'foo';
    o.projectId = 'foo';
    o.resultsStorage = buildResultsStorage();
    o.shardSummaries = buildUnnamed7596();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkTimestamp(o.completionTime! as api.Timestamp);
    checkTimestamp(o.creationTime! as api.Timestamp);
    checkUnnamed7595(o.dimensionValue!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environmentId!,
      unittest.equals('foo'),
    );
    checkMergedResult(o.environmentResult! as api.MergedResult);
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
    checkResultsStorage(o.resultsStorage! as api.ResultsStorage);
    checkUnnamed7596(o.shardSummaries!);
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentDimensionValueEntry = 0;
api.EnvironmentDimensionValueEntry buildEnvironmentDimensionValueEntry() {
  var o = api.EnvironmentDimensionValueEntry();
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

core.List<api.MatrixDimensionDefinition> buildUnnamed7597() {
  var o = <api.MatrixDimensionDefinition>[];
  o.add(buildMatrixDimensionDefinition());
  o.add(buildMatrixDimensionDefinition());
  return o;
}

void checkUnnamed7597(core.List<api.MatrixDimensionDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatrixDimensionDefinition(o[0] as api.MatrixDimensionDefinition);
  checkMatrixDimensionDefinition(o[1] as api.MatrixDimensionDefinition);
}

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  var o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.dimensionDefinitions = buildUnnamed7597();
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
    checkTimestamp(o.completionTime! as api.Timestamp);
    checkTimestamp(o.creationTime! as api.Timestamp);
    checkUnnamed7597(o.dimensionDefinitions!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkOutcome(o.outcome! as api.Outcome);
    checkSpecification(o.specification! as api.Specification);
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
  var o = api.FailedToInstall();
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
  var o = api.FailureDetail();
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
  var o = api.FatalException();
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
    checkStackTrace(o.stackTrace! as api.StackTrace);
  }
  buildCounterFatalException--;
}

core.int buildCounterFileReference = 0;
api.FileReference buildFileReference() {
  var o = api.FileReference();
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

core.List<api.GraphicsStatsBucket> buildUnnamed7598() {
  var o = <api.GraphicsStatsBucket>[];
  o.add(buildGraphicsStatsBucket());
  o.add(buildGraphicsStatsBucket());
  return o;
}

void checkUnnamed7598(core.List<api.GraphicsStatsBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphicsStatsBucket(o[0] as api.GraphicsStatsBucket);
  checkGraphicsStatsBucket(o[1] as api.GraphicsStatsBucket);
}

core.int buildCounterGraphicsStats = 0;
api.GraphicsStats buildGraphicsStats() {
  var o = api.GraphicsStats();
  buildCounterGraphicsStats++;
  if (buildCounterGraphicsStats < 3) {
    o.buckets = buildUnnamed7598();
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
    checkUnnamed7598(o.buckets!);
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
  var o = api.GraphicsStatsBucket();
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
  var o = api.History();
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
  var o = api.Image();
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
    checkStatus(o.error! as api.Status);
    checkToolOutputReference(o.sourceImage! as api.ToolOutputReference);
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
    checkThumbnail(o.thumbnail! as api.Thumbnail);
  }
  buildCounterImage--;
}

core.int buildCounterInAppPurchasesFound = 0;
api.InAppPurchasesFound buildInAppPurchasesFound() {
  var o = api.InAppPurchasesFound();
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
  var o = api.InconclusiveDetail();
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
  var o = api.IndividualOutcome();
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
    checkDuration(o.runDuration! as api.Duration);
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIndividualOutcome--;
}

core.int buildCounterInsufficientCoverage = 0;
api.InsufficientCoverage buildInsufficientCoverage() {
  var o = api.InsufficientCoverage();
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
  var o = api.IosAppCrashed();
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
    checkStackTrace(o.stackTrace! as api.StackTrace);
  }
  buildCounterIosAppCrashed--;
}

core.int buildCounterIosAppInfo = 0;
api.IosAppInfo buildIosAppInfo() {
  var o = api.IosAppInfo();
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
  var o = api.IosRoboTest();
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
  var o = api.IosTest();
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
    checkIosAppInfo(o.iosAppInfo! as api.IosAppInfo);
    checkIosRoboTest(o.iosRoboTest! as api.IosRoboTest);
    checkIosTestLoop(o.iosTestLoop! as api.IosTestLoop);
    checkIosXcTest(o.iosXcTest! as api.IosXcTest);
    checkDuration(o.testTimeout! as api.Duration);
  }
  buildCounterIosTest--;
}

core.int buildCounterIosTestLoop = 0;
api.IosTestLoop buildIosTestLoop() {
  var o = api.IosTestLoop();
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
  var o = api.IosXcTest();
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
  var o = api.LauncherActivityNotFound();
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

core.List<api.Environment> buildUnnamed7599() {
  var o = <api.Environment>[];
  o.add(buildEnvironment());
  o.add(buildEnvironment());
  return o;
}

void checkUnnamed7599(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0] as api.Environment);
  checkEnvironment(o[1] as api.Environment);
}

core.int buildCounterListEnvironmentsResponse = 0;
api.ListEnvironmentsResponse buildListEnvironmentsResponse() {
  var o = api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed7599();
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
    checkUnnamed7599(o.environments!);
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

core.List<api.Execution> buildUnnamed7600() {
  var o = <api.Execution>[];
  o.add(buildExecution());
  o.add(buildExecution());
  return o;
}

void checkUnnamed7600(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0] as api.Execution);
  checkExecution(o[1] as api.Execution);
}

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  var o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed7600();
    o.nextPageToken = 'foo';
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed7600(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.History> buildUnnamed7601() {
  var o = <api.History>[];
  o.add(buildHistory());
  o.add(buildHistory());
  return o;
}

void checkUnnamed7601(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0] as api.History);
  checkHistory(o[1] as api.History);
}

core.int buildCounterListHistoriesResponse = 0;
api.ListHistoriesResponse buildListHistoriesResponse() {
  var o = api.ListHistoriesResponse();
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    o.histories = buildUnnamed7601();
    o.nextPageToken = 'foo';
  }
  buildCounterListHistoriesResponse--;
  return o;
}

void checkListHistoriesResponse(api.ListHistoriesResponse o) {
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    checkUnnamed7601(o.histories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListHistoriesResponse--;
}

core.List<api.PerfSampleSeries> buildUnnamed7602() {
  var o = <api.PerfSampleSeries>[];
  o.add(buildPerfSampleSeries());
  o.add(buildPerfSampleSeries());
  return o;
}

void checkUnnamed7602(core.List<api.PerfSampleSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSampleSeries(o[0] as api.PerfSampleSeries);
  checkPerfSampleSeries(o[1] as api.PerfSampleSeries);
}

core.int buildCounterListPerfSampleSeriesResponse = 0;
api.ListPerfSampleSeriesResponse buildListPerfSampleSeriesResponse() {
  var o = api.ListPerfSampleSeriesResponse();
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    o.perfSampleSeries = buildUnnamed7602();
  }
  buildCounterListPerfSampleSeriesResponse--;
  return o;
}

void checkListPerfSampleSeriesResponse(api.ListPerfSampleSeriesResponse o) {
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    checkUnnamed7602(o.perfSampleSeries!);
  }
  buildCounterListPerfSampleSeriesResponse--;
}

core.List<api.PerfSample> buildUnnamed7603() {
  var o = <api.PerfSample>[];
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

void checkUnnamed7603(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0] as api.PerfSample);
  checkPerfSample(o[1] as api.PerfSample);
}

core.int buildCounterListPerfSamplesResponse = 0;
api.ListPerfSamplesResponse buildListPerfSamplesResponse() {
  var o = api.ListPerfSamplesResponse();
  buildCounterListPerfSamplesResponse++;
  if (buildCounterListPerfSamplesResponse < 3) {
    o.nextPageToken = 'foo';
    o.perfSamples = buildUnnamed7603();
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
    checkUnnamed7603(o.perfSamples!);
  }
  buildCounterListPerfSamplesResponse--;
}

core.List<api.ScreenshotCluster> buildUnnamed7604() {
  var o = <api.ScreenshotCluster>[];
  o.add(buildScreenshotCluster());
  o.add(buildScreenshotCluster());
  return o;
}

void checkUnnamed7604(core.List<api.ScreenshotCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreenshotCluster(o[0] as api.ScreenshotCluster);
  checkScreenshotCluster(o[1] as api.ScreenshotCluster);
}

core.int buildCounterListScreenshotClustersResponse = 0;
api.ListScreenshotClustersResponse buildListScreenshotClustersResponse() {
  var o = api.ListScreenshotClustersResponse();
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    o.clusters = buildUnnamed7604();
  }
  buildCounterListScreenshotClustersResponse--;
  return o;
}

void checkListScreenshotClustersResponse(api.ListScreenshotClustersResponse o) {
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    checkUnnamed7604(o.clusters!);
  }
  buildCounterListScreenshotClustersResponse--;
}

core.List<api.SuggestionClusterProto> buildUnnamed7605() {
  var o = <api.SuggestionClusterProto>[];
  o.add(buildSuggestionClusterProto());
  o.add(buildSuggestionClusterProto());
  return o;
}

void checkUnnamed7605(core.List<api.SuggestionClusterProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionClusterProto(o[0] as api.SuggestionClusterProto);
  checkSuggestionClusterProto(o[1] as api.SuggestionClusterProto);
}

core.int buildCounterListStepAccessibilityClustersResponse = 0;
api.ListStepAccessibilityClustersResponse
    buildListStepAccessibilityClustersResponse() {
  var o = api.ListStepAccessibilityClustersResponse();
  buildCounterListStepAccessibilityClustersResponse++;
  if (buildCounterListStepAccessibilityClustersResponse < 3) {
    o.clusters = buildUnnamed7605();
    o.name = 'foo';
  }
  buildCounterListStepAccessibilityClustersResponse--;
  return o;
}

void checkListStepAccessibilityClustersResponse(
    api.ListStepAccessibilityClustersResponse o) {
  buildCounterListStepAccessibilityClustersResponse++;
  if (buildCounterListStepAccessibilityClustersResponse < 3) {
    checkUnnamed7605(o.clusters!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterListStepAccessibilityClustersResponse--;
}

core.List<api.Image> buildUnnamed7606() {
  var o = <api.Image>[];
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

void checkUnnamed7606(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0] as api.Image);
  checkImage(o[1] as api.Image);
}

core.int buildCounterListStepThumbnailsResponse = 0;
api.ListStepThumbnailsResponse buildListStepThumbnailsResponse() {
  var o = api.ListStepThumbnailsResponse();
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    o.nextPageToken = 'foo';
    o.thumbnails = buildUnnamed7606();
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
    checkUnnamed7606(o.thumbnails!);
  }
  buildCounterListStepThumbnailsResponse--;
}

core.List<api.Step> buildUnnamed7607() {
  var o = <api.Step>[];
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

void checkUnnamed7607(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0] as api.Step);
  checkStep(o[1] as api.Step);
}

core.int buildCounterListStepsResponse = 0;
api.ListStepsResponse buildListStepsResponse() {
  var o = api.ListStepsResponse();
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    o.nextPageToken = 'foo';
    o.steps = buildUnnamed7607();
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
    checkUnnamed7607(o.steps!);
  }
  buildCounterListStepsResponse--;
}

core.List<api.TestCase> buildUnnamed7608() {
  var o = <api.TestCase>[];
  o.add(buildTestCase());
  o.add(buildTestCase());
  return o;
}

void checkUnnamed7608(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0] as api.TestCase);
  checkTestCase(o[1] as api.TestCase);
}

core.int buildCounterListTestCasesResponse = 0;
api.ListTestCasesResponse buildListTestCasesResponse() {
  var o = api.ListTestCasesResponse();
  buildCounterListTestCasesResponse++;
  if (buildCounterListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed7608();
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
    checkUnnamed7608(o.testCases!);
  }
  buildCounterListTestCasesResponse--;
}

core.int buildCounterLogcatCollectionError = 0;
api.LogcatCollectionError buildLogcatCollectionError() {
  var o = api.LogcatCollectionError();
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
  var o = api.MatrixDimensionDefinition();
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
  var o = api.MemoryInfo();
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

core.List<api.TestSuiteOverview> buildUnnamed7609() {
  var o = <api.TestSuiteOverview>[];
  o.add(buildTestSuiteOverview());
  o.add(buildTestSuiteOverview());
  return o;
}

void checkUnnamed7609(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0] as api.TestSuiteOverview);
  checkTestSuiteOverview(o[1] as api.TestSuiteOverview);
}

core.int buildCounterMergedResult = 0;
api.MergedResult buildMergedResult() {
  var o = api.MergedResult();
  buildCounterMergedResult++;
  if (buildCounterMergedResult < 3) {
    o.outcome = buildOutcome();
    o.state = 'foo';
    o.testSuiteOverviews = buildUnnamed7609();
  }
  buildCounterMergedResult--;
  return o;
}

void checkMergedResult(api.MergedResult o) {
  buildCounterMergedResult++;
  if (buildCounterMergedResult < 3) {
    checkOutcome(o.outcome! as api.Outcome);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed7609(o.testSuiteOverviews!);
  }
  buildCounterMergedResult--;
}

core.int buildCounterMultiStep = 0;
api.MultiStep buildMultiStep() {
  var o = api.MultiStep();
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
    checkPrimaryStep(o.primaryStep! as api.PrimaryStep);
    unittest.expect(
      o.primaryStepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultiStep--;
}

core.int buildCounterNativeCrash = 0;
api.NativeCrash buildNativeCrash() {
  var o = api.NativeCrash();
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
    checkStackTrace(o.stackTrace! as api.StackTrace);
  }
  buildCounterNativeCrash--;
}

core.List<core.String> buildUnnamed7610() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7610(core.List<core.String> o) {
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

core.List<api.NonSdkApiInsight> buildUnnamed7611() {
  var o = <api.NonSdkApiInsight>[];
  o.add(buildNonSdkApiInsight());
  o.add(buildNonSdkApiInsight());
  return o;
}

void checkUnnamed7611(core.List<api.NonSdkApiInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonSdkApiInsight(o[0] as api.NonSdkApiInsight);
  checkNonSdkApiInsight(o[1] as api.NonSdkApiInsight);
}

core.int buildCounterNonSdkApi = 0;
api.NonSdkApi buildNonSdkApi() {
  var o = api.NonSdkApi();
  buildCounterNonSdkApi++;
  if (buildCounterNonSdkApi < 3) {
    o.apiSignature = 'foo';
    o.exampleStackTraces = buildUnnamed7610();
    o.insights = buildUnnamed7611();
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
    checkUnnamed7610(o.exampleStackTraces!);
    checkUnnamed7611(o.insights!);
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

core.List<core.String> buildUnnamed7612() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7612(core.List<core.String> o) {
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
  var o = api.NonSdkApiInsight();
  buildCounterNonSdkApiInsight++;
  if (buildCounterNonSdkApiInsight < 3) {
    o.exampleTraceMessages = buildUnnamed7612();
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
    checkUnnamed7612(o.exampleTraceMessages!);
    unittest.expect(
      o.matcherId!,
      unittest.equals('foo'),
    );
    checkPendingGoogleUpdateInsight(
        o.pendingGoogleUpdateInsight! as api.PendingGoogleUpdateInsight);
    checkUpgradeInsight(o.upgradeInsight! as api.UpgradeInsight);
  }
  buildCounterNonSdkApiInsight--;
}

core.List<core.String> buildUnnamed7613() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7613(core.List<core.String> o) {
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
  var o = api.NonSdkApiUsageViolation();
  buildCounterNonSdkApiUsageViolation++;
  if (buildCounterNonSdkApiUsageViolation < 3) {
    o.apiSignatures = buildUnnamed7613();
    o.uniqueApis = 42;
  }
  buildCounterNonSdkApiUsageViolation--;
  return o;
}

void checkNonSdkApiUsageViolation(api.NonSdkApiUsageViolation o) {
  buildCounterNonSdkApiUsageViolation++;
  if (buildCounterNonSdkApiUsageViolation < 3) {
    checkUnnamed7613(o.apiSignatures!);
    unittest.expect(
      o.uniqueApis!,
      unittest.equals(42),
    );
  }
  buildCounterNonSdkApiUsageViolation--;
}

core.List<api.NonSdkApi> buildUnnamed7614() {
  var o = <api.NonSdkApi>[];
  o.add(buildNonSdkApi());
  o.add(buildNonSdkApi());
  return o;
}

void checkUnnamed7614(core.List<api.NonSdkApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonSdkApi(o[0] as api.NonSdkApi);
  checkNonSdkApi(o[1] as api.NonSdkApi);
}

core.int buildCounterNonSdkApiUsageViolationReport = 0;
api.NonSdkApiUsageViolationReport buildNonSdkApiUsageViolationReport() {
  var o = api.NonSdkApiUsageViolationReport();
  buildCounterNonSdkApiUsageViolationReport++;
  if (buildCounterNonSdkApiUsageViolationReport < 3) {
    o.exampleApis = buildUnnamed7614();
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
    checkUnnamed7614(o.exampleApis!);
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
  var o = api.Outcome();
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
    checkFailureDetail(o.failureDetail! as api.FailureDetail);
    checkInconclusiveDetail(o.inconclusiveDetail! as api.InconclusiveDetail);
    checkSkippedDetail(o.skippedDetail! as api.SkippedDetail);
    checkSuccessDetail(o.successDetail! as api.SuccessDetail);
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
  }
  buildCounterOutcome--;
}

core.List<core.String> buildUnnamed7615() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7615(core.List<core.String> o) {
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
  var o = api.OverlappingUIElements();
  buildCounterOverlappingUIElements++;
  if (buildCounterOverlappingUIElements < 3) {
    o.resourceName = buildUnnamed7615();
    o.screenId = 'foo';
  }
  buildCounterOverlappingUIElements--;
  return o;
}

void checkOverlappingUIElements(api.OverlappingUIElements o) {
  buildCounterOverlappingUIElements++;
  if (buildCounterOverlappingUIElements < 3) {
    checkUnnamed7615(o.resourceName!);
    unittest.expect(
      o.screenId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOverlappingUIElements--;
}

core.int buildCounterPendingGoogleUpdateInsight = 0;
api.PendingGoogleUpdateInsight buildPendingGoogleUpdateInsight() {
  var o = api.PendingGoogleUpdateInsight();
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
  var o = api.PerfEnvironment();
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
    checkCPUInfo(o.cpuInfo! as api.CPUInfo);
    checkMemoryInfo(o.memoryInfo! as api.MemoryInfo);
  }
  buildCounterPerfEnvironment--;
}

core.List<core.String> buildUnnamed7616() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7616(core.List<core.String> o) {
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
  var o = api.PerfMetricsSummary();
  buildCounterPerfMetricsSummary++;
  if (buildCounterPerfMetricsSummary < 3) {
    o.appStartTime = buildAppStartTime();
    o.executionId = 'foo';
    o.graphicsStats = buildGraphicsStats();
    o.historyId = 'foo';
    o.perfEnvironment = buildPerfEnvironment();
    o.perfMetrics = buildUnnamed7616();
    o.projectId = 'foo';
    o.stepId = 'foo';
  }
  buildCounterPerfMetricsSummary--;
  return o;
}

void checkPerfMetricsSummary(api.PerfMetricsSummary o) {
  buildCounterPerfMetricsSummary++;
  if (buildCounterPerfMetricsSummary < 3) {
    checkAppStartTime(o.appStartTime! as api.AppStartTime);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkGraphicsStats(o.graphicsStats! as api.GraphicsStats);
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    checkPerfEnvironment(o.perfEnvironment! as api.PerfEnvironment);
    checkUnnamed7616(o.perfMetrics!);
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
  var o = api.PerfSample();
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
    checkTimestamp(o.sampleTime! as api.Timestamp);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterPerfSample--;
}

core.int buildCounterPerfSampleSeries = 0;
api.PerfSampleSeries buildPerfSampleSeries() {
  var o = api.PerfSampleSeries();
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
    checkBasicPerfSampleSeries(
        o.basicPerfSampleSeries! as api.BasicPerfSampleSeries);
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
  var o = api.PerformedGoogleLogin();
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
  var o = api.PerformedMonkeyActions();
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

core.List<api.IndividualOutcome> buildUnnamed7617() {
  var o = <api.IndividualOutcome>[];
  o.add(buildIndividualOutcome());
  o.add(buildIndividualOutcome());
  return o;
}

void checkUnnamed7617(core.List<api.IndividualOutcome> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndividualOutcome(o[0] as api.IndividualOutcome);
  checkIndividualOutcome(o[1] as api.IndividualOutcome);
}

core.int buildCounterPrimaryStep = 0;
api.PrimaryStep buildPrimaryStep() {
  var o = api.PrimaryStep();
  buildCounterPrimaryStep++;
  if (buildCounterPrimaryStep < 3) {
    o.individualOutcome = buildUnnamed7617();
    o.rollUp = 'foo';
  }
  buildCounterPrimaryStep--;
  return o;
}

void checkPrimaryStep(api.PrimaryStep o) {
  buildCounterPrimaryStep++;
  if (buildCounterPrimaryStep < 3) {
    checkUnnamed7617(o.individualOutcome!);
    unittest.expect(
      o.rollUp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrimaryStep--;
}

core.int buildCounterProjectSettings = 0;
api.ProjectSettings buildProjectSettings() {
  var o = api.ProjectSettings();
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

core.List<api.FileReference> buildUnnamed7618() {
  var o = <api.FileReference>[];
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

void checkUnnamed7618(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0] as api.FileReference);
  checkFileReference(o[1] as api.FileReference);
}

core.int buildCounterPublishXunitXmlFilesRequest = 0;
api.PublishXunitXmlFilesRequest buildPublishXunitXmlFilesRequest() {
  var o = api.PublishXunitXmlFilesRequest();
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    o.xunitXmlFiles = buildUnnamed7618();
  }
  buildCounterPublishXunitXmlFilesRequest--;
  return o;
}

void checkPublishXunitXmlFilesRequest(api.PublishXunitXmlFilesRequest o) {
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    checkUnnamed7618(o.xunitXmlFiles!);
  }
  buildCounterPublishXunitXmlFilesRequest--;
}

core.int buildCounterRegionProto = 0;
api.RegionProto buildRegionProto() {
  var o = api.RegionProto();
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
  var o = api.ResultsStorage();
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
    checkFileReference(o.resultsStoragePath! as api.FileReference);
    checkFileReference(o.xunitXmlFile! as api.FileReference);
  }
  buildCounterResultsStorage--;
}

core.int buildCounterRoboScriptExecution = 0;
api.RoboScriptExecution buildRoboScriptExecution() {
  var o = api.RoboScriptExecution();
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
  var o = api.SafeHtmlProto();
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
  var o = api.Screen();
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

core.List<api.Screen> buildUnnamed7619() {
  var o = <api.Screen>[];
  o.add(buildScreen());
  o.add(buildScreen());
  return o;
}

void checkUnnamed7619(core.List<api.Screen> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreen(o[0] as api.Screen);
  checkScreen(o[1] as api.Screen);
}

core.int buildCounterScreenshotCluster = 0;
api.ScreenshotCluster buildScreenshotCluster() {
  var o = api.ScreenshotCluster();
  buildCounterScreenshotCluster++;
  if (buildCounterScreenshotCluster < 3) {
    o.activity = 'foo';
    o.clusterId = 'foo';
    o.keyScreen = buildScreen();
    o.screens = buildUnnamed7619();
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
    checkScreen(o.keyScreen! as api.Screen);
    checkUnnamed7619(o.screens!);
  }
  buildCounterScreenshotCluster--;
}

core.List<api.StepSummary> buildUnnamed7620() {
  var o = <api.StepSummary>[];
  o.add(buildStepSummary());
  o.add(buildStepSummary());
  return o;
}

void checkUnnamed7620(core.List<api.StepSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepSummary(o[0] as api.StepSummary);
  checkStepSummary(o[1] as api.StepSummary);
}

core.int buildCounterShardSummary = 0;
api.ShardSummary buildShardSummary() {
  var o = api.ShardSummary();
  buildCounterShardSummary++;
  if (buildCounterShardSummary < 3) {
    o.runs = buildUnnamed7620();
    o.shardResult = buildMergedResult();
  }
  buildCounterShardSummary--;
  return o;
}

void checkShardSummary(api.ShardSummary o) {
  buildCounterShardSummary++;
  if (buildCounterShardSummary < 3) {
    checkUnnamed7620(o.runs!);
    checkMergedResult(o.shardResult! as api.MergedResult);
  }
  buildCounterShardSummary--;
}

core.int buildCounterSkippedDetail = 0;
api.SkippedDetail buildSkippedDetail() {
  var o = api.SkippedDetail();
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
  var o = api.Specification();
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
    checkAndroidTest(o.androidTest! as api.AndroidTest);
    checkIosTest(o.iosTest! as api.IosTest);
  }
  buildCounterSpecification--;
}

core.int buildCounterStackTrace = 0;
api.StackTrace buildStackTrace() {
  var o = api.StackTrace();
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
  var o = api.StartActivityNotFound();
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

core.Map<core.String, core.Object> buildUnnamed7621() {
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

void checkUnnamed7621(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7622() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7621());
  o.add(buildUnnamed7621());
  return o;
}

void checkUnnamed7622(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7621(o[0]);
  checkUnnamed7621(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7622();
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
    checkUnnamed7622(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.StepDimensionValueEntry> buildUnnamed7623() {
  var o = <api.StepDimensionValueEntry>[];
  o.add(buildStepDimensionValueEntry());
  o.add(buildStepDimensionValueEntry());
  return o;
}

void checkUnnamed7623(core.List<api.StepDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepDimensionValueEntry(o[0] as api.StepDimensionValueEntry);
  checkStepDimensionValueEntry(o[1] as api.StepDimensionValueEntry);
}

core.List<api.StepLabelsEntry> buildUnnamed7624() {
  var o = <api.StepLabelsEntry>[];
  o.add(buildStepLabelsEntry());
  o.add(buildStepLabelsEntry());
  return o;
}

void checkUnnamed7624(core.List<api.StepLabelsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepLabelsEntry(o[0] as api.StepLabelsEntry);
  checkStepLabelsEntry(o[1] as api.StepLabelsEntry);
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  var o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.description = 'foo';
    o.deviceUsageDuration = buildDuration();
    o.dimensionValue = buildUnnamed7623();
    o.hasImages = true;
    o.labels = buildUnnamed7624();
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
    checkTimestamp(o.completionTime! as api.Timestamp);
    checkTimestamp(o.creationTime! as api.Timestamp);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkDuration(o.deviceUsageDuration! as api.Duration);
    checkUnnamed7623(o.dimensionValue!);
    unittest.expect(o.hasImages!, unittest.isTrue);
    checkUnnamed7624(o.labels!);
    checkMultiStep(o.multiStep! as api.MultiStep);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOutcome(o.outcome! as api.Outcome);
    checkDuration(o.runDuration! as api.Duration);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
    checkTestExecutionStep(o.testExecutionStep! as api.TestExecutionStep);
    checkToolExecutionStep(o.toolExecutionStep! as api.ToolExecutionStep);
  }
  buildCounterStep--;
}

core.int buildCounterStepDimensionValueEntry = 0;
api.StepDimensionValueEntry buildStepDimensionValueEntry() {
  var o = api.StepDimensionValueEntry();
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
  var o = api.StepLabelsEntry();
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
  var o = api.StepSummary();
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
  var o = api.SuccessDetail();
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

core.List<api.SuggestionProto> buildUnnamed7625() {
  var o = <api.SuggestionProto>[];
  o.add(buildSuggestionProto());
  o.add(buildSuggestionProto());
  return o;
}

void checkUnnamed7625(core.List<api.SuggestionProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionProto(o[0] as api.SuggestionProto);
  checkSuggestionProto(o[1] as api.SuggestionProto);
}

core.int buildCounterSuggestionClusterProto = 0;
api.SuggestionClusterProto buildSuggestionClusterProto() {
  var o = api.SuggestionClusterProto();
  buildCounterSuggestionClusterProto++;
  if (buildCounterSuggestionClusterProto < 3) {
    o.category = 'foo';
    o.suggestions = buildUnnamed7625();
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
    checkUnnamed7625(o.suggestions!);
  }
  buildCounterSuggestionClusterProto--;
}

core.int buildCounterSuggestionProto = 0;
api.SuggestionProto buildSuggestionProto() {
  var o = api.SuggestionProto();
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
    checkSafeHtmlProto(o.longMessage! as api.SafeHtmlProto);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pseudoResourceId!,
      unittest.equals('foo'),
    );
    checkRegionProto(o.region! as api.RegionProto);
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
    checkSafeHtmlProto(o.shortMessage! as api.SafeHtmlProto);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuggestionProto--;
}

core.List<api.StackTrace> buildUnnamed7626() {
  var o = <api.StackTrace>[];
  o.add(buildStackTrace());
  o.add(buildStackTrace());
  return o;
}

void checkUnnamed7626(core.List<api.StackTrace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackTrace(o[0] as api.StackTrace);
  checkStackTrace(o[1] as api.StackTrace);
}

core.List<api.ToolOutputReference> buildUnnamed7627() {
  var o = <api.ToolOutputReference>[];
  o.add(buildToolOutputReference());
  o.add(buildToolOutputReference());
  return o;
}

void checkUnnamed7627(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0] as api.ToolOutputReference);
  checkToolOutputReference(o[1] as api.ToolOutputReference);
}

core.int buildCounterTestCase = 0;
api.TestCase buildTestCase() {
  var o = api.TestCase();
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    o.elapsedTime = buildDuration();
    o.endTime = buildTimestamp();
    o.skippedMessage = 'foo';
    o.stackTraces = buildUnnamed7626();
    o.startTime = buildTimestamp();
    o.status = 'foo';
    o.testCaseId = 'foo';
    o.testCaseReference = buildTestCaseReference();
    o.toolOutputs = buildUnnamed7627();
  }
  buildCounterTestCase--;
  return o;
}

void checkTestCase(api.TestCase o) {
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    checkDuration(o.elapsedTime! as api.Duration);
    checkTimestamp(o.endTime! as api.Timestamp);
    unittest.expect(
      o.skippedMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed7626(o.stackTraces!);
    checkTimestamp(o.startTime! as api.Timestamp);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testCaseId!,
      unittest.equals('foo'),
    );
    checkTestCaseReference(o.testCaseReference! as api.TestCaseReference);
    checkUnnamed7627(o.toolOutputs!);
  }
  buildCounterTestCase--;
}

core.int buildCounterTestCaseReference = 0;
api.TestCaseReference buildTestCaseReference() {
  var o = api.TestCaseReference();
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

core.List<api.TestIssue> buildUnnamed7628() {
  var o = <api.TestIssue>[];
  o.add(buildTestIssue());
  o.add(buildTestIssue());
  return o;
}

void checkUnnamed7628(core.List<api.TestIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestIssue(o[0] as api.TestIssue);
  checkTestIssue(o[1] as api.TestIssue);
}

core.List<api.TestSuiteOverview> buildUnnamed7629() {
  var o = <api.TestSuiteOverview>[];
  o.add(buildTestSuiteOverview());
  o.add(buildTestSuiteOverview());
  return o;
}

void checkUnnamed7629(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0] as api.TestSuiteOverview);
  checkTestSuiteOverview(o[1] as api.TestSuiteOverview);
}

core.int buildCounterTestExecutionStep = 0;
api.TestExecutionStep buildTestExecutionStep() {
  var o = api.TestExecutionStep();
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    o.testIssues = buildUnnamed7628();
    o.testSuiteOverviews = buildUnnamed7629();
    o.testTiming = buildTestTiming();
    o.toolExecution = buildToolExecution();
  }
  buildCounterTestExecutionStep--;
  return o;
}

void checkTestExecutionStep(api.TestExecutionStep o) {
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    checkUnnamed7628(o.testIssues!);
    checkUnnamed7629(o.testSuiteOverviews!);
    checkTestTiming(o.testTiming! as api.TestTiming);
    checkToolExecution(o.toolExecution! as api.ToolExecution);
  }
  buildCounterTestExecutionStep--;
}

core.int buildCounterTestIssue = 0;
api.TestIssue buildTestIssue() {
  var o = api.TestIssue();
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
    checkStackTrace(o.stackTrace! as api.StackTrace);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkAny(o.warning! as api.Any);
  }
  buildCounterTestIssue--;
}

core.int buildCounterTestSuiteOverview = 0;
api.TestSuiteOverview buildTestSuiteOverview() {
  var o = api.TestSuiteOverview();
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
    checkDuration(o.elapsedTime! as api.Duration);
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
    checkFileReference(o.xmlSource! as api.FileReference);
  }
  buildCounterTestSuiteOverview--;
}

core.int buildCounterTestTiming = 0;
api.TestTiming buildTestTiming() {
  var o = api.TestTiming();
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
    checkDuration(o.testProcessDuration! as api.Duration);
  }
  buildCounterTestTiming--;
}

core.int buildCounterThumbnail = 0;
api.Thumbnail buildThumbnail() {
  var o = api.Thumbnail();
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
  var o = api.Timestamp();
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

core.List<core.String> buildUnnamed7630() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7630(core.List<core.String> o) {
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

core.List<api.FileReference> buildUnnamed7631() {
  var o = <api.FileReference>[];
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

void checkUnnamed7631(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0] as api.FileReference);
  checkFileReference(o[1] as api.FileReference);
}

core.List<api.ToolOutputReference> buildUnnamed7632() {
  var o = <api.ToolOutputReference>[];
  o.add(buildToolOutputReference());
  o.add(buildToolOutputReference());
  return o;
}

void checkUnnamed7632(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0] as api.ToolOutputReference);
  checkToolOutputReference(o[1] as api.ToolOutputReference);
}

core.int buildCounterToolExecution = 0;
api.ToolExecution buildToolExecution() {
  var o = api.ToolExecution();
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    o.commandLineArguments = buildUnnamed7630();
    o.exitCode = buildToolExitCode();
    o.toolLogs = buildUnnamed7631();
    o.toolOutputs = buildUnnamed7632();
  }
  buildCounterToolExecution--;
  return o;
}

void checkToolExecution(api.ToolExecution o) {
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    checkUnnamed7630(o.commandLineArguments!);
    checkToolExitCode(o.exitCode! as api.ToolExitCode);
    checkUnnamed7631(o.toolLogs!);
    checkUnnamed7632(o.toolOutputs!);
  }
  buildCounterToolExecution--;
}

core.int buildCounterToolExecutionStep = 0;
api.ToolExecutionStep buildToolExecutionStep() {
  var o = api.ToolExecutionStep();
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
    checkToolExecution(o.toolExecution! as api.ToolExecution);
  }
  buildCounterToolExecutionStep--;
}

core.int buildCounterToolExitCode = 0;
api.ToolExitCode buildToolExitCode() {
  var o = api.ToolExitCode();
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
  var o = api.ToolOutputReference();
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
    checkTimestamp(o.creationTime! as api.Timestamp);
    checkFileReference(o.output! as api.FileReference);
    checkTestCaseReference(o.testCase! as api.TestCaseReference);
  }
  buildCounterToolOutputReference--;
}

core.int buildCounterUIElementTooDeep = 0;
api.UIElementTooDeep buildUIElementTooDeep() {
  var o = api.UIElementTooDeep();
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
  var o = api.UnspecifiedWarning();
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
  var o = api.UnusedRoboDirective();
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
  var o = api.UpgradeInsight();
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
  var o = api.UsedRoboDirective();
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
  var o = api.UsedRoboIgnoreDirective();
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

core.List<core.String> buildUnnamed7633() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7633(core.List<core.String> o) {
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
      var o = buildANR();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ANR.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkANR(od as api.ANR);
    });
  });

  unittest.group('obj-schema-AndroidAppInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidAppInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AndroidAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidAppInfo(od as api.AndroidAppInfo);
    });
  });

  unittest.group('obj-schema-AndroidInstrumentationTest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidInstrumentationTest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AndroidInstrumentationTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidInstrumentationTest(od as api.AndroidInstrumentationTest);
    });
  });

  unittest.group('obj-schema-AndroidRoboTest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidRoboTest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AndroidRoboTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidRoboTest(od as api.AndroidRoboTest);
    });
  });

  unittest.group('obj-schema-AndroidTest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidTest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AndroidTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidTest(od as api.AndroidTest);
    });
  });

  unittest.group('obj-schema-AndroidTestLoop', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidTestLoop();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AndroidTestLoop.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidTestLoop(od as api.AndroidTestLoop);
    });
  });

  unittest.group('obj-schema-Any', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAny();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Any.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAny(od as api.Any);
    });
  });

  unittest.group('obj-schema-AppStartTime', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAppStartTime();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AppStartTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppStartTime(od as api.AppStartTime);
    });
  });

  unittest.group('obj-schema-AvailableDeepLinks', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAvailableDeepLinks();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AvailableDeepLinks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvailableDeepLinks(od as api.AvailableDeepLinks);
    });
  });

  unittest.group('obj-schema-BasicPerfSampleSeries', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBasicPerfSampleSeries();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BasicPerfSampleSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicPerfSampleSeries(od as api.BasicPerfSampleSeries);
    });
  });

  unittest.group('obj-schema-BatchCreatePerfSamplesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreatePerfSamplesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreatePerfSamplesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePerfSamplesRequest(
          od as api.BatchCreatePerfSamplesRequest);
    });
  });

  unittest.group('obj-schema-BatchCreatePerfSamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreatePerfSamplesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreatePerfSamplesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePerfSamplesResponse(
          od as api.BatchCreatePerfSamplesResponse);
    });
  });

  unittest.group('obj-schema-BlankScreen', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBlankScreen();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BlankScreen.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlankScreen(od as api.BlankScreen);
    });
  });

  unittest.group('obj-schema-CPUInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCPUInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CPUInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCPUInfo(od as api.CPUInfo);
    });
  });

  unittest.group('obj-schema-CrashDialogError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCrashDialogError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CrashDialogError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrashDialogError(od as api.CrashDialogError);
    });
  });

  unittest.group('obj-schema-DeviceOutOfMemory', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeviceOutOfMemory();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeviceOutOfMemory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceOutOfMemory(od as api.DeviceOutOfMemory);
    });
  });

  unittest.group('obj-schema-Duration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDuration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Duration.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDuration(od as api.Duration);
    });
  });

  unittest.group('obj-schema-EncounteredLoginScreen', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEncounteredLoginScreen();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EncounteredLoginScreen.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncounteredLoginScreen(od as api.EncounteredLoginScreen);
    });
  });

  unittest.group('obj-schema-EncounteredNonAndroidUiWidgetScreen', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEncounteredNonAndroidUiWidgetScreen();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EncounteredNonAndroidUiWidgetScreen.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncounteredNonAndroidUiWidgetScreen(
          od as api.EncounteredNonAndroidUiWidgetScreen);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnvironment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od as api.Environment);
    });
  });

  unittest.group('obj-schema-EnvironmentDimensionValueEntry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnvironmentDimensionValueEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EnvironmentDimensionValueEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironmentDimensionValueEntry(
          od as api.EnvironmentDimensionValueEntry);
    });
  });

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExecution();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Execution.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecution(od as api.Execution);
    });
  });

  unittest.group('obj-schema-FailedToInstall', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFailedToInstall();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FailedToInstall.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailedToInstall(od as api.FailedToInstall);
    });
  });

  unittest.group('obj-schema-FailureDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFailureDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FailureDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureDetail(od as api.FailureDetail);
    });
  });

  unittest.group('obj-schema-FatalException', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFatalException();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FatalException.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFatalException(od as api.FatalException);
    });
  });

  unittest.group('obj-schema-FileReference', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFileReference();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FileReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileReference(od as api.FileReference);
    });
  });

  unittest.group('obj-schema-GraphicsStats', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGraphicsStats();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GraphicsStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGraphicsStats(od as api.GraphicsStats);
    });
  });

  unittest.group('obj-schema-GraphicsStatsBucket', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGraphicsStatsBucket();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GraphicsStatsBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGraphicsStatsBucket(od as api.GraphicsStatsBucket);
    });
  });

  unittest.group('obj-schema-History', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHistory();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.History.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHistory(od as api.History);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od as api.Image);
    });
  });

  unittest.group('obj-schema-InAppPurchasesFound', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInAppPurchasesFound();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InAppPurchasesFound.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInAppPurchasesFound(od as api.InAppPurchasesFound);
    });
  });

  unittest.group('obj-schema-InconclusiveDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInconclusiveDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InconclusiveDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInconclusiveDetail(od as api.InconclusiveDetail);
    });
  });

  unittest.group('obj-schema-IndividualOutcome', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIndividualOutcome();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IndividualOutcome.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndividualOutcome(od as api.IndividualOutcome);
    });
  });

  unittest.group('obj-schema-InsufficientCoverage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInsufficientCoverage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InsufficientCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsufficientCoverage(od as api.InsufficientCoverage);
    });
  });

  unittest.group('obj-schema-IosAppCrashed', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosAppCrashed();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IosAppCrashed.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosAppCrashed(od as api.IosAppCrashed);
    });
  });

  unittest.group('obj-schema-IosAppInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosAppInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.IosAppInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosAppInfo(od as api.IosAppInfo);
    });
  });

  unittest.group('obj-schema-IosRoboTest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosRoboTest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IosRoboTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosRoboTest(od as api.IosRoboTest);
    });
  });

  unittest.group('obj-schema-IosTest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosTest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.IosTest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosTest(od as api.IosTest);
    });
  });

  unittest.group('obj-schema-IosTestLoop', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosTestLoop();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IosTestLoop.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosTestLoop(od as api.IosTestLoop);
    });
  });

  unittest.group('obj-schema-IosXcTest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosXcTest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.IosXcTest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosXcTest(od as api.IosXcTest);
    });
  });

  unittest.group('obj-schema-LauncherActivityNotFound', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLauncherActivityNotFound();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LauncherActivityNotFound.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLauncherActivityNotFound(od as api.LauncherActivityNotFound);
    });
  });

  unittest.group('obj-schema-ListEnvironmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListEnvironmentsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnvironmentsResponse(od as api.ListEnvironmentsResponse);
    });
  });

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListExecutionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionsResponse(od as api.ListExecutionsResponse);
    });
  });

  unittest.group('obj-schema-ListHistoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListHistoriesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListHistoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHistoriesResponse(od as api.ListHistoriesResponse);
    });
  });

  unittest.group('obj-schema-ListPerfSampleSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListPerfSampleSeriesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListPerfSampleSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPerfSampleSeriesResponse(od as api.ListPerfSampleSeriesResponse);
    });
  });

  unittest.group('obj-schema-ListPerfSamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListPerfSamplesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListPerfSamplesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPerfSamplesResponse(od as api.ListPerfSamplesResponse);
    });
  });

  unittest.group('obj-schema-ListScreenshotClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListScreenshotClustersResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListScreenshotClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScreenshotClustersResponse(
          od as api.ListScreenshotClustersResponse);
    });
  });

  unittest.group('obj-schema-ListStepAccessibilityClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListStepAccessibilityClustersResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListStepAccessibilityClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepAccessibilityClustersResponse(
          od as api.ListStepAccessibilityClustersResponse);
    });
  });

  unittest.group('obj-schema-ListStepThumbnailsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListStepThumbnailsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListStepThumbnailsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepThumbnailsResponse(od as api.ListStepThumbnailsResponse);
    });
  });

  unittest.group('obj-schema-ListStepsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListStepsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListStepsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepsResponse(od as api.ListStepsResponse);
    });
  });

  unittest.group('obj-schema-ListTestCasesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListTestCasesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListTestCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTestCasesResponse(od as api.ListTestCasesResponse);
    });
  });

  unittest.group('obj-schema-LogcatCollectionError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLogcatCollectionError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LogcatCollectionError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogcatCollectionError(od as api.LogcatCollectionError);
    });
  });

  unittest.group('obj-schema-MatrixDimensionDefinition', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMatrixDimensionDefinition();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MatrixDimensionDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatrixDimensionDefinition(od as api.MatrixDimensionDefinition);
    });
  });

  unittest.group('obj-schema-MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMemoryInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MemoryInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMemoryInfo(od as api.MemoryInfo);
    });
  });

  unittest.group('obj-schema-MergedResult', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMergedResult();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MergedResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMergedResult(od as api.MergedResult);
    });
  });

  unittest.group('obj-schema-MultiStep', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMultiStep();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MultiStep.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMultiStep(od as api.MultiStep);
    });
  });

  unittest.group('obj-schema-NativeCrash', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNativeCrash();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NativeCrash.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNativeCrash(od as api.NativeCrash);
    });
  });

  unittest.group('obj-schema-NonSdkApi', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonSdkApi();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.NonSdkApi.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApi(od as api.NonSdkApi);
    });
  });

  unittest.group('obj-schema-NonSdkApiInsight', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonSdkApiInsight();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonSdkApiInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApiInsight(od as api.NonSdkApiInsight);
    });
  });

  unittest.group('obj-schema-NonSdkApiUsageViolation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonSdkApiUsageViolation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonSdkApiUsageViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApiUsageViolation(od as api.NonSdkApiUsageViolation);
    });
  });

  unittest.group('obj-schema-NonSdkApiUsageViolationReport', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonSdkApiUsageViolationReport();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonSdkApiUsageViolationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonSdkApiUsageViolationReport(
          od as api.NonSdkApiUsageViolationReport);
    });
  });

  unittest.group('obj-schema-Outcome', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOutcome();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Outcome.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOutcome(od as api.Outcome);
    });
  });

  unittest.group('obj-schema-OverlappingUIElements', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOverlappingUIElements();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OverlappingUIElements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOverlappingUIElements(od as api.OverlappingUIElements);
    });
  });

  unittest.group('obj-schema-PendingGoogleUpdateInsight', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPendingGoogleUpdateInsight();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PendingGoogleUpdateInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPendingGoogleUpdateInsight(od as api.PendingGoogleUpdateInsight);
    });
  });

  unittest.group('obj-schema-PerfEnvironment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPerfEnvironment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PerfEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerfEnvironment(od as api.PerfEnvironment);
    });
  });

  unittest.group('obj-schema-PerfMetricsSummary', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPerfMetricsSummary();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PerfMetricsSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerfMetricsSummary(od as api.PerfMetricsSummary);
    });
  });

  unittest.group('obj-schema-PerfSample', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPerfSample();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.PerfSample.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPerfSample(od as api.PerfSample);
    });
  });

  unittest.group('obj-schema-PerfSampleSeries', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPerfSampleSeries();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PerfSampleSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerfSampleSeries(od as api.PerfSampleSeries);
    });
  });

  unittest.group('obj-schema-PerformedGoogleLogin', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPerformedGoogleLogin();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PerformedGoogleLogin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformedGoogleLogin(od as api.PerformedGoogleLogin);
    });
  });

  unittest.group('obj-schema-PerformedMonkeyActions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPerformedMonkeyActions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PerformedMonkeyActions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformedMonkeyActions(od as api.PerformedMonkeyActions);
    });
  });

  unittest.group('obj-schema-PrimaryStep', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPrimaryStep();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PrimaryStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrimaryStep(od as api.PrimaryStep);
    });
  });

  unittest.group('obj-schema-ProjectSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProjectSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProjectSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectSettings(od as api.ProjectSettings);
    });
  });

  unittest.group('obj-schema-PublishXunitXmlFilesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPublishXunitXmlFilesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PublishXunitXmlFilesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublishXunitXmlFilesRequest(od as api.PublishXunitXmlFilesRequest);
    });
  });

  unittest.group('obj-schema-RegionProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRegionProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RegionProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionProto(od as api.RegionProto);
    });
  });

  unittest.group('obj-schema-ResultsStorage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResultsStorage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ResultsStorage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultsStorage(od as api.ResultsStorage);
    });
  });

  unittest.group('obj-schema-RoboScriptExecution', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRoboScriptExecution();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RoboScriptExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoboScriptExecution(od as api.RoboScriptExecution);
    });
  });

  unittest.group('obj-schema-SafeHtmlProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSafeHtmlProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SafeHtmlProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSafeHtmlProto(od as api.SafeHtmlProto);
    });
  });

  unittest.group('obj-schema-Screen', () {
    unittest.test('to-json--from-json', () async {
      var o = buildScreen();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Screen.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScreen(od as api.Screen);
    });
  });

  unittest.group('obj-schema-ScreenshotCluster', () {
    unittest.test('to-json--from-json', () async {
      var o = buildScreenshotCluster();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ScreenshotCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScreenshotCluster(od as api.ScreenshotCluster);
    });
  });

  unittest.group('obj-schema-ShardSummary', () {
    unittest.test('to-json--from-json', () async {
      var o = buildShardSummary();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ShardSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShardSummary(od as api.ShardSummary);
    });
  });

  unittest.group('obj-schema-SkippedDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSkippedDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SkippedDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSkippedDetail(od as api.SkippedDetail);
    });
  });

  unittest.group('obj-schema-Specification', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSpecification();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Specification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpecification(od as api.Specification);
    });
  });

  unittest.group('obj-schema-StackTrace', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStackTrace();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.StackTrace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStackTrace(od as api.StackTrace);
    });
  });

  unittest.group('obj-schema-StartActivityNotFound', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStartActivityNotFound();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StartActivityNotFound.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartActivityNotFound(od as api.StartActivityNotFound);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStep();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Step.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStep(od as api.Step);
    });
  });

  unittest.group('obj-schema-StepDimensionValueEntry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStepDimensionValueEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StepDimensionValueEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepDimensionValueEntry(od as api.StepDimensionValueEntry);
    });
  });

  unittest.group('obj-schema-StepLabelsEntry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStepLabelsEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StepLabelsEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepLabelsEntry(od as api.StepLabelsEntry);
    });
  });

  unittest.group('obj-schema-StepSummary', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStepSummary();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StepSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepSummary(od as api.StepSummary);
    });
  });

  unittest.group('obj-schema-SuccessDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSuccessDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SuccessDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuccessDetail(od as api.SuccessDetail);
    });
  });

  unittest.group('obj-schema-SuggestionClusterProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSuggestionClusterProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SuggestionClusterProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestionClusterProto(od as api.SuggestionClusterProto);
    });
  });

  unittest.group('obj-schema-SuggestionProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSuggestionProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SuggestionProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestionProto(od as api.SuggestionProto);
    });
  });

  unittest.group('obj-schema-TestCase', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestCase();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TestCase.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestCase(od as api.TestCase);
    });
  });

  unittest.group('obj-schema-TestCaseReference', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestCaseReference();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestCaseReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestCaseReference(od as api.TestCaseReference);
    });
  });

  unittest.group('obj-schema-TestExecutionStep', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestExecutionStep();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestExecutionStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestExecutionStep(od as api.TestExecutionStep);
    });
  });

  unittest.group('obj-schema-TestIssue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIssue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TestIssue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestIssue(od as api.TestIssue);
    });
  });

  unittest.group('obj-schema-TestSuiteOverview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestSuiteOverview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestSuiteOverview.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestSuiteOverview(od as api.TestSuiteOverview);
    });
  });

  unittest.group('obj-schema-TestTiming', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestTiming();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TestTiming.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestTiming(od as api.TestTiming);
    });
  });

  unittest.group('obj-schema-Thumbnail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildThumbnail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Thumbnail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThumbnail(od as api.Thumbnail);
    });
  });

  unittest.group('obj-schema-Timestamp', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimestamp();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Timestamp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimestamp(od as api.Timestamp);
    });
  });

  unittest.group('obj-schema-ToolExecution', () {
    unittest.test('to-json--from-json', () async {
      var o = buildToolExecution();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ToolExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolExecution(od as api.ToolExecution);
    });
  });

  unittest.group('obj-schema-ToolExecutionStep', () {
    unittest.test('to-json--from-json', () async {
      var o = buildToolExecutionStep();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ToolExecutionStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolExecutionStep(od as api.ToolExecutionStep);
    });
  });

  unittest.group('obj-schema-ToolExitCode', () {
    unittest.test('to-json--from-json', () async {
      var o = buildToolExitCode();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ToolExitCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolExitCode(od as api.ToolExitCode);
    });
  });

  unittest.group('obj-schema-ToolOutputReference', () {
    unittest.test('to-json--from-json', () async {
      var o = buildToolOutputReference();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ToolOutputReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToolOutputReference(od as api.ToolOutputReference);
    });
  });

  unittest.group('obj-schema-UIElementTooDeep', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUIElementTooDeep();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UIElementTooDeep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUIElementTooDeep(od as api.UIElementTooDeep);
    });
  });

  unittest.group('obj-schema-UnspecifiedWarning', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUnspecifiedWarning();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UnspecifiedWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnspecifiedWarning(od as api.UnspecifiedWarning);
    });
  });

  unittest.group('obj-schema-UnusedRoboDirective', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUnusedRoboDirective();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UnusedRoboDirective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnusedRoboDirective(od as api.UnusedRoboDirective);
    });
  });

  unittest.group('obj-schema-UpgradeInsight', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUpgradeInsight();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UpgradeInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeInsight(od as api.UpgradeInsight);
    });
  });

  unittest.group('obj-schema-UsedRoboDirective', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUsedRoboDirective();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UsedRoboDirective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsedRoboDirective(od as api.UsedRoboDirective);
    });
  });

  unittest.group('obj-schema-UsedRoboIgnoreDirective', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUsedRoboIgnoreDirective();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UsedRoboIgnoreDirective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsedRoboIgnoreDirective(od as api.UsedRoboIgnoreDirective);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getSettings', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects;
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/settings"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProjectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getSettings(arg_projectId, $fields: arg_$fields);
      checkProjectSettings(response as api.ProjectSettings);
    });

    unittest.test('method--initializeSettings', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects;
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals(":initializeSettings"),
        );
        pathOffset += 19;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProjectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.initializeSettings(arg_projectId, $fields: arg_$fields);
      checkProjectSettings(response as api.ProjectSettings);
    });
  });

  unittest.group('resource-ProjectsHistoriesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories;
      var arg_request = buildHistory();
      var arg_projectId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.History.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHistory(obj as api.History);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories"),
        );
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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHistory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkHistory(response as api.History);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_historyId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHistory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_projectId, arg_historyId, $fields: arg_$fields);
      checkHistory(response as api.History);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories;
      var arg_projectId = 'foo';
      var arg_filterByName = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories"),
        );
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
          queryMap["filterByName"]!.first,
          unittest.equals(arg_filterByName),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListHistoriesResponse());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions;
      var arg_request = buildExecution();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Execution.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExecution(obj as api.Execution);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions"),
        );
        pathOffset += 11;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_projectId, arg_historyId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId,
          $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions"),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_historyId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions;
      var arg_request = buildExecution();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Execution.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExecution(obj as api.Execution);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_executionId'),
        );

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExecution());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.clusters;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/clusters/"),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScreenshotCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId, arg_clusterId,
          $fields: arg_$fields);
      checkScreenshotCluster(response as api.ScreenshotCluster);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.clusters;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/clusters"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListScreenshotClustersResponse());
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
      var mock = HttpServerMock();
      var res =
          api.ToolResultsApi(mock).projects.histories.executions.environments;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_environmentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/environments/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId, arg_environmentId,
          $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res =
          api.ToolResultsApi(mock).projects.histories.executions.environments;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/environments"),
        );
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
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListEnvironmentsResponse());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_name = 'foo';
      var arg_locale = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals("toolresults/v1beta3/"),
        );
        pathOffset += 20;
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
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListStepAccessibilityClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.accessibilityClusters(arg_name,
          locale: arg_locale, $fields: arg_$fields);
      checkListStepAccessibilityClustersResponse(
          response as api.ListStepAccessibilityClustersResponse);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildStep();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Step.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStep(obj as api.Step);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps"),
        );
        pathOffset += 6;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_projectId, arg_historyId, arg_executionId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkStep(response as api.Step);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkStep(response as api.Step);
    });

    unittest.test('method--getPerfMetricsSummary', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfMetricsSummary"),
        );
        pathOffset += 19;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerfMetricsSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPerfMetricsSummary(
          arg_projectId, arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkPerfMetricsSummary(response as api.PerfMetricsSummary);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps"),
        );
        pathOffset += 6;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListStepsResponse());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildStep();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Step.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStep(obj as api.Step);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stepId'),
        );

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStep());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkStep(response as api.Step);
    });

    unittest.test('method--publishXunitXmlFiles', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildPublishXunitXmlFilesRequest();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PublishXunitXmlFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPublishXunitXmlFilesRequest(
            obj as api.PublishXunitXmlFilesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals(":publishXunitXmlFiles"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStep());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfMetricsSummary;
      var arg_request = buildPerfMetricsSummary();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PerfMetricsSummary.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPerfMetricsSummary(obj as api.PerfMetricsSummary);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfMetricsSummary"),
        );
        pathOffset += 19;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerfMetricsSummary());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries;
      var arg_request = buildPerfSampleSeries();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PerfSampleSeries.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPerfSampleSeries(obj as api.PerfSampleSeries);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfSampleSeries"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerfSampleSeries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId,
          $fields: arg_$fields);
      checkPerfSampleSeries(response as api.PerfSampleSeries);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_sampleSeriesId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfSampleSeries/"),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sampleSeriesId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerfSampleSeries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_historyId,
          arg_executionId, arg_stepId, arg_sampleSeriesId,
          $fields: arg_$fields);
      checkPerfSampleSeries(response as api.PerfSampleSeries);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_filter = buildUnnamed7633();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfSampleSeries"),
        );
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
          queryMap["filter"]!,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPerfSampleSeriesResponse());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries
          .samples;
      var arg_request = buildBatchCreatePerfSamplesRequest();
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_sampleSeriesId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchCreatePerfSamplesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreatePerfSamplesRequest(
            obj as api.BatchCreatePerfSamplesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfSampleSeries/"),
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
          unittest.equals("/samples:batchCreate"),
        );
        pathOffset += 20;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchCreatePerfSamplesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchCreate(arg_request, arg_projectId,
          arg_historyId, arg_executionId, arg_stepId, arg_sampleSeriesId,
          $fields: arg_$fields);
      checkBatchCreatePerfSamplesResponse(
          response as api.BatchCreatePerfSamplesResponse);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .perfSampleSeries
          .samples;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_sampleSeriesId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/perfSampleSeries/"),
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
          unittest.equals("/samples"),
        );
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPerfSamplesResponse());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .testCases;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_testCaseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/testCases/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_testCaseId'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_historyId,
          arg_executionId, arg_stepId, arg_testCaseId,
          $fields: arg_$fields);
      checkTestCase(response as api.TestCase);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .testCases;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/testCases"),
        );
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTestCasesResponse());
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
      var mock = HttpServerMock();
      var res = api.ToolResultsApi(mock)
          .projects
          .histories
          .executions
          .steps
          .thumbnails;
      var arg_projectId = 'foo';
      var arg_historyId = 'foo';
      var arg_executionId = 'foo';
      var arg_stepId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("toolresults/v1beta3/projects/"),
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
          unittest.equals("/histories/"),
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
          unittest.equals("/executions/"),
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
          unittest.equals("/steps/"),
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
          unittest.equals("/thumbnails"),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListStepThumbnailsResponse());
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
