library googleapis_beta.toolresults.v1beta3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/toolresults/v1beta3.dart' as api;

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

core.int buildCounterANR = 0;
buildANR() {
  var o = new api.ANR();
  buildCounterANR++;
  if (buildCounterANR < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterANR--;
  return o;
}

checkANR(api.ANR o) {
  buildCounterANR++;
  if (buildCounterANR < 3) {
    checkStackTrace(o.stackTrace);
  }
  buildCounterANR--;
}

core.int buildCounterAndroidAppInfo = 0;
buildAndroidAppInfo() {
  var o = new api.AndroidAppInfo();
  buildCounterAndroidAppInfo++;
  if (buildCounterAndroidAppInfo < 3) {
    o.name = "foo";
    o.packageName = "foo";
    o.versionCode = "foo";
    o.versionName = "foo";
  }
  buildCounterAndroidAppInfo--;
  return o;
}

checkAndroidAppInfo(api.AndroidAppInfo o) {
  buildCounterAndroidAppInfo++;
  if (buildCounterAndroidAppInfo < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals('foo'));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterAndroidAppInfo--;
}

buildUnnamed5843() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5843(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidInstrumentationTest = 0;
buildAndroidInstrumentationTest() {
  var o = new api.AndroidInstrumentationTest();
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    o.testPackageId = "foo";
    o.testRunnerClass = "foo";
    o.testTargets = buildUnnamed5843();
    o.useOrchestrator = true;
  }
  buildCounterAndroidInstrumentationTest--;
  return o;
}

checkAndroidInstrumentationTest(api.AndroidInstrumentationTest o) {
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    unittest.expect(o.testPackageId, unittest.equals('foo'));
    unittest.expect(o.testRunnerClass, unittest.equals('foo'));
    checkUnnamed5843(o.testTargets);
    unittest.expect(o.useOrchestrator, unittest.isTrue);
  }
  buildCounterAndroidInstrumentationTest--;
}

core.int buildCounterAndroidRoboTest = 0;
buildAndroidRoboTest() {
  var o = new api.AndroidRoboTest();
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    o.appInitialActivity = "foo";
    o.bootstrapPackageId = "foo";
    o.bootstrapRunnerClass = "foo";
    o.maxDepth = 42;
    o.maxSteps = 42;
  }
  buildCounterAndroidRoboTest--;
  return o;
}

checkAndroidRoboTest(api.AndroidRoboTest o) {
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    unittest.expect(o.appInitialActivity, unittest.equals('foo'));
    unittest.expect(o.bootstrapPackageId, unittest.equals('foo'));
    unittest.expect(o.bootstrapRunnerClass, unittest.equals('foo'));
    unittest.expect(o.maxDepth, unittest.equals(42));
    unittest.expect(o.maxSteps, unittest.equals(42));
  }
  buildCounterAndroidRoboTest--;
}

core.int buildCounterAndroidTest = 0;
buildAndroidTest() {
  var o = new api.AndroidTest();
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

checkAndroidTest(api.AndroidTest o) {
  buildCounterAndroidTest++;
  if (buildCounterAndroidTest < 3) {
    checkAndroidAppInfo(o.androidAppInfo);
    checkAndroidInstrumentationTest(o.androidInstrumentationTest);
    checkAndroidRoboTest(o.androidRoboTest);
    checkAndroidTestLoop(o.androidTestLoop);
    checkDuration(o.testTimeout);
  }
  buildCounterAndroidTest--;
}

core.int buildCounterAndroidTestLoop = 0;
buildAndroidTestLoop() {
  var o = new api.AndroidTestLoop();
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {}
  buildCounterAndroidTestLoop--;
  return o;
}

checkAndroidTestLoop(api.AndroidTestLoop o) {
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {}
  buildCounterAndroidTestLoop--;
}

core.int buildCounterAny = 0;
buildAny() {
  var o = new api.Any();
  buildCounterAny++;
  if (buildCounterAny < 3) {
    o.typeUrl = "foo";
    o.value = "foo";
  }
  buildCounterAny--;
  return o;
}

checkAny(api.Any o) {
  buildCounterAny++;
  if (buildCounterAny < 3) {
    unittest.expect(o.typeUrl, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterAny--;
}

core.int buildCounterAppStartTime = 0;
buildAppStartTime() {
  var o = new api.AppStartTime();
  buildCounterAppStartTime++;
  if (buildCounterAppStartTime < 3) {
    o.fullyDrawnTime = buildDuration();
    o.initialDisplayTime = buildDuration();
  }
  buildCounterAppStartTime--;
  return o;
}

checkAppStartTime(api.AppStartTime o) {
  buildCounterAppStartTime++;
  if (buildCounterAppStartTime < 3) {
    checkDuration(o.fullyDrawnTime);
    checkDuration(o.initialDisplayTime);
  }
  buildCounterAppStartTime--;
}

core.int buildCounterAvailableDeepLinks = 0;
buildAvailableDeepLinks() {
  var o = new api.AvailableDeepLinks();
  buildCounterAvailableDeepLinks++;
  if (buildCounterAvailableDeepLinks < 3) {}
  buildCounterAvailableDeepLinks--;
  return o;
}

checkAvailableDeepLinks(api.AvailableDeepLinks o) {
  buildCounterAvailableDeepLinks++;
  if (buildCounterAvailableDeepLinks < 3) {}
  buildCounterAvailableDeepLinks--;
}

core.int buildCounterBasicPerfSampleSeries = 0;
buildBasicPerfSampleSeries() {
  var o = new api.BasicPerfSampleSeries();
  buildCounterBasicPerfSampleSeries++;
  if (buildCounterBasicPerfSampleSeries < 3) {
    o.perfMetricType = "foo";
    o.perfUnit = "foo";
    o.sampleSeriesLabel = "foo";
  }
  buildCounterBasicPerfSampleSeries--;
  return o;
}

checkBasicPerfSampleSeries(api.BasicPerfSampleSeries o) {
  buildCounterBasicPerfSampleSeries++;
  if (buildCounterBasicPerfSampleSeries < 3) {
    unittest.expect(o.perfMetricType, unittest.equals('foo'));
    unittest.expect(o.perfUnit, unittest.equals('foo'));
    unittest.expect(o.sampleSeriesLabel, unittest.equals('foo'));
  }
  buildCounterBasicPerfSampleSeries--;
}

buildUnnamed5844() {
  var o = new core.List<api.PerfSample>();
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

checkUnnamed5844(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterBatchCreatePerfSamplesRequest = 0;
buildBatchCreatePerfSamplesRequest() {
  var o = new api.BatchCreatePerfSamplesRequest();
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    o.perfSamples = buildUnnamed5844();
  }
  buildCounterBatchCreatePerfSamplesRequest--;
  return o;
}

checkBatchCreatePerfSamplesRequest(api.BatchCreatePerfSamplesRequest o) {
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    checkUnnamed5844(o.perfSamples);
  }
  buildCounterBatchCreatePerfSamplesRequest--;
}

buildUnnamed5845() {
  var o = new core.List<api.PerfSample>();
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

checkUnnamed5845(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterBatchCreatePerfSamplesResponse = 0;
buildBatchCreatePerfSamplesResponse() {
  var o = new api.BatchCreatePerfSamplesResponse();
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    o.perfSamples = buildUnnamed5845();
  }
  buildCounterBatchCreatePerfSamplesResponse--;
  return o;
}

checkBatchCreatePerfSamplesResponse(api.BatchCreatePerfSamplesResponse o) {
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    checkUnnamed5845(o.perfSamples);
  }
  buildCounterBatchCreatePerfSamplesResponse--;
}

core.int buildCounterBlankScreen = 0;
buildBlankScreen() {
  var o = new api.BlankScreen();
  buildCounterBlankScreen++;
  if (buildCounterBlankScreen < 3) {
    o.screenId = "foo";
  }
  buildCounterBlankScreen--;
  return o;
}

checkBlankScreen(api.BlankScreen o) {
  buildCounterBlankScreen++;
  if (buildCounterBlankScreen < 3) {
    unittest.expect(o.screenId, unittest.equals('foo'));
  }
  buildCounterBlankScreen--;
}

core.int buildCounterCPUInfo = 0;
buildCPUInfo() {
  var o = new api.CPUInfo();
  buildCounterCPUInfo++;
  if (buildCounterCPUInfo < 3) {
    o.cpuProcessor = "foo";
    o.cpuSpeedInGhz = 42.0;
    o.numberOfCores = 42;
  }
  buildCounterCPUInfo--;
  return o;
}

checkCPUInfo(api.CPUInfo o) {
  buildCounterCPUInfo++;
  if (buildCounterCPUInfo < 3) {
    unittest.expect(o.cpuProcessor, unittest.equals('foo'));
    unittest.expect(o.cpuSpeedInGhz, unittest.equals(42.0));
    unittest.expect(o.numberOfCores, unittest.equals(42));
  }
  buildCounterCPUInfo--;
}

core.int buildCounterCrashDialogError = 0;
buildCrashDialogError() {
  var o = new api.CrashDialogError();
  buildCounterCrashDialogError++;
  if (buildCounterCrashDialogError < 3) {
    o.crashPackage = "foo";
  }
  buildCounterCrashDialogError--;
  return o;
}

checkCrashDialogError(api.CrashDialogError o) {
  buildCounterCrashDialogError++;
  if (buildCounterCrashDialogError < 3) {
    unittest.expect(o.crashPackage, unittest.equals('foo'));
  }
  buildCounterCrashDialogError--;
}

core.int buildCounterDuration = 0;
buildDuration() {
  var o = new api.Duration();
  buildCounterDuration++;
  if (buildCounterDuration < 3) {
    o.nanos = 42;
    o.seconds = "foo";
  }
  buildCounterDuration--;
  return o;
}

checkDuration(api.Duration o) {
  buildCounterDuration++;
  if (buildCounterDuration < 3) {
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals('foo'));
  }
  buildCounterDuration--;
}

buildUnnamed5846() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5846(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEncounteredLoginScreen = 0;
buildEncounteredLoginScreen() {
  var o = new api.EncounteredLoginScreen();
  buildCounterEncounteredLoginScreen++;
  if (buildCounterEncounteredLoginScreen < 3) {
    o.distinctScreens = 42;
    o.screenIds = buildUnnamed5846();
  }
  buildCounterEncounteredLoginScreen--;
  return o;
}

checkEncounteredLoginScreen(api.EncounteredLoginScreen o) {
  buildCounterEncounteredLoginScreen++;
  if (buildCounterEncounteredLoginScreen < 3) {
    unittest.expect(o.distinctScreens, unittest.equals(42));
    checkUnnamed5846(o.screenIds);
  }
  buildCounterEncounteredLoginScreen--;
}

buildUnnamed5847() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5847(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEncounteredNonAndroidUiWidgetScreen = 0;
buildEncounteredNonAndroidUiWidgetScreen() {
  var o = new api.EncounteredNonAndroidUiWidgetScreen();
  buildCounterEncounteredNonAndroidUiWidgetScreen++;
  if (buildCounterEncounteredNonAndroidUiWidgetScreen < 3) {
    o.distinctScreens = 42;
    o.screenIds = buildUnnamed5847();
  }
  buildCounterEncounteredNonAndroidUiWidgetScreen--;
  return o;
}

checkEncounteredNonAndroidUiWidgetScreen(
    api.EncounteredNonAndroidUiWidgetScreen o) {
  buildCounterEncounteredNonAndroidUiWidgetScreen++;
  if (buildCounterEncounteredNonAndroidUiWidgetScreen < 3) {
    unittest.expect(o.distinctScreens, unittest.equals(42));
    checkUnnamed5847(o.screenIds);
  }
  buildCounterEncounteredNonAndroidUiWidgetScreen--;
}

buildUnnamed5848() {
  var o = new core.List<api.EnvironmentDimensionValueEntry>();
  o.add(buildEnvironmentDimensionValueEntry());
  o.add(buildEnvironmentDimensionValueEntry());
  return o;
}

checkUnnamed5848(core.List<api.EnvironmentDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentDimensionValueEntry(o[0]);
  checkEnvironmentDimensionValueEntry(o[1]);
}

buildUnnamed5849() {
  var o = new core.List<api.ShardSummary>();
  o.add(buildShardSummary());
  o.add(buildShardSummary());
  return o;
}

checkUnnamed5849(core.List<api.ShardSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShardSummary(o[0]);
  checkShardSummary(o[1]);
}

core.int buildCounterEnvironment = 0;
buildEnvironment() {
  var o = new api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.dimensionValue = buildUnnamed5848();
    o.displayName = "foo";
    o.environmentId = "foo";
    o.environmentResult = buildMergedResult();
    o.executionId = "foo";
    o.historyId = "foo";
    o.projectId = "foo";
    o.resultsStorage = buildResultsStorage();
    o.shardSummaries = buildUnnamed5849();
  }
  buildCounterEnvironment--;
  return o;
}

checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkTimestamp(o.completionTime);
    checkTimestamp(o.creationTime);
    checkUnnamed5848(o.dimensionValue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.environmentId, unittest.equals('foo'));
    checkMergedResult(o.environmentResult);
    unittest.expect(o.executionId, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkResultsStorage(o.resultsStorage);
    checkUnnamed5849(o.shardSummaries);
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentDimensionValueEntry = 0;
buildEnvironmentDimensionValueEntry() {
  var o = new api.EnvironmentDimensionValueEntry();
  buildCounterEnvironmentDimensionValueEntry++;
  if (buildCounterEnvironmentDimensionValueEntry < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterEnvironmentDimensionValueEntry--;
  return o;
}

checkEnvironmentDimensionValueEntry(api.EnvironmentDimensionValueEntry o) {
  buildCounterEnvironmentDimensionValueEntry++;
  if (buildCounterEnvironmentDimensionValueEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEnvironmentDimensionValueEntry--;
}

buildUnnamed5850() {
  var o = new core.List<api.MatrixDimensionDefinition>();
  o.add(buildMatrixDimensionDefinition());
  o.add(buildMatrixDimensionDefinition());
  return o;
}

checkUnnamed5850(core.List<api.MatrixDimensionDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatrixDimensionDefinition(o[0]);
  checkMatrixDimensionDefinition(o[1]);
}

core.int buildCounterExecution = 0;
buildExecution() {
  var o = new api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.dimensionDefinitions = buildUnnamed5850();
    o.executionId = "foo";
    o.outcome = buildOutcome();
    o.specification = buildSpecification();
    o.state = "foo";
    o.testExecutionMatrixId = "foo";
  }
  buildCounterExecution--;
  return o;
}

checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    checkTimestamp(o.completionTime);
    checkTimestamp(o.creationTime);
    checkUnnamed5850(o.dimensionDefinitions);
    unittest.expect(o.executionId, unittest.equals('foo'));
    checkOutcome(o.outcome);
    checkSpecification(o.specification);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.testExecutionMatrixId, unittest.equals('foo'));
  }
  buildCounterExecution--;
}

core.int buildCounterFailedToInstall = 0;
buildFailedToInstall() {
  var o = new api.FailedToInstall();
  buildCounterFailedToInstall++;
  if (buildCounterFailedToInstall < 3) {}
  buildCounterFailedToInstall--;
  return o;
}

checkFailedToInstall(api.FailedToInstall o) {
  buildCounterFailedToInstall++;
  if (buildCounterFailedToInstall < 3) {}
  buildCounterFailedToInstall--;
}

core.int buildCounterFailureDetail = 0;
buildFailureDetail() {
  var o = new api.FailureDetail();
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

checkFailureDetail(api.FailureDetail o) {
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    unittest.expect(o.crashed, unittest.isTrue);
    unittest.expect(o.deviceOutOfMemory, unittest.isTrue);
    unittest.expect(o.failedRoboscript, unittest.isTrue);
    unittest.expect(o.notInstalled, unittest.isTrue);
    unittest.expect(o.otherNativeCrash, unittest.isTrue);
    unittest.expect(o.timedOut, unittest.isTrue);
    unittest.expect(o.unableToCrawl, unittest.isTrue);
  }
  buildCounterFailureDetail--;
}

core.int buildCounterFatalException = 0;
buildFatalException() {
  var o = new api.FatalException();
  buildCounterFatalException++;
  if (buildCounterFatalException < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterFatalException--;
  return o;
}

checkFatalException(api.FatalException o) {
  buildCounterFatalException++;
  if (buildCounterFatalException < 3) {
    checkStackTrace(o.stackTrace);
  }
  buildCounterFatalException--;
}

core.int buildCounterFileReference = 0;
buildFileReference() {
  var o = new api.FileReference();
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    o.fileUri = "foo";
  }
  buildCounterFileReference--;
  return o;
}

checkFileReference(api.FileReference o) {
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    unittest.expect(o.fileUri, unittest.equals('foo'));
  }
  buildCounterFileReference--;
}

buildUnnamed5851() {
  var o = new core.List<api.GraphicsStatsBucket>();
  o.add(buildGraphicsStatsBucket());
  o.add(buildGraphicsStatsBucket());
  return o;
}

checkUnnamed5851(core.List<api.GraphicsStatsBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphicsStatsBucket(o[0]);
  checkGraphicsStatsBucket(o[1]);
}

core.int buildCounterGraphicsStats = 0;
buildGraphicsStats() {
  var o = new api.GraphicsStats();
  buildCounterGraphicsStats++;
  if (buildCounterGraphicsStats < 3) {
    o.buckets = buildUnnamed5851();
    o.highInputLatencyCount = "foo";
    o.jankyFrames = "foo";
    o.missedVsyncCount = "foo";
    o.p50Millis = "foo";
    o.p90Millis = "foo";
    o.p95Millis = "foo";
    o.p99Millis = "foo";
    o.slowBitmapUploadCount = "foo";
    o.slowDrawCount = "foo";
    o.slowUiThreadCount = "foo";
    o.totalFrames = "foo";
  }
  buildCounterGraphicsStats--;
  return o;
}

checkGraphicsStats(api.GraphicsStats o) {
  buildCounterGraphicsStats++;
  if (buildCounterGraphicsStats < 3) {
    checkUnnamed5851(o.buckets);
    unittest.expect(o.highInputLatencyCount, unittest.equals('foo'));
    unittest.expect(o.jankyFrames, unittest.equals('foo'));
    unittest.expect(o.missedVsyncCount, unittest.equals('foo'));
    unittest.expect(o.p50Millis, unittest.equals('foo'));
    unittest.expect(o.p90Millis, unittest.equals('foo'));
    unittest.expect(o.p95Millis, unittest.equals('foo'));
    unittest.expect(o.p99Millis, unittest.equals('foo'));
    unittest.expect(o.slowBitmapUploadCount, unittest.equals('foo'));
    unittest.expect(o.slowDrawCount, unittest.equals('foo'));
    unittest.expect(o.slowUiThreadCount, unittest.equals('foo'));
    unittest.expect(o.totalFrames, unittest.equals('foo'));
  }
  buildCounterGraphicsStats--;
}

core.int buildCounterGraphicsStatsBucket = 0;
buildGraphicsStatsBucket() {
  var o = new api.GraphicsStatsBucket();
  buildCounterGraphicsStatsBucket++;
  if (buildCounterGraphicsStatsBucket < 3) {
    o.frameCount = "foo";
    o.renderMillis = "foo";
  }
  buildCounterGraphicsStatsBucket--;
  return o;
}

checkGraphicsStatsBucket(api.GraphicsStatsBucket o) {
  buildCounterGraphicsStatsBucket++;
  if (buildCounterGraphicsStatsBucket < 3) {
    unittest.expect(o.frameCount, unittest.equals('foo'));
    unittest.expect(o.renderMillis, unittest.equals('foo'));
  }
  buildCounterGraphicsStatsBucket--;
}

core.int buildCounterHistory = 0;
buildHistory() {
  var o = new api.History();
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    o.displayName = "foo";
    o.historyId = "foo";
    o.name = "foo";
    o.testPlatform = "foo";
  }
  buildCounterHistory--;
  return o;
}

