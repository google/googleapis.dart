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

import 'package:googleapis/firebaseappdistribution/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAndroidxCrawlerOutputPoint = 0;
api.AndroidxCrawlerOutputPoint buildAndroidxCrawlerOutputPoint() {
  final o = api.AndroidxCrawlerOutputPoint();
  buildCounterAndroidxCrawlerOutputPoint++;
  if (buildCounterAndroidxCrawlerOutputPoint < 3) {
    o.xCoordinate = 42;
    o.yCoordinate = 42;
  }
  buildCounterAndroidxCrawlerOutputPoint--;
  return o;
}

void checkAndroidxCrawlerOutputPoint(api.AndroidxCrawlerOutputPoint o) {
  buildCounterAndroidxCrawlerOutputPoint++;
  if (buildCounterAndroidxCrawlerOutputPoint < 3) {
    unittest.expect(o.xCoordinate!, unittest.equals(42));
    unittest.expect(o.yCoordinate!, unittest.equals(42));
  }
  buildCounterAndroidxCrawlerOutputPoint--;
}

core.int buildCounterAndroidxCrawlerOutputRectangle = 0;
api.AndroidxCrawlerOutputRectangle buildAndroidxCrawlerOutputRectangle() {
  final o = api.AndroidxCrawlerOutputRectangle();
  buildCounterAndroidxCrawlerOutputRectangle++;
  if (buildCounterAndroidxCrawlerOutputRectangle < 3) {
    o.bottom = 42;
    o.left = 42;
    o.right = 42;
    o.top = 42;
  }
  buildCounterAndroidxCrawlerOutputRectangle--;
  return o;
}

