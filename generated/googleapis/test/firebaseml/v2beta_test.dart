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

import 'package:googleapis/firebaseml/v2beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ApiAuth = 0;
api.GoogleCloudAiplatformV1beta1ApiAuth
buildGoogleCloudAiplatformV1beta1ApiAuth() {
  final o = api.GoogleCloudAiplatformV1beta1ApiAuth();
  buildCounterGoogleCloudAiplatformV1beta1ApiAuth++;
  if (buildCounterGoogleCloudAiplatformV1beta1ApiAuth < 3) {
    o.apiKeyConfig = buildGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1ApiAuth--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ApiAuth(
  api.GoogleCloudAiplatformV1beta1ApiAuth o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ApiAuth++;
  if (buildCounterGoogleCloudAiplatformV1beta1ApiAuth < 3) {
    checkGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig(o.apiKeyConfig!);
  }
  buildCounterGoogleCloudAiplatformV1beta1ApiAuth--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig = 0;
api.GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig
buildGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig() {
  final o = api.GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig();
  buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig < 3) {
    o.apiKeySecretVersion = 'foo';
    o.apiKeyString = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig(
  api.GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig < 3) {
    unittest.expect(o.apiKeySecretVersion!, unittest.equals('foo'));
    unittest.expect(o.apiKeyString!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1AuthConfig = 0;
api.GoogleCloudAiplatformV1beta1AuthConfig
buildGoogleCloudAiplatformV1beta1AuthConfig() {
  final o = api.GoogleCloudAiplatformV1beta1AuthConfig();
  buildCounterGoogleCloudAiplatformV1beta1AuthConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfig < 3) {
    o.apiKeyConfig = buildGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig();
    o.authType = 'foo';
    o.googleServiceAccountConfig =
        buildGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig();
    o.httpBasicAuthConfig =
        buildGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig();
    o.oauthConfig = buildGoogleCloudAiplatformV1beta1AuthConfigOauthConfig();
    o.oidcConfig = buildGoogleCloudAiplatformV1beta1AuthConfigOidcConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1AuthConfig(
  api.GoogleCloudAiplatformV1beta1AuthConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1AuthConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfig < 3) {
    checkGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig(o.apiKeyConfig!);
    unittest.expect(o.authType!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig(
      o.googleServiceAccountConfig!,
    );
    checkGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig(
      o.httpBasicAuthConfig!,
    );
    checkGoogleCloudAiplatformV1beta1AuthConfigOauthConfig(o.oauthConfig!);
    checkGoogleCloudAiplatformV1beta1AuthConfigOidcConfig(o.oidcConfig!);
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig = 0;
api.GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig
buildGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig() {
  final o = api.GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig();
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig < 3) {
    o.apiKeySecret = 'foo';
    o.apiKeyString = 'foo';
    o.httpElementLocation = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig(
  api.GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig < 3) {
    unittest.expect(o.apiKeySecret!, unittest.equals('foo'));
    unittest.expect(o.apiKeyString!, unittest.equals('foo'));
    unittest.expect(o.httpElementLocation!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig =
    0;
api.GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig
buildGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig() {
  final o =
      api.GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig();
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig <
      3) {
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig(
  api.GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig <
      3) {
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig =
    0;
api.GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig
buildGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig() {
  final o = api.GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig();
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig <
      3) {
    o.credentialSecret = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig(
  api.GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig <
      3) {
    unittest.expect(o.credentialSecret!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig = 0;
api.GoogleCloudAiplatformV1beta1AuthConfigOauthConfig
buildGoogleCloudAiplatformV1beta1AuthConfigOauthConfig() {
  final o = api.GoogleCloudAiplatformV1beta1AuthConfigOauthConfig();
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig < 3) {
    o.accessToken = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1AuthConfigOauthConfig(
  api.GoogleCloudAiplatformV1beta1AuthConfigOauthConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig < 3) {
    unittest.expect(o.accessToken!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOauthConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig = 0;
api.GoogleCloudAiplatformV1beta1AuthConfigOidcConfig
buildGoogleCloudAiplatformV1beta1AuthConfigOidcConfig() {
  final o = api.GoogleCloudAiplatformV1beta1AuthConfigOidcConfig();
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig < 3) {
    o.idToken = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1AuthConfigOidcConfig(
  api.GoogleCloudAiplatformV1beta1AuthConfigOidcConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1AuthConfigOidcConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1Blob = 0;
api.GoogleCloudAiplatformV1beta1Blob buildGoogleCloudAiplatformV1beta1Blob() {
  final o = api.GoogleCloudAiplatformV1beta1Blob();
  buildCounterGoogleCloudAiplatformV1beta1Blob++;
  if (buildCounterGoogleCloudAiplatformV1beta1Blob < 3) {
    o.data = 'foo';
    o.displayName = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1Blob--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Blob(
  api.GoogleCloudAiplatformV1beta1Blob o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Blob++;
  if (buildCounterGoogleCloudAiplatformV1beta1Blob < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1Blob--;
}

core.List<api.GoogleCloudAiplatformV1beta1SafetyRating> buildUnnamed0() => [
  buildGoogleCloudAiplatformV1beta1SafetyRating(),
  buildGoogleCloudAiplatformV1beta1SafetyRating(),
];

void checkUnnamed0(core.List<api.GoogleCloudAiplatformV1beta1SafetyRating> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1SafetyRating(o[0]);
  checkGoogleCloudAiplatformV1beta1SafetyRating(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1Candidate = 0;
api.GoogleCloudAiplatformV1beta1Candidate
buildGoogleCloudAiplatformV1beta1Candidate() {
  final o = api.GoogleCloudAiplatformV1beta1Candidate();
  buildCounterGoogleCloudAiplatformV1beta1Candidate++;
  if (buildCounterGoogleCloudAiplatformV1beta1Candidate < 3) {
    o.avgLogprobs = 42.0;
    o.citationMetadata = buildGoogleCloudAiplatformV1beta1CitationMetadata();
    o.content = buildGoogleCloudAiplatformV1beta1Content();
    o.finishMessage = 'foo';
    o.finishReason = 'foo';
    o.groundingMetadata = buildGoogleCloudAiplatformV1beta1GroundingMetadata();
    o.index = 42;
    o.logprobsResult = buildGoogleCloudAiplatformV1beta1LogprobsResult();
    o.safetyRatings = buildUnnamed0();
    o.urlContextMetadata =
        buildGoogleCloudAiplatformV1beta1UrlContextMetadata();
  }
  buildCounterGoogleCloudAiplatformV1beta1Candidate--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Candidate(
  api.GoogleCloudAiplatformV1beta1Candidate o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Candidate++;
  if (buildCounterGoogleCloudAiplatformV1beta1Candidate < 3) {
    unittest.expect(o.avgLogprobs!, unittest.equals(42.0));
    checkGoogleCloudAiplatformV1beta1CitationMetadata(o.citationMetadata!);
    checkGoogleCloudAiplatformV1beta1Content(o.content!);
    unittest.expect(o.finishMessage!, unittest.equals('foo'));
    unittest.expect(o.finishReason!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1GroundingMetadata(o.groundingMetadata!);
    unittest.expect(o.index!, unittest.equals(42));
    checkGoogleCloudAiplatformV1beta1LogprobsResult(o.logprobsResult!);
    checkUnnamed0(o.safetyRatings!);
    checkGoogleCloudAiplatformV1beta1UrlContextMetadata(o.urlContextMetadata!);
  }
  buildCounterGoogleCloudAiplatformV1beta1Candidate--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1Citation = 0;
api.GoogleCloudAiplatformV1beta1Citation
buildGoogleCloudAiplatformV1beta1Citation() {
  final o = api.GoogleCloudAiplatformV1beta1Citation();
  buildCounterGoogleCloudAiplatformV1beta1Citation++;
  if (buildCounterGoogleCloudAiplatformV1beta1Citation < 3) {
    o.endIndex = 42;
    o.license = 'foo';
    o.publicationDate = buildDate();
    o.startIndex = 42;
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1Citation--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Citation(
  api.GoogleCloudAiplatformV1beta1Citation o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Citation++;
  if (buildCounterGoogleCloudAiplatformV1beta1Citation < 3) {
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.license!, unittest.equals('foo'));
    checkDate(o.publicationDate!);
    unittest.expect(o.startIndex!, unittest.equals(42));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1Citation--;
}

core.List<api.GoogleCloudAiplatformV1beta1Citation> buildUnnamed1() => [
  buildGoogleCloudAiplatformV1beta1Citation(),
  buildGoogleCloudAiplatformV1beta1Citation(),
];

void checkUnnamed1(core.List<api.GoogleCloudAiplatformV1beta1Citation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Citation(o[0]);
  checkGoogleCloudAiplatformV1beta1Citation(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1CitationMetadata = 0;
api.GoogleCloudAiplatformV1beta1CitationMetadata
buildGoogleCloudAiplatformV1beta1CitationMetadata() {
  final o = api.GoogleCloudAiplatformV1beta1CitationMetadata();
  buildCounterGoogleCloudAiplatformV1beta1CitationMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1CitationMetadata < 3) {
    o.citations = buildUnnamed1();
  }
  buildCounterGoogleCloudAiplatformV1beta1CitationMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1CitationMetadata(
  api.GoogleCloudAiplatformV1beta1CitationMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1CitationMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1CitationMetadata < 3) {
    checkUnnamed1(o.citations!);
  }
  buildCounterGoogleCloudAiplatformV1beta1CitationMetadata--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult = 0;
api.GoogleCloudAiplatformV1beta1CodeExecutionResult
buildGoogleCloudAiplatformV1beta1CodeExecutionResult() {
  final o = api.GoogleCloudAiplatformV1beta1CodeExecutionResult();
  buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult++;
  if (buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult < 3) {
    o.outcome = 'foo';
    o.output = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1CodeExecutionResult(
  api.GoogleCloudAiplatformV1beta1CodeExecutionResult o,
) {
  buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult++;
  if (buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult < 3) {
    unittest.expect(o.outcome!, unittest.equals('foo'));
    unittest.expect(o.output!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1CodeExecutionResult--;
}

core.List<api.GoogleCloudAiplatformV1beta1Part> buildUnnamed2() => [
  buildGoogleCloudAiplatformV1beta1Part(),
  buildGoogleCloudAiplatformV1beta1Part(),
];

void checkUnnamed2(core.List<api.GoogleCloudAiplatformV1beta1Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Part(o[0]);
  checkGoogleCloudAiplatformV1beta1Part(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1Content = 0;
api.GoogleCloudAiplatformV1beta1Content
buildGoogleCloudAiplatformV1beta1Content() {
  final o = api.GoogleCloudAiplatformV1beta1Content();
  buildCounterGoogleCloudAiplatformV1beta1Content++;
  if (buildCounterGoogleCloudAiplatformV1beta1Content < 3) {
    o.parts = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1Content--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Content(
  api.GoogleCloudAiplatformV1beta1Content o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Content++;
  if (buildCounterGoogleCloudAiplatformV1beta1Content < 3) {
    checkUnnamed2(o.parts!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1Content--;
}

core.List<api.GoogleCloudAiplatformV1beta1Content> buildUnnamed3() => [
  buildGoogleCloudAiplatformV1beta1Content(),
  buildGoogleCloudAiplatformV1beta1Content(),
];

void checkUnnamed3(core.List<api.GoogleCloudAiplatformV1beta1Content> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Content(o[0]);
  checkGoogleCloudAiplatformV1beta1Content(o[1]);
}

core.List<core.Object?> buildUnnamed4() => [
  {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
];

void checkUnnamed4(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudAiplatformV1beta1Tool> buildUnnamed5() => [
  buildGoogleCloudAiplatformV1beta1Tool(),
  buildGoogleCloudAiplatformV1beta1Tool(),
];

void checkUnnamed5(core.List<api.GoogleCloudAiplatformV1beta1Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Tool(o[0]);
  checkGoogleCloudAiplatformV1beta1Tool(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest = 0;
api.GoogleCloudAiplatformV1beta1CountTokensRequest
buildGoogleCloudAiplatformV1beta1CountTokensRequest() {
  final o = api.GoogleCloudAiplatformV1beta1CountTokensRequest();
  buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest++;
  if (buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest < 3) {
    o.contents = buildUnnamed3();
    o.generationConfig = buildGoogleCloudAiplatformV1beta1GenerationConfig();
    o.instances = buildUnnamed4();
    o.model = 'foo';
    o.systemInstruction = buildGoogleCloudAiplatformV1beta1Content();
    o.tools = buildUnnamed5();
  }
  buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1CountTokensRequest(
  api.GoogleCloudAiplatformV1beta1CountTokensRequest o,
) {
  buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest++;
  if (buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest < 3) {
    checkUnnamed3(o.contents!);
    checkGoogleCloudAiplatformV1beta1GenerationConfig(o.generationConfig!);
    checkUnnamed4(o.instances!);
    unittest.expect(o.model!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1Content(o.systemInstruction!);
    checkUnnamed5(o.tools!);
  }
  buildCounterGoogleCloudAiplatformV1beta1CountTokensRequest--;
}

core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount> buildUnnamed6() =>
    [
      buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
      buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
    ];

void checkUnnamed6(
  core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[0]);
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse = 0;
api.GoogleCloudAiplatformV1beta1CountTokensResponse
buildGoogleCloudAiplatformV1beta1CountTokensResponse() {
  final o = api.GoogleCloudAiplatformV1beta1CountTokensResponse();
  buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse++;
  if (buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse < 3) {
    o.promptTokensDetails = buildUnnamed6();
    o.totalBillableCharacters = 42;
    o.totalTokens = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1CountTokensResponse(
  api.GoogleCloudAiplatformV1beta1CountTokensResponse o,
) {
  buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse++;
  if (buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse < 3) {
    checkUnnamed6(o.promptTokensDetails!);
    unittest.expect(o.totalBillableCharacters!, unittest.equals(42));
    unittest.expect(o.totalTokens!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1CountTokensResponse--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig = 0;
api.GoogleCloudAiplatformV1beta1DynamicRetrievalConfig
buildGoogleCloudAiplatformV1beta1DynamicRetrievalConfig() {
  final o = api.GoogleCloudAiplatformV1beta1DynamicRetrievalConfig();
  buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig < 3) {
    o.dynamicThreshold = 42.0;
    o.mode = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1DynamicRetrievalConfig(
  api.GoogleCloudAiplatformV1beta1DynamicRetrievalConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig < 3) {
    unittest.expect(o.dynamicThreshold!, unittest.equals(42.0));
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1DynamicRetrievalConfig--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch = 0;
api.GoogleCloudAiplatformV1beta1EnterpriseWebSearch
buildGoogleCloudAiplatformV1beta1EnterpriseWebSearch() {
  final o = api.GoogleCloudAiplatformV1beta1EnterpriseWebSearch();
  buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch < 3) {
    o.excludeDomains = buildUnnamed7();
  }
  buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1EnterpriseWebSearch(
  api.GoogleCloudAiplatformV1beta1EnterpriseWebSearch o,
) {
  buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch < 3) {
    checkUnnamed7(o.excludeDomains!);
  }
  buildCounterGoogleCloudAiplatformV1beta1EnterpriseWebSearch--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ExecutableCode = 0;
api.GoogleCloudAiplatformV1beta1ExecutableCode
buildGoogleCloudAiplatformV1beta1ExecutableCode() {
  final o = api.GoogleCloudAiplatformV1beta1ExecutableCode();
  buildCounterGoogleCloudAiplatformV1beta1ExecutableCode++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExecutableCode < 3) {
    o.code = 'foo';
    o.language = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1ExecutableCode--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ExecutableCode(
  api.GoogleCloudAiplatformV1beta1ExecutableCode o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ExecutableCode++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExecutableCode < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.language!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1ExecutableCode--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ExternalApi = 0;
api.GoogleCloudAiplatformV1beta1ExternalApi
buildGoogleCloudAiplatformV1beta1ExternalApi() {
  final o = api.GoogleCloudAiplatformV1beta1ExternalApi();
  buildCounterGoogleCloudAiplatformV1beta1ExternalApi++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExternalApi < 3) {
    o.apiAuth = buildGoogleCloudAiplatformV1beta1ApiAuth();
    o.apiSpec = 'foo';
    o.authConfig = buildGoogleCloudAiplatformV1beta1AuthConfig();
    o.elasticSearchParams =
        buildGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams();
    o.endpoint = 'foo';
    o.simpleSearchParams =
        buildGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams();
  }
  buildCounterGoogleCloudAiplatformV1beta1ExternalApi--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ExternalApi(
  api.GoogleCloudAiplatformV1beta1ExternalApi o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ExternalApi++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExternalApi < 3) {
    checkGoogleCloudAiplatformV1beta1ApiAuth(o.apiAuth!);
    unittest.expect(o.apiSpec!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1AuthConfig(o.authConfig!);
    checkGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams(
      o.elasticSearchParams!,
    );
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams(
      o.simpleSearchParams!,
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1ExternalApi--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams = 0;
api.GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams
buildGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams() {
  final o = api.GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams();
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams <
      3) {
    o.index = 'foo';
    o.numHits = 42;
    o.searchTemplate = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams(
  api.GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams <
      3) {
    unittest.expect(o.index!, unittest.equals('foo'));
    unittest.expect(o.numHits!, unittest.equals(42));
    unittest.expect(o.searchTemplate!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams =
    0;
api.GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams
buildGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams() {
  final o = api.GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams();
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams <
      3) {}
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams(
  api.GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams++;
  if (buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams <
      3) {}
  buildCounterGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1FileData = 0;
api.GoogleCloudAiplatformV1beta1FileData
buildGoogleCloudAiplatformV1beta1FileData() {
  final o = api.GoogleCloudAiplatformV1beta1FileData();
  buildCounterGoogleCloudAiplatformV1beta1FileData++;
  if (buildCounterGoogleCloudAiplatformV1beta1FileData < 3) {
    o.displayName = 'foo';
    o.fileUri = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1FileData--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1FileData(
  api.GoogleCloudAiplatformV1beta1FileData o,
) {
  buildCounterGoogleCloudAiplatformV1beta1FileData++;
  if (buildCounterGoogleCloudAiplatformV1beta1FileData < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.fileUri!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1FileData--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudAiplatformV1beta1FunctionCall = 0;
api.GoogleCloudAiplatformV1beta1FunctionCall
buildGoogleCloudAiplatformV1beta1FunctionCall() {
  final o = api.GoogleCloudAiplatformV1beta1FunctionCall();
  buildCounterGoogleCloudAiplatformV1beta1FunctionCall++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionCall < 3) {
    o.args = buildUnnamed8();
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionCall--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1FunctionCall(
  api.GoogleCloudAiplatformV1beta1FunctionCall o,
) {
  buildCounterGoogleCloudAiplatformV1beta1FunctionCall++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionCall < 3) {
    checkUnnamed8(o.args!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionCall--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig = 0;
api.GoogleCloudAiplatformV1beta1FunctionCallingConfig
buildGoogleCloudAiplatformV1beta1FunctionCallingConfig() {
  final o = api.GoogleCloudAiplatformV1beta1FunctionCallingConfig();
  buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig < 3) {
    o.allowedFunctionNames = buildUnnamed9();
    o.mode = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1FunctionCallingConfig(
  api.GoogleCloudAiplatformV1beta1FunctionCallingConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig < 3) {
    checkUnnamed9(o.allowedFunctionNames!);
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionCallingConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration = 0;
api.GoogleCloudAiplatformV1beta1FunctionDeclaration
buildGoogleCloudAiplatformV1beta1FunctionDeclaration() {
  final o = api.GoogleCloudAiplatformV1beta1FunctionDeclaration();
  buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildGoogleCloudAiplatformV1beta1Schema();
    o.parametersJsonSchema = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.response = buildGoogleCloudAiplatformV1beta1Schema();
    o.responseJsonSchema = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1FunctionDeclaration(
  api.GoogleCloudAiplatformV1beta1FunctionDeclaration o,
) {
  buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1Schema(o.parameters!);
    var casted5 = (o.parametersJsonSchema!) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted5['bool'], unittest.equals(true));
    unittest.expect(casted5['string'], unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1Schema(o.response!);
    var casted6 = (o.responseJsonSchema!) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted6['bool'], unittest.equals(true));
    unittest.expect(casted6['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionDeclaration--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1FunctionResponse = 0;
api.GoogleCloudAiplatformV1beta1FunctionResponse
buildGoogleCloudAiplatformV1beta1FunctionResponse() {
  final o = api.GoogleCloudAiplatformV1beta1FunctionResponse();
  buildCounterGoogleCloudAiplatformV1beta1FunctionResponse++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionResponse < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.response = buildUnnamed10();
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionResponse--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1FunctionResponse(
  api.GoogleCloudAiplatformV1beta1FunctionResponse o,
) {
  buildCounterGoogleCloudAiplatformV1beta1FunctionResponse++;
  if (buildCounterGoogleCloudAiplatformV1beta1FunctionResponse < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed10(o.response!);
  }
  buildCounterGoogleCloudAiplatformV1beta1FunctionResponse--;
}

core.List<api.GoogleCloudAiplatformV1beta1Content> buildUnnamed11() => [
  buildGoogleCloudAiplatformV1beta1Content(),
  buildGoogleCloudAiplatformV1beta1Content(),
];

void checkUnnamed11(core.List<api.GoogleCloudAiplatformV1beta1Content> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Content(o[0]);
  checkGoogleCloudAiplatformV1beta1Content(o[1]);
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudAiplatformV1beta1SafetySetting> buildUnnamed13() => [
  buildGoogleCloudAiplatformV1beta1SafetySetting(),
  buildGoogleCloudAiplatformV1beta1SafetySetting(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudAiplatformV1beta1SafetySetting> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1SafetySetting(o[0]);
  checkGoogleCloudAiplatformV1beta1SafetySetting(o[1]);
}

core.List<api.GoogleCloudAiplatformV1beta1Tool> buildUnnamed14() => [
  buildGoogleCloudAiplatformV1beta1Tool(),
  buildGoogleCloudAiplatformV1beta1Tool(),
];

void checkUnnamed14(core.List<api.GoogleCloudAiplatformV1beta1Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Tool(o[0]);
  checkGoogleCloudAiplatformV1beta1Tool(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest = 0;
api.GoogleCloudAiplatformV1beta1GenerateContentRequest
buildGoogleCloudAiplatformV1beta1GenerateContentRequest() {
  final o = api.GoogleCloudAiplatformV1beta1GenerateContentRequest();
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest < 3) {
    o.cachedContent = 'foo';
    o.contents = buildUnnamed11();
    o.generationConfig = buildGoogleCloudAiplatformV1beta1GenerationConfig();
    o.labels = buildUnnamed12();
    o.safetySettings = buildUnnamed13();
    o.systemInstruction = buildGoogleCloudAiplatformV1beta1Content();
    o.toolConfig = buildGoogleCloudAiplatformV1beta1ToolConfig();
    o.tools = buildUnnamed14();
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerateContentRequest(
  api.GoogleCloudAiplatformV1beta1GenerateContentRequest o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest < 3) {
    unittest.expect(o.cachedContent!, unittest.equals('foo'));
    checkUnnamed11(o.contents!);
    checkGoogleCloudAiplatformV1beta1GenerationConfig(o.generationConfig!);
    checkUnnamed12(o.labels!);
    checkUnnamed13(o.safetySettings!);
    checkGoogleCloudAiplatformV1beta1Content(o.systemInstruction!);
    checkGoogleCloudAiplatformV1beta1ToolConfig(o.toolConfig!);
    checkUnnamed14(o.tools!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentRequest--;
}

core.List<api.GoogleCloudAiplatformV1beta1Candidate> buildUnnamed15() => [
  buildGoogleCloudAiplatformV1beta1Candidate(),
  buildGoogleCloudAiplatformV1beta1Candidate(),
];

void checkUnnamed15(core.List<api.GoogleCloudAiplatformV1beta1Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Candidate(o[0]);
  checkGoogleCloudAiplatformV1beta1Candidate(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse = 0;
api.GoogleCloudAiplatformV1beta1GenerateContentResponse
buildGoogleCloudAiplatformV1beta1GenerateContentResponse() {
  final o = api.GoogleCloudAiplatformV1beta1GenerateContentResponse();
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse < 3) {
    o.candidates = buildUnnamed15();
    o.createTime = 'foo';
    o.modelVersion = 'foo';
    o.promptFeedback =
        buildGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback();
    o.responseId = 'foo';
    o.usageMetadata =
        buildGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata();
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerateContentResponse(
  api.GoogleCloudAiplatformV1beta1GenerateContentResponse o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse < 3) {
    checkUnnamed15(o.candidates!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.modelVersion!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback(
      o.promptFeedback!,
    );
    unittest.expect(o.responseId!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata(
      o.usageMetadata!,
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponse--;
}

core.List<api.GoogleCloudAiplatformV1beta1SafetyRating> buildUnnamed16() => [
  buildGoogleCloudAiplatformV1beta1SafetyRating(),
  buildGoogleCloudAiplatformV1beta1SafetyRating(),
];

void checkUnnamed16(core.List<api.GoogleCloudAiplatformV1beta1SafetyRating> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1SafetyRating(o[0]);
  checkGoogleCloudAiplatformV1beta1SafetyRating(o[1]);
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback =
    0;
api.GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback
buildGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback() {
  final o =
      api.GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback();
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback <
      3) {
    o.blockReason = 'foo';
    o.blockReasonMessage = 'foo';
    o.safetyRatings = buildUnnamed16();
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback(
  api.GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback <
      3) {
    unittest.expect(o.blockReason!, unittest.equals('foo'));
    unittest.expect(o.blockReasonMessage!, unittest.equals('foo'));
    checkUnnamed16(o.safetyRatings!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback--;
}

core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount>
buildUnnamed17() => [
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[0]);
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[1]);
}

core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount>
buildUnnamed18() => [
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
];

void checkUnnamed18(
  core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[0]);
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[1]);
}

core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount>
buildUnnamed19() => [
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
];

void checkUnnamed19(
  core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[0]);
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[1]);
}

core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount>
buildUnnamed20() => [
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
  buildGoogleCloudAiplatformV1beta1ModalityTokenCount(),
];

void checkUnnamed20(
  core.List<api.GoogleCloudAiplatformV1beta1ModalityTokenCount> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[0]);
  checkGoogleCloudAiplatformV1beta1ModalityTokenCount(o[1]);
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata =
    0;
api.GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata
buildGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata() {
  final o =
      api.GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata();
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata <
      3) {
    o.cacheTokensDetails = buildUnnamed17();
    o.cachedContentTokenCount = 42;
    o.candidatesTokenCount = 42;
    o.candidatesTokensDetails = buildUnnamed18();
    o.promptTokenCount = 42;
    o.promptTokensDetails = buildUnnamed19();
    o.thoughtsTokenCount = 42;
    o.toolUsePromptTokenCount = 42;
    o.toolUsePromptTokensDetails = buildUnnamed20();
    o.totalTokenCount = 42;
    o.trafficType = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata(
  api.GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata <
      3) {
    checkUnnamed17(o.cacheTokensDetails!);
    unittest.expect(o.cachedContentTokenCount!, unittest.equals(42));
    unittest.expect(o.candidatesTokenCount!, unittest.equals(42));
    checkUnnamed18(o.candidatesTokensDetails!);
    unittest.expect(o.promptTokenCount!, unittest.equals(42));
    checkUnnamed19(o.promptTokensDetails!);
    unittest.expect(o.thoughtsTokenCount!, unittest.equals(42));
    unittest.expect(o.toolUsePromptTokenCount!, unittest.equals(42));
    checkUnnamed20(o.toolUsePromptTokensDetails!);
    unittest.expect(o.totalTokenCount!, unittest.equals(42));
    unittest.expect(o.trafficType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1GenerationConfig = 0;
api.GoogleCloudAiplatformV1beta1GenerationConfig
buildGoogleCloudAiplatformV1beta1GenerationConfig() {
  final o = api.GoogleCloudAiplatformV1beta1GenerationConfig();
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfig < 3) {
    o.audioTimestamp = true;
    o.candidateCount = 42;
    o.enableAffectiveDialog = true;
    o.frequencyPenalty = 42.0;
    o.logprobs = 42;
    o.maxOutputTokens = 42;
    o.mediaResolution = 'foo';
    o.modelConfig =
        buildGoogleCloudAiplatformV1beta1GenerationConfigModelConfig();
    o.presencePenalty = 42.0;
    o.responseJsonSchema = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.responseLogprobs = true;
    o.responseMimeType = 'foo';
    o.responseModalities = buildUnnamed21();
    o.responseSchema = buildGoogleCloudAiplatformV1beta1Schema();
    o.routingConfig =
        buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig();
    o.seed = 42;
    o.speechConfig = buildGoogleCloudAiplatformV1beta1SpeechConfig();
    o.stopSequences = buildUnnamed22();
    o.temperature = 42.0;
    o.thinkingConfig =
        buildGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig();
    o.topK = 42.0;
    o.topP = 42.0;
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerationConfig(
  api.GoogleCloudAiplatformV1beta1GenerationConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfig < 3) {
    unittest.expect(o.audioTimestamp!, unittest.isTrue);
    unittest.expect(o.candidateCount!, unittest.equals(42));
    unittest.expect(o.enableAffectiveDialog!, unittest.isTrue);
    unittest.expect(o.frequencyPenalty!, unittest.equals(42.0));
    unittest.expect(o.logprobs!, unittest.equals(42));
    unittest.expect(o.maxOutputTokens!, unittest.equals(42));
    unittest.expect(o.mediaResolution!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1GenerationConfigModelConfig(
      o.modelConfig!,
    );
    unittest.expect(o.presencePenalty!, unittest.equals(42.0));
    var casted9 = (o.responseJsonSchema!) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted9['bool'], unittest.equals(true));
    unittest.expect(casted9['string'], unittest.equals('foo'));
    unittest.expect(o.responseLogprobs!, unittest.isTrue);
    unittest.expect(o.responseMimeType!, unittest.equals('foo'));
    checkUnnamed21(o.responseModalities!);
    checkGoogleCloudAiplatformV1beta1Schema(o.responseSchema!);
    checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig(
      o.routingConfig!,
    );
    unittest.expect(o.seed!, unittest.equals(42));
    checkGoogleCloudAiplatformV1beta1SpeechConfig(o.speechConfig!);
    checkUnnamed22(o.stopSequences!);
    unittest.expect(o.temperature!, unittest.equals(42.0));
    checkGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig(
      o.thinkingConfig!,
    );
    unittest.expect(o.topK!, unittest.equals(42.0));
    unittest.expect(o.topP!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig =
    0;
api.GoogleCloudAiplatformV1beta1GenerationConfigModelConfig
buildGoogleCloudAiplatformV1beta1GenerationConfigModelConfig() {
  final o = api.GoogleCloudAiplatformV1beta1GenerationConfigModelConfig();
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig < 3) {
    o.featureSelectionPreference = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerationConfigModelConfig(
  api.GoogleCloudAiplatformV1beta1GenerationConfigModelConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig < 3) {
    unittest.expect(o.featureSelectionPreference!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigModelConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig =
    0;
api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig
buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig() {
  final o = api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig();
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig <
      3) {
    o.autoMode =
        buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode();
    o.manualMode =
        buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode();
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig(
  api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig <
      3) {
    checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode(
      o.autoMode!,
    );
    checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode(
      o.manualMode!,
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode =
    0;
api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode
buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode() {
  final o =
      api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode();
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode <
      3) {
    o.modelRoutingPreference = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode--;
  return o;
}

void
checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode(
  api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode
  o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode <
      3) {
    unittest.expect(o.modelRoutingPreference!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode =
    0;
api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode
buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode() {
  final o =
      api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode();
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode <
      3) {
    o.modelName = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode--;
  return o;
}

void
checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode(
  api.GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode
  o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode <
      3) {
    unittest.expect(o.modelName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig = 0;
api.GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig
buildGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig() {
  final o = api.GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig();
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig <
      3) {
    o.includeThoughts = true;
    o.thinkingBudget = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig(
  api.GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig <
      3) {
    unittest.expect(o.includeThoughts!, unittest.isTrue);
    unittest.expect(o.thinkingBudget!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GoogleMaps = 0;
api.GoogleCloudAiplatformV1beta1GoogleMaps
buildGoogleCloudAiplatformV1beta1GoogleMaps() {
  final o = api.GoogleCloudAiplatformV1beta1GoogleMaps();
  buildCounterGoogleCloudAiplatformV1beta1GoogleMaps++;
  if (buildCounterGoogleCloudAiplatformV1beta1GoogleMaps < 3) {
    o.apiAuth = buildGoogleCloudAiplatformV1beta1ApiAuth();
    o.authConfig = buildGoogleCloudAiplatformV1beta1AuthConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1GoogleMaps--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GoogleMaps(
  api.GoogleCloudAiplatformV1beta1GoogleMaps o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GoogleMaps++;
  if (buildCounterGoogleCloudAiplatformV1beta1GoogleMaps < 3) {
    checkGoogleCloudAiplatformV1beta1ApiAuth(o.apiAuth!);
    checkGoogleCloudAiplatformV1beta1AuthConfig(o.authConfig!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GoogleMaps--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval = 0;
api.GoogleCloudAiplatformV1beta1GoogleSearchRetrieval
buildGoogleCloudAiplatformV1beta1GoogleSearchRetrieval() {
  final o = api.GoogleCloudAiplatformV1beta1GoogleSearchRetrieval();
  buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval++;
  if (buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval < 3) {
    o.dynamicRetrievalConfig =
        buildGoogleCloudAiplatformV1beta1DynamicRetrievalConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GoogleSearchRetrieval(
  api.GoogleCloudAiplatformV1beta1GoogleSearchRetrieval o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval++;
  if (buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval < 3) {
    checkGoogleCloudAiplatformV1beta1DynamicRetrievalConfig(
      o.dynamicRetrievalConfig!,
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1GoogleSearchRetrieval--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GroundingChunk = 0;
api.GoogleCloudAiplatformV1beta1GroundingChunk
buildGoogleCloudAiplatformV1beta1GroundingChunk() {
  final o = api.GoogleCloudAiplatformV1beta1GroundingChunk();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunk++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunk < 3) {
    o.maps = buildGoogleCloudAiplatformV1beta1GroundingChunkMaps();
    o.retrievedContext =
        buildGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext();
    o.web = buildGoogleCloudAiplatformV1beta1GroundingChunkWeb();
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunk--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingChunk(
  api.GoogleCloudAiplatformV1beta1GroundingChunk o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunk++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunk < 3) {
    checkGoogleCloudAiplatformV1beta1GroundingChunkMaps(o.maps!);
    checkGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext(
      o.retrievedContext!,
    );
    checkGoogleCloudAiplatformV1beta1GroundingChunkWeb(o.web!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunk--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps = 0;
api.GoogleCloudAiplatformV1beta1GroundingChunkMaps
buildGoogleCloudAiplatformV1beta1GroundingChunkMaps() {
  final o = api.GoogleCloudAiplatformV1beta1GroundingChunkMaps();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps < 3) {
    o.placeAnswerSources =
        buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources();
    o.placeId = 'foo';
    o.text = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingChunkMaps(
  api.GoogleCloudAiplatformV1beta1GroundingChunkMaps o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps < 3) {
    checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources(
      o.placeAnswerSources!,
    );
    unittest.expect(o.placeId!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMaps--;
}

core.List<
  api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet
>
buildUnnamed23() => [
  buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet(),
  buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet(),
];

void checkUnnamed23(
  core.List<
    api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet(
    o[0],
  );
  checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet(
    o[1],
  );
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources =
    0;
api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources
buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources() {
  final o =
      api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources <
      3) {
    o.flagContentUri = 'foo';
    o.reviewSnippets = buildUnnamed23();
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources(
  api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources <
      3) {
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    checkUnnamed23(o.reviewSnippets!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution =
    0;
api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution
buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution() {
  final o =
      api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution <
      3) {
    o.displayName = 'foo';
    o.photoUri = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution--;
  return o;
}

void
checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution(
  api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution
  o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.photoUri!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet =
    0;
api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet
buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet() {
  final o =
      api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet <
      3) {
    o.authorAttribution =
        buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution();
    o.flagContentUri = 'foo';
    o.googleMapsUri = 'foo';
    o.relativePublishTimeDescription = 'foo';
    o.review = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet--;
  return o;
}

void
checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet(
  api.GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet
  o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet <
      3) {
    checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution(
      o.authorAttribution!,
    );
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    unittest.expect(o.googleMapsUri!, unittest.equals('foo'));
    unittest.expect(o.relativePublishTimeDescription!, unittest.equals('foo'));
    unittest.expect(o.review!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext = 0;
api.GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext
buildGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext() {
  final o = api.GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext <
      3) {
    o.ragChunk = buildGoogleCloudAiplatformV1beta1RagChunk();
    o.text = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext(
  api.GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext <
      3) {
    checkGoogleCloudAiplatformV1beta1RagChunk(o.ragChunk!);
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb = 0;
api.GoogleCloudAiplatformV1beta1GroundingChunkWeb
buildGoogleCloudAiplatformV1beta1GroundingChunkWeb() {
  final o = api.GoogleCloudAiplatformV1beta1GroundingChunkWeb();
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb < 3) {
    o.domain = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingChunkWeb(
  api.GoogleCloudAiplatformV1beta1GroundingChunkWeb o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingChunkWeb--;
}

core.List<api.GoogleCloudAiplatformV1beta1GroundingChunk> buildUnnamed24() => [
  buildGoogleCloudAiplatformV1beta1GroundingChunk(),
  buildGoogleCloudAiplatformV1beta1GroundingChunk(),
];

void checkUnnamed24(
  core.List<api.GoogleCloudAiplatformV1beta1GroundingChunk> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1GroundingChunk(o[0]);
  checkGoogleCloudAiplatformV1beta1GroundingChunk(o[1]);
}

core.List<api.GoogleCloudAiplatformV1beta1GroundingSupport> buildUnnamed25() =>
    [
      buildGoogleCloudAiplatformV1beta1GroundingSupport(),
      buildGoogleCloudAiplatformV1beta1GroundingSupport(),
    ];

void checkUnnamed25(
  core.List<api.GoogleCloudAiplatformV1beta1GroundingSupport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1GroundingSupport(o[0]);
  checkGoogleCloudAiplatformV1beta1GroundingSupport(o[1]);
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata = 0;
api.GoogleCloudAiplatformV1beta1GroundingMetadata
buildGoogleCloudAiplatformV1beta1GroundingMetadata() {
  final o = api.GoogleCloudAiplatformV1beta1GroundingMetadata();
  buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata < 3) {
    o.googleMapsWidgetContextToken = 'foo';
    o.groundingChunks = buildUnnamed24();
    o.groundingSupports = buildUnnamed25();
    o.retrievalMetadata = buildGoogleCloudAiplatformV1beta1RetrievalMetadata();
    o.retrievalQueries = buildUnnamed26();
    o.searchEntryPoint = buildGoogleCloudAiplatformV1beta1SearchEntryPoint();
    o.webSearchQueries = buildUnnamed27();
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingMetadata(
  api.GoogleCloudAiplatformV1beta1GroundingMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata < 3) {
    unittest.expect(o.googleMapsWidgetContextToken!, unittest.equals('foo'));
    checkUnnamed24(o.groundingChunks!);
    checkUnnamed25(o.groundingSupports!);
    checkGoogleCloudAiplatformV1beta1RetrievalMetadata(o.retrievalMetadata!);
    checkUnnamed26(o.retrievalQueries!);
    checkGoogleCloudAiplatformV1beta1SearchEntryPoint(o.searchEntryPoint!);
    checkUnnamed27(o.webSearchQueries!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingMetadata--;
}

core.List<core.double> buildUnnamed28() => [42.0, 42.0];

void checkUnnamed28(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.int> buildUnnamed29() => [42, 42];

void checkUnnamed29(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudAiplatformV1beta1GroundingSupport = 0;
api.GoogleCloudAiplatformV1beta1GroundingSupport
buildGoogleCloudAiplatformV1beta1GroundingSupport() {
  final o = api.GoogleCloudAiplatformV1beta1GroundingSupport();
  buildCounterGoogleCloudAiplatformV1beta1GroundingSupport++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingSupport < 3) {
    o.confidenceScores = buildUnnamed28();
    o.groundingChunkIndices = buildUnnamed29();
    o.segment = buildGoogleCloudAiplatformV1beta1Segment();
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingSupport--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1GroundingSupport(
  api.GoogleCloudAiplatformV1beta1GroundingSupport o,
) {
  buildCounterGoogleCloudAiplatformV1beta1GroundingSupport++;
  if (buildCounterGoogleCloudAiplatformV1beta1GroundingSupport < 3) {
    checkUnnamed28(o.confidenceScores!);
    checkUnnamed29(o.groundingChunkIndices!);
    checkGoogleCloudAiplatformV1beta1Segment(o.segment!);
  }
  buildCounterGoogleCloudAiplatformV1beta1GroundingSupport--;
}

core.List<api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate>
buildUnnamed30() => [
  buildGoogleCloudAiplatformV1beta1LogprobsResultCandidate(),
  buildGoogleCloudAiplatformV1beta1LogprobsResultCandidate(),
];

void checkUnnamed30(
  core.List<api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1LogprobsResultCandidate(o[0]);
  checkGoogleCloudAiplatformV1beta1LogprobsResultCandidate(o[1]);
}

core.List<api.GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates>
buildUnnamed31() => [
  buildGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates(),
  buildGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates(),
];

void checkUnnamed31(
  core.List<api.GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates(o[0]);
  checkGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1LogprobsResult = 0;
api.GoogleCloudAiplatformV1beta1LogprobsResult
buildGoogleCloudAiplatformV1beta1LogprobsResult() {
  final o = api.GoogleCloudAiplatformV1beta1LogprobsResult();
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResult++;
  if (buildCounterGoogleCloudAiplatformV1beta1LogprobsResult < 3) {
    o.chosenCandidates = buildUnnamed30();
    o.topCandidates = buildUnnamed31();
  }
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResult--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1LogprobsResult(
  api.GoogleCloudAiplatformV1beta1LogprobsResult o,
) {
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResult++;
  if (buildCounterGoogleCloudAiplatformV1beta1LogprobsResult < 3) {
    checkUnnamed30(o.chosenCandidates!);
    checkUnnamed31(o.topCandidates!);
  }
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResult--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate = 0;
api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate
buildGoogleCloudAiplatformV1beta1LogprobsResultCandidate() {
  final o = api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate();
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate++;
  if (buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate < 3) {
    o.logProbability = 42.0;
    o.token = 'foo';
    o.tokenId = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1LogprobsResultCandidate(
  api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate o,
) {
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate++;
  if (buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate < 3) {
    unittest.expect(o.logProbability!, unittest.equals(42.0));
    unittest.expect(o.token!, unittest.equals('foo'));
    unittest.expect(o.tokenId!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultCandidate--;
}

core.List<api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate>
buildUnnamed32() => [
  buildGoogleCloudAiplatformV1beta1LogprobsResultCandidate(),
  buildGoogleCloudAiplatformV1beta1LogprobsResultCandidate(),
];

void checkUnnamed32(
  core.List<api.GoogleCloudAiplatformV1beta1LogprobsResultCandidate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1LogprobsResultCandidate(o[0]);
  checkGoogleCloudAiplatformV1beta1LogprobsResultCandidate(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates =
    0;
api.GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates
buildGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates() {
  final o = api.GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates();
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates++;
  if (buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates < 3) {
    o.candidates = buildUnnamed32();
  }
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates(
  api.GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates o,
) {
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates++;
  if (buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates < 3) {
    checkUnnamed32(o.candidates!);
  }
  buildCounterGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount = 0;
api.GoogleCloudAiplatformV1beta1ModalityTokenCount
buildGoogleCloudAiplatformV1beta1ModalityTokenCount() {
  final o = api.GoogleCloudAiplatformV1beta1ModalityTokenCount();
  buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount++;
  if (buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount < 3) {
    o.modality = 'foo';
    o.tokenCount = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ModalityTokenCount(
  api.GoogleCloudAiplatformV1beta1ModalityTokenCount o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount++;
  if (buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount < 3) {
    unittest.expect(o.modality!, unittest.equals('foo'));
    unittest.expect(o.tokenCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1ModalityTokenCount--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1Part = 0;
api.GoogleCloudAiplatformV1beta1Part buildGoogleCloudAiplatformV1beta1Part() {
  final o = api.GoogleCloudAiplatformV1beta1Part();
  buildCounterGoogleCloudAiplatformV1beta1Part++;
  if (buildCounterGoogleCloudAiplatformV1beta1Part < 3) {
    o.codeExecutionResult =
        buildGoogleCloudAiplatformV1beta1CodeExecutionResult();
    o.executableCode = buildGoogleCloudAiplatformV1beta1ExecutableCode();
    o.fileData = buildGoogleCloudAiplatformV1beta1FileData();
    o.functionCall = buildGoogleCloudAiplatformV1beta1FunctionCall();
    o.functionResponse = buildGoogleCloudAiplatformV1beta1FunctionResponse();
    o.inlineData = buildGoogleCloudAiplatformV1beta1Blob();
    o.text = 'foo';
    o.thought = true;
    o.thoughtSignature = 'foo';
    o.videoMetadata = buildGoogleCloudAiplatformV1beta1VideoMetadata();
  }
  buildCounterGoogleCloudAiplatformV1beta1Part--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Part(
  api.GoogleCloudAiplatformV1beta1Part o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Part++;
  if (buildCounterGoogleCloudAiplatformV1beta1Part < 3) {
    checkGoogleCloudAiplatformV1beta1CodeExecutionResult(
      o.codeExecutionResult!,
    );
    checkGoogleCloudAiplatformV1beta1ExecutableCode(o.executableCode!);
    checkGoogleCloudAiplatformV1beta1FileData(o.fileData!);
    checkGoogleCloudAiplatformV1beta1FunctionCall(o.functionCall!);
    checkGoogleCloudAiplatformV1beta1FunctionResponse(o.functionResponse!);
    checkGoogleCloudAiplatformV1beta1Blob(o.inlineData!);
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.thought!, unittest.isTrue);
    unittest.expect(o.thoughtSignature!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1VideoMetadata(o.videoMetadata!);
  }
  buildCounterGoogleCloudAiplatformV1beta1Part--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig = 0;
api.GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig
buildGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig() {
  final o = api.GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig();
  buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig < 3) {
    o.voiceName = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig(
  api.GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig < 3) {
    unittest.expect(o.voiceName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RagChunk = 0;
api.GoogleCloudAiplatformV1beta1RagChunk
buildGoogleCloudAiplatformV1beta1RagChunk() {
  final o = api.GoogleCloudAiplatformV1beta1RagChunk();
  buildCounterGoogleCloudAiplatformV1beta1RagChunk++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagChunk < 3) {
    o.pageSpan = buildGoogleCloudAiplatformV1beta1RagChunkPageSpan();
    o.text = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1RagChunk--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagChunk(
  api.GoogleCloudAiplatformV1beta1RagChunk o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagChunk++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagChunk < 3) {
    checkGoogleCloudAiplatformV1beta1RagChunkPageSpan(o.pageSpan!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagChunk--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan = 0;
api.GoogleCloudAiplatformV1beta1RagChunkPageSpan
buildGoogleCloudAiplatformV1beta1RagChunkPageSpan() {
  final o = api.GoogleCloudAiplatformV1beta1RagChunkPageSpan();
  buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan < 3) {
    o.firstPage = 42;
    o.lastPage = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagChunkPageSpan(
  api.GoogleCloudAiplatformV1beta1RagChunkPageSpan o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan < 3) {
    unittest.expect(o.firstPage!, unittest.equals(42));
    unittest.expect(o.lastPage!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagChunkPageSpan--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig = 0;
api.GoogleCloudAiplatformV1beta1RagRetrievalConfig
buildGoogleCloudAiplatformV1beta1RagRetrievalConfig() {
  final o = api.GoogleCloudAiplatformV1beta1RagRetrievalConfig();
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig < 3) {
    o.filter = buildGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter();
    o.hybridSearch =
        buildGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch();
    o.ranking = buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking();
    o.topK = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagRetrievalConfig(
  api.GoogleCloudAiplatformV1beta1RagRetrievalConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig < 3) {
    checkGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter(o.filter!);
    checkGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch(
      o.hybridSearch!,
    );
    checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking(o.ranking!);
    unittest.expect(o.topK!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter = 0;
api.GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter
buildGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter() {
  final o = api.GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter();
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter < 3) {
    o.metadataFilter = 'foo';
    o.vectorDistanceThreshold = 42.0;
    o.vectorSimilarityThreshold = 42.0;
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter(
  api.GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter < 3) {
    unittest.expect(o.metadataFilter!, unittest.equals('foo'));
    unittest.expect(o.vectorDistanceThreshold!, unittest.equals(42.0));
    unittest.expect(o.vectorSimilarityThreshold!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch = 0;
api.GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch
buildGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch() {
  final o = api.GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch();
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch <
      3) {
    o.alpha = 42.0;
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch(
  api.GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch <
      3) {
    unittest.expect(o.alpha!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking = 0;
api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking
buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking() {
  final o = api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking();
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking < 3) {
    o.llmRanker =
        buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker();
    o.rankService =
        buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService();
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking(
  api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking < 3) {
    checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker(
      o.llmRanker!,
    );
    checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService(
      o.rankService!,
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker = 0;
api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker
buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker() {
  final o =
      api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker();
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker <
      3) {
    o.modelName = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker(
  api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker <
      3) {
    unittest.expect(o.modelName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker--;
}

core.int
buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService =
    0;
api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService
buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService() {
  final o =
      api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService();
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService <
      3) {
    o.modelName = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService(
  api.GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService++;
  if (buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService <
      3) {
    unittest.expect(o.modelName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1Retrieval = 0;
api.GoogleCloudAiplatformV1beta1Retrieval
buildGoogleCloudAiplatformV1beta1Retrieval() {
  final o = api.GoogleCloudAiplatformV1beta1Retrieval();
  buildCounterGoogleCloudAiplatformV1beta1Retrieval++;
  if (buildCounterGoogleCloudAiplatformV1beta1Retrieval < 3) {
    o.disableAttribution = true;
    o.externalApi = buildGoogleCloudAiplatformV1beta1ExternalApi();
    o.vertexAiSearch = buildGoogleCloudAiplatformV1beta1VertexAISearch();
    o.vertexRagStore = buildGoogleCloudAiplatformV1beta1VertexRagStore();
  }
  buildCounterGoogleCloudAiplatformV1beta1Retrieval--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Retrieval(
  api.GoogleCloudAiplatformV1beta1Retrieval o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Retrieval++;
  if (buildCounterGoogleCloudAiplatformV1beta1Retrieval < 3) {
    unittest.expect(o.disableAttribution!, unittest.isTrue);
    checkGoogleCloudAiplatformV1beta1ExternalApi(o.externalApi!);
    checkGoogleCloudAiplatformV1beta1VertexAISearch(o.vertexAiSearch!);
    checkGoogleCloudAiplatformV1beta1VertexRagStore(o.vertexRagStore!);
  }
  buildCounterGoogleCloudAiplatformV1beta1Retrieval--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig = 0;
api.GoogleCloudAiplatformV1beta1RetrievalConfig
buildGoogleCloudAiplatformV1beta1RetrievalConfig() {
  final o = api.GoogleCloudAiplatformV1beta1RetrievalConfig();
  buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig < 3) {
    o.languageCode = 'foo';
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RetrievalConfig(
  api.GoogleCloudAiplatformV1beta1RetrievalConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkLatLng(o.latLng!);
  }
  buildCounterGoogleCloudAiplatformV1beta1RetrievalConfig--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata = 0;
api.GoogleCloudAiplatformV1beta1RetrievalMetadata
buildGoogleCloudAiplatformV1beta1RetrievalMetadata() {
  final o = api.GoogleCloudAiplatformV1beta1RetrievalMetadata();
  buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata < 3) {
    o.googleSearchDynamicRetrievalScore = 42.0;
  }
  buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1RetrievalMetadata(
  api.GoogleCloudAiplatformV1beta1RetrievalMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata < 3) {
    unittest.expect(
      o.googleSearchDynamicRetrievalScore!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1RetrievalMetadata--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1SafetyRating = 0;
api.GoogleCloudAiplatformV1beta1SafetyRating
buildGoogleCloudAiplatformV1beta1SafetyRating() {
  final o = api.GoogleCloudAiplatformV1beta1SafetyRating();
  buildCounterGoogleCloudAiplatformV1beta1SafetyRating++;
  if (buildCounterGoogleCloudAiplatformV1beta1SafetyRating < 3) {
    o.blocked = true;
    o.category = 'foo';
    o.overwrittenThreshold = 'foo';
    o.probability = 'foo';
    o.probabilityScore = 42.0;
    o.severity = 'foo';
    o.severityScore = 42.0;
  }
  buildCounterGoogleCloudAiplatformV1beta1SafetyRating--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1SafetyRating(
  api.GoogleCloudAiplatformV1beta1SafetyRating o,
) {
  buildCounterGoogleCloudAiplatformV1beta1SafetyRating++;
  if (buildCounterGoogleCloudAiplatformV1beta1SafetyRating < 3) {
    unittest.expect(o.blocked!, unittest.isTrue);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.overwrittenThreshold!, unittest.equals('foo'));
    unittest.expect(o.probability!, unittest.equals('foo'));
    unittest.expect(o.probabilityScore!, unittest.equals(42.0));
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.severityScore!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudAiplatformV1beta1SafetyRating--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1SafetySetting = 0;
api.GoogleCloudAiplatformV1beta1SafetySetting
buildGoogleCloudAiplatformV1beta1SafetySetting() {
  final o = api.GoogleCloudAiplatformV1beta1SafetySetting();
  buildCounterGoogleCloudAiplatformV1beta1SafetySetting++;
  if (buildCounterGoogleCloudAiplatformV1beta1SafetySetting < 3) {
    o.category = 'foo';
    o.method = 'foo';
    o.threshold = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1SafetySetting--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1SafetySetting(
  api.GoogleCloudAiplatformV1beta1SafetySetting o,
) {
  buildCounterGoogleCloudAiplatformV1beta1SafetySetting++;
  if (buildCounterGoogleCloudAiplatformV1beta1SafetySetting < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.threshold!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1SafetySetting--;
}

core.List<api.GoogleCloudAiplatformV1beta1Schema> buildUnnamed33() => [
  buildGoogleCloudAiplatformV1beta1Schema(),
  buildGoogleCloudAiplatformV1beta1Schema(),
];

void checkUnnamed33(core.List<api.GoogleCloudAiplatformV1beta1Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Schema(o[0]);
  checkGoogleCloudAiplatformV1beta1Schema(o[1]);
}

core.Map<core.String, api.GoogleCloudAiplatformV1beta1Schema>
buildUnnamed34() => {
  'x': buildGoogleCloudAiplatformV1beta1Schema(),
  'y': buildGoogleCloudAiplatformV1beta1Schema(),
};

void checkUnnamed34(
  core.Map<core.String, api.GoogleCloudAiplatformV1beta1Schema> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Schema(o['x']!);
  checkGoogleCloudAiplatformV1beta1Schema(o['y']!);
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudAiplatformV1beta1Schema>
buildUnnamed36() => {
  'x': buildGoogleCloudAiplatformV1beta1Schema(),
  'y': buildGoogleCloudAiplatformV1beta1Schema(),
};

void checkUnnamed36(
  core.Map<core.String, api.GoogleCloudAiplatformV1beta1Schema> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1Schema(o['x']!);
  checkGoogleCloudAiplatformV1beta1Schema(o['y']!);
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1Schema = 0;
api.GoogleCloudAiplatformV1beta1Schema
buildGoogleCloudAiplatformV1beta1Schema() {
  final o = api.GoogleCloudAiplatformV1beta1Schema();
  buildCounterGoogleCloudAiplatformV1beta1Schema++;
  if (buildCounterGoogleCloudAiplatformV1beta1Schema < 3) {
    o.additionalProperties = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.anyOf = buildUnnamed33();
    o.default_ = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.defs = buildUnnamed34();
    o.description = 'foo';
    o.enum_ = buildUnnamed35();
    o.example = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.format = 'foo';
    o.items = buildGoogleCloudAiplatformV1beta1Schema();
    o.maxItems = 'foo';
    o.maxLength = 'foo';
    o.maxProperties = 'foo';
    o.maximum = 42.0;
    o.minItems = 'foo';
    o.minLength = 'foo';
    o.minProperties = 'foo';
    o.minimum = 42.0;
    o.nullable = true;
    o.pattern = 'foo';
    o.properties = buildUnnamed36();
    o.propertyOrdering = buildUnnamed37();
    o.ref = 'foo';
    o.required = buildUnnamed38();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1Schema--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Schema(
  api.GoogleCloudAiplatformV1beta1Schema o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Schema++;
  if (buildCounterGoogleCloudAiplatformV1beta1Schema < 3) {
    var casted10 = (o.additionalProperties!) as core.Map;
    unittest.expect(casted10, unittest.hasLength(3));
    unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted10['bool'], unittest.equals(true));
    unittest.expect(casted10['string'], unittest.equals('foo'));
    checkUnnamed33(o.anyOf!);
    var casted11 = (o.default_!) as core.Map;
    unittest.expect(casted11, unittest.hasLength(3));
    unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted11['bool'], unittest.equals(true));
    unittest.expect(casted11['string'], unittest.equals('foo'));
    checkUnnamed34(o.defs!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed35(o.enum_!);
    var casted12 = (o.example!) as core.Map;
    unittest.expect(casted12, unittest.hasLength(3));
    unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted12['bool'], unittest.equals(true));
    unittest.expect(casted12['string'], unittest.equals('foo'));
    unittest.expect(o.format!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1Schema(o.items!);
    unittest.expect(o.maxItems!, unittest.equals('foo'));
    unittest.expect(o.maxLength!, unittest.equals('foo'));
    unittest.expect(o.maxProperties!, unittest.equals('foo'));
    unittest.expect(o.maximum!, unittest.equals(42.0));
    unittest.expect(o.minItems!, unittest.equals('foo'));
    unittest.expect(o.minLength!, unittest.equals('foo'));
    unittest.expect(o.minProperties!, unittest.equals('foo'));
    unittest.expect(o.minimum!, unittest.equals(42.0));
    unittest.expect(o.nullable!, unittest.isTrue);
    unittest.expect(o.pattern!, unittest.equals('foo'));
    checkUnnamed36(o.properties!);
    checkUnnamed37(o.propertyOrdering!);
    unittest.expect(o.ref!, unittest.equals('foo'));
    checkUnnamed38(o.required!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1Schema--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint = 0;
api.GoogleCloudAiplatformV1beta1SearchEntryPoint
buildGoogleCloudAiplatformV1beta1SearchEntryPoint() {
  final o = api.GoogleCloudAiplatformV1beta1SearchEntryPoint();
  buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint++;
  if (buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint < 3) {
    o.renderedContent = 'foo';
    o.sdkBlob = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1SearchEntryPoint(
  api.GoogleCloudAiplatformV1beta1SearchEntryPoint o,
) {
  buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint++;
  if (buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint < 3) {
    unittest.expect(o.renderedContent!, unittest.equals('foo'));
    unittest.expect(o.sdkBlob!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1SearchEntryPoint--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1Segment = 0;
api.GoogleCloudAiplatformV1beta1Segment
buildGoogleCloudAiplatformV1beta1Segment() {
  final o = api.GoogleCloudAiplatformV1beta1Segment();
  buildCounterGoogleCloudAiplatformV1beta1Segment++;
  if (buildCounterGoogleCloudAiplatformV1beta1Segment < 3) {
    o.endIndex = 42;
    o.partIndex = 42;
    o.startIndex = 42;
    o.text = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1Segment--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Segment(
  api.GoogleCloudAiplatformV1beta1Segment o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Segment++;
  if (buildCounterGoogleCloudAiplatformV1beta1Segment < 3) {
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.partIndex!, unittest.equals(42));
    unittest.expect(o.startIndex!, unittest.equals(42));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1Segment--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1SpeechConfig = 0;
api.GoogleCloudAiplatformV1beta1SpeechConfig
buildGoogleCloudAiplatformV1beta1SpeechConfig() {
  final o = api.GoogleCloudAiplatformV1beta1SpeechConfig();
  buildCounterGoogleCloudAiplatformV1beta1SpeechConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1SpeechConfig < 3) {
    o.languageCode = 'foo';
    o.voiceConfig = buildGoogleCloudAiplatformV1beta1VoiceConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1SpeechConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1SpeechConfig(
  api.GoogleCloudAiplatformV1beta1SpeechConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1SpeechConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1SpeechConfig < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleCloudAiplatformV1beta1VoiceConfig(o.voiceConfig!);
  }
  buildCounterGoogleCloudAiplatformV1beta1SpeechConfig--;
}

core.List<api.GoogleCloudAiplatformV1beta1FunctionDeclaration>
buildUnnamed39() => [
  buildGoogleCloudAiplatformV1beta1FunctionDeclaration(),
  buildGoogleCloudAiplatformV1beta1FunctionDeclaration(),
];

void checkUnnamed39(
  core.List<api.GoogleCloudAiplatformV1beta1FunctionDeclaration> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1FunctionDeclaration(o[0]);
  checkGoogleCloudAiplatformV1beta1FunctionDeclaration(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1Tool = 0;
api.GoogleCloudAiplatformV1beta1Tool buildGoogleCloudAiplatformV1beta1Tool() {
  final o = api.GoogleCloudAiplatformV1beta1Tool();
  buildCounterGoogleCloudAiplatformV1beta1Tool++;
  if (buildCounterGoogleCloudAiplatformV1beta1Tool < 3) {
    o.codeExecution = buildGoogleCloudAiplatformV1beta1ToolCodeExecution();
    o.enterpriseWebSearch =
        buildGoogleCloudAiplatformV1beta1EnterpriseWebSearch();
    o.functionDeclarations = buildUnnamed39();
    o.googleMaps = buildGoogleCloudAiplatformV1beta1GoogleMaps();
    o.googleSearch = buildGoogleCloudAiplatformV1beta1ToolGoogleSearch();
    o.googleSearchRetrieval =
        buildGoogleCloudAiplatformV1beta1GoogleSearchRetrieval();
    o.retrieval = buildGoogleCloudAiplatformV1beta1Retrieval();
    o.urlContext = buildGoogleCloudAiplatformV1beta1UrlContext();
  }
  buildCounterGoogleCloudAiplatformV1beta1Tool--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1Tool(
  api.GoogleCloudAiplatformV1beta1Tool o,
) {
  buildCounterGoogleCloudAiplatformV1beta1Tool++;
  if (buildCounterGoogleCloudAiplatformV1beta1Tool < 3) {
    checkGoogleCloudAiplatformV1beta1ToolCodeExecution(o.codeExecution!);
    checkGoogleCloudAiplatformV1beta1EnterpriseWebSearch(
      o.enterpriseWebSearch!,
    );
    checkUnnamed39(o.functionDeclarations!);
    checkGoogleCloudAiplatformV1beta1GoogleMaps(o.googleMaps!);
    checkGoogleCloudAiplatformV1beta1ToolGoogleSearch(o.googleSearch!);
    checkGoogleCloudAiplatformV1beta1GoogleSearchRetrieval(
      o.googleSearchRetrieval!,
    );
    checkGoogleCloudAiplatformV1beta1Retrieval(o.retrieval!);
    checkGoogleCloudAiplatformV1beta1UrlContext(o.urlContext!);
  }
  buildCounterGoogleCloudAiplatformV1beta1Tool--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution = 0;
api.GoogleCloudAiplatformV1beta1ToolCodeExecution
buildGoogleCloudAiplatformV1beta1ToolCodeExecution() {
  final o = api.GoogleCloudAiplatformV1beta1ToolCodeExecution();
  buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution++;
  if (buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution < 3) {}
  buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ToolCodeExecution(
  api.GoogleCloudAiplatformV1beta1ToolCodeExecution o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution++;
  if (buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution < 3) {}
  buildCounterGoogleCloudAiplatformV1beta1ToolCodeExecution--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1ToolConfig = 0;
api.GoogleCloudAiplatformV1beta1ToolConfig
buildGoogleCloudAiplatformV1beta1ToolConfig() {
  final o = api.GoogleCloudAiplatformV1beta1ToolConfig();
  buildCounterGoogleCloudAiplatformV1beta1ToolConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1ToolConfig < 3) {
    o.functionCallingConfig =
        buildGoogleCloudAiplatformV1beta1FunctionCallingConfig();
    o.retrievalConfig = buildGoogleCloudAiplatformV1beta1RetrievalConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1ToolConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ToolConfig(
  api.GoogleCloudAiplatformV1beta1ToolConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ToolConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1ToolConfig < 3) {
    checkGoogleCloudAiplatformV1beta1FunctionCallingConfig(
      o.functionCallingConfig!,
    );
    checkGoogleCloudAiplatformV1beta1RetrievalConfig(o.retrievalConfig!);
  }
  buildCounterGoogleCloudAiplatformV1beta1ToolConfig--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch = 0;
api.GoogleCloudAiplatformV1beta1ToolGoogleSearch
buildGoogleCloudAiplatformV1beta1ToolGoogleSearch() {
  final o = api.GoogleCloudAiplatformV1beta1ToolGoogleSearch();
  buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch < 3) {
    o.excludeDomains = buildUnnamed40();
  }
  buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1ToolGoogleSearch(
  api.GoogleCloudAiplatformV1beta1ToolGoogleSearch o,
) {
  buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch < 3) {
    checkUnnamed40(o.excludeDomains!);
  }
  buildCounterGoogleCloudAiplatformV1beta1ToolGoogleSearch--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1UrlContext = 0;
api.GoogleCloudAiplatformV1beta1UrlContext
buildGoogleCloudAiplatformV1beta1UrlContext() {
  final o = api.GoogleCloudAiplatformV1beta1UrlContext();
  buildCounterGoogleCloudAiplatformV1beta1UrlContext++;
  if (buildCounterGoogleCloudAiplatformV1beta1UrlContext < 3) {}
  buildCounterGoogleCloudAiplatformV1beta1UrlContext--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1UrlContext(
  api.GoogleCloudAiplatformV1beta1UrlContext o,
) {
  buildCounterGoogleCloudAiplatformV1beta1UrlContext++;
  if (buildCounterGoogleCloudAiplatformV1beta1UrlContext < 3) {}
  buildCounterGoogleCloudAiplatformV1beta1UrlContext--;
}

core.List<api.GoogleCloudAiplatformV1beta1UrlMetadata> buildUnnamed41() => [
  buildGoogleCloudAiplatformV1beta1UrlMetadata(),
  buildGoogleCloudAiplatformV1beta1UrlMetadata(),
];

void checkUnnamed41(core.List<api.GoogleCloudAiplatformV1beta1UrlMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1UrlMetadata(o[0]);
  checkGoogleCloudAiplatformV1beta1UrlMetadata(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata = 0;
api.GoogleCloudAiplatformV1beta1UrlContextMetadata
buildGoogleCloudAiplatformV1beta1UrlContextMetadata() {
  final o = api.GoogleCloudAiplatformV1beta1UrlContextMetadata();
  buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata < 3) {
    o.urlMetadata = buildUnnamed41();
  }
  buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1UrlContextMetadata(
  api.GoogleCloudAiplatformV1beta1UrlContextMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata < 3) {
    checkUnnamed41(o.urlMetadata!);
  }
  buildCounterGoogleCloudAiplatformV1beta1UrlContextMetadata--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1UrlMetadata = 0;
api.GoogleCloudAiplatformV1beta1UrlMetadata
buildGoogleCloudAiplatformV1beta1UrlMetadata() {
  final o = api.GoogleCloudAiplatformV1beta1UrlMetadata();
  buildCounterGoogleCloudAiplatformV1beta1UrlMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1UrlMetadata < 3) {
    o.retrievedUrl = 'foo';
    o.urlRetrievalStatus = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1UrlMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1UrlMetadata(
  api.GoogleCloudAiplatformV1beta1UrlMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1UrlMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1UrlMetadata < 3) {
    unittest.expect(o.retrievedUrl!, unittest.equals('foo'));
    unittest.expect(o.urlRetrievalStatus!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1UrlMetadata--;
}

core.List<api.GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec>
buildUnnamed42() => [
  buildGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec(),
  buildGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec(),
];

void checkUnnamed42(
  core.List<api.GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec(o[0]);
  checkGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1VertexAISearch = 0;
api.GoogleCloudAiplatformV1beta1VertexAISearch
buildGoogleCloudAiplatformV1beta1VertexAISearch() {
  final o = api.GoogleCloudAiplatformV1beta1VertexAISearch();
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexAISearch < 3) {
    o.dataStoreSpecs = buildUnnamed42();
    o.datastore = 'foo';
    o.engine = 'foo';
    o.filter = 'foo';
    o.maxResults = 42;
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearch--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1VertexAISearch(
  api.GoogleCloudAiplatformV1beta1VertexAISearch o,
) {
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearch++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexAISearch < 3) {
    checkUnnamed42(o.dataStoreSpecs!);
    unittest.expect(o.datastore!, unittest.equals('foo'));
    unittest.expect(o.engine!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.maxResults!, unittest.equals(42));
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearch--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec =
    0;
api.GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec
buildGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec() {
  final o = api.GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec();
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec < 3) {
    o.dataStore = 'foo';
    o.filter = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec(
  api.GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec o,
) {
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec < 3) {
    unittest.expect(o.dataStore!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec--;
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudAiplatformV1beta1VertexRagStoreRagResource>
buildUnnamed44() => [
  buildGoogleCloudAiplatformV1beta1VertexRagStoreRagResource(),
  buildGoogleCloudAiplatformV1beta1VertexRagStoreRagResource(),
];

void checkUnnamed44(
  core.List<api.GoogleCloudAiplatformV1beta1VertexRagStoreRagResource> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAiplatformV1beta1VertexRagStoreRagResource(o[0]);
  checkGoogleCloudAiplatformV1beta1VertexRagStoreRagResource(o[1]);
}

core.int buildCounterGoogleCloudAiplatformV1beta1VertexRagStore = 0;
api.GoogleCloudAiplatformV1beta1VertexRagStore
buildGoogleCloudAiplatformV1beta1VertexRagStore() {
  final o = api.GoogleCloudAiplatformV1beta1VertexRagStore();
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStore++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexRagStore < 3) {
    o.ragCorpora = buildUnnamed43();
    o.ragResources = buildUnnamed44();
    o.ragRetrievalConfig =
        buildGoogleCloudAiplatformV1beta1RagRetrievalConfig();
    o.similarityTopK = 42;
    o.storeContext = true;
    o.vectorDistanceThreshold = 42.0;
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStore--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1VertexRagStore(
  api.GoogleCloudAiplatformV1beta1VertexRagStore o,
) {
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStore++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexRagStore < 3) {
    checkUnnamed43(o.ragCorpora!);
    checkUnnamed44(o.ragResources!);
    checkGoogleCloudAiplatformV1beta1RagRetrievalConfig(o.ragRetrievalConfig!);
    unittest.expect(o.similarityTopK!, unittest.equals(42));
    unittest.expect(o.storeContext!, unittest.isTrue);
    unittest.expect(o.vectorDistanceThreshold!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStore--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource = 0;
api.GoogleCloudAiplatformV1beta1VertexRagStoreRagResource
buildGoogleCloudAiplatformV1beta1VertexRagStoreRagResource() {
  final o = api.GoogleCloudAiplatformV1beta1VertexRagStoreRagResource();
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource < 3) {
    o.ragCorpus = 'foo';
    o.ragFileIds = buildUnnamed45();
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1VertexRagStoreRagResource(
  api.GoogleCloudAiplatformV1beta1VertexRagStoreRagResource o,
) {
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource++;
  if (buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource < 3) {
    unittest.expect(o.ragCorpus!, unittest.equals('foo'));
    checkUnnamed45(o.ragFileIds!);
  }
  buildCounterGoogleCloudAiplatformV1beta1VertexRagStoreRagResource--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1VideoMetadata = 0;
api.GoogleCloudAiplatformV1beta1VideoMetadata
buildGoogleCloudAiplatformV1beta1VideoMetadata() {
  final o = api.GoogleCloudAiplatformV1beta1VideoMetadata();
  buildCounterGoogleCloudAiplatformV1beta1VideoMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1VideoMetadata < 3) {
    o.endOffset = 'foo';
    o.fps = 42.0;
    o.startOffset = 'foo';
  }
  buildCounterGoogleCloudAiplatformV1beta1VideoMetadata--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1VideoMetadata(
  api.GoogleCloudAiplatformV1beta1VideoMetadata o,
) {
  buildCounterGoogleCloudAiplatformV1beta1VideoMetadata++;
  if (buildCounterGoogleCloudAiplatformV1beta1VideoMetadata < 3) {
    unittest.expect(o.endOffset!, unittest.equals('foo'));
    unittest.expect(o.fps!, unittest.equals(42.0));
    unittest.expect(o.startOffset!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAiplatformV1beta1VideoMetadata--;
}

core.int buildCounterGoogleCloudAiplatformV1beta1VoiceConfig = 0;
api.GoogleCloudAiplatformV1beta1VoiceConfig
buildGoogleCloudAiplatformV1beta1VoiceConfig() {
  final o = api.GoogleCloudAiplatformV1beta1VoiceConfig();
  buildCounterGoogleCloudAiplatformV1beta1VoiceConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1VoiceConfig < 3) {
    o.prebuiltVoiceConfig =
        buildGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig();
  }
  buildCounterGoogleCloudAiplatformV1beta1VoiceConfig--;
  return o;
}

void checkGoogleCloudAiplatformV1beta1VoiceConfig(
  api.GoogleCloudAiplatformV1beta1VoiceConfig o,
) {
  buildCounterGoogleCloudAiplatformV1beta1VoiceConfig++;
  if (buildCounterGoogleCloudAiplatformV1beta1VoiceConfig < 3) {
    checkGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig(
      o.prebuiltVoiceConfig!,
    );
  }
  buildCounterGoogleCloudAiplatformV1beta1VoiceConfig--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

void main() {
  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1ApiAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1ApiAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1ApiAuth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1ApiAuth(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1AuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1AuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1AuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1AuthConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1AuthConfigOauthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1AuthConfigOauthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1AuthConfigOauthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1AuthConfigOauthConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1AuthConfigOidcConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1AuthConfigOidcConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1AuthConfigOidcConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1AuthConfigOidcConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Blob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Blob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Blob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Blob(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Candidate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Candidate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Candidate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Candidate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Citation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Citation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Citation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Citation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1CitationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1CitationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1CitationMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1CitationMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1CodeExecutionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1CodeExecutionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1CodeExecutionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1CodeExecutionResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Content', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Content();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Content.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Content(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1CountTokensRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1CountTokensRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1CountTokensRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1CountTokensRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1CountTokensResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1CountTokensResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1CountTokensResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1CountTokensResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1DynamicRetrievalConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1DynamicRetrievalConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1DynamicRetrievalConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1DynamicRetrievalConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1EnterpriseWebSearch',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1EnterpriseWebSearch();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1EnterpriseWebSearch.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1EnterpriseWebSearch(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1ExecutableCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1ExecutableCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1ExecutableCode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1ExecutableCode(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1ExternalApi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1ExternalApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1ExternalApi.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1ExternalApi(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1FileData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1FileData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1FileData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1FileData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1FunctionCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1FunctionCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1FunctionCall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1FunctionCall(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1FunctionCallingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1FunctionCallingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1FunctionCallingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1FunctionCallingConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1FunctionDeclaration',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1FunctionDeclaration();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1FunctionDeclaration.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1FunctionDeclaration(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1FunctionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1FunctionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1FunctionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1FunctionResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerateContentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1GenerateContentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerateContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerateContentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerateContentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1GenerateContentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerateContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerateContentResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1GenerationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1GenerationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1GenerationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1GenerationConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerationConfigModelConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerationConfigModelConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerationConfigModelConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerationConfigModelConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1GoogleMaps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1GoogleMaps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1GoogleMaps.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1GoogleMaps(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GoogleSearchRetrieval',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1GoogleSearchRetrieval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GoogleSearchRetrieval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GoogleSearchRetrieval(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1GroundingChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1GroundingChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1GroundingChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1GroundingChunk(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingChunkMaps',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1GroundingChunkMaps();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1GroundingChunkMaps.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingChunkMaps(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingChunkWeb',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1GroundingChunkWeb();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1GroundingChunkWeb.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingChunkWeb(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1GroundingMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1GroundingMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1GroundingMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1GroundingMetadata(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1GroundingSupport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1GroundingSupport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1GroundingSupport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1GroundingSupport(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1LogprobsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1LogprobsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1LogprobsResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1LogprobsResult(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1LogprobsResultCandidate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1LogprobsResultCandidate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1LogprobsResultCandidate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1LogprobsResultCandidate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1LogprobsResultTopCandidates(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1ModalityTokenCount',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1ModalityTokenCount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1ModalityTokenCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1ModalityTokenCount(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Part', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Part();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Part.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Part(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1PrebuiltVoiceConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1RagChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1RagChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1RagChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1RagChunk(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1RagChunkPageSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1RagChunkPageSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1RagChunkPageSpan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1RagChunkPageSpan(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RagRetrievalConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1RagRetrievalConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1RagRetrievalConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RagRetrievalConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RagRetrievalConfigFilter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRanking(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Retrieval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Retrieval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Retrieval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Retrieval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1RetrievalConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1RetrievalConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1RetrievalConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1RetrievalConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1RetrievalMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1RetrievalMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1RetrievalMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1RetrievalMetadata(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1SafetyRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1SafetyRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1SafetyRating.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1SafetyRating(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1SafetySetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1SafetySetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1SafetySetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1SafetySetting(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Schema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Schema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1SearchEntryPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1SearchEntryPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1SearchEntryPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1SearchEntryPoint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Segment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Segment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Segment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Segment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1SpeechConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1SpeechConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1SpeechConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1SpeechConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1Tool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1Tool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1Tool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1Tool(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1ToolCodeExecution',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1ToolCodeExecution();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1ToolCodeExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1ToolCodeExecution(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1ToolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1ToolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1ToolConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1ToolConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1ToolGoogleSearch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1ToolGoogleSearch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1ToolGoogleSearch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1ToolGoogleSearch(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1UrlContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1UrlContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1UrlContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1UrlContext(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1UrlContextMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1UrlContextMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAiplatformV1beta1UrlContextMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1UrlContextMetadata(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1UrlMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1UrlMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1UrlMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1UrlMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1VertexAISearch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1VertexAISearch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1VertexAISearch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1VertexAISearch(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1VertexRagStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1VertexRagStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1VertexRagStore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1VertexRagStore(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAiplatformV1beta1VertexRagStoreRagResource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAiplatformV1beta1VertexRagStoreRagResource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAiplatformV1beta1VertexRagStoreRagResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAiplatformV1beta1VertexRagStoreRagResource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1VideoMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1VideoMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1VideoMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1VideoMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAiplatformV1beta1VoiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAiplatformV1beta1VoiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAiplatformV1beta1VoiceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAiplatformV1beta1VoiceConfig(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLng.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatLng(od);
    });
  });

  unittest.group('resource-ProjectsLocationsPublishersModelsResource', () {
    unittest.test('method--countTokens', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseMLApi(mock).projects.locations.publishers.models;
      final arg_request = buildGoogleCloudAiplatformV1beta1CountTokensRequest();
      final arg_endpoint = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudAiplatformV1beta1CountTokensRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAiplatformV1beta1CountTokensRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudAiplatformV1beta1CountTokensResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countTokens(
        arg_request,
        arg_endpoint,
        $fields: arg_$fields,
      );
      checkGoogleCloudAiplatformV1beta1CountTokensResponse(
        response as api.GoogleCloudAiplatformV1beta1CountTokensResponse,
      );
    });

    unittest.test('method--generateContent', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseMLApi(mock).projects.locations.publishers.models;
      final arg_request =
          buildGoogleCloudAiplatformV1beta1GenerateContentRequest();
      final arg_model = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudAiplatformV1beta1GenerateContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAiplatformV1beta1GenerateContentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudAiplatformV1beta1GenerateContentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateContent(
        arg_request,
        arg_model,
        $fields: arg_$fields,
      );
      checkGoogleCloudAiplatformV1beta1GenerateContentResponse(
        response as api.GoogleCloudAiplatformV1beta1GenerateContentResponse,
      );
    });

    unittest.test('method--streamGenerateContent', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseMLApi(mock).projects.locations.publishers.models;
      final arg_request =
          buildGoogleCloudAiplatformV1beta1GenerateContentRequest();
      final arg_model = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudAiplatformV1beta1GenerateContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAiplatformV1beta1GenerateContentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudAiplatformV1beta1GenerateContentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.streamGenerateContent(
        arg_request,
        arg_model,
        $fields: arg_$fields,
      );
      checkGoogleCloudAiplatformV1beta1GenerateContentResponse(
        response as api.GoogleCloudAiplatformV1beta1GenerateContentResponse,
      );
    });
  });
}