checkHistory(api.History o) {
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.testPlatform, unittest.equals('foo'));
  }
  buildCounterHistory--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.error = buildStatus();
    o.sourceImage = buildToolOutputReference();
    o.stepId = "foo";
    o.thumbnail = buildThumbnail();
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    checkStatus(o.error);
    checkToolOutputReference(o.sourceImage);
    unittest.expect(o.stepId, unittest.equals('foo'));
    checkThumbnail(o.thumbnail);
  }
  buildCounterImage--;
}

core.int buildCounterInAppPurchasesFound = 0;
buildInAppPurchasesFound() {
  var o = new api.InAppPurchasesFound();
  buildCounterInAppPurchasesFound++;
  if (buildCounterInAppPurchasesFound < 3) {
    o.inAppPurchasesFlowsExplored = 42;
    o.inAppPurchasesFlowsStarted = 42;
  }
  buildCounterInAppPurchasesFound--;
  return o;
}

checkInAppPurchasesFound(api.InAppPurchasesFound o) {
  buildCounterInAppPurchasesFound++;
  if (buildCounterInAppPurchasesFound < 3) {
    unittest.expect(o.inAppPurchasesFlowsExplored, unittest.equals(42));
    unittest.expect(o.inAppPurchasesFlowsStarted, unittest.equals(42));
  }
  buildCounterInAppPurchasesFound--;
}

core.int buildCounterInconclusiveDetail = 0;
buildInconclusiveDetail() {
  var o = new api.InconclusiveDetail();
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    o.abortedByUser = true;
    o.hasErrorLogs = true;
    o.infrastructureFailure = true;
  }
  buildCounterInconclusiveDetail--;
  return o;
}

checkInconclusiveDetail(api.InconclusiveDetail o) {
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    unittest.expect(o.abortedByUser, unittest.isTrue);
    unittest.expect(o.hasErrorLogs, unittest.isTrue);
    unittest.expect(o.infrastructureFailure, unittest.isTrue);
  }
  buildCounterInconclusiveDetail--;
}

core.int buildCounterIndividualOutcome = 0;
buildIndividualOutcome() {
  var o = new api.IndividualOutcome();
  buildCounterIndividualOutcome++;
  if (buildCounterIndividualOutcome < 3) {
    o.multistepNumber = 42;
    o.outcomeSummary = "foo";
    o.runDuration = buildDuration();
    o.stepId = "foo";
  }
  buildCounterIndividualOutcome--;
  return o;
}

checkIndividualOutcome(api.IndividualOutcome o) {
  buildCounterIndividualOutcome++;
  if (buildCounterIndividualOutcome < 3) {
    unittest.expect(o.multistepNumber, unittest.equals(42));
    unittest.expect(o.outcomeSummary, unittest.equals('foo'));
    checkDuration(o.runDuration);
    unittest.expect(o.stepId, unittest.equals('foo'));
  }
  buildCounterIndividualOutcome--;
}

core.int buildCounterInsufficientCoverage = 0;
buildInsufficientCoverage() {
  var o = new api.InsufficientCoverage();
  buildCounterInsufficientCoverage++;
  if (buildCounterInsufficientCoverage < 3) {}
  buildCounterInsufficientCoverage--;
  return o;
}

checkInsufficientCoverage(api.InsufficientCoverage o) {
  buildCounterInsufficientCoverage++;
  if (buildCounterInsufficientCoverage < 3) {}
  buildCounterInsufficientCoverage--;
}

core.int buildCounterIosAppCrashed = 0;
buildIosAppCrashed() {
  var o = new api.IosAppCrashed();
  buildCounterIosAppCrashed++;
  if (buildCounterIosAppCrashed < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterIosAppCrashed--;
  return o;
}

checkIosAppCrashed(api.IosAppCrashed o) {
  buildCounterIosAppCrashed++;
  if (buildCounterIosAppCrashed < 3) {
    checkStackTrace(o.stackTrace);
  }
  buildCounterIosAppCrashed--;
}

core.int buildCounterIosAppInfo = 0;
buildIosAppInfo() {
  var o = new api.IosAppInfo();
  buildCounterIosAppInfo++;
  if (buildCounterIosAppInfo < 3) {
    o.name = "foo";
  }
  buildCounterIosAppInfo--;
  return o;
}

checkIosAppInfo(api.IosAppInfo o) {
  buildCounterIosAppInfo++;
  if (buildCounterIosAppInfo < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterIosAppInfo--;
}

core.int buildCounterIosRoboTest = 0;
buildIosRoboTest() {
  var o = new api.IosRoboTest();
  buildCounterIosRoboTest++;
  if (buildCounterIosRoboTest < 3) {}
  buildCounterIosRoboTest--;
  return o;
}

checkIosRoboTest(api.IosRoboTest o) {
  buildCounterIosRoboTest++;
  if (buildCounterIosRoboTest < 3) {}
  buildCounterIosRoboTest--;
}

core.int buildCounterIosTest = 0;
buildIosTest() {
  var o = new api.IosTest();
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

checkIosTest(api.IosTest o) {
  buildCounterIosTest++;
  if (buildCounterIosTest < 3) {
    checkIosAppInfo(o.iosAppInfo);
    checkIosRoboTest(o.iosRoboTest);
    checkIosTestLoop(o.iosTestLoop);
    checkIosXcTest(o.iosXcTest);
    checkDuration(o.testTimeout);
  }
  buildCounterIosTest--;
}

core.int buildCounterIosTestLoop = 0;
buildIosTestLoop() {
  var o = new api.IosTestLoop();
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    o.bundleId = "foo";
  }
  buildCounterIosTestLoop--;
  return o;
}

checkIosTestLoop(api.IosTestLoop o) {
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    unittest.expect(o.bundleId, unittest.equals('foo'));
  }
  buildCounterIosTestLoop--;
}

core.int buildCounterIosXcTest = 0;
buildIosXcTest() {
  var o = new api.IosXcTest();
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    o.bundleId = "foo";
    o.xcodeVersion = "foo";
  }
  buildCounterIosXcTest--;
  return o;
}

checkIosXcTest(api.IosXcTest o) {
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    unittest.expect(o.bundleId, unittest.equals('foo'));
    unittest.expect(o.xcodeVersion, unittest.equals('foo'));
  }
  buildCounterIosXcTest--;
}

core.int buildCounterLauncherActivityNotFound = 0;
buildLauncherActivityNotFound() {
  var o = new api.LauncherActivityNotFound();
  buildCounterLauncherActivityNotFound++;
  if (buildCounterLauncherActivityNotFound < 3) {}
  buildCounterLauncherActivityNotFound--;
  return o;
}

checkLauncherActivityNotFound(api.LauncherActivityNotFound o) {
  buildCounterLauncherActivityNotFound++;
  if (buildCounterLauncherActivityNotFound < 3) {}
  buildCounterLauncherActivityNotFound--;
}

