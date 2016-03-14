library googleapis_beta.toolresults.v1beta3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

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
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
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
    o.nativeCrash = true;
  }
  buildCounterInconclusiveDetail--;
  return o;
}

checkInconclusiveDetail(api.InconclusiveDetail o) {
  buildCounterInconclusiveDetail++;
  if (buildCounterInconclusiveDetail < 3) {
    unittest.expect(o.abortedByUser, unittest.isTrue);
    unittest.expect(o.infrastructureFailure, unittest.isTrue);
    unittest.expect(o.nativeCrash, unittest.isTrue);
  }
  buildCounterInconclusiveDetail--;
}

buildUnnamed3253() {
  var o = new core.List<api.Execution>();
  o.add(buildExecution());
  o.add(buildExecution());
  return o;
}

checkUnnamed3253(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.int buildCounterListExecutionsResponse = 0;
buildListExecutionsResponse() {
  var o = new api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed3253();
    o.nextPageToken = "foo";
  }
  buildCounterListExecutionsResponse--;
  return o;
}

checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed3253(o.executions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListExecutionsResponse--;
}

buildUnnamed3254() {
  var o = new core.List<api.History>();
  o.add(buildHistory());
  o.add(buildHistory());
  return o;
}

checkUnnamed3254(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoriesResponse = 0;
buildListHistoriesResponse() {
  var o = new api.ListHistoriesResponse();
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    o.histories = buildUnnamed3254();
    o.nextPageToken = "foo";
  }
  buildCounterListHistoriesResponse--;
  return o;
}

checkListHistoriesResponse(api.ListHistoriesResponse o) {
  buildCounterListHistoriesResponse++;
  if (buildCounterListHistoriesResponse < 3) {
    checkUnnamed3254(o.histories);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHistoriesResponse--;
}

buildUnnamed3255() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed3255(core.List<api.Image> o) {
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
    o.thumbnails = buildUnnamed3255();
  }
  buildCounterListStepThumbnailsResponse--;
  return o;
}

checkListStepThumbnailsResponse(api.ListStepThumbnailsResponse o) {
  buildCounterListStepThumbnailsResponse++;
  if (buildCounterListStepThumbnailsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3255(o.thumbnails);
  }
  buildCounterListStepThumbnailsResponse--;
}

buildUnnamed3256() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed3256(core.List<api.Step> o) {
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
    o.steps = buildUnnamed3256();
  }
  buildCounterListStepsResponse--;
  return o;
}

