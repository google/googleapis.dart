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

buildUnnamed3943() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3943(core.List<core.String> o) {
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
    o.testTargets = buildUnnamed3943();
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
    checkUnnamed3943(o.testTargets);
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
    checkDuration(o.testTimeout);
  }
  buildCounterAndroidTest--;
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

buildUnnamed3944() {
  var o = new core.List<api.PerfSample>();
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

checkUnnamed3944(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterBatchCreatePerfSamplesRequest = 0;
buildBatchCreatePerfSamplesRequest() {
  var o = new api.BatchCreatePerfSamplesRequest();
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    o.perfSamples = buildUnnamed3944();
  }
  buildCounterBatchCreatePerfSamplesRequest--;
  return o;
}

checkBatchCreatePerfSamplesRequest(api.BatchCreatePerfSamplesRequest o) {
  buildCounterBatchCreatePerfSamplesRequest++;
  if (buildCounterBatchCreatePerfSamplesRequest < 3) {
    checkUnnamed3944(o.perfSamples);
  }
  buildCounterBatchCreatePerfSamplesRequest--;
}

buildUnnamed3945() {
  var o = new core.List<api.PerfSample>();
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

checkUnnamed3945(core.List<api.PerfSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSample(o[0]);
  checkPerfSample(o[1]);
}

core.int buildCounterBatchCreatePerfSamplesResponse = 0;
buildBatchCreatePerfSamplesResponse() {
  var o = new api.BatchCreatePerfSamplesResponse();
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    o.perfSamples = buildUnnamed3945();
  }
  buildCounterBatchCreatePerfSamplesResponse--;
  return o;
}

checkBatchCreatePerfSamplesResponse(api.BatchCreatePerfSamplesResponse o) {
  buildCounterBatchCreatePerfSamplesResponse++;
  if (buildCounterBatchCreatePerfSamplesResponse < 3) {
    checkUnnamed3945(o.perfSamples);
  }
  buildCounterBatchCreatePerfSamplesResponse--;
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

core.int buildCounterExecution = 0;
buildExecution() {
  var o = new api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.completionTime = buildTimestamp();
    o.creationTime = buildTimestamp();
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
    unittest.expect(o.executionId, unittest.equals('foo'));
    checkOutcome(o.outcome);
    checkSpecification(o.specification);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.testExecutionMatrixId, unittest.equals('foo'));
  }
  buildCounterExecution--;
}

core.int buildCounterFailureDetail = 0;
buildFailureDetail() {
  var o = new api.FailureDetail();
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    o.crashed = true;
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
    unittest.expect(o.notInstalled, unittest.isTrue);
    unittest.expect(o.otherNativeCrash, unittest.isTrue);
    unittest.expect(o.timedOut, unittest.isTrue);
    unittest.expect(o.unableToCrawl, unittest.isTrue);
  }
  buildCounterFailureDetail--;
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

buildUnnamed3946() {
  var o = new core.List<api.GraphicsStatsBucket>();
  o.add(buildGraphicsStatsBucket());
  o.add(buildGraphicsStatsBucket());
  return o;
}

checkUnnamed3946(core.List<api.GraphicsStatsBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphicsStatsBucket(o[0]);
  checkGraphicsStatsBucket(o[1]);
}

core.int buildCounterGraphicsStats = 0;
buildGraphicsStats() {
  var o = new api.GraphicsStats();
  buildCounterGraphicsStats++;
  if (buildCounterGraphicsStats < 3) {
    o.buckets = buildUnnamed3946();
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
    checkUnnamed3946(o.buckets);
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

core.int buildCounterInconclusiveDetail = 0;
buildInconclusiveDetail() {
  var o = new api.InconclusiveDetail();
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    o.abortedByUser = true;
    o.infrastructureFailure = true;
  }
  buildCounterInconclusiveDetail--;
  return o;
}

checkInconclusiveDetail(api.InconclusiveDetail o) {
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    unittest.expect(o.abortedByUser, unittest.isTrue);
    unittest.expect(o.infrastructureFailure, unittest.isTrue);
  }
  buildCounterInconclusiveDetail--;
}