buildUnnamed5852() {
  var o = new core.List<api.Environment>();
  o.add(buildEnvironment());
  o.add(buildEnvironment());
  return o;
}

checkUnnamed5852(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.int buildCounterListEnvironmentsResponse = 0;
buildListEnvironmentsResponse() {
  var o = new api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed5852();
    o.executionId = "foo";
    o.historyId = "foo";
    o.nextPageToken = "foo";
    o.projectId = "foo";
  }
  buildCounterListEnvironmentsResponse--;
  return o;
}

checkListEnvironmentsResponse(api.ListEnvironmentsResponse o) {
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    checkUnnamed5852(o.environments);
    unittest.expect(o.executionId, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterListEnvironmentsResponse--;
}

buildUnnamed5853() {
  var o = new core.List<api.Execution>();
  o.add(buildExecution());
  o.add(buildExecution());
  return o;
}

checkUnnamed5853(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.int buildCounterListExecutionsResponse = 0;
buildListExecutionsResponse() {
  var o = new api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed5853();
    o.nextPageToken = "foo";
  }
  buildCounterListExecutionsResponse--;
  return o;
}

checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed5853(o.executions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListExecutionsResponse--;
}

buildUnnamed5854() {
  var o = new core.List<api.History>();
  o.add(buildHistory());
  o.add(buildHistory());
  return o;
}

checkUnnamed5854(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoriesResponse = 0;
buildListHistoriesResponse() {
  var o = new api.ListHistoriesResponse();
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    o.histories = buildUnnamed5854();
    o.nextPageToken = "foo";
  }
  buildCounterListHistoriesResponse--;
  return o;
}

checkListHistoriesResponse(api.ListHistoriesResponse o) {
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    checkUnnamed5854(o.histories);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHistoriesResponse--;
}

buildUnnamed5855() {
  var o = new core.List<api.PerfSampleSeries>();
  o.add(buildPerfSampleSeries());
  o.add(buildPerfSampleSeries());
  return o;
}

checkUnnamed5855(core.List<api.PerfSampleSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSampleSeries(o[0]);
  checkPerfSampleSeries(o[1]);
}

core.int buildCounterListPerfSampleSeriesResponse = 0;
buildListPerfSampleSeriesResponse() {
  var o = new api.ListPerfSampleSeriesResponse();
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    o.perfSampleSeries = buildUnnamed5855();
  }
  buildCounterListPerfSampleSeriesResponse--;
  return o;
}

checkListPerfSampleSeriesResponse(api.ListPerfSampleSeriesResponse o) {
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    checkUnnamed5855(o.perfSampleSeries);
  }
  buildCounterListPerfSampleSeriesResponse--;
}

buildUnnamed5856() {
  var o = new core.List<api.PerfSample>();
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

checkUnnamed5856(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterListPerfSamplesResponse = 0;
buildListPerfSamplesResponse() {
  var o = new api.ListPerfSamplesResponse();
  buildCounterListPerfSamplesResponse++;
  if (buildCounterListPerfSamplesResponse < 3) {
    o.nextPageToken = "foo";
    o.perfSamples = buildUnnamed5856();
  }
  buildCounterListPerfSamplesResponse--;
  return o;
}

checkListPerfSamplesResponse(api.ListPerfSamplesResponse o) {
  buildCounterListPerfSamplesResponse++;
  if (buildCounterListPerfSamplesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5856(o.perfSamples);
  }
  buildCounterListPerfSamplesResponse--;
}

buildUnnamed5857() {
  var o = new core.List<api.ScreenshotCluster>();
  o.add(buildScreenshotCluster());
  o.add(buildScreenshotCluster());
  return o;
}

checkUnnamed5857(core.List<api.ScreenshotCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreenshotCluster(o[0]);
  checkScreenshotCluster(o[1]);
}

core.int buildCounterListScreenshotClustersResponse = 0;
buildListScreenshotClustersResponse() {
  var o = new api.ListScreenshotClustersResponse();
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    o.clusters = buildUnnamed5857();
  }
  buildCounterListScreenshotClustersResponse--;
  return o;
}

checkListScreenshotClustersResponse(api.ListScreenshotClustersResponse o) {
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    checkUnnamed5857(o.clusters);
  }
  buildCounterListScreenshotClustersResponse--;
}

buildUnnamed5858() {
  var o = new core.List<api.SuggestionClusterProto>();
  o.add(buildSuggestionClusterProto());
  o.add(buildSuggestionClusterProto());
  return o;
}

checkUnnamed5858(core.List<api.SuggestionClusterProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionClusterProto(o[0]);
  checkSuggestionClusterProto(o[1]);
}

core.int buildCounterListStepAccessibilityClustersResponse = 0;
buildListStepAccessibilityClustersResponse() {
  var o = new api.ListStepAccessibilityClustersResponse();
  buildCounterListStepAccessibilityClustersResponse++;
  if (buildCounterListStepAccessibilityClustersResponse < 3) {
    o.clusters = buildUnnamed5858();
    o.name = "foo";
  }
  buildCounterListStepAccessibilityClustersResponse--;
  return o;
}

checkListStepAccessibilityClustersResponse(
    api.ListStepAccessibilityClustersResponse o) {
  buildCounterListStepAccessibilityClustersResponse++;
  if (buildCounterListStepAccessibilityClustersResponse < 3) {
    checkUnnamed5858(o.clusters);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterListStepAccessibilityClustersResponse--;
}

buildUnnamed5859() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed5859(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterListStepThumbnailsResponse = 0;
buildListStepThumbnailsResponse() {
  var o = new api.ListStepThumbnailsResponse();
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    o.nextPageToken = "foo";
    o.thumbnails = buildUnnamed5859();
  }
  buildCounterListStepThumbnailsResponse--;
  return o;
}

checkListStepThumbnailsResponse(api.ListStepThumbnailsResponse o) {
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5859(o.thumbnails);
  }
  buildCounterListStepThumbnailsResponse--;
}

buildUnnamed5860() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed5860(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterListStepsResponse = 0;
buildListStepsResponse() {
  var o = new api.ListStepsResponse();
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    o.nextPageToken = "foo";
    o.steps = buildUnnamed5860();
  }
  buildCounterListStepsResponse--;
  return o;
}

checkListStepsResponse(api.ListStepsResponse o) {
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5860(o.steps);
  }
  buildCounterListStepsResponse--;
}

buildUnnamed5861() {
  var o = new core.List<api.TestCase>();
  o.add(buildTestCase());
  o.add(buildTestCase());
  return o;
}

checkUnnamed5861(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0]);
  checkTestCase(o[1]);
}

core.int buildCounterListTestCasesResponse = 0;
buildListTestCasesResponse() {
  var o = new api.ListTestCasesResponse();
  buildCounterListTestCasesResponse++;
  if (buildCounterListTestCasesResponse < 3) {
    o.nextPageToken = "foo";
    o.testCases = buildUnnamed5861();
  }
  buildCounterListTestCasesResponse--;
  return o;
}

checkListTestCasesResponse(api.ListTestCasesResponse o) {
  buildCounterListTestCasesResponse++;
  if (buildCounterListTestCasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5861(o.testCases);
  }
  buildCounterListTestCasesResponse--;
}

core.int buildCounterMatrixDimensionDefinition = 0;
buildMatrixDimensionDefinition() {
  var o = new api.MatrixDimensionDefinition();
  buildCounterMatrixDimensionDefinition++;
  if (buildCounterMatrixDimensionDefinition < 3) {}
  buildCounterMatrixDimensionDefinition--;
  return o;
}

checkMatrixDimensionDefinition(api.MatrixDimensionDefinition o) {
  buildCounterMatrixDimensionDefinition++;
  if (buildCounterMatrixDimensionDefinition < 3) {}
  buildCounterMatrixDimensionDefinition--;
}

core.int buildCounterMemoryInfo = 0;
buildMemoryInfo() {
  var o = new api.MemoryInfo();
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    o.memoryCapInKibibyte = "foo";
    o.memoryTotalInKibibyte = "foo";
  }
  buildCounterMemoryInfo--;
  return o;
}

checkMemoryInfo(api.MemoryInfo o) {
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    unittest.expect(o.memoryCapInKibibyte, unittest.equals('foo'));
    unittest.expect(o.memoryTotalInKibibyte, unittest.equals('foo'));
  }
  buildCounterMemoryInfo--;
}

buildUnnamed5862() {
  var o = new core.List<api.TestSuiteOverview>();
  o.add(buildTestSuiteOverview());
  o.add(buildTestSuiteOverview());
  return o;
}

checkUnnamed5862(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0]);
  checkTestSuiteOverview(o[1]);
}

core.int buildCounterMergedResult = 0;
buildMergedResult() {
  var o = new api.MergedResult();
  buildCounterMergedResult++;
  if (buildCounterMergedResult < 3) {
    o.outcome = buildOutcome();
    o.state = "foo";
    o.testSuiteOverviews = buildUnnamed5862();
  }
  buildCounterMergedResult--;
  return o;
}

checkMergedResult(api.MergedResult o) {
  buildCounterMergedResult++;
  if (buildCounterMergedResult < 3) {
    checkOutcome(o.outcome);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5862(o.testSuiteOverviews);
  }
  buildCounterMergedResult--;
}

core.int buildCounterMultiStep = 0;
buildMultiStep() {
  var o = new api.MultiStep();
  buildCounterMultiStep++;
  if (buildCounterMultiStep < 3) {
    o.multistepNumber = 42;
    o.primaryStep = buildPrimaryStep();
    o.primaryStepId = "foo";
  }
  buildCounterMultiStep--;
  return o;
}

checkMultiStep(api.MultiStep o) {
  buildCounterMultiStep++;
  if (buildCounterMultiStep < 3) {
    unittest.expect(o.multistepNumber, unittest.equals(42));
    checkPrimaryStep(o.primaryStep);
    unittest.expect(o.primaryStepId, unittest.equals('foo'));
  }
  buildCounterMultiStep--;
}

core.int buildCounterNativeCrash = 0;
buildNativeCrash() {
  var o = new api.NativeCrash();
  buildCounterNativeCrash++;
  if (buildCounterNativeCrash < 3) {
    o.stackTrace = buildStackTrace();
  }
  buildCounterNativeCrash--;
  return o;
}

checkNativeCrash(api.NativeCrash o) {
  buildCounterNativeCrash++;
  if (buildCounterNativeCrash < 3) {
    checkStackTrace(o.stackTrace);
  }
  buildCounterNativeCrash--;
}