checkListStepsResponse(api.ListStepsResponse o) {
  buildCounterListStepsResponse++;
  if (buildCounterListStepsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3256(o.steps);
  }
  buildCounterListStepsResponse--;
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

buildUnnamed3257() {
  var o = new core.List<api.FileReference>();
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

checkUnnamed3257(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.int buildCounterPublishXunitXmlFilesRequest = 0;
buildPublishXunitXmlFilesRequest() {
  var o = new api.PublishXunitXmlFilesRequest();
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    o.xunitXmlFiles = buildUnnamed3257();
  }
  buildCounterPublishXunitXmlFilesRequest--;
  return o;
}

checkPublishXunitXmlFilesRequest(api.PublishXunitXmlFilesRequest o) {
  buildCounterPublishXunitXmlFilesRequest++;
  if (buildCounterPublishXunitXmlFilesRequest < 3) {
    checkUnnamed3257(o.xunitXmlFiles);
  }
  buildCounterPublishXunitXmlFilesRequest--;
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

buildUnnamed3258() {
  var o = new core.List<api.Any>();
  o.add(buildAny());
  o.add(buildAny());
  return o;
}

checkUnnamed3258(core.List<api.Any> o) {
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
    o.details = buildUnnamed3258();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3258(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed3259() {
  var o = new core.List<api.StepDimensionValueEntry>();
  o.add(buildStepDimensionValueEntry());
  o.add(buildStepDimensionValueEntry());
  return o;
}

checkUnnamed3259(core.List<api.StepDimensionValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepDimensionValueEntry(o[0]);
  checkStepDimensionValueEntry(o[1]);
}

buildUnnamed3260() {
  var o = new core.List<api.StepLabelsEntry>();
  o.add(buildStepLabelsEntry());
  o.add(buildStepLabelsEntry());
  return o;
}

checkUnnamed3260(core.List<api.StepLabelsEntry> o) {
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
    o.dimensionValue = buildUnnamed3259();
    o.hasImages = true;
    o.labels = buildUnnamed3260();
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
    checkUnnamed3259(o.dimensionValue);
    unittest.expect(o.hasImages, unittest.isTrue);
    checkUnnamed3260(o.labels);
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

buildUnnamed3261() {
  var o = new core.List<api.TestSuiteOverview>();
  o.add(buildTestSuiteOverview());
  o.add(buildTestSuiteOverview());
  return o;
}

checkUnnamed3261(core.List<api.TestSuiteOverview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestSuiteOverview(o[0]);
  checkTestSuiteOverview(o[1]);
}

core.int buildCounterTestExecutionStep = 0;
buildTestExecutionStep() {
  var o = new api.TestExecutionStep();
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    o.testSuiteOverviews = buildUnnamed3261();
    o.testTiming = buildTestTiming();
    o.toolExecution = buildToolExecution();
  }
  buildCounterTestExecutionStep--;
  return o;
}

checkTestExecutionStep(api.TestExecutionStep o) {
  buildCounterTestExecutionStep++;
  if (buildCounterTestExecutionStep < 3) {
    checkUnnamed3261(o.testSuiteOverviews);
    checkTestTiming(o.testTiming);
    checkToolExecution(o.toolExecution);
  }
  buildCounterTestExecutionStep--;
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

buildUnnamed3262() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3262(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3263() {
  var o = new core.List<api.FileReference>();
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

checkUnnamed3263(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

buildUnnamed3264() {
  var o = new core.List<api.ToolOutputReference>();
  o.add(buildToolOutputReference());
  o.add(buildToolOutputReference());
  return o;
}

checkUnnamed3264(core.List<api.ToolOutputReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolOutputReference(o[0]);
  checkToolOutputReference(o[1]);
}

core.int buildCounterToolExecution = 0;
buildToolExecution() {
  var o = new api.ToolExecution();
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    o.commandLineArguments = buildUnnamed3262();
    o.exitCode = buildToolExitCode();
    o.toolLogs = buildUnnamed3263();
    o.toolOutputs = buildUnnamed3264();
  }
  buildCounterToolExecution--;
  return o;
}

checkToolExecution(api.ToolExecution o) {
  buildCounterToolExecution++;
  if (buildCounterToolExecution < 3) {
    checkUnnamed3262(o.commandLineArguments);
    checkToolExitCode(o.exitCode);
    checkUnnamed3263(o.toolLogs);
    checkUnnamed3264(o.toolOutputs);
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


main() {
  unittest.group("obj-schema-Any", () {
    unittest.test("to-json--from-json", () {
      var o = buildAny();
      var od = new api.Any.fromJson(o.toJson());
      checkAny(od);
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


  unittest.group("obj-schema-Outcome", () {
    unittest.test("to-json--from-json", () {
      var o = buildOutcome();
      var od = new api.Outcome.fromJson(o.toJson());
      checkOutcome(od);
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


  unittest.group("obj-schema-SkippedDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildSkippedDetail();
      var od = new api.SkippedDetail.fromJson(o.toJson());
      checkSkippedDetail(od);
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProjectSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getSettings(arg_projectId).then(unittest.expectAsync(((api.ProjectSettings response) {
        checkProjectSettings(response);
      })));
    });

    unittest.test("method--initializeSettings", () {

      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ToolresultsApi(mock).projects;
      var arg_projectId = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProjectSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.initializeSettings(arg_projectId).then(unittest.expectAsync(((api.ProjectSettings response) {
        checkProjectSettings(response);
      })));
    });

  });


  unittest.group("resource-ProjectsHistoriesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesResourceApi res = new api.ToolresultsApi(mock).projects.histories;
      var arg_request = buildHistory();
      var arg_projectId = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.History.fromJson(json);
        checkHistory(obj);

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
        unittest.expect(queryMap["requestId"].first, unittest.equals(arg_requestId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHistory());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId, requestId: arg_requestId).then(unittest.expectAsync(((api.History response) {
        checkHistory(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesResourceApi res = new api.ToolresultsApi(mock).projects.histories;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHistory());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_historyId).then(unittest.expectAsync(((api.History response) {
        checkHistory(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesResourceApi res = new api.ToolresultsApi(mock).projects.histories;
      var arg_projectId = "foo";
      var arg_filterByName = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(queryMap["filterByName"].first, unittest.equals(arg_filterByName));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListHistoriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, filterByName: arg_filterByName, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListHistoriesResponse response) {
        checkListHistoriesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsHistoriesExecutionsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_request = buildExecution();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Execution.fromJson(json);
        checkExecution(obj);

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
        unittest.expect(queryMap["requestId"].first, unittest.equals(arg_requestId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExecution());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId, arg_historyId, requestId: arg_requestId).then(unittest.expectAsync(((api.Execution response) {
        checkExecution(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExecution());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_historyId, arg_executionId).then(unittest.expectAsync(((api.Execution response) {
        checkExecution(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListExecutionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_historyId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListExecutionsResponse response) {
        checkListExecutionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions;
      var arg_request = buildExecution();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Execution.fromJson(json);
        checkExecution(obj);

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
        unittest.expect(queryMap["requestId"].first, unittest.equals(arg_requestId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExecution());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_projectId, arg_historyId, arg_executionId, requestId: arg_requestId).then(unittest.expectAsync(((api.Execution response) {
        checkExecution(response);
      })));
    });

  });


  unittest.group("resource-ProjectsHistoriesExecutionsStepsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildStep();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Step.fromJson(json);
        checkStep(obj);

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
        unittest.expect(queryMap["requestId"].first, unittest.equals(arg_requestId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId, arg_historyId, arg_executionId, requestId: arg_requestId).then(unittest.expectAsync(((api.Step response) {
        checkStep(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_historyId, arg_executionId, arg_stepId).then(unittest.expectAsync(((api.Step response) {
        checkStep(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListStepsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_historyId, arg_executionId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListStepsResponse response) {
        checkListStepsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildStep();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Step.fromJson(json);
        checkStep(obj);

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
        unittest.expect(queryMap["requestId"].first, unittest.equals(arg_requestId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_projectId, arg_historyId, arg_executionId, arg_stepId, requestId: arg_requestId).then(unittest.expectAsync(((api.Step response) {
        checkStep(response);
      })));
    });

    unittest.test("method--publishXunitXmlFiles", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions.steps;
      var arg_request = buildPublishXunitXmlFilesRequest();
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.PublishXunitXmlFilesRequest.fromJson(json);
        checkPublishXunitXmlFilesRequest(obj);

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
        var resp = convert.JSON.encode(buildStep());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.publishXunitXmlFiles(arg_request, arg_projectId, arg_historyId, arg_executionId, arg_stepId).then(unittest.expectAsync(((api.Step response) {
        checkStep(response);
      })));
    });

  });


  unittest.group("resource-ProjectsHistoriesExecutionsStepsThumbnailsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsHistoriesExecutionsStepsThumbnailsResourceApi res = new api.ToolresultsApi(mock).projects.histories.executions.steps.thumbnails;
      var arg_projectId = "foo";
      var arg_historyId = "foo";
      var arg_executionId = "foo";
      var arg_stepId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListStepThumbnailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_historyId, arg_executionId, arg_stepId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListStepThumbnailsResponse response) {
        checkListStepThumbnailsResponse(response);
      })));
    });

  });


}