buildUnnamed3947() {
  var o = new core.List<api.Execution>();
  o.add(buildExecution());
  o.add(buildExecution());
  return o;
}

checkUnnamed3947(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.int buildCounterListExecutionsResponse = 0;
buildListExecutionsResponse() {
  var o = new api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed3947();
    o.nextPageToken = "foo";
  }
  buildCounterListExecutionsResponse--;
  return o;
}

checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed3947(o.executions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListExecutionsResponse--;
}

buildUnnamed3948() {
  var o = new core.List<api.History>();
  o.add(buildHistory());
  o.add(buildHistory());
  return o;
}

checkUnnamed3948(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoriesResponse = 0;
buildListHistoriesResponse() {
  var o = new api.ListHistoriesResponse();
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    o.histories = buildUnnamed3948();
    o.nextPageToken = "foo";
  }
  buildCounterListHistoriesResponse--;
  return o;
}

checkListHistoriesResponse(api.ListHistoriesResponse o) {
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    checkUnnamed3948(o.histories);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHistoriesResponse--;
}

buildUnnamed3949() {
  var o = new core.List<api.PerfSampleSeries>();
  o.add(buildPerfSampleSeries());
  o.add(buildPerfSampleSeries());
  return o;
}

checkUnnamed3949(core.List<api.PerfSampleSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerfSampleSeries(o[0]);
  checkPerfSampleSeries(o[1]);
}

core.int buildCounterListPerfSampleSeriesResponse = 0;
buildListPerfSampleSeriesResponse() {
  var o = new api.ListPerfSampleSeriesResponse();
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    o.perfSampleSeries = buildUnnamed3949();
  }
  buildCounterListPerfSampleSeriesResponse--;
  return o;
}

checkListPerfSampleSeriesResponse(api.ListPerfSampleSeriesResponse o) {
  buildCounterListPerfSampleSeriesResponse++;
  if (buildCounterListPerfSampleSeriesResponse < 3) {
    checkUnnamed3949(o.perfSampleSeries);
  }
  buildCounterListPerfSampleSeriesResponse--;
}

buildUnnamed3950() {
  var o = new core.List<api.PerfSample>();
  o.add(buildPerfSample());
  o.add(buildPerfSample());
  return o;
}

checkUnnamed3950(core.List<api.PerfSample> o) {
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
    o.perfSamples = buildUnnamed3950();
  }
  buildCounterListPerfSamplesResponse--;
  return o;
}

checkListPerfSamplesResponse(api.ListPerfSamplesResponse o) {
  buildCounterListPerfSamplesResponse++;
  if (buildCounterListPerfSamplesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3950(o.perfSamples);
  }
  buildCounterListPerfSamplesResponse--;
}

buildUnnamed3951() {
  var o = new core.List<api.ScreenshotCluster>();
  o.add(buildScreenshotCluster());
  o.add(buildScreenshotCluster());
  return o;
}

checkUnnamed3951(core.List<api.ScreenshotCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreenshotCluster(o[0]);
  checkScreenshotCluster(o[1]);
}

core.int buildCounterListScreenshotClustersResponse = 0;
buildListScreenshotClustersResponse() {
  var o = new api.ListScreenshotClustersResponse();
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    o.clusters = buildUnnamed3951();
  }
  buildCounterListScreenshotClustersResponse--;
  return o;
}

checkListScreenshotClustersResponse(api.ListScreenshotClustersResponse o) {
  buildCounterListScreenshotClustersResponse++;
  if (buildCounterListScreenshotClustersResponse < 3) {
    checkUnnamed3951(o.clusters);
  }
  buildCounterListScreenshotClustersResponse--;
}

buildUnnamed3952() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed3952(core.List<api.Image> o) {
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
    o.thumbnails = buildUnnamed3952();
  }
  buildCounterListStepThumbnailsResponse--;
  return o;
}