buildUnnamed5863() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5863(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5864() {
  var o = new core.List<api.NonSdkApiInsight>();
  o.add(buildNonSdkApiInsight());
  o.add(buildNonSdkApiInsight());
  return o;
}

checkUnnamed5864(core.List<api.NonSdkApiInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonSdkApiInsight(o[0]);
  checkNonSdkApiInsight(o[1]);
}

core.int buildCounterNonSdkApi = 0;
buildNonSdkApi() {
  var o = new api.NonSdkApi();
  buildCounterNonSdkApi++;
  if (buildCounterNonSdkApi < 3) {
    o.apiSignature = "foo";
    o.exampleStackTraces = buildUnnamed5863();
    o.insights = buildUnnamed5864();
    o.invocationCount = 42;
    o.list = "foo";
  }
  buildCounterNonSdkApi--;
  return o;
}

checkNonSdkApi(api.NonSdkApi o) {
  buildCounterNonSdkApi++;
  if (buildCounterNonSdkApi < 3) {
    unittest.expect(o.apiSignature, unittest.equals('foo'));
    checkUnnamed5863(o.exampleStackTraces);
    checkUnnamed5864(o.insights);
    unittest.expect(o.invocationCount, unittest.equals(42));
    unittest.expect(o.list, unittest.equals('foo'));
  }
  buildCounterNonSdkApi--;
}

buildUnnamed5865() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5865(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNonSdkApiInsight = 0;
buildNonSdkApiInsight() {
  var o = new api.NonSdkApiInsight();
  buildCounterNonSdkApiInsight++;
  if (buildCounterNonSdkApiInsight < 3) {
    o.exampleTraceMessages = buildUnnamed5865();
    o.matcherId = "foo";
    o.pendingGoogleUpdateInsight = buildPendingGoogleUpdateInsight();
    o.upgradeInsight = buildUpgradeInsight();
  }
  buildCounterNonSdkApiInsight--;
  return o;
}

checkNonSdkApiInsight(api.NonSdkApiInsight o) {
  buildCounterNonSdkApiInsight++;
  if (buildCounterNonSdkApiInsight < 3) {
    checkUnnamed5865(o.exampleTraceMessages);
    unittest.expect(o.matcherId, unittest.equals('foo'));
    checkPendingGoogleUpdateInsight(o.pendingGoogleUpdateInsight);
    checkUpgradeInsight(o.upgradeInsight);
  }
  buildCounterNonSdkApiInsight--;
}

buildUnnamed5866() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5866(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNonSdkApiUsageViolation = 0;
buildNonSdkApiUsageViolation() {
  var o = new api.NonSdkApiUsageViolation();
  buildCounterNonSdkApiUsageViolation++;
  if (buildCounterNonSdkApiUsageViolation < 3) {
    o.apiSignatures = buildUnnamed5866();
    o.uniqueApis = 42;
  }
  buildCounterNonSdkApiUsageViolation--;
  return o;
}

checkNonSdkApiUsageViolation(api.NonSdkApiUsageViolation o) {
  buildCounterNonSdkApiUsageViolation++;
  if (buildCounterNonSdkApiUsageViolation < 3) {
    checkUnnamed5866(o.apiSignatures);
    unittest.expect(o.uniqueApis, unittest.equals(42));
  }
  buildCounterNonSdkApiUsageViolation--;
}

buildUnnamed5867() {
  var o = new core.List<api.NonSdkApi>();
  o.add(buildNonSdkApi());
  o.add(buildNonSdkApi());
  return o;
}

checkUnnamed5867(core.List<api.NonSdkApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonSdkApi(o[0]);
  checkNonSdkApi(o[1]);
}

core.int buildCounterNonSdkApiUsageViolationReport = 0;
buildNonSdkApiUsageViolationReport() {
  var o = new api.NonSdkApiUsageViolationReport();
  buildCounterNonSdkApiUsageViolationReport++;
  if (buildCounterNonSdkApiUsageViolationReport < 3) {
    o.exampleApis = buildUnnamed5867();
    o.minSdkVersion = 42;
    o.targetSdkVersion = 42;
    o.uniqueApis = 42;
  }
  buildCounterNonSdkApiUsageViolationReport--;
  return o;
}

checkNonSdkApiUsageViolationReport(api.NonSdkApiUsageViolationReport o) {
  buildCounterNonSdkApiUsageViolationReport++;
  if (buildCounterNonSdkApiUsageViolationReport < 3) {
    checkUnnamed5867(o.exampleApis);
    unittest.expect(o.minSdkVersion, unittest.equals(42));
    unittest.expect(o.targetSdkVersion, unittest.equals(42));
    unittest.expect(o.uniqueApis, unittest.equals(42));
  }
  buildCounterNonSdkApiUsageViolationReport--;
}

core.int buildCounterOutcome = 0;
buildOutcome() {
  var o = new api.Outcome();
  buildCounterOutcome++;
  if (buildCounterOutcome < 3) {
    o.failureDetail = buildFailureDetail();
    o.inconclusiveDetail = buildInconclusiveDetail();
    o.skippedDetail = buildSkippedDetail();
    o.successDetail = buildSuccessDetail();
    o.summary = "foo";
  }
  buildCounterOutcome--;
  return o;
}

checkOutcome(api.Outcome o) {
  buildCounterOutcome++;
  if (buildCounterOutcome < 3) {
    checkFailureDetail(o.failureDetail);
    checkInconclusiveDetail(o.inconclusiveDetail);
    checkSkippedDetail(o.skippedDetail);
    checkSuccessDetail(o.successDetail);
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterOutcome--;
}

buildUnnamed5868() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5868(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOverlappingUIElements = 0;
buildOverlappingUIElements() {
  var o = new api.OverlappingUIElements();
  buildCounterOverlappingUIElements++;
  if (buildCounterOverlappingUIElements < 3) {
    o.resourceName = buildUnnamed5868();
    o.screenId = "foo";
  }
  buildCounterOverlappingUIElements--;
  return o;
}

checkOverlappingUIElements(api.OverlappingUIElements o) {
  buildCounterOverlappingUIElements++;
  if (buildCounterOverlappingUIElements < 3) {
    checkUnnamed5868(o.resourceName);
    unittest.expect(o.screenId, unittest.equals('foo'));
  }
  buildCounterOverlappingUIElements--;
}

core.int buildCounterPendingGoogleUpdateInsight = 0;
buildPendingGoogleUpdateInsight() {
  var o = new api.PendingGoogleUpdateInsight();
  buildCounterPendingGoogleUpdateInsight++;
  if (buildCounterPendingGoogleUpdateInsight < 3) {
    o.nameOfGoogleLibrary = "foo";
  }
  buildCounterPendingGoogleUpdateInsight--;
  return o;
}

checkPendingGoogleUpdateInsight(api.PendingGoogleUpdateInsight o) {
  buildCounterPendingGoogleUpdateInsight++;
  if (buildCounterPendingGoogleUpdateInsight < 3) {
    unittest.expect(o.nameOfGoogleLibrary, unittest.equals('foo'));
  }
  buildCounterPendingGoogleUpdateInsight--;
}

core.int buildCounterPerfEnvironment = 0;
buildPerfEnvironment() {
  var o = new api.PerfEnvironment();
  buildCounterPerfEnvironment++;
  if (buildCounterPerfEnvironment < 3) {
    o.cpuInfo = buildCPUInfo();
    o.memoryInfo = buildMemoryInfo();
  }
  buildCounterPerfEnvironment--;
  return o;
}

checkPerfEnvironment(api.PerfEnvironment o) {
  buildCounterPerfEnvironment++;
  if (buildCounterPerfEnvironment < 3) {
    checkCPUInfo(o.cpuInfo);
    checkMemoryInfo(o.memoryInfo);
  }
  buildCounterPerfEnvironment--;
}

buildUnnamed5869() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5869(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPerfMetricsSummary = 0;
buildPerfMetricsSummary() {
  var o = new api.PerfMetricsSummary();
  buildCounterPerfMetricsSummary++;
  if (buildCounterPerfMetricsSummary < 3) {
    o.appStartTime = buildAppStartTime();
    o.executionId = "foo";
    o.graphicsStats = buildGraphicsStats();
    o.historyId = "foo";
    o.perfEnvironment = buildPerfEnvironment();
    o.perfMetrics = buildUnnamed5869();
    o.projectId = "foo";
    o.stepId = "foo";
  }
  buildCounterPerfMetricsSummary--;
  return o;
}

checkPerfMetricsSummary(api.PerfMetricsSummary o) {
  buildCounterPerfMetricsSummary++;
  if (buildCounterPerfMetricsSummary < 3) {
    checkAppStartTime(o.appStartTime);
    unittest.expect(o.executionId, unittest.equals('foo'));
    checkGraphicsStats(o.graphicsStats);
    unittest.expect(o.historyId, unittest.equals('foo'));
    checkPerfEnvironment(o.perfEnvironment);
    checkUnnamed5869(o.perfMetrics);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.stepId, unittest.equals('foo'));
  }
  buildCounterPerfMetricsSummary--;
}

core.int buildCounterPerfSample = 0;
buildPerfSample() {
  var o = new api.PerfSample();
  buildCounterPerfSample++;
  if (buildCounterPerfSample < 3) {
    o.sampleTime = buildTimestamp();
    o.value = 42.0;
  }
  buildCounterPerfSample--;
  return o;
}

checkPerfSample(api.PerfSample o) {
  buildCounterPerfSample++;
  if (buildCounterPerfSample < 3) {
    checkTimestamp(o.sampleTime);
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterPerfSample--;
}

core.int buildCounterPerfSampleSeries = 0;
buildPerfSampleSeries() {
  var o = new api.PerfSampleSeries();
  buildCounterPerfSampleSeries++;
  if (buildCounterPerfSampleSeries < 3) {
    o.basicPerfSampleSeries = buildBasicPerfSampleSeries();
    o.executionId = "foo";
    o.historyId = "foo";
    o.projectId = "foo";
    o.sampleSeriesId = "foo";
    o.stepId = "foo";
  }
  buildCounterPerfSampleSeries--;
  return o;
}

checkPerfSampleSeries(api.PerfSampleSeries o) {
  buildCounterPerfSampleSeries++;
  if (buildCounterPerfSampleSeries < 3) {
    checkBasicPerfSampleSeries(o.basicPerfSampleSeries);
    unittest.expect(o.executionId, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.sampleSeriesId, unittest.equals('foo'));
    unittest.expect(o.stepId, unittest.equals('foo'));
  }
  buildCounterPerfSampleSeries--;
}

core.int buildCounterPerformedGoogleLogin = 0;
buildPerformedGoogleLogin() {
  var o = new api.PerformedGoogleLogin();
  buildCounterPerformedGoogleLogin++;
  if (buildCounterPerformedGoogleLogin < 3) {}
  buildCounterPerformedGoogleLogin--;
  return o;
}

checkPerformedGoogleLogin(api.PerformedGoogleLogin o) {
  buildCounterPerformedGoogleLogin++;
  if (buildCounterPerformedGoogleLogin < 3) {}
  buildCounterPerformedGoogleLogin--;
}

core.int buildCounterPerformedMonkeyActions = 0;
buildPerformedMonkeyActions() {
  var o = new api.PerformedMonkeyActions();
  buildCounterPerformedMonkeyActions++;
  if (buildCounterPerformedMonkeyActions < 3) {
    o.totalActions = 42;
  }
  buildCounterPerformedMonkeyActions--;
  return o;
}

checkPerformedMonkeyActions(api.PerformedMonkeyActions o) {
  buildCounterPerformedMonkeyActions++;
  if (buildCounterPerformedMonkeyActions < 3) {
    unittest.expect(o.totalActions, unittest.equals(42));
  }
  buildCounterPerformedMonkeyActions--;
}

buildUnnamed5870() {
  var o = new core.List<api.IndividualOutcome>();
  o.add(buildIndividualOutcome());
  o.add(buildIndividualOutcome());
  return o;
}

checkUnnamed5870(core.List<api.IndividualOutcome> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndividualOutcome(o[0]);
  checkIndividualOutcome(o[1]);
}

core.int buildCounterPrimaryStep = 0;
buildPrimaryStep() {
  var o = new api.PrimaryStep();
  buildCounterPrimaryStep++;
  if (buildCounterPrimaryStep < 3) {
    o.individualOutcome = buildUnnamed5870();
    o.rollUp = "foo";
  }
  buildCounterPrimaryStep--;
  return o;
}

checkPrimaryStep(api.PrimaryStep o) {
  buildCounterPrimaryStep++;
  if (buildCounterPrimaryStep < 3) {
    checkUnnamed5870(o.individualOutcome);
    unittest.expect(o.rollUp, unittest.equals('foo'));
  }
  buildCounterPrimaryStep--;
}

core.int buildCounterProjectSettings = 0;
buildProjectSettings() {
  var o = new api.ProjectSettings();
  buildCounterProjectSettings++;
  if (buildCounterProjectSettings < 3) {
    o.defaultBucket = "foo";
    o.name = "foo";
  }
  buildCounterProjectSettings--;
  return o;
}

checkProjectSettings(api.ProjectSettings o) {
  buildCounterProjectSettings++;
  if (buildCounterProjectSettings < 3) {
    unittest.expect(o.defaultBucket, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterProjectSettings--;
}

buildUnnamed5871() {
  var o = new core.List<api.FileReference>();
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

checkUnnamed5871(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.int buildCounterPublishXunitXmlFilesRequest = 0;
buildPublishXunitXmlFilesRequest() {
  var o = new api.PublishXunitXmlFilesRequest();
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    o.xunitXmlFiles = buildUnnamed5871();
  }
  buildCounterPublishXunitXmlFilesRequest--;
  return o;
}

checkPublishXunitXmlFilesRequest(api.PublishXunitXmlFilesRequest o) {
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    checkUnnamed5871(o.xunitXmlFiles);
  }
  buildCounterPublishXunitXmlFilesRequest--;
}

core.int buildCounterRegionProto = 0;
buildRegionProto() {
  var o = new api.RegionProto();
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

checkRegionProto(api.RegionProto o) {
  buildCounterRegionProto++;
  if (buildCounterRegionProto < 3) {
    unittest.expect(o.heightPx, unittest.equals(42));
    unittest.expect(o.leftPx, unittest.equals(42));
    unittest.expect(o.topPx, unittest.equals(42));
    unittest.expect(o.widthPx, unittest.equals(42));
  }
  buildCounterRegionProto--;
}

core.int buildCounterResultsStorage = 0;
buildResultsStorage() {
  var o = new api.ResultsStorage();
  buildCounterResultsStorage++;
  if (buildCounterResultsStorage < 3) {
    o.resultsStoragePath = buildFileReference();
    o.xunitXmlFile = buildFileReference();
  }
  buildCounterResultsStorage--;
  return o;
}

checkResultsStorage(api.ResultsStorage o) {
  buildCounterResultsStorage++;
  if (buildCounterResultsStorage < 3) {
    checkFileReference(o.resultsStoragePath);
    checkFileReference(o.xunitXmlFile);
  }
  buildCounterResultsStorage--;
}

core.int buildCounterRoboScriptExecution = 0;
buildRoboScriptExecution() {
  var o = new api.RoboScriptExecution();
  buildCounterRoboScriptExecution++;
  if (buildCounterRoboScriptExecution < 3) {
    o.successfulActions = 42;
    o.totalActions = 42;
  }
  buildCounterRoboScriptExecution--;
  return o;
}

checkRoboScriptExecution(api.RoboScriptExecution o) {
  buildCounterRoboScriptExecution++;
  if (buildCounterRoboScriptExecution < 3) {
    unittest.expect(o.successfulActions, unittest.equals(42));
    unittest.expect(o.totalActions, unittest.equals(42));
  }
  buildCounterRoboScriptExecution--;
}

core.int buildCounterSafeHtmlProto = 0;
buildSafeHtmlProto() {
  var o = new api.SafeHtmlProto();
  buildCounterSafeHtmlProto++;
  if (buildCounterSafeHtmlProto < 3) {
    o.privateDoNotAccessOrElseSafeHtmlWrappedValue = "foo";
  }
  buildCounterSafeHtmlProto--;
  return o;
}

checkSafeHtmlProto(api.SafeHtmlProto o) {
  buildCounterSafeHtmlProto++;
  if (buildCounterSafeHtmlProto < 3) {
    unittest.expect(
        o.privateDoNotAccessOrElseSafeHtmlWrappedValue, unittest.equals('foo'));
  }
  buildCounterSafeHtmlProto--;
}

core.int buildCounterScreen = 0;
buildScreen() {
  var o = new api.Screen();
  buildCounterScreen++;
  if (buildCounterScreen < 3) {
    o.fileReference = "foo";
    o.locale = "foo";
    o.model = "foo";
    o.version = "foo";
  }
  buildCounterScreen--;
  return o;
}

checkScreen(api.Screen o) {
  buildCounterScreen++;
  if (buildCounterScreen < 3) {
    unittest.expect(o.fileReference, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterScreen--;
}

buildUnnamed5872() {
  var o = new core.List<api.Screen>();
  o.add(buildScreen());
  o.add(buildScreen());
  return o;
}

checkUnnamed5872(core.List<api.Screen> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreen(o[0]);
  checkScreen(o[1]);
}

core.int buildCounterScreenshotCluster = 0;
buildScreenshotCluster() {
  var o = new api.ScreenshotCluster();
  buildCounterScreenshotCluster++;
  if (buildCounterScreenshotCluster < 3) {
    o.activity = "foo";
    o.clusterId = "foo";
    o.keyScreen = buildScreen();
    o.screens = buildUnnamed5872();
  }
  buildCounterScreenshotCluster--;
  return o;
}

checkScreenshotCluster(api.ScreenshotCluster o) {
  buildCounterScreenshotCluster++;
  if (buildCounterScreenshotCluster < 3) {
    unittest.expect(o.activity, unittest.equals('foo'));
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkScreen(o.keyScreen);
    checkUnnamed5872(o.screens);
  }
  buildCounterScreenshotCluster--;
}

buildUnnamed5873() {
  var o = new core.List<api.StepSummary>();
  o.add(buildStepSummary());
  o.add(buildStepSummary());
  return o;
}

checkUnnamed5873(core.List<api.StepSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepSummary(o[0]);
  checkStepSummary(o[1]);
}

core.int buildCounterShardSummary = 0;
buildShardSummary() {
  var o = new api.ShardSummary();
  buildCounterShardSummary++;
  if (buildCounterShardSummary < 3) {
    o.runs = buildUnnamed5873();
    o.shardResult = buildMergedResult();
  }
  buildCounterShardSummary--;
  return o;
}

checkShardSummary(api.ShardSummary o) {
  buildCounterShardSummary++;
  if (buildCounterShardSummary < 3) {
    checkUnnamed5873(o.runs);
    checkMergedResult(o.shardResult);
  }
  buildCounterShardSummary--;
}

core.int buildCounterSkippedDetail = 0;
buildSkippedDetail() {
  var o = new api.SkippedDetail();
  buildCounterSkippedDetail++;
  if (buildCounterSkippedDetail < 3) {
    o.incompatibleAppVersion = true;
    o.incompatibleArchitecture = true;
    o.incompatibleDevice = true;
  }
  buildCounterSkippedDetail--;
  return o;
}

checkSkippedDetail(api.SkippedDetail o) {
  buildCounterSkippedDetail++;
  if (buildCounterSkippedDetail < 3) {
    unittest.expect(o.incompatibleAppVersion, unittest.isTrue);
    unittest.expect(o.incompatibleArchitecture, unittest.isTrue);
    unittest.expect(o.incompatibleDevice, unittest.isTrue);
  }
  buildCounterSkippedDetail--;
}

core.int buildCounterSpecification = 0;
buildSpecification() {
  var o = new api.Specification();
  buildCounterSpecification++;
  if (buildCounterSpecification < 3) {
    o.androidTest = buildAndroidTest();
    o.iosTest = buildIosTest();
  }
  buildCounterSpecification--;
  return o;
}

checkSpecification(api.Specification o) {
  buildCounterSpecification++;
  if (buildCounterSpecification < 3) {
    checkAndroidTest(o.androidTest);
    checkIosTest(o.iosTest);
  }
  buildCounterSpecification--;
}

core.int buildCounterStackTrace = 0;
buildStackTrace() {
  var o = new api.StackTrace();
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    o.exception = "foo";
  }
  buildCounterStackTrace--;
  return o;
}

checkStackTrace(api.StackTrace o) {
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    unittest.expect(o.exception, unittest.equals('foo'));
  }
  buildCounterStackTrace--;
}

core.int buildCounterStartActivityNotFound = 0;
buildStartActivityNotFound() {
  var o = new api.StartActivityNotFound();
  buildCounterStartActivityNotFound++;
  if (buildCounterStartActivityNotFound < 3) {
    o.action = "foo";
    o.uri = "foo";
  }
  buildCounterStartActivityNotFound--;
  return o;
}

checkStartActivityNotFound(api.StartActivityNotFound o) {
  buildCounterStartActivityNotFound++;
  if (buildCounterStartActivityNotFound < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterStartActivityNotFound--;
}

buildUnnamed5874() {
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

checkUnnamed5874(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed5875() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5874());
  o.add(buildUnnamed5874());
  return o;
}

checkUnnamed5875(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5874(o[0]);
  checkUnnamed5874(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5875();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5875(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed5876() {
  var o = new core.List<api.StepDimensionValueEntry>();
  o.add(buildStepDimensionValueEntry());
  o.add(buildStepDimensionValueEntry());
  return o;
}

checkUnnamed5876(core.List<api.StepDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepDimensionValueEntry(o[0]);
  checkStepDimensionValueEntry(o[1]);
}

buildUnnamed5877() {
  var o = new core.List<api.StepLabelsEntry>();
  o.add(buildStepLabelsEntry());
  o.add(buildStepLabelsEntry());
  return o;
}

checkUnnamed5877(core.List<api.StepLabelsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepLabelsEntry(o[0]);
  checkStepLabelsEntry(o[1]);
}

core.int buildCounterStep = 0;
buildStep() {
  var o = new api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
    o.description = "foo";
    o.deviceUsageDuration = buildDuration();
    o.dimensionValue = buildUnnamed5876();
    o.hasImages = true;
    o.labels = buildUnnamed5877();
    o.multiStep = buildMultiStep();
    o.name = "foo";
    o.outcome = buildOutcome();
    o.runDuration = buildDuration();
    o.state = "foo";
    o.stepId = "foo";
    o.testExecutionStep = buildTestExecutionStep();
    o.toolExecutionStep = buildToolExecutionStep();
  }
  buildCounterStep--;
  return o;
}

checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    checkTimestamp(o.completionTime);
    checkTimestamp(o.creationTime);
    unittest.expect(o.description, unittest.equals('foo'));
    checkDuration(o.deviceUsageDuration);
    checkUnnamed5876(o.dimensionValue);
    unittest.expect(o.hasImages, unittest.isTrue);
    checkUnnamed5877(o.labels);
    checkMultiStep(o.multiStep);
    unittest.expect(o.name, unittest.equals('foo'));
    checkOutcome(o.outcome);
    checkDuration(o.runDuration);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stepId, unittest.equals('foo'));
    checkTestExecutionStep(o.testExecutionStep);
    checkToolExecutionStep(o.toolExecutionStep);
  }
  buildCounterStep--;
}

core.int buildCounterStepDimensionValueEntry = 0;
buildStepDimensionValueEntry() {
  var o = new api.StepDimensionValueEntry();
  buildCounterStepDimensionValueEntry++;
  if (buildCounterStepDimensionValueEntry < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterStepDimensionValueEntry--;
  return o;
}

checkStepDimensionValueEntry(api.StepDimensionValueEntry o) {
  buildCounterStepDimensionValueEntry++;
  if (buildCounterStepDimensionValueEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterStepDimensionValueEntry--;
}

core.int buildCounterStepLabelsEntry = 0;
buildStepLabelsEntry() {
  var o = new api.StepLabelsEntry();
  buildCounterStepLabelsEntry++;
  if (buildCounterStepLabelsEntry < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterStepLabelsEntry--;
  return o;
}

checkStepLabelsEntry(api.StepLabelsEntry o) {
  buildCounterStepLabelsEntry++;
  if (buildCounterStepLabelsEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterStepLabelsEntry--;
}

core.int buildCounterStepSummary = 0;
buildStepSummary() {
  var o = new api.StepSummary();
  buildCounterStepSummary++;
  if (buildCounterStepSummary < 3) {}
  buildCounterStepSummary--;
  return o;
}

checkStepSummary(api.StepSummary o) {
  buildCounterStepSummary++;
  if (buildCounterStepSummary < 3) {}
  buildCounterStepSummary--;
}

core.int buildCounterSuccessDetail = 0;
buildSuccessDetail() {
  var o = new api.SuccessDetail();
  buildCounterSuccessDetail++;
  if (buildCounterSuccessDetail < 3) {
    o.otherNativeCrash = true;
  }
  buildCounterSuccessDetail--;
  return o;
}

checkSuccessDetail(api.SuccessDetail o) {
  buildCounterSuccessDetail++;
  if (buildCounterSuccessDetail < 3) {
    unittest.expect(o.otherNativeCrash, unittest.isTrue);
  }
  buildCounterSuccessDetail--;
}

buildUnnamed5878() {
  var o = new core.List<api.SuggestionProto>();
  o.add(buildSuggestionProto());
  o.add(buildSuggestionProto());
  return o;
}

checkUnnamed5878(core.List<api.SuggestionProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionProto(o[0]);
  checkSuggestionProto(o[1]);
}

core.int buildCounterSuggestionClusterProto = 0;
buildSuggestionClusterProto() {
  var o = new api.SuggestionClusterProto();
  buildCounterSuggestionClusterProto++;
  if (buildCounterSuggestionClusterProto < 3) {
    o.category = "foo";
    o.suggestions = buildUnnamed5878();
  }
  buildCounterSuggestionClusterProto--;
  return o;
}

checkSuggestionClusterProto(api.SuggestionClusterProto o) {
  buildCounterSuggestionClusterProto++;
  if (buildCounterSuggestionClusterProto < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed5878(o.suggestions);
  }
  buildCounterSuggestionClusterProto--;
}

core.int buildCounterSuggestionProto = 0;
buildSuggestionProto() {
  var o = new api.SuggestionProto();
  buildCounterSuggestionProto++;
  if (buildCounterSuggestionProto < 3) {
    o.helpUrl = "foo";
    o.longMessage = buildSafeHtmlProto();
    o.priority = "foo";
    o.pseudoResourceId = "foo";
    o.region = buildRegionProto();
    o.resourceName = "foo";
    o.screenId = "foo";
    o.secondaryPriority = 42.0;
    o.shortMessage = buildSafeHtmlProto();
    o.title = "foo";
  }
  buildCounterSuggestionProto--;
  return o;
}

checkSuggestionProto(api.SuggestionProto o) {
  buildCounterSuggestionProto++;
  if (buildCounterSuggestionProto < 3) {
    unittest.expect(o.helpUrl, unittest.equals('foo'));
    checkSafeHtmlProto(o.longMessage);
    unittest.expect(o.priority, unittest.equals('foo'));
    unittest.expect(o.pseudoResourceId, unittest.equals('foo'));
    checkRegionProto(o.region);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    unittest.expect(o.screenId, unittest.equals('foo'));
    unittest.expect(o.secondaryPriority, unittest.equals(42.0));
    checkSafeHtmlProto(o.shortMessage);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSuggestionProto--;
}

buildUnnamed5879() {
  var o = new core.List<api.StackTrace>();
  o.add(buildStackTrace());
  o.add(buildStackTrace());
  return o;
}

checkUnnamed5879(core.List<api.StackTrace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackTrace(o[0]);
  checkStackTrace(o[1]);
}

buildUnnamed5880() {
  var o = new core.List<api.ToolOutputReference>();
  o.add(buildToolOutputReference());
  o.add(buildToolOutputReference());
  return o;
}

checkUnnamed5880(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0]);
  checkToolOutputReference(o[1]);
}

core.int buildCounterTestCase = 0;
buildTestCase() {
  var o = new api.TestCase();
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    o.elapsedTime = buildDuration();
    o.endTime = buildTimestamp();
    o.skippedMessage = "foo";
    o.stackTraces = buildUnnamed5879();
    o.startTime = buildTimestamp();
    o.status = "foo";
    o.testCaseId = "foo";
    o.testCaseReference = buildTestCaseReference();
    o.toolOutputs = buildUnnamed5880();
  }
  buildCounterTestCase--;
  return o;
}

checkTestCase(api.TestCase o) {
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    checkDuration(o.elapsedTime);
    checkTimestamp(o.endTime);
    unittest.expect(o.skippedMessage, unittest.equals('foo'));
    checkUnnamed5879(o.stackTraces);
    checkTimestamp(o.startTime);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.testCaseId, unittest.equals('foo'));
    checkTestCaseReference(o.testCaseReference);
    checkUnnamed5880(o.toolOutputs);
  }
  buildCounterTestCase--;
}

core.int buildCounterTestCaseReference = 0;
buildTestCaseReference() {
  var o = new api.TestCaseReference();
  buildCounterTestCaseReference++;
  if (buildCounterTestCaseReference < 3) {
    o.className = "foo";
    o.name = "foo";
    o.testSuiteName = "foo";
  }
  buildCounterTestCaseReference--;
  return o;
}

checkTestCaseReference(api.TestCaseReference o) {
  buildCounterTestCaseReference++;
  if (buildCounterTestCaseReference < 3) {
    unittest.expect(o.className, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.testSuiteName, unittest.equals('foo'));
  }
  buildCounterTestCaseReference--;
}

buildUnnamed5881() {
  var o = new core.List<api.TestIssue>();
  o.add(buildTestIssue());
  o.add(buildTestIssue());
  return o;
}

checkUnnamed5881(core.List<api.TestIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestIssue(o[0]);
  checkTestIssue(o[1]);
}

buildUnnamed5882() {
  var o = new core.List<api.TestSuiteOverview>();
  o.add(buildTestSuiteOverview());
  o.add(buildTestSuiteOverview());
  return o;
}

checkUnnamed5882(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0]);
  checkTestSuiteOverview(o[1]);
}

core.int buildCounterTestExecutionStep = 0;
buildTestExecutionStep() {
  var o = new api.TestExecutionStep();
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    o.testIssues = buildUnnamed5881();
    o.testSuiteOverviews = buildUnnamed5882();
    o.testTiming = buildTestTiming();
    o.toolExecution = buildToolExecution();
  }
  buildCounterTestExecutionStep--;
  return o;
}

checkTestExecutionStep(api.TestExecutionStep o) {
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    checkUnnamed5881(o.testIssues);
    checkUnnamed5882(o.testSuiteOverviews);
    checkTestTiming(o.testTiming);
    checkToolExecution(o.toolExecution);
  }
  buildCounterTestExecutionStep--;
}

core.int buildCounterTestIssue = 0;
buildTestIssue() {
  var o = new api.TestIssue();
  buildCounterTestIssue++;
  if (buildCounterTestIssue < 3) {
    o.category = "foo";
    o.errorMessage = "foo";
    o.severity = "foo";
    o.stackTrace = buildStackTrace();
    o.type = "foo";
    o.warning = buildAny();
  }
  buildCounterTestIssue--;
  return o;
}

checkTestIssue(api.TestIssue o) {
  buildCounterTestIssue++;
  if (buildCounterTestIssue < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    checkStackTrace(o.stackTrace);
    unittest.expect(o.type, unittest.equals('foo'));
    checkAny(o.warning);
  }
  buildCounterTestIssue--;
}

core.int buildCounterTestSuiteOverview = 0;
buildTestSuiteOverview() {
  var o = new api.TestSuiteOverview();
  buildCounterTestSuiteOverview++;
  if (buildCounterTestSuiteOverview < 3) {
    o.elapsedTime = buildDuration();
    o.errorCount = 42;
    o.failureCount = 42;
    o.flakyCount = 42;
    o.name = "foo";
    o.skippedCount = 42;
    o.totalCount = 42;
    o.xmlSource = buildFileReference();
  }
  buildCounterTestSuiteOverview--;
  return o;
}

checkTestSuiteOverview(api.TestSuiteOverview o) {
  buildCounterTestSuiteOverview++;
  if (buildCounterTestSuiteOverview < 3) {
    checkDuration(o.elapsedTime);
    unittest.expect(o.errorCount, unittest.equals(42));
    unittest.expect(o.failureCount, unittest.equals(42));
    unittest.expect(o.flakyCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.skippedCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
    checkFileReference(o.xmlSource);
  }
  buildCounterTestSuiteOverview--;
}

core.int buildCounterTestTiming = 0;
buildTestTiming() {
  var o = new api.TestTiming();
  buildCounterTestTiming++;
  if (buildCounterTestTiming < 3) {
    o.testProcessDuration = buildDuration();
  }
  buildCounterTestTiming--;
  return o;
}

checkTestTiming(api.TestTiming o) {
  buildCounterTestTiming++;
  if (buildCounterTestTiming < 3) {
    checkDuration(o.testProcessDuration);
  }
  buildCounterTestTiming--;
}

core.int buildCounterThumbnail = 0;
buildThumbnail() {
  var o = new api.Thumbnail();
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.heightPx = 42;
    o.widthPx = 42;
  }
  buildCounterThumbnail--;
  return o;
}

checkThumbnail(api.Thumbnail o) {
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.heightPx, unittest.equals(42));
    unittest.expect(o.widthPx, unittest.equals(42));
  }
  buildCounterThumbnail--;
}

core.int buildCounterTimestamp = 0;
buildTimestamp() {
  var o = new api.Timestamp();
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    o.nanos = 42;
    o.seconds = "foo";
  }
  buildCounterTimestamp--;
  return o;
}

checkTimestamp(api.Timestamp o) {
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals('foo'));
  }
  buildCounterTimestamp--;
}