void checkAndroidxCrawlerOutputRectangle(api.AndroidxCrawlerOutputRectangle o) {
  buildCounterAndroidxCrawlerOutputRectangle++;
  if (buildCounterAndroidxCrawlerOutputRectangle < 3) {
    unittest.expect(o.bottom!, unittest.equals(42));
    unittest.expect(o.left!, unittest.equals(42));
    unittest.expect(o.right!, unittest.equals(42));
    unittest.expect(o.top!, unittest.equals(42));
  }
  buildCounterAndroidxCrawlerOutputRectangle--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate = 0;
api.GoogleFirebaseAppdistroV1alphaAabCertificate
buildGoogleFirebaseAppdistroV1alphaAabCertificate() {
  final o = api.GoogleFirebaseAppdistroV1alphaAabCertificate();
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate < 3) {
    o.certificateHashMd5 = 'foo';
    o.certificateHashSha1 = 'foo';
    o.certificateHashSha256 = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAabCertificate(
  api.GoogleFirebaseAppdistroV1alphaAabCertificate o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate < 3) {
    unittest.expect(o.certificateHashMd5!, unittest.equals('foo'));
    unittest.expect(o.certificateHashSha1!, unittest.equals('foo'));
    unittest.expect(o.certificateHashSha256!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaAiStep> buildUnnamed0() => [
  buildGoogleFirebaseAppdistroV1alphaAiStep(),
  buildGoogleFirebaseAppdistroV1alphaAiStep(),
];

void checkUnnamed0(core.List<api.GoogleFirebaseAppdistroV1alphaAiStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaAiStep(o[0]);
  checkGoogleFirebaseAppdistroV1alphaAiStep(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions = 0;
api.GoogleFirebaseAppdistroV1alphaAiInstructions
buildGoogleFirebaseAppdistroV1alphaAiInstructions() {
  final o = api.GoogleFirebaseAppdistroV1alphaAiInstructions();
  buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions < 3) {
    o.steps = buildUnnamed0();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAiInstructions(
  api.GoogleFirebaseAppdistroV1alphaAiInstructions o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions < 3) {
    checkUnnamed0(o.steps!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAiInstructions--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaAiStep = 0;
api.GoogleFirebaseAppdistroV1alphaAiStep
buildGoogleFirebaseAppdistroV1alphaAiStep() {
  final o = api.GoogleFirebaseAppdistroV1alphaAiStep();
  buildCounterGoogleFirebaseAppdistroV1alphaAiStep++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAiStep < 3) {
    o.assertion = 'foo';
    o.goal = 'foo';
    o.hint = 'foo';
    o.successCriteria = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAiStep--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAiStep(
  api.GoogleFirebaseAppdistroV1alphaAiStep o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaAiStep++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAiStep < 3) {
    unittest.expect(o.assertion!, unittest.equals('foo'));
    unittest.expect(o.goal!, unittest.equals('foo'));
    unittest.expect(o.hint!, unittest.equals('foo'));
    unittest.expect(o.successCriteria!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAiStep--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult = 0;
api.GoogleFirebaseAppdistroV1alphaAiStepResult
buildGoogleFirebaseAppdistroV1alphaAiStepResult() {
  final o = api.GoogleFirebaseAppdistroV1alphaAiStepResult();
  buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult < 3) {
    o.assertionDetails = buildGoogleFirebaseAppdistroV1alphaAssertionDetails();
    o.goalDetails = buildGoogleFirebaseAppdistroV1alphaGoalDetails();
    o.state = 'foo';
    o.step = buildGoogleFirebaseAppdistroV1alphaAiStep();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAiStepResult(
  api.GoogleFirebaseAppdistroV1alphaAiStepResult o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult < 3) {
    checkGoogleFirebaseAppdistroV1alphaAssertionDetails(o.assertionDetails!);
    checkGoogleFirebaseAppdistroV1alphaGoalDetails(o.goalDetails!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaAiStep(o.step!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAiStepResult--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaApp = 0;
api.GoogleFirebaseAppdistroV1alphaApp buildGoogleFirebaseAppdistroV1alphaApp() {
  final o = api.GoogleFirebaseAppdistroV1alphaApp();
  buildCounterGoogleFirebaseAppdistroV1alphaApp++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaApp < 3) {
    o.aabCertificate = buildGoogleFirebaseAppdistroV1alphaAabCertificate();
    o.aabState = 'foo';
    o.appId = 'foo';
    o.bundleId = 'foo';
    o.contactEmail = 'foo';
    o.platform = 'foo';
    o.projectNumber = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaApp--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaApp(
  api.GoogleFirebaseAppdistroV1alphaApp o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaApp++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaApp < 3) {
    checkGoogleFirebaseAppdistroV1alphaAabCertificate(o.aabCertificate!);
    unittest.expect(o.aabState!, unittest.equals('foo'));
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.bundleId!, unittest.equals('foo'));
    unittest.expect(o.contactEmail!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    unittest.expect(o.projectNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaApp--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaAppCrash = 0;
api.GoogleFirebaseAppdistroV1alphaAppCrash
buildGoogleFirebaseAppdistroV1alphaAppCrash() {
  final o = api.GoogleFirebaseAppdistroV1alphaAppCrash();
  buildCounterGoogleFirebaseAppdistroV1alphaAppCrash++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAppCrash < 3) {
    o.message = 'foo';
    o.stackTrace = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAppCrash--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAppCrash(
  api.GoogleFirebaseAppdistroV1alphaAppCrash o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaAppCrash++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAppCrash < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.stackTrace!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAppCrash--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails = 0;
api.GoogleFirebaseAppdistroV1alphaAssertionDetails
buildGoogleFirebaseAppdistroV1alphaAssertionDetails() {
  final o = api.GoogleFirebaseAppdistroV1alphaAssertionDetails();
  buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails < 3) {
    o.explanation = 'foo';
    o.result = true;
    o.screenshot = buildGoogleFirebaseAppdistroV1alphaScreenshot();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAssertionDetails(
  api.GoogleFirebaseAppdistroV1alphaAssertionDetails o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails < 3) {
    unittest.expect(o.explanation!, unittest.equals('foo'));
    unittest.expect(o.result!, unittest.isTrue);
    checkGoogleFirebaseAppdistroV1alphaScreenshot(o.screenshot!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAssertionDetails--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest =
    0;
api.GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest
buildGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest() {
  final o = api.GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest();
  buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest <
      3) {
    o.names = buildUnnamed1();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest(
  api.GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest <
      3) {
    checkUnnamed1(o.names!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse =
    0;
api.GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse
buildGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse(
  api.GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest =
    0;
api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest
buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest() {
  final o = api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest();
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest < 3) {
    o.releaseNotes = buildGoogleFirebaseAppdistroV1alphaReleaseNotes();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest(
  api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest < 3) {
    checkGoogleFirebaseAppdistroV1alphaReleaseNotes(o.releaseNotes!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse =
    0;
api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse
buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(
  api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaDeviceInteraction>
buildUnnamed2() => [
  buildGoogleFirebaseAppdistroV1alphaDeviceInteraction(),
  buildGoogleFirebaseAppdistroV1alphaDeviceInteraction(),
];

void checkUnnamed2(
  core.List<api.GoogleFirebaseAppdistroV1alphaDeviceInteraction> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaDeviceInteraction(o[0]);
  checkGoogleFirebaseAppdistroV1alphaDeviceInteraction(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction = 0;
api.GoogleFirebaseAppdistroV1alphaDeviceAction
buildGoogleFirebaseAppdistroV1alphaDeviceAction() {
  final o = api.GoogleFirebaseAppdistroV1alphaDeviceAction();
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction < 3) {
    o.description = 'foo';
    o.deviceInteractions = buildUnnamed2();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaDeviceAction(
  api.GoogleFirebaseAppdistroV1alphaDeviceAction o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed2(o.deviceInteractions!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceAction--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaAiStepResult> buildUnnamed3() => [
  buildGoogleFirebaseAppdistroV1alphaAiStepResult(),
  buildGoogleFirebaseAppdistroV1alphaAiStepResult(),
];

void checkUnnamed3(
  core.List<api.GoogleFirebaseAppdistroV1alphaAiStepResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaAiStepResult(o[0]);
  checkGoogleFirebaseAppdistroV1alphaAiStepResult(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution = 0;
api.GoogleFirebaseAppdistroV1alphaDeviceExecution
buildGoogleFirebaseAppdistroV1alphaDeviceExecution() {
  final o = api.GoogleFirebaseAppdistroV1alphaDeviceExecution();
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution < 3) {
    o.aiStepResults = buildUnnamed3();
    o.appCrash = buildGoogleFirebaseAppdistroV1alphaAppCrash();
    o.crawlGraphUri = 'foo';
    o.device = buildGoogleFirebaseAppdistroV1alphaTestDevice();
    o.failedReason = 'foo';
    o.inconclusiveReason = 'foo';
    o.resultsStoragePath = 'foo';
    o.roboStats = buildGoogleFirebaseAppdistroV1alphaRoboStats();
    o.screenshotUris = buildUnnamed4();
    o.state = 'foo';
    o.videoUri = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaDeviceExecution(
  api.GoogleFirebaseAppdistroV1alphaDeviceExecution o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution < 3) {
    checkUnnamed3(o.aiStepResults!);
    checkGoogleFirebaseAppdistroV1alphaAppCrash(o.appCrash!);
    unittest.expect(o.crawlGraphUri!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaTestDevice(o.device!);
    unittest.expect(o.failedReason!, unittest.equals('foo'));
    unittest.expect(o.inconclusiveReason!, unittest.equals('foo'));
    unittest.expect(o.resultsStoragePath!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaRoboStats(o.roboStats!);
    checkUnnamed4(o.screenshotUris!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.videoUri!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceExecution--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction = 0;
api.GoogleFirebaseAppdistroV1alphaDeviceInteraction
buildGoogleFirebaseAppdistroV1alphaDeviceInteraction() {
  final o = api.GoogleFirebaseAppdistroV1alphaDeviceInteraction();
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction < 3) {
    o.enterText =
        buildGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText();
    o.keyCode = 'foo';
    o.screenshot = buildGoogleFirebaseAppdistroV1alphaScreenshot();
    o.swipe = buildGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe();
    o.tap = buildAndroidxCrawlerOutputPoint();
    o.textInput = 'foo';
    o.wait = buildGoogleFirebaseAppdistroV1alphaDeviceInteractionWait();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaDeviceInteraction(
  api.GoogleFirebaseAppdistroV1alphaDeviceInteraction o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction < 3) {
    checkGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText(o.enterText!);
    unittest.expect(o.keyCode!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaScreenshot(o.screenshot!);
    checkGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe(o.swipe!);
    checkAndroidxCrawlerOutputPoint(o.tap!);
    unittest.expect(o.textInput!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaDeviceInteractionWait(o.wait!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteraction--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText =
    0;
api.GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText
buildGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText() {
  final o = api.GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText();
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText <
      3) {
    o.elementBounds = buildAndroidxCrawlerOutputRectangle();
    o.text = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText(
  api.GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText <
      3) {
    checkAndroidxCrawlerOutputRectangle(o.elementBounds!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe = 0;
api.GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe
buildGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe() {
  final o = api.GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe();
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe < 3) {
    o.end = buildAndroidxCrawlerOutputPoint();
    o.start = buildAndroidxCrawlerOutputPoint();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe(
  api.GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe < 3) {
    checkAndroidxCrawlerOutputPoint(o.end!);
    checkAndroidxCrawlerOutputPoint(o.start!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait = 0;
api.GoogleFirebaseAppdistroV1alphaDeviceInteractionWait
buildGoogleFirebaseAppdistroV1alphaDeviceInteractionWait() {
  final o = api.GoogleFirebaseAppdistroV1alphaDeviceInteractionWait();
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait < 3) {
    o.duration = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaDeviceInteractionWait(
  api.GoogleFirebaseAppdistroV1alphaDeviceInteractionWait o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait < 3) {
    unittest.expect(o.duration!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaDeviceInteractionWait--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest = 0;
api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest
buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest() {
  final o = api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest();
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest <
      3) {
    o.buildVersion = 'foo';
    o.displayVersion = 'foo';
    o.emails = buildUnnamed5();
    o.groupIds = buildUnnamed6();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest(
  api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest <
      3) {
    unittest.expect(o.buildVersion!, unittest.equals('foo'));
    unittest.expect(o.displayVersion!, unittest.equals('foo'));
    checkUnnamed5(o.emails!);
    checkUnnamed6(o.groupIds!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest--;
}

core.int
buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse = 0;
api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse
buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(
  api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse--;
}

core.int
buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse = 0;
api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse
buildGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse <
      3) {
    o.release = buildGoogleFirebaseAppdistroV1alphaRelease();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(
  api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse <
      3) {
    checkGoogleFirebaseAppdistroV1alphaRelease(o.release!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaTesterUdid> buildUnnamed7() => [
  buildGoogleFirebaseAppdistroV1alphaTesterUdid(),
  buildGoogleFirebaseAppdistroV1alphaTesterUdid(),
];

void checkUnnamed7(core.List<api.GoogleFirebaseAppdistroV1alphaTesterUdid> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaTesterUdid(o[0]);
  checkGoogleFirebaseAppdistroV1alphaTesterUdid(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse = 0;
api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse
buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse < 3) {
    o.testerUdids = buildUnnamed7();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(
  api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse < 3) {
    checkUnnamed7(o.testerUdids!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse = 0;
api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse
buildGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse < 3) {
    o.errorCode = 'foo';
    o.message = 'foo';
    o.release = buildGoogleFirebaseAppdistroV1alphaRelease();
    o.status = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(
  api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse < 3) {
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaRelease(o.release!);
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGoalAction = 0;
api.GoogleFirebaseAppdistroV1alphaGoalAction
buildGoogleFirebaseAppdistroV1alphaGoalAction() {
  final o = api.GoogleFirebaseAppdistroV1alphaGoalAction();
  buildCounterGoogleFirebaseAppdistroV1alphaGoalAction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGoalAction < 3) {
    o.debugInfo = buildGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo();
    o.deviceAction = buildGoogleFirebaseAppdistroV1alphaDeviceAction();
    o.explanation = 'foo';
    o.terminalAction = buildGoogleFirebaseAppdistroV1alphaTerminalAction();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGoalAction--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGoalAction(
  api.GoogleFirebaseAppdistroV1alphaGoalAction o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaGoalAction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGoalAction < 3) {
    checkGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo(o.debugInfo!);
    checkGoogleFirebaseAppdistroV1alphaDeviceAction(o.deviceAction!);
    unittest.expect(o.explanation!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaTerminalAction(o.terminalAction!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGoalAction--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo = 0;
api.GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo
buildGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo() {
  final o = api.GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo();
  buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo < 3) {
    o.annotatedScreenshotUri = 'foo';
    o.jsonUri = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo(
  api.GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo < 3) {
    unittest.expect(o.annotatedScreenshotUri!, unittest.equals('foo'));
    unittest.expect(o.jsonUri!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaGoalAction> buildUnnamed8() => [
  buildGoogleFirebaseAppdistroV1alphaGoalAction(),
  buildGoogleFirebaseAppdistroV1alphaGoalAction(),
];

void checkUnnamed8(core.List<api.GoogleFirebaseAppdistroV1alphaGoalAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaGoalAction(o[0]);
  checkGoogleFirebaseAppdistroV1alphaGoalAction(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails = 0;
api.GoogleFirebaseAppdistroV1alphaGoalDetails
buildGoogleFirebaseAppdistroV1alphaGoalDetails() {
  final o = api.GoogleFirebaseAppdistroV1alphaGoalDetails();
  buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails < 3) {
    o.goalActions = buildUnnamed8();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGoalDetails(
  api.GoogleFirebaseAppdistroV1alphaGoalDetails o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails < 3) {
    checkUnnamed8(o.goalActions!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGoalDetails--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaJwt = 0;
api.GoogleFirebaseAppdistroV1alphaJwt buildGoogleFirebaseAppdistroV1alphaJwt() {
  final o = api.GoogleFirebaseAppdistroV1alphaJwt();
  buildCounterGoogleFirebaseAppdistroV1alphaJwt++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaJwt < 3) {
    o.token = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaJwt--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaJwt(
  api.GoogleFirebaseAppdistroV1alphaJwt o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaJwt++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaJwt < 3) {
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaJwt--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaReleaseTest> buildUnnamed9() => [
  buildGoogleFirebaseAppdistroV1alphaReleaseTest(),
  buildGoogleFirebaseAppdistroV1alphaReleaseTest(),
];

void checkUnnamed9(core.List<api.GoogleFirebaseAppdistroV1alphaReleaseTest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaReleaseTest(o[0]);
  checkGoogleFirebaseAppdistroV1alphaReleaseTest(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse = 0;
api.GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse
buildGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse < 3) {
    o.nextPageToken = 'foo';
    o.releaseTests = buildUnnamed9();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse(
  api.GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.releaseTests!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaTestCase> buildUnnamed10() => [
  buildGoogleFirebaseAppdistroV1alphaTestCase(),
  buildGoogleFirebaseAppdistroV1alphaTestCase(),
];

void checkUnnamed10(core.List<api.GoogleFirebaseAppdistroV1alphaTestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaTestCase(o[0]);
  checkGoogleFirebaseAppdistroV1alphaTestCase(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse = 0;
api.GoogleFirebaseAppdistroV1alphaListTestCasesResponse
buildGoogleFirebaseAppdistroV1alphaListTestCasesResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaListTestCasesResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed10();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaListTestCasesResponse(
  api.GoogleFirebaseAppdistroV1alphaListTestCasesResponse o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.testCases!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaListTestCasesResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential = 0;
api.GoogleFirebaseAppdistroV1alphaLoginCredential
buildGoogleFirebaseAppdistroV1alphaLoginCredential() {
  final o = api.GoogleFirebaseAppdistroV1alphaLoginCredential();
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential < 3) {
    o.fieldHints =
        buildGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints();
    o.google = true;
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaLoginCredential(
  api.GoogleFirebaseAppdistroV1alphaLoginCredential o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential < 3) {
    checkGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints(o.fieldHints!);
    unittest.expect(o.google!, unittest.isTrue);
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredential--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints =
    0;
api.GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints
buildGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints() {
  final o = api.GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints();
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints < 3) {
    o.passwordResourceName = 'foo';
    o.usernameResourceName = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints(
  api.GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints < 3) {
    unittest.expect(o.passwordResourceName!, unittest.equals('foo'));
    unittest.expect(o.usernameResourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaRelease = 0;
api.GoogleFirebaseAppdistroV1alphaRelease
buildGoogleFirebaseAppdistroV1alphaRelease() {
  final o = api.GoogleFirebaseAppdistroV1alphaRelease();
  buildCounterGoogleFirebaseAppdistroV1alphaRelease++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRelease < 3) {
    o.buildVersion = 'foo';
    o.displayVersion = 'foo';
    o.distributedAt = 'foo';
    o.id = 'foo';
    o.instanceId = 'foo';
    o.lastActivityAt = 'foo';
    o.openInvitationCount = 42;
    o.receivedAt = 'foo';
    o.releaseNotesSummary = 'foo';
    o.testerCount = 42;
    o.testerWithInstallCount = 42;
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRelease--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaRelease(
  api.GoogleFirebaseAppdistroV1alphaRelease o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaRelease++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRelease < 3) {
    unittest.expect(o.buildVersion!, unittest.equals('foo'));
    unittest.expect(o.displayVersion!, unittest.equals('foo'));
    unittest.expect(o.distributedAt!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.lastActivityAt!, unittest.equals('foo'));
    unittest.expect(o.openInvitationCount!, unittest.equals(42));
    unittest.expect(o.receivedAt!, unittest.equals('foo'));
    unittest.expect(o.releaseNotesSummary!, unittest.equals('foo'));
    unittest.expect(o.testerCount!, unittest.equals(42));
    unittest.expect(o.testerWithInstallCount!, unittest.equals(42));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRelease--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes = 0;
api.GoogleFirebaseAppdistroV1alphaReleaseNotes
buildGoogleFirebaseAppdistroV1alphaReleaseNotes() {
  final o = api.GoogleFirebaseAppdistroV1alphaReleaseNotes();
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes < 3) {
    o.releaseNotes = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaReleaseNotes(
  api.GoogleFirebaseAppdistroV1alphaReleaseNotes o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes < 3) {
    unittest.expect(o.releaseNotes!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaDeviceExecution> buildUnnamed11() =>
    [
      buildGoogleFirebaseAppdistroV1alphaDeviceExecution(),
      buildGoogleFirebaseAppdistroV1alphaDeviceExecution(),
    ];

void checkUnnamed11(
  core.List<api.GoogleFirebaseAppdistroV1alphaDeviceExecution> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaDeviceExecution(o[0]);
  checkGoogleFirebaseAppdistroV1alphaDeviceExecution(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest = 0;
api.GoogleFirebaseAppdistroV1alphaReleaseTest
buildGoogleFirebaseAppdistroV1alphaReleaseTest() {
  final o = api.GoogleFirebaseAppdistroV1alphaReleaseTest();
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest < 3) {
    o.aiInstructions = buildGoogleFirebaseAppdistroV1alphaAiInstructions();
    o.createTime = 'foo';
    o.deviceExecutions = buildUnnamed11();
    o.displayName = 'foo';
    o.loginCredential = buildGoogleFirebaseAppdistroV1alphaLoginCredential();
    o.name = 'foo';
    o.testCase = 'foo';
    o.testState = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaReleaseTest(
  api.GoogleFirebaseAppdistroV1alphaReleaseTest o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest < 3) {
    checkGoogleFirebaseAppdistroV1alphaAiInstructions(o.aiInstructions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed11(o.deviceExecutions!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaLoginCredential(o.loginCredential!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.testCase!, unittest.equals('foo'));
    unittest.expect(o.testState!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseTest--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler = 0;
api.GoogleFirebaseAppdistroV1alphaRoboCrawler
buildGoogleFirebaseAppdistroV1alphaRoboCrawler() {
  final o = api.GoogleFirebaseAppdistroV1alphaRoboCrawler();
  buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler < 3) {
    o.aiInstructions = buildGoogleFirebaseAppdistroV1alphaAiInstructions();
    o.loginCredential = buildGoogleFirebaseAppdistroV1alphaLoginCredential();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaRoboCrawler(
  api.GoogleFirebaseAppdistroV1alphaRoboCrawler o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler < 3) {
    checkGoogleFirebaseAppdistroV1alphaAiInstructions(o.aiInstructions!);
    checkGoogleFirebaseAppdistroV1alphaLoginCredential(o.loginCredential!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRoboCrawler--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaRoboStats = 0;
api.GoogleFirebaseAppdistroV1alphaRoboStats
buildGoogleFirebaseAppdistroV1alphaRoboStats() {
  final o = api.GoogleFirebaseAppdistroV1alphaRoboStats();
  buildCounterGoogleFirebaseAppdistroV1alphaRoboStats++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRoboStats < 3) {
    o.actionsPerformed = 42;
    o.crawlDuration = 'foo';
    o.distinctVisitedScreens = 42;
    o.mainActivityCrawlTimedOut = true;
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRoboStats--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaRoboStats(
  api.GoogleFirebaseAppdistroV1alphaRoboStats o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaRoboStats++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRoboStats < 3) {
    unittest.expect(o.actionsPerformed!, unittest.equals(42));
    unittest.expect(o.crawlDuration!, unittest.equals('foo'));
    unittest.expect(o.distinctVisitedScreens!, unittest.equals(42));
    unittest.expect(o.mainActivityCrawlTimedOut!, unittest.isTrue);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRoboStats--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaScreenshot = 0;
api.GoogleFirebaseAppdistroV1alphaScreenshot
buildGoogleFirebaseAppdistroV1alphaScreenshot() {
  final o = api.GoogleFirebaseAppdistroV1alphaScreenshot();
  buildCounterGoogleFirebaseAppdistroV1alphaScreenshot++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaScreenshot < 3) {
    o.height = 42;
    o.uri = 'foo';
    o.width = 42;
  }
  buildCounterGoogleFirebaseAppdistroV1alphaScreenshot--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaScreenshot(
  api.GoogleFirebaseAppdistroV1alphaScreenshot o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaScreenshot++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaScreenshot < 3) {
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaScreenshot--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction = 0;
api.GoogleFirebaseAppdistroV1alphaTerminalAction
buildGoogleFirebaseAppdistroV1alphaTerminalAction() {
  final o = api.GoogleFirebaseAppdistroV1alphaTerminalAction();
  buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction < 3) {
    o.reason = 'foo';
    o.screenshot = buildGoogleFirebaseAppdistroV1alphaScreenshot();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTerminalAction(
  api.GoogleFirebaseAppdistroV1alphaTerminalAction o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction < 3) {
    unittest.expect(o.reason!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaScreenshot(o.screenshot!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTerminalAction--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTestCase = 0;
api.GoogleFirebaseAppdistroV1alphaTestCase
buildGoogleFirebaseAppdistroV1alphaTestCase() {
  final o = api.GoogleFirebaseAppdistroV1alphaTestCase();
  buildCounterGoogleFirebaseAppdistroV1alphaTestCase++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestCase < 3) {
    o.aiInstructions = buildGoogleFirebaseAppdistroV1alphaAiInstructions();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestCase--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTestCase(
  api.GoogleFirebaseAppdistroV1alphaTestCase o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaTestCase++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestCase < 3) {
    checkGoogleFirebaseAppdistroV1alphaAiInstructions(o.aiInstructions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestCase--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaTestDevice> buildUnnamed12() => [
  buildGoogleFirebaseAppdistroV1alphaTestDevice(),
  buildGoogleFirebaseAppdistroV1alphaTestDevice(),
];

void checkUnnamed12(core.List<api.GoogleFirebaseAppdistroV1alphaTestDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaTestDevice(o[0]);
  checkGoogleFirebaseAppdistroV1alphaTestDevice(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTestConfig = 0;
api.GoogleFirebaseAppdistroV1alphaTestConfig
buildGoogleFirebaseAppdistroV1alphaTestConfig() {
  final o = api.GoogleFirebaseAppdistroV1alphaTestConfig();
  buildCounterGoogleFirebaseAppdistroV1alphaTestConfig++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestConfig < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.roboCrawler = buildGoogleFirebaseAppdistroV1alphaRoboCrawler();
    o.testDevices = buildUnnamed12();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestConfig--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTestConfig(
  api.GoogleFirebaseAppdistroV1alphaTestConfig o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaTestConfig++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestConfig < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleFirebaseAppdistroV1alphaRoboCrawler(o.roboCrawler!);
    checkUnnamed12(o.testDevices!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestConfig--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTestDevice = 0;
api.GoogleFirebaseAppdistroV1alphaTestDevice
buildGoogleFirebaseAppdistroV1alphaTestDevice() {
  final o = api.GoogleFirebaseAppdistroV1alphaTestDevice();
  buildCounterGoogleFirebaseAppdistroV1alphaTestDevice++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestDevice < 3) {
    o.locale = 'foo';
    o.model = 'foo';
    o.orientation = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestDevice--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTestDevice(
  api.GoogleFirebaseAppdistroV1alphaTestDevice o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaTestDevice++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestDevice < 3) {
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.orientation!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestDevice--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTestQuota = 0;
api.GoogleFirebaseAppdistroV1alphaTestQuota
buildGoogleFirebaseAppdistroV1alphaTestQuota() {
  final o = api.GoogleFirebaseAppdistroV1alphaTestQuota();
  buildCounterGoogleFirebaseAppdistroV1alphaTestQuota++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestQuota < 3) {
    o.limit = 'foo';
    o.name = 'foo';
    o.usage = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestQuota--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTestQuota(
  api.GoogleFirebaseAppdistroV1alphaTestQuota o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaTestQuota++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTestQuota < 3) {
    unittest.expect(o.limit!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.usage!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTestQuota--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid = 0;
api.GoogleFirebaseAppdistroV1alphaTesterUdid
buildGoogleFirebaseAppdistroV1alphaTesterUdid() {
  final o = api.GoogleFirebaseAppdistroV1alphaTesterUdid();
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid < 3) {
    o.name = 'foo';
    o.platform = 'foo';
    o.udid = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTesterUdid(
  api.GoogleFirebaseAppdistroV1alphaTesterUdid o,
) {
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    unittest.expect(o.udid!, unittest.equals('foo'));
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

void main() {
  unittest.group('obj-schema-AndroidxCrawlerOutputPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidxCrawlerOutputPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidxCrawlerOutputPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidxCrawlerOutputPoint(od);
    });
  });

  unittest.group('obj-schema-AndroidxCrawlerOutputRectangle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidxCrawlerOutputRectangle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidxCrawlerOutputRectangle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidxCrawlerOutputRectangle(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaAabCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaAabCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaAabCertificate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaAabCertificate(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaAiInstructions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaAiInstructions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaAiInstructions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaAiInstructions(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaAiStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaAiStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaAiStep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaAiStep(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaAiStepResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaAiStepResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaAiStepResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaAiStepResult(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaApp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaApp(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaAppCrash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaAppCrash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaAppCrash.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaAppCrash(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaAssertionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaAssertionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirebaseAppdistroV1alphaAssertionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaAssertionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaDeviceAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaDeviceAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaDeviceAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaDeviceAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaDeviceExecution',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaDeviceExecution();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirebaseAppdistroV1alphaDeviceExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaDeviceExecution(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaDeviceInteraction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaDeviceInteraction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirebaseAppdistroV1alphaDeviceInteraction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaDeviceInteraction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaDeviceInteractionWait',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaDeviceInteractionWait();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaDeviceInteractionWait.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaDeviceInteractionWait(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaGoalAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaGoalAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaGoalAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaGoalAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaGoalActionDebugInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaGoalDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaGoalDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaGoalDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaGoalDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaJwt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaJwt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaJwt.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaJwt(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaListTestCasesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaListTestCasesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaListTestCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaListTestCasesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaLoginCredential',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirebaseAppdistroV1alphaLoginCredential();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirebaseAppdistroV1alphaLoginCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaLoginCredential(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaRelease.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaRelease(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaReleaseNotes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaReleaseNotes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaReleaseNotes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaReleaseNotes(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaReleaseTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaReleaseTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaReleaseTest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaReleaseTest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaRoboCrawler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaRoboCrawler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaRoboCrawler.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaRoboCrawler(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaRoboStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaRoboStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaRoboStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaRoboStats(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaScreenshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaScreenshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaScreenshot.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaScreenshot(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTerminalAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTerminalAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTerminalAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaTerminalAction(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTestCase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTestCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTestCase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaTestCase(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTestConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTestConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTestConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaTestConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTestDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTestDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTestDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaTestDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTestQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTestQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTestQuota.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaTestQuota(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTesterUdid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTesterUdid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTesterUdid.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirebaseAppdistroV1alphaTesterUdid(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('resource-AppsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps;
      final arg_mobilesdkAppId = 'foo';
      final arg_appView = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));

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
            queryMap['appView']!.first,
            unittest.equals(arg_appView),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaApp(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_mobilesdkAppId,
        appView: arg_appView,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaApp(
        response as api.GoogleFirebaseAppdistroV1alphaApp,
      );
    });

    unittest.test('method--getJwt', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps;
      final arg_mobilesdkAppId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/jwt', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 4),
            unittest.equals('/jwt'),
          );
          pathOffset += 4;

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
            buildGoogleFirebaseAppdistroV1alphaJwt(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getJwt(
        arg_mobilesdkAppId,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaJwt(
        response as api.GoogleFirebaseAppdistroV1alphaJwt,
      );
    });
  });

  unittest.group('resource-AppsReleaseByHashResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.releaseByHash;
      final arg_mobilesdkAppId = 'foo';
      final arg_uploadHash = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/release_by_hash/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('/release_by_hash/'),
          );
          pathOffset += 17;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_uploadHash'));

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
            buildGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_mobilesdkAppId,
        arg_uploadHash,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(
        response
            as api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse,
      );
    });
  });

  unittest.group('resource-AppsReleasesResource', () {
    unittest.test('method--enableAccess', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.releases;
      final arg_request =
          buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest();
      final arg_mobilesdkAppId = 'foo';
      final arg_releaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/releases/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/releases/'),
          );
          pathOffset += 10;
          index = path.indexOf('/enable_access', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_releaseId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/enable_access'),
          );
          pathOffset += 14;

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
            buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enableAccess(
        arg_request,
        arg_mobilesdkAppId,
        arg_releaseId,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(
        response
            as api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse,
      );
    });
  });

  unittest.group('resource-AppsReleasesNotesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.releases.notes;
      final arg_request =
          buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest();
      final arg_mobilesdkAppId = 'foo';
      final arg_releaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/releases/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/releases/'),
          );
          pathOffset += 10;
          index = path.indexOf('/notes', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_releaseId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/notes'),
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
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_mobilesdkAppId,
        arg_releaseId,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(
        response
            as api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse,
      );
    });
  });

  unittest.group('resource-AppsTestersResource', () {
    unittest.test('method--getTesterUdids', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.testers;
      final arg_mobilesdkAppId = 'foo';
      final arg_project = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/testers:getTesterUdids', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/testers:getTesterUdids'),
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
            queryMap['project']!.first,
            unittest.equals(arg_project),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getTesterUdids(
        arg_mobilesdkAppId,
        project: arg_project,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(
        response as api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse,
      );
    });
  });

  unittest.group('resource-AppsUploadStatusResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.uploadStatus;
      final arg_mobilesdkAppId = 'foo';
      final arg_uploadToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/upload_status/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mobilesdkAppId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/upload_status/'),
          );
          pathOffset += 15;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_uploadToken'));

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
            buildGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_mobilesdkAppId,
        arg_uploadToken,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(
        response as api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse,
      );
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getTestQuota', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaTestQuota(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getTestQuota(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaTestQuota(
        response as api.GoogleFirebaseAppdistroV1alphaTestQuota,
      );
    });
  });

  unittest.group('resource-ProjectsAppsResource', () {
    unittest.test('method--getTestConfig', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaTestConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getTestConfig(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaTestConfig(
        response as api.GoogleFirebaseAppdistroV1alphaTestConfig,
      );
    });

    unittest.test('method--updateTestConfig', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps;
      final arg_request = buildGoogleFirebaseAppdistroV1alphaTestConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirebaseAppdistroV1alphaTestConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaTestConfig(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaTestConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateTestConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaTestConfig(
        response as api.GoogleFirebaseAppdistroV1alphaTestConfig,
      );
    });
  });

  unittest.group('resource-ProjectsAppsReleasesTestsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppDistributionApi(mock).projects.apps.releases.tests;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse(
        response as api.GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppDistributionApi(mock).projects.apps.releases.tests;
      final arg_request = buildGoogleFirebaseAppdistroV1alphaReleaseTest();
      final arg_parent = 'foo';
      final arg_releaseTestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirebaseAppdistroV1alphaReleaseTest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaReleaseTest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['releaseTestId']!.first,
            unittest.equals(arg_releaseTestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaReleaseTest(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        releaseTestId: arg_releaseTestId,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaReleaseTest(
        response as api.GoogleFirebaseAppdistroV1alphaReleaseTest,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppDistributionApi(mock).projects.apps.releases.tests;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaReleaseTest(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaReleaseTest(
        response as api.GoogleFirebaseAppdistroV1alphaReleaseTest,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppDistributionApi(mock).projects.apps.releases.tests;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaListReleaseTestsResponse(
        response as api.GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsAppsTestCasesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.testCases;
      final arg_request =
          buildGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.testCases;
      final arg_request = buildGoogleFirebaseAppdistroV1alphaTestCase();
      final arg_parent = 'foo';
      final arg_testCaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirebaseAppdistroV1alphaTestCase.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaTestCase(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['testCaseId']!.first,
            unittest.equals(arg_testCaseId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaTestCase(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        testCaseId: arg_testCaseId,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaTestCase(
        response as api.GoogleFirebaseAppdistroV1alphaTestCase,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.testCases;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.testCases;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaTestCase(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaTestCase(
        response as api.GoogleFirebaseAppdistroV1alphaTestCase,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.testCases;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaListTestCasesResponse(),
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
      checkGoogleFirebaseAppdistroV1alphaListTestCasesResponse(
        response as api.GoogleFirebaseAppdistroV1alphaListTestCasesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.testCases;
      final arg_request = buildGoogleFirebaseAppdistroV1alphaTestCase();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirebaseAppdistroV1alphaTestCase.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirebaseAppdistroV1alphaTestCase(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildGoogleFirebaseAppdistroV1alphaTestCase(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaTestCase(
        response as api.GoogleFirebaseAppdistroV1alphaTestCase,
      );
    });
  });

  unittest.group('resource-ProjectsTestersResource', () {
    unittest.test('method--getUdids', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.testers;
      final arg_project = 'foo';
      final arg_mobilesdkAppId = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['mobilesdkAppId']!.first,
            unittest.equals(arg_mobilesdkAppId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getUdids(
        arg_project,
        mobilesdkAppId: arg_mobilesdkAppId,
        $fields: arg_$fields,
      );
      checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(
        response as api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse,
      );
    });
  });
}