checkListStepThumbnailsResponse(api.ListStepThumbnailsResponse o) {
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3952(o.thumbnails);
  }
  buildCounterListStepThumbnailsResponse--;
}

buildUnnamed3953() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed3953(core.List<api.Step> o) {
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
    o.steps = buildUnnamed3953();
  }
  buildCounterListStepsResponse--;
  return o;
}

checkListStepsResponse(api.ListStepsResponse o) {
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3953(o.steps);
  }
  buildCounterListStepsResponse--;
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

buildUnnamed3954() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3954(core.List<core.String> o) {
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
    o.perfMetrics = buildUnnamed3954();
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
    checkUnnamed3954(o.perfMetrics);
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

buildUnnamed3955() {
  var o = new core.List<api.FileReference>();
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

checkUnnamed3955(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.int buildCounterPublishXunitXmlFilesRequest = 0;
buildPublishXunitXmlFilesRequest() {
  var o = new api.PublishXunitXmlFilesRequest();
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    o.xunitXmlFiles = buildUnnamed3955();
  }
  buildCounterPublishXunitXmlFilesRequest--;
  return o;
}

checkPublishXunitXmlFilesRequest(api.PublishXunitXmlFilesRequest o) {
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    checkUnnamed3955(o.xunitXmlFiles);
  }
  buildCounterPublishXunitXmlFilesRequest--;
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

buildUnnamed3956() {
  var o = new core.List<api.Screen>();
  o.add(buildScreen());
  o.add(buildScreen());
  return o;
}

checkUnnamed3956(core.List<api.Screen> o) {
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
    o.screens = buildUnnamed3956();
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
    checkUnnamed3956(o.screens);
  }
  buildCounterScreenshotCluster--;
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
  }
  buildCounterSpecification--;
  return o;
}

checkSpecification(api.Specification o) {
  buildCounterSpecification++;
  if (buildCounterSpecification < 3) {
    checkAndroidTest(o.androidTest);
  }
  buildCounterSpecification--;
}

core.int buildCounterStackTrace = 0;
buildStackTrace() {
  var o = new api.StackTrace();
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    o.clusterId = "foo";
    o.exception = "foo";
    o.reportId = "foo";
  }
  buildCounterStackTrace--;
  return o;
}

checkStackTrace(api.StackTrace o) {
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.exception, unittest.equals('foo'));
    unittest.expect(o.reportId, unittest.equals('foo'));
  }
  buildCounterStackTrace--;
}

buildUnnamed3957() {
  var o = new core.List<api.Any>();
  o.add(buildAny());
  o.add(buildAny());
  return o;
}