buildUnnamed5883() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5883(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5884() {
  var o = new core.List<api.FileReference>();
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

checkUnnamed5884(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

buildUnnamed5885() {
  var o = new core.List<api.ToolOutputReference>();
  o.add(buildToolOutputReference());
  o.add(buildToolOutputReference());
  return o;
}

checkUnnamed5885(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0]);
  checkToolOutputReference(o[1]);
}

core.int buildCounterToolExecution = 0;
buildToolExecution() {
  var o = new api.ToolExecution();
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    o.commandLineArguments = buildUnnamed5883();
    o.exitCode = buildToolExitCode();
    o.toolLogs = buildUnnamed5884();
    o.toolOutputs = buildUnnamed5885();
  }
  buildCounterToolExecution--;
  return o;
}

checkToolExecution(api.ToolExecution o) {
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    checkUnnamed5883(o.commandLineArguments);
    checkToolExitCode(o.exitCode);
    checkUnnamed5884(o.toolLogs);
    checkUnnamed5885(o.toolOutputs);
  }
  buildCounterToolExecution--;
}

core.int buildCounterToolExecutionStep = 0;
buildToolExecutionStep() {
  var o = new api.ToolExecutionStep();
  buildCounterToolExecutionStep++;
  if (buildCounterToolExecutionStep < 3) {
    o.toolExecution = buildToolExecution();
  }
  buildCounterToolExecutionStep--;
  return o;
}

