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

import 'package:googleapis/checks/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
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

core.int buildCounterGoogleChecksAccountV1alphaApp = 0;
api.GoogleChecksAccountV1alphaApp buildGoogleChecksAccountV1alphaApp() {
  final o = api.GoogleChecksAccountV1alphaApp();
  buildCounterGoogleChecksAccountV1alphaApp++;
  if (buildCounterGoogleChecksAccountV1alphaApp < 3) {
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleChecksAccountV1alphaApp--;
  return o;
}

void checkGoogleChecksAccountV1alphaApp(api.GoogleChecksAccountV1alphaApp o) {
  buildCounterGoogleChecksAccountV1alphaApp++;
  if (buildCounterGoogleChecksAccountV1alphaApp < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksAccountV1alphaApp--;
}

core.List<api.GoogleChecksAccountV1alphaApp> buildUnnamed0() => [
  buildGoogleChecksAccountV1alphaApp(),
  buildGoogleChecksAccountV1alphaApp(),
];

void checkUnnamed0(core.List<api.GoogleChecksAccountV1alphaApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksAccountV1alphaApp(o[0]);
  checkGoogleChecksAccountV1alphaApp(o[1]);
}

core.int buildCounterGoogleChecksAccountV1alphaListAppsResponse = 0;
api.GoogleChecksAccountV1alphaListAppsResponse
buildGoogleChecksAccountV1alphaListAppsResponse() {
  final o = api.GoogleChecksAccountV1alphaListAppsResponse();
  buildCounterGoogleChecksAccountV1alphaListAppsResponse++;
  if (buildCounterGoogleChecksAccountV1alphaListAppsResponse < 3) {
    o.apps = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleChecksAccountV1alphaListAppsResponse--;
  return o;
}

void checkGoogleChecksAccountV1alphaListAppsResponse(
  api.GoogleChecksAccountV1alphaListAppsResponse o,
) {
  buildCounterGoogleChecksAccountV1alphaListAppsResponse++;
  if (buildCounterGoogleChecksAccountV1alphaListAppsResponse < 3) {
    checkUnnamed0(o.apps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksAccountV1alphaListAppsResponse--;
}

core.List<api.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig>
buildUnnamed1() => [
  buildGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig(),
  buildGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig(),
];

void checkUnnamed1(
  core.List<api.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig(o[0]);
  checkGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig(o[1]);
}

core.int buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest = 0;
api.GoogleChecksAisafetyV1alphaClassifyContentRequest
buildGoogleChecksAisafetyV1alphaClassifyContentRequest() {
  final o = api.GoogleChecksAisafetyV1alphaClassifyContentRequest();
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest < 3) {
    o.classifierVersion = 'foo';
    o.context = buildGoogleChecksAisafetyV1alphaClassifyContentRequestContext();
    o.input =
        buildGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent();
    o.policies = buildUnnamed1();
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaClassifyContentRequest(
  api.GoogleChecksAisafetyV1alphaClassifyContentRequest o,
) {
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest < 3) {
    unittest.expect(o.classifierVersion!, unittest.equals('foo'));
    checkGoogleChecksAisafetyV1alphaClassifyContentRequestContext(o.context!);
    checkGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent(
      o.input!,
    );
    checkUnnamed1(o.policies!);
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequest--;
}

core.int buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext =
    0;
api.GoogleChecksAisafetyV1alphaClassifyContentRequestContext
buildGoogleChecksAisafetyV1alphaClassifyContentRequestContext() {
  final o = api.GoogleChecksAisafetyV1alphaClassifyContentRequestContext();
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext <
      3) {
    o.prompt = 'foo';
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaClassifyContentRequestContext(
  api.GoogleChecksAisafetyV1alphaClassifyContentRequestContext o,
) {
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext <
      3) {
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestContext--;
}

core.int
buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent = 0;
api.GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent
buildGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent() {
  final o = api.GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent();
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent <
      3) {
    o.textInput = buildGoogleChecksAisafetyV1alphaTextInput();
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent(
  api.GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent o,
) {
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent <
      3) {
    checkGoogleChecksAisafetyV1alphaTextInput(o.textInput!);
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent--;
}

core.int
buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig = 0;
api.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig
buildGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig() {
  final o = api.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig();
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig <
      3) {
    o.policyType = 'foo';
    o.threshold = 42.0;
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig(
  api.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig o,
) {
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig <
      3) {
    unittest.expect(o.policyType!, unittest.equals('foo'));
    unittest.expect(o.threshold!, unittest.equals(42.0));
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig--;
}

core.List<api.GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult>
buildUnnamed2() => [
  buildGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult(),
  buildGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult(),
];

void checkUnnamed2(
  core.List<api.GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult(o[0]);
  checkGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult(o[1]);
}

core.int buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse = 0;
api.GoogleChecksAisafetyV1alphaClassifyContentResponse
buildGoogleChecksAisafetyV1alphaClassifyContentResponse() {
  final o = api.GoogleChecksAisafetyV1alphaClassifyContentResponse();
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse < 3) {
    o.policyResults = buildUnnamed2();
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaClassifyContentResponse(
  api.GoogleChecksAisafetyV1alphaClassifyContentResponse o,
) {
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse < 3) {
    checkUnnamed2(o.policyResults!);
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponse--;
}

core.int
buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult = 0;
api.GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult
buildGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult() {
  final o =
      api.GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult();
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult <
      3) {
    o.policyType = 'foo';
    o.score = 42.0;
    o.violationResult = 'foo';
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult(
  api.GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult o,
) {
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult++;
  if (buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult <
      3) {
    unittest.expect(o.policyType!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.violationResult!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult--;
}

core.int buildCounterGoogleChecksAisafetyV1alphaTextInput = 0;
api.GoogleChecksAisafetyV1alphaTextInput
buildGoogleChecksAisafetyV1alphaTextInput() {
  final o = api.GoogleChecksAisafetyV1alphaTextInput();
  buildCounterGoogleChecksAisafetyV1alphaTextInput++;
  if (buildCounterGoogleChecksAisafetyV1alphaTextInput < 3) {
    o.content = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleChecksAisafetyV1alphaTextInput--;
  return o;
}

void checkGoogleChecksAisafetyV1alphaTextInput(
  api.GoogleChecksAisafetyV1alphaTextInput o,
) {
  buildCounterGoogleChecksAisafetyV1alphaTextInput++;
  if (buildCounterGoogleChecksAisafetyV1alphaTextInput < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksAisafetyV1alphaTextInput--;
}

core.List<api.GoogleChecksRepoScanV1alphaCodeScan> buildUnnamed3() => [
  buildGoogleChecksRepoScanV1alphaCodeScan(),
  buildGoogleChecksRepoScanV1alphaCodeScan(),
];

void checkUnnamed3(core.List<api.GoogleChecksRepoScanV1alphaCodeScan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksRepoScanV1alphaCodeScan(o[0]);
  checkGoogleChecksRepoScanV1alphaCodeScan(o[1]);
}

core.List<api.GoogleChecksRepoScanV1alphaSource> buildUnnamed4() => [
  buildGoogleChecksRepoScanV1alphaSource(),
  buildGoogleChecksRepoScanV1alphaSource(),
];

void checkUnnamed4(core.List<api.GoogleChecksRepoScanV1alphaSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksRepoScanV1alphaSource(o[0]);
  checkGoogleChecksRepoScanV1alphaSource(o[1]);
}

core.int buildCounterGoogleChecksRepoScanV1alphaCliAnalysis = 0;
api.GoogleChecksRepoScanV1alphaCliAnalysis
buildGoogleChecksRepoScanV1alphaCliAnalysis() {
  final o = api.GoogleChecksRepoScanV1alphaCliAnalysis();
  buildCounterGoogleChecksRepoScanV1alphaCliAnalysis++;
  if (buildCounterGoogleChecksRepoScanV1alphaCliAnalysis < 3) {
    o.codeScans = buildUnnamed3();
    o.sources = buildUnnamed4();
  }
  buildCounterGoogleChecksRepoScanV1alphaCliAnalysis--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaCliAnalysis(
  api.GoogleChecksRepoScanV1alphaCliAnalysis o,
) {
  buildCounterGoogleChecksRepoScanV1alphaCliAnalysis++;
  if (buildCounterGoogleChecksRepoScanV1alphaCliAnalysis < 3) {
    checkUnnamed3(o.codeScans!);
    checkUnnamed4(o.sources!);
  }
  buildCounterGoogleChecksRepoScanV1alphaCliAnalysis--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaCodeAttribution = 0;
api.GoogleChecksRepoScanV1alphaCodeAttribution
buildGoogleChecksRepoScanV1alphaCodeAttribution() {
  final o = api.GoogleChecksRepoScanV1alphaCodeAttribution();
  buildCounterGoogleChecksRepoScanV1alphaCodeAttribution++;
  if (buildCounterGoogleChecksRepoScanV1alphaCodeAttribution < 3) {
    o.codeExcerpt = 'foo';
    o.lineNumber = 42;
    o.path = 'foo';
    o.startLineNumber = 42;
  }
  buildCounterGoogleChecksRepoScanV1alphaCodeAttribution--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaCodeAttribution(
  api.GoogleChecksRepoScanV1alphaCodeAttribution o,
) {
  buildCounterGoogleChecksRepoScanV1alphaCodeAttribution++;
  if (buildCounterGoogleChecksRepoScanV1alphaCodeAttribution < 3) {
    unittest.expect(o.codeExcerpt!, unittest.equals('foo'));
    unittest.expect(o.lineNumber!, unittest.equals(42));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.startLineNumber!, unittest.equals(42));
  }
  buildCounterGoogleChecksRepoScanV1alphaCodeAttribution--;
}

core.List<api.GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification>
buildUnnamed5() => [
  buildGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification(),
  buildGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification(),
];

void checkUnnamed5(
  core.List<api.GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification(o[0]);
  checkGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification(o[1]);
}

core.int buildCounterGoogleChecksRepoScanV1alphaCodeScan = 0;
api.GoogleChecksRepoScanV1alphaCodeScan
buildGoogleChecksRepoScanV1alphaCodeScan() {
  final o = api.GoogleChecksRepoScanV1alphaCodeScan();
  buildCounterGoogleChecksRepoScanV1alphaCodeScan++;
  if (buildCounterGoogleChecksRepoScanV1alphaCodeScan < 3) {
    o.dataTypeClassifications = buildUnnamed5();
    o.sourceCode = buildGoogleChecksRepoScanV1alphaSourceCode();
  }
  buildCounterGoogleChecksRepoScanV1alphaCodeScan--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaCodeScan(
  api.GoogleChecksRepoScanV1alphaCodeScan o,
) {
  buildCounterGoogleChecksRepoScanV1alphaCodeScan++;
  if (buildCounterGoogleChecksRepoScanV1alphaCodeScan < 3) {
    checkUnnamed5(o.dataTypeClassifications!);
    checkGoogleChecksRepoScanV1alphaSourceCode(o.sourceCode!);
  }
  buildCounterGoogleChecksRepoScanV1alphaCodeScan--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification =
    0;
api.GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification
buildGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification() {
  final o = api.GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification();
  buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification++;
  if (buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification <
      3) {
    o.dataType = 'foo';
    o.lineNumber = 42;
  }
  buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification(
  api.GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification o,
) {
  buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification++;
  if (buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification <
      3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.lineNumber!, unittest.equals(42));
  }
  buildCounterGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest = 0;
api.GoogleChecksRepoScanV1alphaGenerateScanRequest
buildGoogleChecksRepoScanV1alphaGenerateScanRequest() {
  final o = api.GoogleChecksRepoScanV1alphaGenerateScanRequest();
  buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest++;
  if (buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest < 3) {
    o.cliAnalysis = buildGoogleChecksRepoScanV1alphaCliAnalysis();
    o.cliVersion = 'foo';
    o.localScanPath = 'foo';
    o.scmMetadata = buildGoogleChecksRepoScanV1alphaScmMetadata();
  }
  buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaGenerateScanRequest(
  api.GoogleChecksRepoScanV1alphaGenerateScanRequest o,
) {
  buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest++;
  if (buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest < 3) {
    checkGoogleChecksRepoScanV1alphaCliAnalysis(o.cliAnalysis!);
    unittest.expect(o.cliVersion!, unittest.equals('foo'));
    unittest.expect(o.localScanPath!, unittest.equals('foo'));
    checkGoogleChecksRepoScanV1alphaScmMetadata(o.scmMetadata!);
  }
  buildCounterGoogleChecksRepoScanV1alphaGenerateScanRequest--;
}

core.List<api.GoogleChecksRepoScanV1alphaRepoScan> buildUnnamed6() => [
  buildGoogleChecksRepoScanV1alphaRepoScan(),
  buildGoogleChecksRepoScanV1alphaRepoScan(),
];

void checkUnnamed6(core.List<api.GoogleChecksRepoScanV1alphaRepoScan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksRepoScanV1alphaRepoScan(o[0]);
  checkGoogleChecksRepoScanV1alphaRepoScan(o[1]);
}

core.int buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse = 0;
api.GoogleChecksRepoScanV1alphaListRepoScansResponse
buildGoogleChecksRepoScanV1alphaListRepoScansResponse() {
  final o = api.GoogleChecksRepoScanV1alphaListRepoScansResponse();
  buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse++;
  if (buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse < 3) {
    o.nextPageToken = 'foo';
    o.repoScans = buildUnnamed6();
  }
  buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaListRepoScansResponse(
  api.GoogleChecksRepoScanV1alphaListRepoScansResponse o,
) {
  buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse++;
  if (buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.repoScans!);
  }
  buildCounterGoogleChecksRepoScanV1alphaListRepoScansResponse--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaPullRequest = 0;
api.GoogleChecksRepoScanV1alphaPullRequest
buildGoogleChecksRepoScanV1alphaPullRequest() {
  final o = api.GoogleChecksRepoScanV1alphaPullRequest();
  buildCounterGoogleChecksRepoScanV1alphaPullRequest++;
  if (buildCounterGoogleChecksRepoScanV1alphaPullRequest < 3) {
    o.baseBranch = 'foo';
    o.prNumber = 'foo';
  }
  buildCounterGoogleChecksRepoScanV1alphaPullRequest--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaPullRequest(
  api.GoogleChecksRepoScanV1alphaPullRequest o,
) {
  buildCounterGoogleChecksRepoScanV1alphaPullRequest++;
  if (buildCounterGoogleChecksRepoScanV1alphaPullRequest < 3) {
    unittest.expect(o.baseBranch!, unittest.equals('foo'));
    unittest.expect(o.prNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksRepoScanV1alphaPullRequest--;
}

core.List<api.GoogleChecksRepoScanV1alphaSource> buildUnnamed7() => [
  buildGoogleChecksRepoScanV1alphaSource(),
  buildGoogleChecksRepoScanV1alphaSource(),
];

void checkUnnamed7(core.List<api.GoogleChecksRepoScanV1alphaSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksRepoScanV1alphaSource(o[0]);
  checkGoogleChecksRepoScanV1alphaSource(o[1]);
}

core.int buildCounterGoogleChecksRepoScanV1alphaRepoScan = 0;
api.GoogleChecksRepoScanV1alphaRepoScan
buildGoogleChecksRepoScanV1alphaRepoScan() {
  final o = api.GoogleChecksRepoScanV1alphaRepoScan();
  buildCounterGoogleChecksRepoScanV1alphaRepoScan++;
  if (buildCounterGoogleChecksRepoScanV1alphaRepoScan < 3) {
    o.cliVersion = 'foo';
    o.localScanPath = 'foo';
    o.name = 'foo';
    o.resultsUri = 'foo';
    o.scmMetadata = buildGoogleChecksRepoScanV1alphaScmMetadata();
    o.sources = buildUnnamed7();
  }
  buildCounterGoogleChecksRepoScanV1alphaRepoScan--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaRepoScan(
  api.GoogleChecksRepoScanV1alphaRepoScan o,
) {
  buildCounterGoogleChecksRepoScanV1alphaRepoScan++;
  if (buildCounterGoogleChecksRepoScanV1alphaRepoScan < 3) {
    unittest.expect(o.cliVersion!, unittest.equals('foo'));
    unittest.expect(o.localScanPath!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resultsUri!, unittest.equals('foo'));
    checkGoogleChecksRepoScanV1alphaScmMetadata(o.scmMetadata!);
    checkUnnamed7(o.sources!);
  }
  buildCounterGoogleChecksRepoScanV1alphaRepoScan--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaScmMetadata = 0;
api.GoogleChecksRepoScanV1alphaScmMetadata
buildGoogleChecksRepoScanV1alphaScmMetadata() {
  final o = api.GoogleChecksRepoScanV1alphaScmMetadata();
  buildCounterGoogleChecksRepoScanV1alphaScmMetadata++;
  if (buildCounterGoogleChecksRepoScanV1alphaScmMetadata < 3) {
    o.branch = 'foo';
    o.pullRequest = buildGoogleChecksRepoScanV1alphaPullRequest();
    o.remoteUri = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterGoogleChecksRepoScanV1alphaScmMetadata--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaScmMetadata(
  api.GoogleChecksRepoScanV1alphaScmMetadata o,
) {
  buildCounterGoogleChecksRepoScanV1alphaScmMetadata++;
  if (buildCounterGoogleChecksRepoScanV1alphaScmMetadata < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    checkGoogleChecksRepoScanV1alphaPullRequest(o.pullRequest!);
    unittest.expect(o.remoteUri!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksRepoScanV1alphaScmMetadata--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaSource = 0;
api.GoogleChecksRepoScanV1alphaSource buildGoogleChecksRepoScanV1alphaSource() {
  final o = api.GoogleChecksRepoScanV1alphaSource();
  buildCounterGoogleChecksRepoScanV1alphaSource++;
  if (buildCounterGoogleChecksRepoScanV1alphaSource < 3) {
    o.codeAttribution = buildGoogleChecksRepoScanV1alphaCodeAttribution();
    o.dataType = 'foo';
    o.falsePositive = true;
  }
  buildCounterGoogleChecksRepoScanV1alphaSource--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaSource(
  api.GoogleChecksRepoScanV1alphaSource o,
) {
  buildCounterGoogleChecksRepoScanV1alphaSource++;
  if (buildCounterGoogleChecksRepoScanV1alphaSource < 3) {
    checkGoogleChecksRepoScanV1alphaCodeAttribution(o.codeAttribution!);
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.falsePositive!, unittest.isTrue);
  }
  buildCounterGoogleChecksRepoScanV1alphaSource--;
}

core.int buildCounterGoogleChecksRepoScanV1alphaSourceCode = 0;
api.GoogleChecksRepoScanV1alphaSourceCode
buildGoogleChecksRepoScanV1alphaSourceCode() {
  final o = api.GoogleChecksRepoScanV1alphaSourceCode();
  buildCounterGoogleChecksRepoScanV1alphaSourceCode++;
  if (buildCounterGoogleChecksRepoScanV1alphaSourceCode < 3) {
    o.code = 'foo';
    o.endLine = 42;
    o.path = 'foo';
    o.startLine = 42;
  }
  buildCounterGoogleChecksRepoScanV1alphaSourceCode--;
  return o;
}

void checkGoogleChecksRepoScanV1alphaSourceCode(
  api.GoogleChecksRepoScanV1alphaSourceCode o,
) {
  buildCounterGoogleChecksRepoScanV1alphaSourceCode++;
  if (buildCounterGoogleChecksRepoScanV1alphaSourceCode < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.endLine!, unittest.equals(42));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.startLine!, unittest.equals(42));
  }
  buildCounterGoogleChecksRepoScanV1alphaSourceCode--;
}

core.int buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest = 0;
api.GoogleChecksReportV1alphaAnalyzeUploadRequest
buildGoogleChecksReportV1alphaAnalyzeUploadRequest() {
  final o = api.GoogleChecksReportV1alphaAnalyzeUploadRequest();
  buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest++;
  if (buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest < 3) {
    o.appBinaryFileType = 'foo';
    o.codeReferenceId = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest--;
  return o;
}

void checkGoogleChecksReportV1alphaAnalyzeUploadRequest(
  api.GoogleChecksReportV1alphaAnalyzeUploadRequest o,
) {
  buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest++;
  if (buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest < 3) {
    unittest.expect(o.appBinaryFileType!, unittest.equals('foo'));
    unittest.expect(o.codeReferenceId!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaAnalyzeUploadRequest--;
}

core.int buildCounterGoogleChecksReportV1alphaAppBundle = 0;
api.GoogleChecksReportV1alphaAppBundle
buildGoogleChecksReportV1alphaAppBundle() {
  final o = api.GoogleChecksReportV1alphaAppBundle();
  buildCounterGoogleChecksReportV1alphaAppBundle++;
  if (buildCounterGoogleChecksReportV1alphaAppBundle < 3) {
    o.bundleId = 'foo';
    o.codeReferenceId = 'foo';
    o.releaseType = 'foo';
    o.version = 'foo';
    o.versionId = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaAppBundle--;
  return o;
}

void checkGoogleChecksReportV1alphaAppBundle(
  api.GoogleChecksReportV1alphaAppBundle o,
) {
  buildCounterGoogleChecksReportV1alphaAppBundle++;
  if (buildCounterGoogleChecksReportV1alphaAppBundle < 3) {
    unittest.expect(o.bundleId!, unittest.equals('foo'));
    unittest.expect(o.codeReferenceId!, unittest.equals('foo'));
    unittest.expect(o.releaseType!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.versionId!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaAppBundle--;
}

core.List<api.GoogleChecksReportV1alphaCheckCitation> buildUnnamed8() => [
  buildGoogleChecksReportV1alphaCheckCitation(),
  buildGoogleChecksReportV1alphaCheckCitation(),
];

void checkUnnamed8(core.List<api.GoogleChecksReportV1alphaCheckCitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckCitation(o[0]);
  checkGoogleChecksReportV1alphaCheckCitation(o[1]);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleChecksReportV1alphaCheck = 0;
api.GoogleChecksReportV1alphaCheck buildGoogleChecksReportV1alphaCheck() {
  final o = api.GoogleChecksReportV1alphaCheck();
  buildCounterGoogleChecksReportV1alphaCheck++;
  if (buildCounterGoogleChecksReportV1alphaCheck < 3) {
    o.citations = buildUnnamed8();
    o.evidence = buildGoogleChecksReportV1alphaCheckEvidence();
    o.regionCodes = buildUnnamed9();
    o.severity = 'foo';
    o.state = 'foo';
    o.stateMetadata = buildGoogleChecksReportV1alphaCheckStateMetadata();
    o.type = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaCheck--;
  return o;
}

void checkGoogleChecksReportV1alphaCheck(api.GoogleChecksReportV1alphaCheck o) {
  buildCounterGoogleChecksReportV1alphaCheck++;
  if (buildCounterGoogleChecksReportV1alphaCheck < 3) {
    checkUnnamed8(o.citations!);
    checkGoogleChecksReportV1alphaCheckEvidence(o.evidence!);
    checkUnnamed9(o.regionCodes!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleChecksReportV1alphaCheckStateMetadata(o.stateMetadata!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaCheck--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckCitation = 0;
api.GoogleChecksReportV1alphaCheckCitation
buildGoogleChecksReportV1alphaCheckCitation() {
  final o = api.GoogleChecksReportV1alphaCheckCitation();
  buildCounterGoogleChecksReportV1alphaCheckCitation++;
  if (buildCounterGoogleChecksReportV1alphaCheckCitation < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaCheckCitation--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckCitation(
  api.GoogleChecksReportV1alphaCheckCitation o,
) {
  buildCounterGoogleChecksReportV1alphaCheckCitation++;
  if (buildCounterGoogleChecksReportV1alphaCheckCitation < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaCheckCitation--;
}

core.List<
  api.GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
>
buildUnnamed10() => [
  buildGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo(),
  buildGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo(),
];

void checkUnnamed10(
  core.List<
    api.GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo(
    o[0],
  );
  checkGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo(
    o[1],
  );
}

core.int buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence = 0;
api.GoogleChecksReportV1alphaCheckDataSecurityEvidence
buildGoogleChecksReportV1alphaCheckDataSecurityEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckDataSecurityEvidence();
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence < 3) {
    o.dataInTransitInfo = buildUnnamed10();
  }
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckDataSecurityEvidence(
  api.GoogleChecksReportV1alphaCheckDataSecurityEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence < 3) {
    checkUnnamed10(o.dataInTransitInfo!);
  }
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidence--;
}

core.int
buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo =
    0;
api.GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
buildGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo() {
  final o =
      api.GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo();
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo++;
  if (buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo <
      3) {
    o.uri = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo(
  api.GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo o,
) {
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo++;
  if (buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo <
      3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence = 0;
api.GoogleChecksReportV1alphaCheckDataTypeEvidence
buildGoogleChecksReportV1alphaCheckDataTypeEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckDataTypeEvidence();
  buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence < 3) {
    o.dataType = 'foo';
    o.dataTypeEvidence = buildGoogleChecksReportV1alphaDataTypeEvidence();
  }
  buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckDataTypeEvidence(
  api.GoogleChecksReportV1alphaCheckDataTypeEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    checkGoogleChecksReportV1alphaDataTypeEvidence(o.dataTypeEvidence!);
  }
  buildCounterGoogleChecksReportV1alphaCheckDataTypeEvidence--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence = 0;
api.GoogleChecksReportV1alphaCheckEndpointEvidence
buildGoogleChecksReportV1alphaCheckEndpointEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckEndpointEvidence();
  buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence < 3) {
    o.endpoint = buildGoogleChecksReportV1alphaEndpoint();
  }
  buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckEndpointEvidence(
  api.GoogleChecksReportV1alphaCheckEndpointEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence < 3) {
    checkGoogleChecksReportV1alphaEndpoint(o.endpoint!);
  }
  buildCounterGoogleChecksReportV1alphaCheckEndpointEvidence--;
}

core.List<
  api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
>
buildUnnamed11() => [
  buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails(),
  buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails(),
];

void checkUnnamed11(
  core.List<
    api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails(
    o[0],
  );
  checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails(
    o[1],
  );
}

core.int
buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence =
    0;
api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence
buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence() {
  final o =
      api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence();
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence <
      3) {
    o.endpointDetails = buildUnnamed11();
  }
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence(
  api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence <
      3) {
    checkUnnamed11(o.endpointDetails!);
  }
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence--;
}

core.int
buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails =
    0;
api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails() {
  final o =
      api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails();
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails++;
  if (buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails <
      3) {
    o.endpoint = buildGoogleChecksReportV1alphaEndpoint();
  }
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails--;
  return o;
}

void
checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails(
  api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
  o,
) {
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails++;
  if (buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails <
      3) {
    checkGoogleChecksReportV1alphaEndpoint(o.endpoint!);
  }
  buildCounterGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails--;
}

core.List<api.GoogleChecksReportV1alphaCheckDataTypeEvidence>
buildUnnamed12() => [
  buildGoogleChecksReportV1alphaCheckDataTypeEvidence(),
  buildGoogleChecksReportV1alphaCheckDataTypeEvidence(),
];

void checkUnnamed12(
  core.List<api.GoogleChecksReportV1alphaCheckDataTypeEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckDataTypeEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckDataTypeEvidence(o[1]);
}

core.List<
  api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence
>
buildUnnamed13() => [
  buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence(),
  buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence(),
];

void checkUnnamed13(
  core.List<
    api.GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaCheckEndpointEvidence>
buildUnnamed14() => [
  buildGoogleChecksReportV1alphaCheckEndpointEvidence(),
  buildGoogleChecksReportV1alphaCheckEndpointEvidence(),
];

void checkUnnamed14(
  core.List<api.GoogleChecksReportV1alphaCheckEndpointEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckEndpointEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckEndpointEvidence(o[1]);
}

core.List<
  api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
>
buildUnnamed15() => [
  buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence(),
  buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence(),
];

void checkUnnamed15(
  core.List<
    api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence(
    o[0],
  );
  checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence(
    o[1],
  );
}

core.List<api.GoogleChecksReportV1alphaCheckPermissionEvidence>
buildUnnamed16() => [
  buildGoogleChecksReportV1alphaCheckPermissionEvidence(),
  buildGoogleChecksReportV1alphaCheckPermissionEvidence(),
];

void checkUnnamed16(
  core.List<api.GoogleChecksReportV1alphaCheckPermissionEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckPermissionEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckPermissionEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence>
buildUnnamed17() => [
  buildGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence(),
  buildGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence(),
];

void checkUnnamed17(
  core.List<api.GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaCheckSdkIssueEvidence>
buildUnnamed18() => [
  buildGoogleChecksReportV1alphaCheckSdkIssueEvidence(),
  buildGoogleChecksReportV1alphaCheckSdkIssueEvidence(),
];

void checkUnnamed18(
  core.List<api.GoogleChecksReportV1alphaCheckSdkIssueEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckSdkIssueEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckSdkIssueEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence>
buildUnnamed19() => [
  buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence(),
  buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence(),
];

void checkUnnamed19(
  core.List<api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaCheckSdkEvidence> buildUnnamed20() => [
  buildGoogleChecksReportV1alphaCheckSdkEvidence(),
  buildGoogleChecksReportV1alphaCheckSdkEvidence(),
];

void checkUnnamed20(
  core.List<api.GoogleChecksReportV1alphaCheckSdkEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckSdkEvidence(o[0]);
  checkGoogleChecksReportV1alphaCheckSdkEvidence(o[1]);
}

core.int buildCounterGoogleChecksReportV1alphaCheckEvidence = 0;
api.GoogleChecksReportV1alphaCheckEvidence
buildGoogleChecksReportV1alphaCheckEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckEvidence();
  buildCounterGoogleChecksReportV1alphaCheckEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckEvidence < 3) {
    o.dataSecurity = buildGoogleChecksReportV1alphaCheckDataSecurityEvidence();
    o.dataTypes = buildUnnamed12();
    o.endpointRestrictionViolations = buildUnnamed13();
    o.endpoints = buildUnnamed14();
    o.permissionRestrictionViolations = buildUnnamed15();
    o.permissions = buildUnnamed16();
    o.privacyPolicyTexts = buildUnnamed17();
    o.sdkIssues = buildUnnamed18();
    o.sdkRestrictionViolations = buildUnnamed19();
    o.sdks = buildUnnamed20();
  }
  buildCounterGoogleChecksReportV1alphaCheckEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckEvidence(
  api.GoogleChecksReportV1alphaCheckEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckEvidence < 3) {
    checkGoogleChecksReportV1alphaCheckDataSecurityEvidence(o.dataSecurity!);
    checkUnnamed12(o.dataTypes!);
    checkUnnamed13(o.endpointRestrictionViolations!);
    checkUnnamed14(o.endpoints!);
    checkUnnamed15(o.permissionRestrictionViolations!);
    checkUnnamed16(o.permissions!);
    checkUnnamed17(o.privacyPolicyTexts!);
    checkUnnamed18(o.sdkIssues!);
    checkUnnamed19(o.sdkRestrictionViolations!);
    checkUnnamed20(o.sdks!);
  }
  buildCounterGoogleChecksReportV1alphaCheckEvidence--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence = 0;
api.GoogleChecksReportV1alphaCheckPermissionEvidence
buildGoogleChecksReportV1alphaCheckPermissionEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckPermissionEvidence();
  buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence < 3) {
    o.permission = buildGoogleChecksReportV1alphaPermission();
  }
  buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckPermissionEvidence(
  api.GoogleChecksReportV1alphaCheckPermissionEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence < 3) {
    checkGoogleChecksReportV1alphaPermission(o.permission!);
  }
  buildCounterGoogleChecksReportV1alphaCheckPermissionEvidence--;
}

core.List<
  api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
>
buildUnnamed21() => [
  buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails(),
  buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails(),
];

void checkUnnamed21(
  core.List<
    api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails(
    o[0],
  );
  checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails(
    o[1],
  );
}

core.int
buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence =
    0;
api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence() {
  final o =
      api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence();
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence <
      3) {
    o.permissionDetails = buildUnnamed21();
  }
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence(
  api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence <
      3) {
    checkUnnamed21(o.permissionDetails!);
  }
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence--;
}

core.int
buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails =
    0;
api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails() {
  final o =
      api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails();
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails++;
  if (buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails <
      3) {
    o.permission = buildGoogleChecksReportV1alphaPermission();
  }
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails--;
  return o;
}

void
checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails(
  api.GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
  o,
) {
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails++;
  if (buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails <
      3) {
    checkGoogleChecksReportV1alphaPermission(o.permission!);
  }
  buildCounterGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence =
    0;
api.GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence
buildGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence();
  buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence < 3) {
    o.policyFragment = buildGoogleChecksReportV1alphaPolicyFragment();
  }
  buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence(
  api.GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence < 3) {
    checkGoogleChecksReportV1alphaPolicyFragment(o.policyFragment!);
  }
  buildCounterGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckSdkEvidence = 0;
api.GoogleChecksReportV1alphaCheckSdkEvidence
buildGoogleChecksReportV1alphaCheckSdkEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckSdkEvidence();
  buildCounterGoogleChecksReportV1alphaCheckSdkEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkEvidence < 3) {
    o.sdk = buildGoogleChecksReportV1alphaSdk();
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckSdkEvidence(
  api.GoogleChecksReportV1alphaCheckSdkEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckSdkEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkEvidence < 3) {
    checkGoogleChecksReportV1alphaSdk(o.sdk!);
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkEvidence--;
}

core.int buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence = 0;
api.GoogleChecksReportV1alphaCheckSdkIssueEvidence
buildGoogleChecksReportV1alphaCheckSdkIssueEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckSdkIssueEvidence();
  buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence < 3) {
    o.sdk = buildGoogleChecksReportV1alphaSdk();
    o.sdkVersion = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckSdkIssueEvidence(
  api.GoogleChecksReportV1alphaCheckSdkIssueEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence < 3) {
    checkGoogleChecksReportV1alphaSdk(o.sdk!);
    unittest.expect(o.sdkVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkIssueEvidence--;
}

core.List<
  api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
>
buildUnnamed22() => [
  buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails(),
  buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails(),
];

void checkUnnamed22(
  core.List<
    api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails(
    o[0],
  );
  checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails(
    o[1],
  );
}

core.int
buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence = 0;
api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence
buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence() {
  final o = api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence();
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence <
      3) {
    o.sdkDetails = buildUnnamed22();
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence(
  api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence <
      3) {
    checkUnnamed22(o.sdkDetails!);
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence--;
}

core.int
buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails =
    0;
api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails() {
  final o =
      api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails();
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails <
      3) {
    o.sdk = buildGoogleChecksReportV1alphaSdk();
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails--;
  return o;
}

void
checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails(
  api.GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails o,
) {
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails++;
  if (buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails <
      3) {
    checkGoogleChecksReportV1alphaSdk(o.sdk!);
  }
  buildCounterGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleChecksReportV1alphaCheckStateMetadata = 0;
api.GoogleChecksReportV1alphaCheckStateMetadata
buildGoogleChecksReportV1alphaCheckStateMetadata() {
  final o = api.GoogleChecksReportV1alphaCheckStateMetadata();
  buildCounterGoogleChecksReportV1alphaCheckStateMetadata++;
  if (buildCounterGoogleChecksReportV1alphaCheckStateMetadata < 3) {
    o.badges = buildUnnamed23();
    o.firstFailingTime = 'foo';
    o.lastFailingTime = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaCheckStateMetadata--;
  return o;
}

void checkGoogleChecksReportV1alphaCheckStateMetadata(
  api.GoogleChecksReportV1alphaCheckStateMetadata o,
) {
  buildCounterGoogleChecksReportV1alphaCheckStateMetadata++;
  if (buildCounterGoogleChecksReportV1alphaCheckStateMetadata < 3) {
    checkUnnamed23(o.badges!);
    unittest.expect(o.firstFailingTime!, unittest.equals('foo'));
    unittest.expect(o.lastFailingTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaCheckStateMetadata--;
}

core.List<api.GoogleChecksReportV1alphaDataMonitoringDataTypeResult>
buildUnnamed24() => [
  buildGoogleChecksReportV1alphaDataMonitoringDataTypeResult(),
  buildGoogleChecksReportV1alphaDataMonitoringDataTypeResult(),
];

void checkUnnamed24(
  core.List<api.GoogleChecksReportV1alphaDataMonitoringDataTypeResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataMonitoringDataTypeResult(o[0]);
  checkGoogleChecksReportV1alphaDataMonitoringDataTypeResult(o[1]);
}

core.List<api.GoogleChecksReportV1alphaDataMonitoringEndpointResult>
buildUnnamed25() => [
  buildGoogleChecksReportV1alphaDataMonitoringEndpointResult(),
  buildGoogleChecksReportV1alphaDataMonitoringEndpointResult(),
];

void checkUnnamed25(
  core.List<api.GoogleChecksReportV1alphaDataMonitoringEndpointResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataMonitoringEndpointResult(o[0]);
  checkGoogleChecksReportV1alphaDataMonitoringEndpointResult(o[1]);
}

core.List<api.GoogleChecksReportV1alphaDataMonitoringPermissionResult>
buildUnnamed26() => [
  buildGoogleChecksReportV1alphaDataMonitoringPermissionResult(),
  buildGoogleChecksReportV1alphaDataMonitoringPermissionResult(),
];

void checkUnnamed26(
  core.List<api.GoogleChecksReportV1alphaDataMonitoringPermissionResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataMonitoringPermissionResult(o[0]);
  checkGoogleChecksReportV1alphaDataMonitoringPermissionResult(o[1]);
}

core.List<api.GoogleChecksReportV1alphaDataMonitoringSdkResult>
buildUnnamed27() => [
  buildGoogleChecksReportV1alphaDataMonitoringSdkResult(),
  buildGoogleChecksReportV1alphaDataMonitoringSdkResult(),
];

void checkUnnamed27(
  core.List<api.GoogleChecksReportV1alphaDataMonitoringSdkResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataMonitoringSdkResult(o[0]);
  checkGoogleChecksReportV1alphaDataMonitoringSdkResult(o[1]);
}

core.int buildCounterGoogleChecksReportV1alphaDataMonitoring = 0;
api.GoogleChecksReportV1alphaDataMonitoring
buildGoogleChecksReportV1alphaDataMonitoring() {
  final o = api.GoogleChecksReportV1alphaDataMonitoring();
  buildCounterGoogleChecksReportV1alphaDataMonitoring++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoring < 3) {
    o.dataTypes = buildUnnamed24();
    o.endpoints = buildUnnamed25();
    o.permissions = buildUnnamed26();
    o.sdks = buildUnnamed27();
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoring--;
  return o;
}

void checkGoogleChecksReportV1alphaDataMonitoring(
  api.GoogleChecksReportV1alphaDataMonitoring o,
) {
  buildCounterGoogleChecksReportV1alphaDataMonitoring++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoring < 3) {
    checkUnnamed24(o.dataTypes!);
    checkUnnamed25(o.endpoints!);
    checkUnnamed26(o.permissions!);
    checkUnnamed27(o.sdks!);
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoring--;
}

core.int buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult = 0;
api.GoogleChecksReportV1alphaDataMonitoringDataTypeResult
buildGoogleChecksReportV1alphaDataMonitoringDataTypeResult() {
  final o = api.GoogleChecksReportV1alphaDataMonitoringDataTypeResult();
  buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult < 3) {
    o.dataType = 'foo';
    o.dataTypeEvidence = buildGoogleChecksReportV1alphaDataTypeEvidence();
    o.metadata = buildGoogleChecksReportV1alphaDataMonitoringResultMetadata();
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult--;
  return o;
}

void checkGoogleChecksReportV1alphaDataMonitoringDataTypeResult(
  api.GoogleChecksReportV1alphaDataMonitoringDataTypeResult o,
) {
  buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    checkGoogleChecksReportV1alphaDataTypeEvidence(o.dataTypeEvidence!);
    checkGoogleChecksReportV1alphaDataMonitoringResultMetadata(o.metadata!);
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringDataTypeResult--;
}

core.int buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult = 0;
api.GoogleChecksReportV1alphaDataMonitoringEndpointResult
buildGoogleChecksReportV1alphaDataMonitoringEndpointResult() {
  final o = api.GoogleChecksReportV1alphaDataMonitoringEndpointResult();
  buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult < 3) {
    o.endpoint = buildGoogleChecksReportV1alphaEndpoint();
    o.hitCount = 42;
    o.metadata = buildGoogleChecksReportV1alphaDataMonitoringResultMetadata();
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult--;
  return o;
}

void checkGoogleChecksReportV1alphaDataMonitoringEndpointResult(
  api.GoogleChecksReportV1alphaDataMonitoringEndpointResult o,
) {
  buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult < 3) {
    checkGoogleChecksReportV1alphaEndpoint(o.endpoint!);
    unittest.expect(o.hitCount!, unittest.equals(42));
    checkGoogleChecksReportV1alphaDataMonitoringResultMetadata(o.metadata!);
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringEndpointResult--;
}

core.int buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult =
    0;
api.GoogleChecksReportV1alphaDataMonitoringPermissionResult
buildGoogleChecksReportV1alphaDataMonitoringPermissionResult() {
  final o = api.GoogleChecksReportV1alphaDataMonitoringPermissionResult();
  buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult < 3) {
    o.metadata = buildGoogleChecksReportV1alphaDataMonitoringResultMetadata();
    o.permission = buildGoogleChecksReportV1alphaPermission();
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult--;
  return o;
}

void checkGoogleChecksReportV1alphaDataMonitoringPermissionResult(
  api.GoogleChecksReportV1alphaDataMonitoringPermissionResult o,
) {
  buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult < 3) {
    checkGoogleChecksReportV1alphaDataMonitoringResultMetadata(o.metadata!);
    checkGoogleChecksReportV1alphaPermission(o.permission!);
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringPermissionResult--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata = 0;
api.GoogleChecksReportV1alphaDataMonitoringResultMetadata
buildGoogleChecksReportV1alphaDataMonitoringResultMetadata() {
  final o = api.GoogleChecksReportV1alphaDataMonitoringResultMetadata();
  buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata < 3) {
    o.badges = buildUnnamed28();
    o.firstDetectedTime = 'foo';
    o.lastDetectedAppVersion = 'foo';
    o.lastDetectedTime = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata--;
  return o;
}

void checkGoogleChecksReportV1alphaDataMonitoringResultMetadata(
  api.GoogleChecksReportV1alphaDataMonitoringResultMetadata o,
) {
  buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata < 3) {
    checkUnnamed28(o.badges!);
    unittest.expect(o.firstDetectedTime!, unittest.equals('foo'));
    unittest.expect(o.lastDetectedAppVersion!, unittest.equals('foo'));
    unittest.expect(o.lastDetectedTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringResultMetadata--;
}

core.int buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult = 0;
api.GoogleChecksReportV1alphaDataMonitoringSdkResult
buildGoogleChecksReportV1alphaDataMonitoringSdkResult() {
  final o = api.GoogleChecksReportV1alphaDataMonitoringSdkResult();
  buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult < 3) {
    o.metadata = buildGoogleChecksReportV1alphaDataMonitoringResultMetadata();
    o.sdk = buildGoogleChecksReportV1alphaSdk();
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult--;
  return o;
}

void checkGoogleChecksReportV1alphaDataMonitoringSdkResult(
  api.GoogleChecksReportV1alphaDataMonitoringSdkResult o,
) {
  buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult++;
  if (buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult < 3) {
    checkGoogleChecksReportV1alphaDataMonitoringResultMetadata(o.metadata!);
    checkGoogleChecksReportV1alphaSdk(o.sdk!);
  }
  buildCounterGoogleChecksReportV1alphaDataMonitoringSdkResult--;
}

core.List<api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk>
buildUnnamed29() => [
  buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk(),
  buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk(),
];

void checkUnnamed29(
  core.List<api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk(o[0]);
  checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk(o[1]);
}

core.List<api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails>
buildUnnamed30() => [
  buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails(),
  buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails(),
];

void checkUnnamed30(
  core.List<
    api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails(o[0]);
  checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails(o[1]);
}

core.int buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence = 0;
api.GoogleChecksReportV1alphaDataTypeEndpointEvidence
buildGoogleChecksReportV1alphaDataTypeEndpointEvidence() {
  final o = api.GoogleChecksReportV1alphaDataTypeEndpointEvidence();
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence < 3) {
    o.attributedSdks = buildUnnamed29();
    o.endpointDetails = buildUnnamed30();
    o.exfiltratedDataType = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaDataTypeEndpointEvidence(
  api.GoogleChecksReportV1alphaDataTypeEndpointEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence < 3) {
    checkUnnamed29(o.attributedSdks!);
    checkUnnamed30(o.endpointDetails!);
    unittest.expect(o.exfiltratedDataType!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidence--;
}

core.int
buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk = 0;
api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk
buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk() {
  final o =
      api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk();
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk <
      3) {
    o.sdk = buildGoogleChecksReportV1alphaSdk();
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk--;
  return o;
}

void checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk(
  api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk o,
) {
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk <
      3) {
    checkGoogleChecksReportV1alphaSdk(o.sdk!);
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk--;
}

core.int
buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails =
    0;
api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails
buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails() {
  final o =
      api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails();
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails <
      3) {
    o.endpoint = buildGoogleChecksReportV1alphaEndpoint();
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails--;
  return o;
}

void checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails(
  api.GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails o,
) {
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails <
      3) {
    checkGoogleChecksReportV1alphaEndpoint(o.endpoint!);
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails--;
}

core.List<api.GoogleChecksReportV1alphaDataTypeEndpointEvidence>
buildUnnamed31() => [
  buildGoogleChecksReportV1alphaDataTypeEndpointEvidence(),
  buildGoogleChecksReportV1alphaDataTypeEndpointEvidence(),
];

void checkUnnamed31(
  core.List<api.GoogleChecksReportV1alphaDataTypeEndpointEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataTypeEndpointEvidence(o[0]);
  checkGoogleChecksReportV1alphaDataTypeEndpointEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaDataTypePermissionEvidence>
buildUnnamed32() => [
  buildGoogleChecksReportV1alphaDataTypePermissionEvidence(),
  buildGoogleChecksReportV1alphaDataTypePermissionEvidence(),
];

void checkUnnamed32(
  core.List<api.GoogleChecksReportV1alphaDataTypePermissionEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataTypePermissionEvidence(o[0]);
  checkGoogleChecksReportV1alphaDataTypePermissionEvidence(o[1]);
}

core.List<api.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence>
buildUnnamed33() => [
  buildGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence(),
  buildGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence(),
];

void checkUnnamed33(
  core.List<api.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence(o[0]);
  checkGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence(o[1]);
}

core.int buildCounterGoogleChecksReportV1alphaDataTypeEvidence = 0;
api.GoogleChecksReportV1alphaDataTypeEvidence
buildGoogleChecksReportV1alphaDataTypeEvidence() {
  final o = api.GoogleChecksReportV1alphaDataTypeEvidence();
  buildCounterGoogleChecksReportV1alphaDataTypeEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEvidence < 3) {
    o.endpoints = buildUnnamed31();
    o.permissions = buildUnnamed32();
    o.privacyPolicyTexts = buildUnnamed33();
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaDataTypeEvidence(
  api.GoogleChecksReportV1alphaDataTypeEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaDataTypeEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypeEvidence < 3) {
    checkUnnamed31(o.endpoints!);
    checkUnnamed32(o.permissions!);
    checkUnnamed33(o.privacyPolicyTexts!);
  }
  buildCounterGoogleChecksReportV1alphaDataTypeEvidence--;
}

core.int buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence = 0;
api.GoogleChecksReportV1alphaDataTypePermissionEvidence
buildGoogleChecksReportV1alphaDataTypePermissionEvidence() {
  final o = api.GoogleChecksReportV1alphaDataTypePermissionEvidence();
  buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence < 3) {
    o.permission = buildGoogleChecksReportV1alphaPermission();
  }
  buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaDataTypePermissionEvidence(
  api.GoogleChecksReportV1alphaDataTypePermissionEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence < 3) {
    checkGoogleChecksReportV1alphaPermission(o.permission!);
  }
  buildCounterGoogleChecksReportV1alphaDataTypePermissionEvidence--;
}

core.int
buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence = 0;
api.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence
buildGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence() {
  final o = api.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence();
  buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence <
      3) {
    o.policyFragment = buildGoogleChecksReportV1alphaPolicyFragment();
  }
  buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence--;
  return o;
}

void checkGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence(
  api.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence o,
) {
  buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence++;
  if (buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence <
      3) {
    checkGoogleChecksReportV1alphaPolicyFragment(o.policyFragment!);
  }
  buildCounterGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence--;
}

core.int buildCounterGoogleChecksReportV1alphaEndpoint = 0;
api.GoogleChecksReportV1alphaEndpoint buildGoogleChecksReportV1alphaEndpoint() {
  final o = api.GoogleChecksReportV1alphaEndpoint();
  buildCounterGoogleChecksReportV1alphaEndpoint++;
  if (buildCounterGoogleChecksReportV1alphaEndpoint < 3) {
    o.domain = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaEndpoint--;
  return o;
}

void checkGoogleChecksReportV1alphaEndpoint(
  api.GoogleChecksReportV1alphaEndpoint o,
) {
  buildCounterGoogleChecksReportV1alphaEndpoint++;
  if (buildCounterGoogleChecksReportV1alphaEndpoint < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaEndpoint--;
}

core.List<api.GoogleChecksReportV1alphaReport> buildUnnamed34() => [
  buildGoogleChecksReportV1alphaReport(),
  buildGoogleChecksReportV1alphaReport(),
];

void checkUnnamed34(core.List<api.GoogleChecksReportV1alphaReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaReport(o[0]);
  checkGoogleChecksReportV1alphaReport(o[1]);
}

core.int buildCounterGoogleChecksReportV1alphaListReportsResponse = 0;
api.GoogleChecksReportV1alphaListReportsResponse
buildGoogleChecksReportV1alphaListReportsResponse() {
  final o = api.GoogleChecksReportV1alphaListReportsResponse();
  buildCounterGoogleChecksReportV1alphaListReportsResponse++;
  if (buildCounterGoogleChecksReportV1alphaListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed34();
  }
  buildCounterGoogleChecksReportV1alphaListReportsResponse--;
  return o;
}

void checkGoogleChecksReportV1alphaListReportsResponse(
  api.GoogleChecksReportV1alphaListReportsResponse o,
) {
  buildCounterGoogleChecksReportV1alphaListReportsResponse++;
  if (buildCounterGoogleChecksReportV1alphaListReportsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed34(o.reports!);
  }
  buildCounterGoogleChecksReportV1alphaListReportsResponse--;
}

core.int buildCounterGoogleChecksReportV1alphaPermission = 0;
api.GoogleChecksReportV1alphaPermission
buildGoogleChecksReportV1alphaPermission() {
  final o = api.GoogleChecksReportV1alphaPermission();
  buildCounterGoogleChecksReportV1alphaPermission++;
  if (buildCounterGoogleChecksReportV1alphaPermission < 3) {
    o.id = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaPermission--;
  return o;
}

void checkGoogleChecksReportV1alphaPermission(
  api.GoogleChecksReportV1alphaPermission o,
) {
  buildCounterGoogleChecksReportV1alphaPermission++;
  if (buildCounterGoogleChecksReportV1alphaPermission < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaPermission--;
}

core.int buildCounterGoogleChecksReportV1alphaPolicyFragment = 0;
api.GoogleChecksReportV1alphaPolicyFragment
buildGoogleChecksReportV1alphaPolicyFragment() {
  final o = api.GoogleChecksReportV1alphaPolicyFragment();
  buildCounterGoogleChecksReportV1alphaPolicyFragment++;
  if (buildCounterGoogleChecksReportV1alphaPolicyFragment < 3) {
    o.htmlContent = 'foo';
    o.sourceUri = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaPolicyFragment--;
  return o;
}

void checkGoogleChecksReportV1alphaPolicyFragment(
  api.GoogleChecksReportV1alphaPolicyFragment o,
) {
  buildCounterGoogleChecksReportV1alphaPolicyFragment++;
  if (buildCounterGoogleChecksReportV1alphaPolicyFragment < 3) {
    unittest.expect(o.htmlContent!, unittest.equals('foo'));
    unittest.expect(o.sourceUri!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaPolicyFragment--;
}

core.List<api.GoogleChecksReportV1alphaCheck> buildUnnamed35() => [
  buildGoogleChecksReportV1alphaCheck(),
  buildGoogleChecksReportV1alphaCheck(),
];

void checkUnnamed35(core.List<api.GoogleChecksReportV1alphaCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChecksReportV1alphaCheck(o[0]);
  checkGoogleChecksReportV1alphaCheck(o[1]);
}

core.int buildCounterGoogleChecksReportV1alphaReport = 0;
api.GoogleChecksReportV1alphaReport buildGoogleChecksReportV1alphaReport() {
  final o = api.GoogleChecksReportV1alphaReport();
  buildCounterGoogleChecksReportV1alphaReport++;
  if (buildCounterGoogleChecksReportV1alphaReport < 3) {
    o.appBundle = buildGoogleChecksReportV1alphaAppBundle();
    o.checks = buildUnnamed35();
    o.dataMonitoring = buildGoogleChecksReportV1alphaDataMonitoring();
    o.name = 'foo';
    o.resultsUri = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaReport--;
  return o;
}

void checkGoogleChecksReportV1alphaReport(
  api.GoogleChecksReportV1alphaReport o,
) {
  buildCounterGoogleChecksReportV1alphaReport++;
  if (buildCounterGoogleChecksReportV1alphaReport < 3) {
    checkGoogleChecksReportV1alphaAppBundle(o.appBundle!);
    checkUnnamed35(o.checks!);
    checkGoogleChecksReportV1alphaDataMonitoring(o.dataMonitoring!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resultsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaReport--;
}

core.int buildCounterGoogleChecksReportV1alphaSdk = 0;
api.GoogleChecksReportV1alphaSdk buildGoogleChecksReportV1alphaSdk() {
  final o = api.GoogleChecksReportV1alphaSdk();
  buildCounterGoogleChecksReportV1alphaSdk++;
  if (buildCounterGoogleChecksReportV1alphaSdk < 3) {
    o.id = 'foo';
  }
  buildCounterGoogleChecksReportV1alphaSdk--;
  return o;
}

void checkGoogleChecksReportV1alphaSdk(api.GoogleChecksReportV1alphaSdk o) {
  buildCounterGoogleChecksReportV1alphaSdk++;
  if (buildCounterGoogleChecksReportV1alphaSdk < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleChecksReportV1alphaSdk--;
}

core.List<api.Operation> buildUnnamed36() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed36(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed36();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed36(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed37() => {
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

void checkUnnamed37(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed37();
    o.name = 'foo';
    o.response = buildUnnamed38();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed37(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed38(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed40() => [
  buildUnnamed39(),
  buildUnnamed39(),
];

void checkUnnamed40(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed39(o[0]);
  checkUnnamed39(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed40();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed40(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterWaitOperationRequest = 0;
api.WaitOperationRequest buildWaitOperationRequest() {
  final o = api.WaitOperationRequest();
  buildCounterWaitOperationRequest++;
  if (buildCounterWaitOperationRequest < 3) {
    o.timeout = 'foo';
  }
  buildCounterWaitOperationRequest--;
  return o;
}

void checkWaitOperationRequest(api.WaitOperationRequest o) {
  buildCounterWaitOperationRequest++;
  if (buildCounterWaitOperationRequest < 3) {
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterWaitOperationRequest--;
}

void main() {
  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
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

  unittest.group('obj-schema-GoogleChecksAccountV1alphaApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksAccountV1alphaApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksAccountV1alphaApp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksAccountV1alphaApp(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksAccountV1alphaListAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksAccountV1alphaListAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksAccountV1alphaListAppsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksAccountV1alphaListAppsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksAisafetyV1alphaClassifyContentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksAisafetyV1alphaClassifyContentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksAisafetyV1alphaClassifyContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksAisafetyV1alphaClassifyContentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksAisafetyV1alphaClassifyContentRequestContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksAisafetyV1alphaClassifyContentRequestContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksAisafetyV1alphaClassifyContentRequestContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksAisafetyV1alphaClassifyContentRequestContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksAisafetyV1alphaClassifyContentRequestInputContent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksAisafetyV1alphaClassifyContentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksAisafetyV1alphaClassifyContentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksAisafetyV1alphaClassifyContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksAisafetyV1alphaClassifyContentResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksAisafetyV1alphaTextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksAisafetyV1alphaTextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksAisafetyV1alphaTextInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksAisafetyV1alphaTextInput(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaCliAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaCliAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaCliAnalysis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaCliAnalysis(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaCodeAttribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaCodeAttribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaCodeAttribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaCodeAttribution(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaCodeScan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaCodeScan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaCodeScan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaCodeScan(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksRepoScanV1alphaCodeScanDataTypeClassification(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksRepoScanV1alphaGenerateScanRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksRepoScanV1alphaGenerateScanRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChecksRepoScanV1alphaGenerateScanRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksRepoScanV1alphaGenerateScanRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksRepoScanV1alphaListRepoScansResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksRepoScanV1alphaListRepoScansResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksRepoScanV1alphaListRepoScansResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksRepoScanV1alphaListRepoScansResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaPullRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaPullRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaPullRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaPullRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaRepoScan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaRepoScan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaRepoScan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaRepoScan(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaScmMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaScmMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaScmMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaScmMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaSource(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksRepoScanV1alphaSourceCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksRepoScanV1alphaSourceCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksRepoScanV1alphaSourceCode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksRepoScanV1alphaSourceCode(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaAnalyzeUploadRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaAnalyzeUploadRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChecksReportV1alphaAnalyzeUploadRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaAnalyzeUploadRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksReportV1alphaAppBundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaAppBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaAppBundle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaAppBundle(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaCheck(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaCheckCitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaCheckCitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaCheckCitation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaCheckCitation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckDataSecurityEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaCheckDataSecurityEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckDataSecurityEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckDataSecurityEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckDataTypeEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaCheckDataTypeEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChecksReportV1alphaCheckDataTypeEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckDataTypeEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckEndpointEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaCheckEndpointEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChecksReportV1alphaCheckEndpointEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckEndpointEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksReportV1alphaCheckEvidence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaCheckEvidence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaCheckEvidence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaCheckEvidence(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckPermissionEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaCheckPermissionEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckPermissionEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckPermissionEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksReportV1alphaCheckSdkEvidence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaCheckSdkEvidence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaCheckSdkEvidence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaCheckSdkEvidence(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckSdkIssueEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaCheckSdkIssueEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChecksReportV1alphaCheckSdkIssueEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckSdkIssueEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksReportV1alphaCheckStateMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaCheckStateMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaCheckStateMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaCheckStateMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaDataMonitoring', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaDataMonitoring();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaDataMonitoring.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaDataMonitoring(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataMonitoringDataTypeResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaDataMonitoringDataTypeResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataMonitoringDataTypeResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataMonitoringDataTypeResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataMonitoringEndpointResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaDataMonitoringEndpointResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataMonitoringEndpointResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataMonitoringEndpointResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataMonitoringPermissionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaDataMonitoringPermissionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataMonitoringPermissionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataMonitoringPermissionResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataMonitoringResultMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaDataMonitoringResultMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataMonitoringResultMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataMonitoringResultMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataMonitoringSdkResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaDataMonitoringSdkResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataMonitoringSdkResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataMonitoringSdkResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataTypeEndpointEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaDataTypeEndpointEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataTypeEndpointEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataTypeEndpointEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksReportV1alphaDataTypeEvidence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaDataTypeEvidence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaDataTypeEvidence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaDataTypeEvidence(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataTypePermissionEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChecksReportV1alphaDataTypePermissionEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataTypePermissionEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataTypePermissionEvidence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChecksReportV1alphaEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaEndpoint(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaListReportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaListReportsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaPolicyFragment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaPolicyFragment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaPolicyFragment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaPolicyFragment(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChecksReportV1alphaSdk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChecksReportV1alphaSdk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChecksReportV1alphaSdk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChecksReportV1alphaSdk(od);
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

  unittest.group('obj-schema-WaitOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaitOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaitOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWaitOperationRequest(od);
    });
  });

  unittest.group('resource-AccountsAppsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps;
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
            buildGoogleChecksAccountV1alphaApp(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChecksAccountV1alphaApp(
        response as api.GoogleChecksAccountV1alphaApp,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps;
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
            buildGoogleChecksAccountV1alphaListAppsResponse(),
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
      checkGoogleChecksAccountV1alphaListAppsResponse(
        response as api.GoogleChecksAccountV1alphaListAppsResponse,
      );
    });
  });

  unittest.group('resource-AccountsAppsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps.operations;
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
      final res = api.ChecksServiceApi(mock).accounts.apps.operations;
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
      final res = api.ChecksServiceApi(mock).accounts.apps.operations;
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

    unittest.test('method--wait', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps.operations;
      final arg_request = buildWaitOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WaitOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWaitOperationRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.wait(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-AccountsAppsReportsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps.reports;
      final arg_name = 'foo';
      final arg_checksFilter = 'foo';
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
            queryMap['checksFilter']!.first,
            unittest.equals(arg_checksFilter),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChecksReportV1alphaReport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        checksFilter: arg_checksFilter,
        $fields: arg_$fields,
      );
      checkGoogleChecksReportV1alphaReport(
        response as api.GoogleChecksReportV1alphaReport,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.apps.reports;
      final arg_parent = 'foo';
      final arg_checksFilter = 'foo';
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
            queryMap['checksFilter']!.first,
            unittest.equals(arg_checksFilter),
          );
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
          final resp = convert.json.encode(
            buildGoogleChecksReportV1alphaListReportsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        checksFilter: arg_checksFilter,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChecksReportV1alphaListReportsResponse(
        response as api.GoogleChecksReportV1alphaListReportsResponse,
      );
    });
  });

  unittest.group('resource-AccountsReposOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.repos.operations;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-AccountsReposScansResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.repos.scans;
      final arg_request = buildGoogleChecksRepoScanV1alphaGenerateScanRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleChecksRepoScanV1alphaGenerateScanRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleChecksRepoScanV1alphaGenerateScanRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.repos.scans;
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
            buildGoogleChecksRepoScanV1alphaRepoScan(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChecksRepoScanV1alphaRepoScan(
        response as api.GoogleChecksRepoScanV1alphaRepoScan,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).accounts.repos.scans;
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
          final resp = convert.json.encode(
            buildGoogleChecksRepoScanV1alphaListRepoScansResponse(),
          );
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
      checkGoogleChecksRepoScanV1alphaListRepoScansResponse(
        response as api.GoogleChecksRepoScanV1alphaListRepoScansResponse,
      );
    });
  });

  unittest.group('resource-AisafetyResource', () {
    unittest.test('method--classifyContent', () async {
      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).aisafety;
      final arg_request =
          buildGoogleChecksAisafetyV1alphaClassifyContentRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleChecksAisafetyV1alphaClassifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleChecksAisafetyV1alphaClassifyContentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('v1alpha/aisafety:classifyContent'),
          );
          pathOffset += 32;

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
            buildGoogleChecksAisafetyV1alphaClassifyContentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.classifyContent(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleChecksAisafetyV1alphaClassifyContentResponse(
        response as api.GoogleChecksAisafetyV1alphaClassifyContentResponse,
      );
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ChecksServiceApi(mock).media;
      final arg_request = buildGoogleChecksReportV1alphaAnalyzeUploadRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleChecksReportV1alphaAnalyzeUploadRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleChecksReportV1alphaAnalyzeUploadRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });
}