checkUnnamed3957(core.List<api.Any> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAny(o[0]);
  checkAny(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3957();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3957(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed3958() {
  var o = new core.List<api.StepDimensionValueEntry>();
  o.add(buildStepDimensionValueEntry());
  o.add(buildStepDimensionValueEntry());
  return o;
}

checkUnnamed3958(core.List<api.StepDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepDimensionValueEntry(o[0]);
  checkStepDimensionValueEntry(o[1]);
}

buildUnnamed3959() {
  var o = new core.List<api.StepLabelsEntry>();
  o.add(buildStepLabelsEntry());
  o.add(buildStepLabelsEntry());
  return o;
}

checkUnnamed3959(core.List<api.StepLabelsEntry> o) {
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
    o.dimensionValue = buildUnnamed3958();
    o.hasImages = true;
    o.labels = buildUnnamed3959();
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
    checkUnnamed3958(o.dimensionValue);
    unittest.expect(o.hasImages, unittest.isTrue);
    checkUnnamed3959(o.labels);
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

buildUnnamed3960() {
  var o = new core.List<api.TestIssue>();
  o.add(buildTestIssue());
  o.add(buildTestIssue());
  return o;
}

checkUnnamed3960(core.List<api.TestIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestIssue(o[0]);
  checkTestIssue(o[1]);
}

buildUnnamed3961() {
  var o = new core.List<api.TestSuiteOverview>();
  o.add(buildTestSuiteOverview());
  o.add(buildTestSuiteOverview());
  return o;
}

checkUnnamed3961(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0]);
  checkTestSuiteOverview(o[1]);
}

core.int buildCounterTestExecutionStep = 0;
buildTestExecutionStep() {
  var o = new api.TestExecutionStep();
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    o.testIssues = buildUnnamed3960();
    o.testSuiteOverviews = buildUnnamed3961();
    o.testTiming = buildTestTiming();
    o.toolExecution = buildToolExecution();
  }
  buildCounterTestExecutionStep--;
  return o;
}

checkTestExecutionStep(api.TestExecutionStep o) {
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    checkUnnamed3960(o.testIssues);
    checkUnnamed3961(o.testSuiteOverviews);
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
    o.errorCount = 42;
    o.failureCount = 42;
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
    unittest.expect(o.errorCount, unittest.equals(42));
    unittest.expect(o.failureCount, unittest.equals(42));
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

buildUnnamed3962() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3962(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3963() {
  var o = new core.List<api.FileReference>();
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

checkUnnamed3963(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

buildUnnamed3964() {
  var o = new core.List<api.ToolOutputReference>();
  o.add(buildToolOutputReference());
  o.add(buildToolOutputReference());
  return o;
}

checkUnnamed3964(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0]);
  checkToolOutputReference(o[1]);
}

core.int buildCounterToolExecution = 0;
buildToolExecution() {
  var o = new api.ToolExecution();
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    o.commandLineArguments = buildUnnamed3962();
    o.exitCode = buildToolExitCode();
    o.toolLogs = buildUnnamed3963();
    o.toolOutputs = buildUnnamed3964();
  }
  buildCounterToolExecution--;
  return o;
}

checkToolExecution(api.ToolExecution o) {
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    checkUnnamed3962(o.commandLineArguments);
    checkToolExitCode(o.exitCode);
    checkUnnamed3963(o.toolLogs);
    checkUnnamed3964(o.toolOutputs);
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

buildUnnamed3965() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3965(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
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

  unittest.group("obj-schema-CPUInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCPUInfo();
      var od = new api.CPUInfo.fromJson(o.toJson());
      checkCPUInfo(od);
    });
  });

  unittest.group("obj-schema-Duration", () {
    unittest.test("to-json--from-json", () {
      var o = buildDuration();
      var od = new api.Duration.fromJson(o.toJson());
      checkDuration(od);
    });
  });

  unittest.group("obj-schema-Execution", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecution();
      var od = new api.Execution.fromJson(o.toJson());
      checkExecution(od);
    });
  });

  unittest.group("obj-schema-FailureDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailureDetail();
      var od = new api.FailureDetail.fromJson(o.toJson());
      checkFailureDetail(od);
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

  unittest.group("obj-schema-InconclusiveDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildInconclusiveDetail();
      var od = new api.InconclusiveDetail.fromJson(o.toJson());
      checkInconclusiveDetail(od);
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

  unittest.group("obj-schema-MemoryInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemoryInfo();
      var od = new api.MemoryInfo.fromJson(o.toJson());
      checkMemoryInfo(od);
    });
  });

  unittest.group("obj-schema-Outcome", () {
    unittest.test("to-json--from-json", () {
      var o = buildOutcome();
      var od = new api.Outcome.fromJson(o.toJson());
      checkOutcome(od);
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

  unittest.group("obj-schema-SuccessDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuccessDetail();
      var od = new api.SuccessDetail.fromJson(o.toJson());
      checkSuccessDetail(od);
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
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
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
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

  unittest.group("resource-ProjectsHistoriesExecutionsStepsResourceApi", () {
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
        var resp = convert.json.encode(buildListStepsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
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
      var arg_filter = buildUnnamed3965();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildListPerfSamplesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              arg_sampleSeriesId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPerfSamplesResponse(response);
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
        var resp = convert.json.encode(buildListStepThumbnailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_historyId, arg_executionId, arg_stepId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListStepThumbnailsResponse(response);
      })));
    });
  });
}