checkToolExecutionStep(api.ToolExecutionStep o) {
  buildCounterToolExecutionStep++;
  if (buildCounterToolExecutionStep < 3) {
    checkToolExecution(o.toolExecution);
  }
  buildCounterToolExecutionStep--;
}

core.int buildCounterToolExitCode = 0;
buildToolExitCode() {
  var o = new api.ToolExitCode();
  buildCounterToolExitCode++;
  if (buildCounterToolExitCode < 3) {
    o.number = 42;
  }
  buildCounterToolExitCode--;
  return o;
}

checkToolExitCode(api.ToolExitCode o) {
  buildCounterToolExitCode++;
  if (buildCounterToolExitCode < 3) {
    unittest.expect(o.number, unittest.equals(42));
  }
  buildCounterToolExitCode--;
}

core.int buildCounterToolOutputReference = 0;
buildToolOutputReference() {
  var o = new api.ToolOutputReference();
  buildCounterToolOutputReference++;
  if (buildCounterToolOutputReference < 3) {
    o.creationTime = buildTimestamp();
    o.output = buildFileReference();
    o.testCase = buildTestCaseReference();
  }
  buildCounterToolOutputReference--;
  return o;
}

checkToolOutputReference(api.ToolOutputReference o) {
  buildCounterToolOutputReference++;
  if (buildCounterToolOutputReference < 3) {
    checkTimestamp(o.creationTime);
    checkFileReference(o.output);
    checkTestCaseReference(o.testCase);
  }
  buildCounterToolOutputReference--;
}

core.int buildCounterUIElementTooDeep = 0;
buildUIElementTooDeep() {
  var o = new api.UIElementTooDeep();
  buildCounterUIElementTooDeep++;
  if (buildCounterUIElementTooDeep < 3) {
    o.depth = 42;
    o.screenId = "foo";
    o.screenStateId = "foo";
  }
  buildCounterUIElementTooDeep--;
  return o;
}

checkUIElementTooDeep(api.UIElementTooDeep o) {
  buildCounterUIElementTooDeep++;
  if (buildCounterUIElementTooDeep < 3) {
    unittest.expect(o.depth, unittest.equals(42));
    unittest.expect(o.screenId, unittest.equals('foo'));
    unittest.expect(o.screenStateId, unittest.equals('foo'));
  }
  buildCounterUIElementTooDeep--;
}

core.int buildCounterUnspecifiedWarning = 0;
buildUnspecifiedWarning() {
  var o = new api.UnspecifiedWarning();
  buildCounterUnspecifiedWarning++;
  if (buildCounterUnspecifiedWarning < 3) {}
  buildCounterUnspecifiedWarning--;
  return o;
}

checkUnspecifiedWarning(api.UnspecifiedWarning o) {
  buildCounterUnspecifiedWarning++;
  if (buildCounterUnspecifiedWarning < 3) {}
  buildCounterUnspecifiedWarning--;
}

core.int buildCounterUnusedRoboDirective = 0;
buildUnusedRoboDirective() {
  var o = new api.UnusedRoboDirective();
  buildCounterUnusedRoboDirective++;
  if (buildCounterUnusedRoboDirective < 3) {
    o.resourceName = "foo";
  }
  buildCounterUnusedRoboDirective--;
  return o;
}

checkUnusedRoboDirective(api.UnusedRoboDirective o) {
  buildCounterUnusedRoboDirective++;
  if (buildCounterUnusedRoboDirective < 3) {
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterUnusedRoboDirective--;
}

core.int buildCounterUpgradeInsight = 0;
buildUpgradeInsight() {
  var o = new api.UpgradeInsight();
  buildCounterUpgradeInsight++;
  if (buildCounterUpgradeInsight < 3) {
    o.packageName = "foo";
    o.upgradeToVersion = "foo";
  }
  buildCounterUpgradeInsight--;
  return o;
}

checkUpgradeInsight(api.UpgradeInsight o) {
  buildCounterUpgradeInsight++;
  if (buildCounterUpgradeInsight < 3) {
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.upgradeToVersion, unittest.equals('foo'));
  }
  buildCounterUpgradeInsight--;
}

core.int buildCounterUsedRoboDirective = 0;
buildUsedRoboDirective() {
  var o = new api.UsedRoboDirective();
  buildCounterUsedRoboDirective++;
  if (buildCounterUsedRoboDirective < 3) {
    o.resourceName = "foo";
  }
  buildCounterUsedRoboDirective--;
  return o;
}

checkUsedRoboDirective(api.UsedRoboDirective o) {
  buildCounterUsedRoboDirective++;
  if (buildCounterUsedRoboDirective < 3) {
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterUsedRoboDirective--;
}

core.int buildCounterUsedRoboIgnoreDirective = 0;
buildUsedRoboIgnoreDirective() {
  var o = new api.UsedRoboIgnoreDirective();
  buildCounterUsedRoboIgnoreDirective++;
  if (buildCounterUsedRoboIgnoreDirective < 3) {
    o.resourceName = "foo";
  }
  buildCounterUsedRoboIgnoreDirective--;
  return o;
}

checkUsedRoboIgnoreDirective(api.UsedRoboIgnoreDirective o) {
  buildCounterUsedRoboIgnoreDirective++;
  if (buildCounterUsedRoboIgnoreDirective < 3) {
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterUsedRoboIgnoreDirective--;
}

buildUnnamed5886() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5886(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-ANR", () {
    unittest.test("to-json--from-json", () {
      var o = buildANR();
      var od = new api.ANR.fromJson(o.toJson());
      checkANR(od);
    });
  });

  unittest.group("obj-schema-AndroidAppInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidAppInfo();
      var od = new api.AndroidAppInfo.fromJson(o.toJson());
      checkAndroidAppInfo(od);
    });
  });

  unittest.group("obj-schema-AndroidInstrumentationTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidInstrumentationTest();
      var od = new api.AndroidInstrumentationTest.fromJson(o.toJson());
      checkAndroidInstrumentationTest(od);
    });
  });

  unittest.group("obj-schema-AndroidRoboTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidRoboTest();
      var od = new api.AndroidRoboTest.fromJson(o.toJson());
      checkAndroidRoboTest(od);
    });
  });

  unittest.group("obj-schema-AndroidTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidTest();
      var od = new api.AndroidTest.fromJson(o.toJson());
      checkAndroidTest(od);
    });
  });

  unittest.group("obj-schema-AndroidTestLoop", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidTestLoop();
      var od = new api.AndroidTestLoop.fromJson(o.toJson());
      checkAndroidTestLoop(od);
    });
  });

  unittest.group("obj-schema-Any", () {
    unittest.test("to-json--from-json", () {
      var o = buildAny();
      var od = new api.Any.fromJson(o.toJson());
      checkAny(od);
    });
  });

  unittest.group("obj-schema-AppStartTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppStartTime();
      var od = new api.AppStartTime.fromJson(o.toJson());
      checkAppStartTime(od);
    });
  });

  unittest.group("obj-schema-AvailableDeepLinks", () {
    unittest.test("to-json--from-json", () {
      var o = buildAvailableDeepLinks();
      var od = new api.AvailableDeepLinks.fromJson(o.toJson());
      checkAvailableDeepLinks(od);
    });
  });

  unittest.group("obj-schema-BasicPerfSampleSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicPerfSampleSeries();
      var od = new api.BasicPerfSampleSeries.fromJson(o.toJson());
      checkBasicPerfSampleSeries(od);
    });
  });

  unittest.group("obj-schema-BatchCreatePerfSamplesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreatePerfSamplesRequest();
      var od = new api.BatchCreatePerfSamplesRequest.fromJson(o.toJson());
      checkBatchCreatePerfSamplesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchCreatePerfSamplesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreatePerfSamplesResponse();
      var od = new api.BatchCreatePerfSamplesResponse.fromJson(o.toJson());
      checkBatchCreatePerfSamplesResponse(od);
    });
  });

  unittest.group("obj-schema-BlankScreen", () {
    unittest.test("to-json--from-json", () {
      var o = buildBlankScreen();
      var od = new api.BlankScreen.fromJson(o.toJson());
      checkBlankScreen(od);
    });
  });

  unittest.group("obj-schema-CPUInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCPUInfo();
      var od = new api.CPUInfo.fromJson(o.toJson());
      checkCPUInfo(od);
    });
  });

  unittest.group("obj-schema-CrashDialogError", () {
    unittest.test("to-json--from-json", () {
      var o = buildCrashDialogError();
      var od = new api.CrashDialogError.fromJson(o.toJson());
      checkCrashDialogError(od);
    });
  });

  unittest.group("obj-schema-Duration", () {
    unittest.test("to-json--from-json", () {
      var o = buildDuration();
      var od = new api.Duration.fromJson(o.toJson());
      checkDuration(od);
    });
  });

  unittest.group("obj-schema-EncounteredLoginScreen", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncounteredLoginScreen();
      var od = new api.EncounteredLoginScreen.fromJson(o.toJson());
      checkEncounteredLoginScreen(od);
    });
  });

  unittest.group("obj-schema-EncounteredNonAndroidUiWidgetScreen", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncounteredNonAndroidUiWidgetScreen();
      var od = new api.EncounteredNonAndroidUiWidgetScreen.fromJson(o.toJson());
      checkEncounteredNonAndroidUiWidgetScreen(od);
    });
  });

  unittest.group("obj-schema-Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironment();
      var od = new api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });

  unittest.group("obj-schema-EnvironmentDimensionValueEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironmentDimensionValueEntry();
      var od = new api.EnvironmentDimensionValueEntry.fromJson(o.toJson());
      checkEnvironmentDimensionValueEntry(od);
    });
  });

  unittest.group("obj-schema-Execution", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecution();
      var od = new api.Execution.fromJson(o.toJson());
      checkExecution(od);
    });
  });

  unittest.group("obj-schema-FailedToInstall", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailedToInstall();
      var od = new api.FailedToInstall.fromJson(o.toJson());
      checkFailedToInstall(od);
    });
  });

  unittest.group("obj-schema-FailureDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailureDetail();
      var od = new api.FailureDetail.fromJson(o.toJson());
      checkFailureDetail(od);
    });
  });

  unittest.group("obj-schema-FatalException", () {
    unittest.test("to-json--from-json", () {
      var o = buildFatalException();
      var od = new api.FatalException.fromJson(o.toJson());
      checkFatalException(od);
    });
  });

  unittest.group("obj-schema-FileReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileReference();
      var od = new api.FileReference.fromJson(o.toJson());
      checkFileReference(od);
    });
  });

  unittest.group("obj-schema-GraphicsStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGraphicsStats();
      var od = new api.GraphicsStats.fromJson(o.toJson());
      checkGraphicsStats(od);
    });
  });

  unittest.group("obj-schema-GraphicsStatsBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGraphicsStatsBucket();
      var od = new api.GraphicsStatsBucket.fromJson(o.toJson());
      checkGraphicsStatsBucket(od);
    });
  });

  unittest.group("obj-schema-History", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistory();
      var od = new api.History.fromJson(o.toJson());
      checkHistory(od);
    });
  });

  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group("obj-schema-InAppPurchasesFound", () {
    unittest.test("to-json--from-json", () {
      var o = buildInAppPurchasesFound();
      var od = new api.InAppPurchasesFound.fromJson(o.toJson());
      checkInAppPurchasesFound(od);
    });
  });

  unittest.group("obj-schema-InconclusiveDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildInconclusiveDetail();
      var od = new api.InconclusiveDetail.fromJson(o.toJson());
      checkInconclusiveDetail(od);
    });
  });

  unittest.group("obj-schema-IndividualOutcome", () {
    unittest.test("to-json--from-json", () {
      var o = buildIndividualOutcome();
      var od = new api.IndividualOutcome.fromJson(o.toJson());
      checkIndividualOutcome(od);
    });
  });

  unittest.group("obj-schema-InsufficientCoverage", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsufficientCoverage();
      var od = new api.InsufficientCoverage.fromJson(o.toJson());
      checkInsufficientCoverage(od);
    });
  });

  unittest.group("obj-schema-IosAppCrashed", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosAppCrashed();
      var od = new api.IosAppCrashed.fromJson(o.toJson());
      checkIosAppCrashed(od);
    });
  });

  unittest.group("obj-schema-IosAppInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosAppInfo();
      var od = new api.IosAppInfo.fromJson(o.toJson());
      checkIosAppInfo(od);
    });
  });

  unittest.group("obj-schema-IosRoboTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosRoboTest();
      var od = new api.IosRoboTest.fromJson(o.toJson());
      checkIosRoboTest(od);
    });
  });

  unittest.group("obj-schema-IosTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosTest();
      var od = new api.IosTest.fromJson(o.toJson());
      checkIosTest(od);
    });
  });

  unittest.group("obj-schema-IosTestLoop", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosTestLoop();
      var od = new api.IosTestLoop.fromJson(o.toJson());
      checkIosTestLoop(od);
    });
  });

  unittest.group("obj-schema-IosXcTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosXcTest();
      var od = new api.IosXcTest.fromJson(o.toJson());
      checkIosXcTest(od);
    });
  });

  unittest.group("obj-schema-LauncherActivityNotFound", () {
    unittest.test("to-json--from-json", () {
      var o = buildLauncherActivityNotFound();
      var od = new api.LauncherActivityNotFound.fromJson(o.toJson());
      checkLauncherActivityNotFound(od);
    });
  });

  unittest.group("obj-schema-ListEnvironmentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListEnvironmentsResponse();
      var od = new api.ListEnvironmentsResponse.fromJson(o.toJson());
      checkListEnvironmentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListExecutionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListExecutionsResponse();
      var od = new api.ListExecutionsResponse.fromJson(o.toJson());
      checkListExecutionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListHistoriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHistoriesResponse();
      var od = new api.ListHistoriesResponse.fromJson(o.toJson());
      checkListHistoriesResponse(od);
    });
  });

  unittest.group("obj-schema-ListPerfSampleSeriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPerfSampleSeriesResponse();
      var od = new api.ListPerfSampleSeriesResponse.fromJson(o.toJson());
      checkListPerfSampleSeriesResponse(od);
    });
  });

  unittest.group("obj-schema-ListPerfSamplesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPerfSamplesResponse();
      var od = new api.ListPerfSamplesResponse.fromJson(o.toJson());
      checkListPerfSamplesResponse(od);
    });
  });

  unittest.group("obj-schema-ListScreenshotClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListScreenshotClustersResponse();
      var od = new api.ListScreenshotClustersResponse.fromJson(o.toJson());
      checkListScreenshotClustersResponse(od);
    });
  });

  unittest.group("obj-schema-ListStepAccessibilityClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListStepAccessibilityClustersResponse();
      var od =
          new api.ListStepAccessibilityClustersResponse.fromJson(o.toJson());
      checkListStepAccessibilityClustersResponse(od);
    });
  });

  unittest.group("obj-schema-ListStepThumbnailsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListStepThumbnailsResponse();
      var od = new api.ListStepThumbnailsResponse.fromJson(o.toJson());
      checkListStepThumbnailsResponse(od);
    });
  });

  unittest.group("obj-schema-ListStepsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListStepsResponse();
      var od = new api.ListStepsResponse.fromJson(o.toJson());
      checkListStepsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTestCasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTestCasesResponse();
      var od = new api.ListTestCasesResponse.fromJson(o.toJson());
      checkListTestCasesResponse(od);
    });
  });

  unittest.group("obj-schema-MatrixDimensionDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatrixDimensionDefinition();
      var od = new api.MatrixDimensionDefinition.fromJson(o.toJson());
      checkMatrixDimensionDefinition(od);
    });
  });

  unittest.group("obj-schema-MemoryInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemoryInfo();
      var od = new api.MemoryInfo.fromJson(o.toJson());
      checkMemoryInfo(od);
    });
  });

  unittest.group("obj-schema-MergedResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildMergedResult();
      var od = new api.MergedResult.fromJson(o.toJson());
      checkMergedResult(od);
    });
  });

  unittest.group("obj-schema-MultiStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultiStep();
      var od = new api.MultiStep.fromJson(o.toJson());
      checkMultiStep(od);
    });
  });

  unittest.group("obj-schema-NativeCrash", () {
    unittest.test("to-json--from-json", () {
      var o = buildNativeCrash();
      var od = new api.NativeCrash.fromJson(o.toJson());
      checkNativeCrash(od);
    });
  });

  unittest.group("obj-schema-NonSdkApi", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonSdkApi();
      var od = new api.NonSdkApi.fromJson(o.toJson());
      checkNonSdkApi(od);
    });
  });

  unittest.group("obj-schema-NonSdkApiInsight", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonSdkApiInsight();
      var od = new api.NonSdkApiInsight.fromJson(o.toJson());
      checkNonSdkApiInsight(od);
    });
  });

  unittest.group("obj-schema-NonSdkApiUsageViolation", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonSdkApiUsageViolation();
      var od = new api.NonSdkApiUsageViolation.fromJson(o.toJson());
      checkNonSdkApiUsageViolation(od);
    });
  });

  unittest.group("obj-schema-NonSdkApiUsageViolationReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonSdkApiUsageViolationReport();
      var od = new api.NonSdkApiUsageViolationReport.fromJson(o.toJson());
      checkNonSdkApiUsageViolationReport(od);
    });
  });

  unittest.group("obj-schema-Outcome", () {
    unittest.test("to-json--from-json", () {
      var o = buildOutcome();
      var od = new api.Outcome.fromJson(o.toJson());
      checkOutcome(od);
    });
  });

  unittest.group("obj-schema-OverlappingUIElements", () {
    unittest.test("to-json--from-json", () {
      var o = buildOverlappingUIElements();
      var od = new api.OverlappingUIElements.fromJson(o.toJson());
      checkOverlappingUIElements(od);
    });
  });

  unittest.group("obj-schema-PendingGoogleUpdateInsight", () {
    unittest.test("to-json--from-json", () {
      var o = buildPendingGoogleUpdateInsight();
      var od = new api.PendingGoogleUpdateInsight.fromJson(o.toJson());
      checkPendingGoogleUpdateInsight(od);
    });
  });

  unittest.group("obj-schema-PerfEnvironment", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerfEnvironment();
      var od = new api.PerfEnvironment.fromJson(o.toJson());
      checkPerfEnvironment(od);
    });
  });

  unittest.group("obj-schema-PerfMetricsSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerfMetricsSummary();
      var od = new api.PerfMetricsSummary.fromJson(o.toJson());
      checkPerfMetricsSummary(od);
    });
  });

  unittest.group("obj-schema-PerfSample", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerfSample();
      var od = new api.PerfSample.fromJson(o.toJson());
      checkPerfSample(od);
    });
  });

  unittest.group("obj-schema-PerfSampleSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerfSampleSeries();
      var od = new api.PerfSampleSeries.fromJson(o.toJson());
      checkPerfSampleSeries(od);
    });
  });

  unittest.group("obj-schema-PerformedGoogleLogin", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerformedGoogleLogin();
      var od = new api.PerformedGoogleLogin.fromJson(o.toJson());
      checkPerformedGoogleLogin(od);
    });
  });

  unittest.group("obj-schema-PerformedMonkeyActions", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerformedMonkeyActions();
      var od = new api.PerformedMonkeyActions.fromJson(o.toJson());
      checkPerformedMonkeyActions(od);
    });
  });

  unittest.group("obj-schema-PrimaryStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrimaryStep();
      var od = new api.PrimaryStep.fromJson(o.toJson());
      checkPrimaryStep(od);
    });
  });

  unittest.group("obj-schema-ProjectSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectSettings();
      var od = new api.ProjectSettings.fromJson(o.toJson());
      checkProjectSettings(od);
    });
  });

  unittest.group("obj-schema-PublishXunitXmlFilesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishXunitXmlFilesRequest();
      var od = new api.PublishXunitXmlFilesRequest.fromJson(o.toJson());
      checkPublishXunitXmlFilesRequest(od);
    });
  });

  unittest.group("obj-schema-RegionProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionProto();
      var od = new api.RegionProto.fromJson(o.toJson());
      checkRegionProto(od);
    });
  });

  unittest.group("obj-schema-ResultsStorage", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultsStorage();
      var od = new api.ResultsStorage.fromJson(o.toJson());
      checkResultsStorage(od);
    });
  });

  unittest.group("obj-schema-RoboScriptExecution", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoboScriptExecution();
      var od = new api.RoboScriptExecution.fromJson(o.toJson());
      checkRoboScriptExecution(od);
    });
  });

  unittest.group("obj-schema-SafeHtmlProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildSafeHtmlProto();
      var od = new api.SafeHtmlProto.fromJson(o.toJson());
      checkSafeHtmlProto(od);
    });
  });

  unittest.group("obj-schema-Screen", () {
    unittest.test("to-json--from-json", () {
      var o = buildScreen();
      var od = new api.Screen.fromJson(o.toJson());
      checkScreen(od);
    });
  });

  unittest.group("obj-schema-ScreenshotCluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildScreenshotCluster();
      var od = new api.ScreenshotCluster.fromJson(o.toJson());
      checkScreenshotCluster(od);
    });
  });

  unittest.group("obj-schema-ShardSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildShardSummary();
      var od = new api.ShardSummary.fromJson(o.toJson());
      checkShardSummary(od);
    });
  });

  unittest.group("obj-schema-SkippedDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildSkippedDetail();
      var od = new api.SkippedDetail.fromJson(o.toJson());
      checkSkippedDetail(od);
    });
  });

  unittest.group("obj-schema-Specification", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpecification();
      var od = new api.Specification.fromJson(o.toJson());
      checkSpecification(od);
    });
  });

  unittest.group("obj-schema-StackTrace", () {
    unittest.test("to-json--from-json", () {
      var o = buildStackTrace();
      var od = new api.StackTrace.fromJson(o.toJson());
      checkStackTrace(od);
    });
  });

  unittest.group("obj-schema-StartActivityNotFound", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartActivityNotFound();
      var od = new api.StartActivityNotFound.fromJson(o.toJson());
      checkStartActivityNotFound(od);
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

  unittest.group("obj-schema-StepDimensionValueEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildStepDimensionValueEntry();
      var od = new api.StepDimensionValueEntry.fromJson(o.toJson());
      checkStepDimensionValueEntry(od);
    });
  });

  unittest.group("obj-schema-StepLabelsEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildStepLabelsEntry();
      var od = new api.StepLabelsEntry.fromJson(o.toJson());
      checkStepLabelsEntry(od);
    });
  });

  unittest.group("obj-schema-StepSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildStepSummary();
      var od = new api.StepSummary.fromJson(o.toJson());
      checkStepSummary(od);
    });
  });

  unittest.group("obj-schema-SuccessDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuccessDetail();
      var od = new api.SuccessDetail.fromJson(o.toJson());
      checkSuccessDetail(od);
    });
  });

  unittest.group("obj-schema-SuggestionClusterProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestionClusterProto();
      var od = new api.SuggestionClusterProto.fromJson(o.toJson());
      checkSuggestionClusterProto(od);
    });
  });

  unittest.group("obj-schema-SuggestionProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestionProto();
      var od = new api.SuggestionProto.fromJson(o.toJson());
      checkSuggestionProto(od);
    });
  });

  unittest.group("obj-schema-TestCase", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestCase();
      var od = new api.TestCase.fromJson(o.toJson());
      checkTestCase(od);
    });
  });

  unittest.group("obj-schema-TestCaseReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestCaseReference();
      var od = new api.TestCaseReference.fromJson(o.toJson());
      checkTestCaseReference(od);
    });
  });

  unittest.group("obj-schema-TestExecutionStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestExecutionStep();
      var od = new api.TestExecutionStep.fromJson(o.toJson());
      checkTestExecutionStep(od);
    });
  });

  unittest.group("obj-schema-TestIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIssue();
      var od = new api.TestIssue.fromJson(o.toJson());
      checkTestIssue(od);
    });
  });

  unittest.group("obj-schema-TestSuiteOverview", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestSuiteOverview();
      var od = new api.TestSuiteOverview.fromJson(o.toJson());
      checkTestSuiteOverview(od);
    });
  });

  unittest.group("obj-schema-TestTiming", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestTiming();
      var od = new api.TestTiming.fromJson(o.toJson());
      checkTestTiming(od);
    });
  });

  unittest.group("obj-schema-Thumbnail", () {
    unittest.test("to-json--from-json", () {
      var o = buildThumbnail();
      var od = new api.Thumbnail.fromJson(o.toJson());
      checkThumbnail(od);
    });
  });

  unittest.group("obj-schema-Timestamp", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimestamp();
      var od = new api.Timestamp.fromJson(o.toJson());
      checkTimestamp(od);
    });
  });

  unittest.group("obj-schema-ToolExecution", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolExecution();
      var od = new api.ToolExecution.fromJson(o.toJson());
      checkToolExecution(od);
    });
  });

  unittest.group("obj-schema-ToolExecutionStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolExecutionStep();
      var od = new api.ToolExecutionStep.fromJson(o.toJson());
      checkToolExecutionStep(od);
    });
  });

  unittest.group("obj-schema-ToolExitCode", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolExitCode();
      var od = new api.ToolExitCode.fromJson(o.toJson());
      checkToolExitCode(od);
    });
  });

  unittest.group("obj-schema-ToolOutputReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolOutputReference();
      var od = new api.ToolOutputReference.fromJson(o.toJson());
      checkToolOutputReference(od);
    });
  });

  unittest.group("obj-schema-UIElementTooDeep", () {
    unittest.test("to-json--from-json", () {
      var o = buildUIElementTooDeep();
      var od = new api.UIElementTooDeep.fromJson(o.toJson());
      checkUIElementTooDeep(od);
    });
  });

  unittest.group("obj-schema-UnspecifiedWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnspecifiedWarning();
      var od = new api.UnspecifiedWarning.fromJson(o.toJson());
      checkUnspecifiedWarning(od);
    });
  });

  unittest.group("obj-schema-UnusedRoboDirective", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnusedRoboDirective();
      var od = new api.UnusedRoboDirective.fromJson(o.toJson());
      checkUnusedRoboDirective(od);
    });
  });

  unittest.group("obj-schema-UpgradeInsight", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpgradeInsight();
      var od = new api.UpgradeInsight.fromJson(o.toJson());
      checkUpgradeInsight(od);
    });
  });

  unittest.group("obj-schema-UsedRoboDirective", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsedRoboDirective();
      var od = new api.UsedRoboDirective.fromJson(o.toJson());
      checkUsedRoboDirective(od);
    });
  });

  unittest.group("obj-schema-UsedRoboIgnoreDirective", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsedRoboIgnoreDirective();
      var od = new api.UsedRoboIgnoreDirective.fromJson(o.toJson());
      checkUsedRoboIgnoreDirective(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getSettings", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ToolresultsApi(mock).projects;
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/settings", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/settings"));
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
        var resp = convert.json.encode(buildProjectSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSettings(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectSettings(response);
      })));
    });

    unittest.test("method--initializeSettings", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ToolresultsApi(mock).projects;
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf(":initializeSettings", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals(":initializeSettings"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildProjectSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .initializeSettings(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectSettings(response);
      })));
    });
  });

  unittest.group("resource-ProjectsHistoriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesResourceApi res =
          new api.ToolresultsApi(mock).projects.histories;
      var arg_request = buildHistory();
      var arg_projectId = "foo";
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.History.fromJson(json);
        checkHistory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/histories"));
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHistory());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHistory(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesResourceApi res =
          new api.ToolresultsApi(mock).projects.histories;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));

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
        var resp = convert.json.encode(buildHistory());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHistory(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesResourceApi res =
          new api.ToolresultsApi(mock).projects.histories;
      var arg_projectId = "foo";
      var arg_filterByName = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/histories"));
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
            queryMap["filterByName"].first, unittest.equals(arg_filterByName));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListHistoriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              filterByName: arg_filterByName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHistoriesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsHistoriesExecutionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_request = buildExecution();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Execution.fromJson(json);
        checkExecution(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/executions"));
        pathOffset += 11;

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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildExecution());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_historyId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExecution(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));

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
        var resp = convert.json.encode(buildExecution());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, arg_executionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExecution(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/executions"));
        pathOffset += 11;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListExecutionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListExecutionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_request = buildExecution();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Execution.fromJson(json);
        checkExecution(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));

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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildExecution());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_historyId, arg_executionId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExecution(response);
      })));
    });
  });

  unittest.group("resource-ProjectsHistoriesExecutionsClustersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsClustersResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.clusters;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

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
        var resp = convert.json.encode(buildScreenshotCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, arg_executionId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScreenshotCluster(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsClustersResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.clusters;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
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
        var resp = convert.json.encode(buildListScreenshotClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListScreenshotClustersResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsHistoriesExecutionsEnvironmentsResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsEnvironmentsResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .environments;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_environmentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/environments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/environments/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_environmentId"));

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
        var resp = convert.json.encode(buildEnvironment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, arg_executionId, arg_environmentId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnvironment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsEnvironmentsResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .environments;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/environments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/environments"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListEnvironmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListEnvironmentsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsHistoriesExecutionsStepsResourceApi", () {
    unittest.test("method--accessibilityClusters", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_name = "foo";
      var arg_locale = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("toolresults/v1beta3/"));
        pathOffset += 20;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListStepAccessibilityClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .accessibilityClusters(arg_name,
              locale: arg_locale, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListStepAccessibilityClustersResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildStep();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Step.fromJson(json);
        checkStep(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/steps"));
        pathOffset += 6;

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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_historyId, arg_executionId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStep(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));

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
        var resp = convert.json.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStep(response);
      })));
    });

    unittest.test("method--getPerfMetricsSummary", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfMetricsSummary", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/perfMetricsSummary"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildPerfMetricsSummary());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPerfMetricsSummary(
              arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerfMetricsSummary(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/steps"));
        pathOffset += 6;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListStepsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListStepsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildStep();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Step.fromJson(json);
        checkStep(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));

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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_historyId, arg_executionId,
              arg_stepId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStep(response);
      })));
    });

    unittest.test("method--publishXunitXmlFiles", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res =
          new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildPublishXunitXmlFilesRequest();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PublishXunitXmlFilesRequest.fromJson(json);
        checkPublishXunitXmlFilesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf(":publishXunitXmlFiles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals(":publishXunitXmlFiles"));
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
        var resp = convert.json.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .publishXunitXmlFiles(arg_request, arg_projectId, arg_historyId,
              arg_executionId, arg_stepId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStep(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .perfMetricsSummary;
      var arg_request = buildPerfMetricsSummary();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PerfMetricsSummary.fromJson(json);
        checkPerfMetricsSummary(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfMetricsSummary", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/perfMetricsSummary"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildPerfMetricsSummary());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_historyId, arg_executionId,
              arg_stepId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerfMetricsSummary(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsHistoriesExecutionsStepsPerfSampleSeriesResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsPerfSampleSeriesResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .perfSampleSeries;
      var arg_request = buildPerfSampleSeries();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PerfSampleSeries.fromJson(json);
        checkPerfSampleSeries(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfSampleSeries", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/perfSampleSeries"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerfSampleSeries());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_historyId, arg_executionId,
              arg_stepId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerfSampleSeries(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsPerfSampleSeriesResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .perfSampleSeries;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_sampleSeriesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfSampleSeries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/perfSampleSeries/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sampleSeriesId"));

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
        var resp = convert.json.encode(buildPerfSampleSeries());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              arg_sampleSeriesId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerfSampleSeries(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsPerfSampleSeriesResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .perfSampleSeries;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_filter = buildUnnamed5886();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfSampleSeries", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/perfSampleSeries"));
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
        unittest.expect(queryMap["filter"], unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPerfSampleSeriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              filter: arg_filter, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPerfSampleSeriesResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResourceApi",
      () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResourceApi
          res = new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .perfSampleSeries
              .samples;
      var arg_request = buildBatchCreatePerfSamplesRequest();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_sampleSeriesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchCreatePerfSamplesRequest.fromJson(json);
        checkBatchCreatePerfSamplesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfSampleSeries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/perfSampleSeries/"));
        pathOffset += 18;
        index = path.indexOf("/samples:batchCreate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sampleSeriesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/samples:batchCreate"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildBatchCreatePerfSamplesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_projectId, arg_historyId,
              arg_executionId, arg_stepId, arg_sampleSeriesId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreatePerfSamplesResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResourceApi
          res = new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .perfSampleSeries
              .samples;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_sampleSeriesId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/perfSampleSeries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/perfSampleSeries/"));
        pathOffset += 18;
        index = path.indexOf("/samples", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sampleSeriesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/samples"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPerfSamplesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              arg_sampleSeriesId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPerfSamplesResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsHistoriesExecutionsStepsTestCasesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsTestCasesResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .testCases;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_testCaseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/testCases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/testCases/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_testCaseId"));

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
        var resp = convert.json.encode(buildTestCase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              arg_testCaseId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestCase(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsTestCasesResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .testCases;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/testCases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/testCases"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTestCasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTestCasesResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsHistoriesExecutionsStepsThumbnailsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsThumbnailsResourceApi res =
          new api.ToolresultsApi(mock)
              .projects
              .histories
              .executions
              .steps
              .thumbnails;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("toolresults/v1beta3/projects/"));
        pathOffset += 29;
        index = path.indexOf("/histories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/histories/"));
        pathOffset += 11;
        index = path.indexOf("/executions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_historyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/executions/"));
        pathOffset += 12;
        index = path.indexOf("/steps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_executionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/steps/"));
        pathOffset += 7;
        index = path.indexOf("/thumbnails", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_stepId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/thumbnails"));
        pathOffset += 11;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListStepThumbnailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListStepThumbnailsResponse(response);
      })));
    });
  });
}
