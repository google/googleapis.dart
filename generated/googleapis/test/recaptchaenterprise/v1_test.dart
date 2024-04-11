// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/recaptchaenterprise/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment =
    0;
api.GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
    buildGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment() {
  final o = api.GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment();
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment <
      3) {
    o.labels = buildUnnamed0();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment(
    api.GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment <
      3) {
    checkUnnamed0(o.labels!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo>
    buildUnnamed1() => [
          buildGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo(),
          buildGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo(),
        ];

void checkUnnamed1(
    core.List<api.GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo(o[1]);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo =
    0;
api.GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
    buildGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo() {
  final o = api.GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo();
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo < 3) {
    o.endpoints = buildUnnamed1();
    o.languageCode = 'foo';
    o.latestVerificationResult = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo(
    api.GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo < 3) {
    checkUnnamed1(o.endpoints!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestVerificationResult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings = 0;
api.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
    buildGoogleCloudRecaptchaenterpriseV1AndroidKeySettings() {
  final o = api.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings();
  buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings < 3) {
    o.allowAllPackageNames = true;
    o.allowedPackageNames = buildUnnamed2();
    o.supportNonGoogleAppStoreDistribution = true;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1AndroidKeySettings(
    api.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings < 3) {
    unittest.expect(o.allowAllPackageNames!, unittest.isTrue);
    checkUnnamed2(o.allowedPackageNames!);
    unittest.expect(o.supportNonGoogleAppStoreDistribution!, unittest.isTrue);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AndroidKeySettings--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest =
    0;
api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
    buildGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest() {
  final o = api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest();
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest <
      3) {
    o.accountId = 'foo';
    o.annotation = 'foo';
    o.hashedAccountId = 'foo';
    o.reasons = buildUnnamed3();
    o.transactionEvent =
        buildGoogleCloudRecaptchaenterpriseV1TransactionEvent();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest(
    api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest <
      3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedAccountId!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.reasons!);
    checkGoogleCloudRecaptchaenterpriseV1TransactionEvent(o.transactionEvent!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse = 0;
api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
    buildGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse() {
  final o = api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse(
    api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId = 0;
api.GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
    buildGoogleCloudRecaptchaenterpriseV1AppleDeveloperId() {
  final o = api.GoogleCloudRecaptchaenterpriseV1AppleDeveloperId();
  buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId < 3) {
    o.keyId = 'foo';
    o.privateKey = 'foo';
    o.teamId = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1AppleDeveloperId(
    api.GoogleCloudRecaptchaenterpriseV1AppleDeveloperId o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.teamId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1AppleDeveloperId--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1Assessment = 0;
api.GoogleCloudRecaptchaenterpriseV1Assessment
    buildGoogleCloudRecaptchaenterpriseV1Assessment() {
  final o = api.GoogleCloudRecaptchaenterpriseV1Assessment();
  buildCounterGoogleCloudRecaptchaenterpriseV1Assessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Assessment < 3) {
    o.accountDefenderAssessment =
        buildGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment();
    o.accountVerification =
        buildGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo();
    o.event = buildGoogleCloudRecaptchaenterpriseV1Event();
    o.firewallPolicyAssessment =
        buildGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment();
    o.fraudPreventionAssessment =
        buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment();
    o.fraudSignals = buildGoogleCloudRecaptchaenterpriseV1FraudSignals();
    o.name = 'foo';
    o.privatePasswordLeakVerification =
        buildGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification();
    o.riskAnalysis = buildGoogleCloudRecaptchaenterpriseV1RiskAnalysis();
    o.tokenProperties = buildGoogleCloudRecaptchaenterpriseV1TokenProperties();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Assessment--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1Assessment(
    api.GoogleCloudRecaptchaenterpriseV1Assessment o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1Assessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Assessment < 3) {
    checkGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment(
        o.accountDefenderAssessment!);
    checkGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo(
        o.accountVerification!);
    checkGoogleCloudRecaptchaenterpriseV1Event(o.event!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment(
        o.firewallPolicyAssessment!);
    checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment(
        o.fraudPreventionAssessment!);
    checkGoogleCloudRecaptchaenterpriseV1FraudSignals(o.fraudSignals!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification(
        o.privatePasswordLeakVerification!);
    checkGoogleCloudRecaptchaenterpriseV1RiskAnalysis(o.riskAnalysis!);
    checkGoogleCloudRecaptchaenterpriseV1TokenProperties(o.tokenProperties!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Assessment--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics = 0;
api.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
    buildGoogleCloudRecaptchaenterpriseV1ChallengeMetrics() {
  final o = api.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics();
  buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics < 3) {
    o.failedCount = 'foo';
    o.nocaptchaCount = 'foo';
    o.pageloadCount = 'foo';
    o.passedCount = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ChallengeMetrics(
    api.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics < 3) {
    unittest.expect(
      o.failedCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nocaptchaCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageloadCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passedCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ChallengeMetrics--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo =
    0;
api.GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
    buildGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo() {
  final o = api.GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo();
  buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo <
      3) {
    o.emailAddress = 'foo';
    o.lastVerificationTime = 'foo';
    o.phoneNumber = 'foo';
    o.requestToken = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo(
    api.GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo <
      3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastVerificationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1Event = 0;
api.GoogleCloudRecaptchaenterpriseV1Event
    buildGoogleCloudRecaptchaenterpriseV1Event() {
  final o = api.GoogleCloudRecaptchaenterpriseV1Event();
  buildCounterGoogleCloudRecaptchaenterpriseV1Event++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Event < 3) {
    o.expectedAction = 'foo';
    o.express = true;
    o.firewallPolicyEvaluation = true;
    o.fraudPrevention = 'foo';
    o.hashedAccountId = 'foo';
    o.headers = buildUnnamed4();
    o.ja3 = 'foo';
    o.requestedUri = 'foo';
    o.siteKey = 'foo';
    o.token = 'foo';
    o.transactionData = buildGoogleCloudRecaptchaenterpriseV1TransactionData();
    o.userAgent = 'foo';
    o.userInfo = buildGoogleCloudRecaptchaenterpriseV1UserInfo();
    o.userIpAddress = 'foo';
    o.wafTokenAssessment = true;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Event--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1Event(
    api.GoogleCloudRecaptchaenterpriseV1Event o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1Event++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Event < 3) {
    unittest.expect(
      o.expectedAction!,
      unittest.equals('foo'),
    );
    unittest.expect(o.express!, unittest.isTrue);
    unittest.expect(o.firewallPolicyEvaluation!, unittest.isTrue);
    unittest.expect(
      o.fraudPrevention!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedAccountId!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.headers!);
    unittest.expect(
      o.ja3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1TransactionData(o.transactionData!);
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1UserInfo(o.userInfo!);
    unittest.expect(
      o.userIpAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.wafTokenAssessment!, unittest.isTrue);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Event--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction = 0;
api.GoogleCloudRecaptchaenterpriseV1FirewallAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallAction() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction < 3) {
    o.allow = buildGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction();
    o.block = buildGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction();
    o.includeRecaptchaScript =
        buildGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction();
    o.redirect =
        buildGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction();
    o.setHeader =
        buildGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction();
    o.substitute =
        buildGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallAction o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction < 3) {
    checkGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction(o.allow!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction(o.block!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction(
        o.includeRecaptchaScript!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction(
        o.redirect!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction(
        o.setHeader!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction(
        o.substitute!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallAction--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction <
      3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction <
      3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
    buildGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction() {
  final o =
      api.GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction <
      3) {
    o.path = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction(
    api.GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction <
      3) {
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1FirewallAction> buildUnnamed5() =>
    [
      buildGoogleCloudRecaptchaenterpriseV1FirewallAction(),
      buildGoogleCloudRecaptchaenterpriseV1FirewallAction(),
    ];

void checkUnnamed5(
    core.List<api.GoogleCloudRecaptchaenterpriseV1FirewallAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1FirewallAction(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1FirewallAction(o[1]);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy = 0;
api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy
    buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy < 3) {
    o.actions = buildUnnamed5();
    o.condition = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.path = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(
    api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy < 3) {
    checkUnnamed5(o.actions!);
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicy--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment =
    0;
api.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
    buildGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment();
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment <
      3) {
    o.error = buildGoogleRpcStatus();
    o.firewallPolicy = buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment(
    api.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment <
      3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(o.firewallPolicy!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment =
    0;
api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
    buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment <
      3) {
    o.behavioralTrustVerdict =
        buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict();
    o.cardTestingVerdict =
        buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict();
    o.stolenInstrumentVerdict =
        buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict();
    o.transactionRisk = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment(
    api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment <
      3) {
    checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict(
        o.behavioralTrustVerdict!);
    checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict(
        o.cardTestingVerdict!);
    checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict(
        o.stolenInstrumentVerdict!);
    unittest.expect(
      o.transactionRisk!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict =
    0;
api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
    buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict <
      3) {
    o.trust = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict(
    api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict <
      3) {
    unittest.expect(
      o.trust!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict =
    0;
api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
    buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict <
      3) {
    o.risk = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict(
    api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict <
      3) {
    unittest.expect(
      o.risk!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict =
    0;
api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
    buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict <
      3) {
    o.risk = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict(
    api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict <
      3) {
    unittest.expect(
      o.risk!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals = 0;
api.GoogleCloudRecaptchaenterpriseV1FraudSignals
    buildGoogleCloudRecaptchaenterpriseV1FraudSignals() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FraudSignals();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals < 3) {
    o.cardSignals =
        buildGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals();
    o.userSignals =
        buildGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudSignals(
    api.GoogleCloudRecaptchaenterpriseV1FraudSignals o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals < 3) {
    checkGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals(
        o.cardSignals!);
    checkGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals(
        o.userSignals!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignals--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals =
    0;
api.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
    buildGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals < 3) {
    o.cardLabels = buildUnnamed6();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals(
    api.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals < 3) {
    checkUnnamed6(o.cardLabels!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals =
    0;
api.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
    buildGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals() {
  final o = api.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals();
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals < 3) {
    o.activeDaysLowerBound = 42;
    o.syntheticRisk = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals(
    api.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals < 3) {
    unittest.expect(
      o.activeDaysLowerBound!,
      unittest.equals(42),
    );
    unittest.expect(
      o.syntheticRisk!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings = 0;
api.GoogleCloudRecaptchaenterpriseV1IOSKeySettings
    buildGoogleCloudRecaptchaenterpriseV1IOSKeySettings() {
  final o = api.GoogleCloudRecaptchaenterpriseV1IOSKeySettings();
  buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings < 3) {
    o.allowAllBundleIds = true;
    o.allowedBundleIds = buildUnnamed7();
    o.appleDeveloperId =
        buildGoogleCloudRecaptchaenterpriseV1AppleDeveloperId();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1IOSKeySettings(
    api.GoogleCloudRecaptchaenterpriseV1IOSKeySettings o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings < 3) {
    unittest.expect(o.allowAllBundleIds!, unittest.isTrue);
    checkUnnamed7(o.allowedBundleIds!);
    checkGoogleCloudRecaptchaenterpriseV1AppleDeveloperId(o.appleDeveloperId!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1IOSKeySettings--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1Key = 0;
api.GoogleCloudRecaptchaenterpriseV1Key
    buildGoogleCloudRecaptchaenterpriseV1Key() {
  final o = api.GoogleCloudRecaptchaenterpriseV1Key();
  buildCounterGoogleCloudRecaptchaenterpriseV1Key++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Key < 3) {
    o.androidSettings =
        buildGoogleCloudRecaptchaenterpriseV1AndroidKeySettings();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.iosSettings = buildGoogleCloudRecaptchaenterpriseV1IOSKeySettings();
    o.labels = buildUnnamed8();
    o.name = 'foo';
    o.testingOptions = buildGoogleCloudRecaptchaenterpriseV1TestingOptions();
    o.wafSettings = buildGoogleCloudRecaptchaenterpriseV1WafSettings();
    o.webSettings = buildGoogleCloudRecaptchaenterpriseV1WebKeySettings();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Key--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1Key(
    api.GoogleCloudRecaptchaenterpriseV1Key o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1Key++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Key < 3) {
    checkGoogleCloudRecaptchaenterpriseV1AndroidKeySettings(o.androidSettings!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1IOSKeySettings(o.iosSettings!);
    checkUnnamed8(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1TestingOptions(o.testingOptions!);
    checkGoogleCloudRecaptchaenterpriseV1WafSettings(o.wafSettings!);
    checkGoogleCloudRecaptchaenterpriseV1WebKeySettings(o.webSettings!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Key--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy> buildUnnamed9() =>
    [
      buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy(),
      buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy(),
    ];

void checkUnnamed9(
    core.List<api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(o[1]);
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse =
    0;
api.GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
    buildGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse() {
  final o = api.GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse <
      3) {
    o.firewallPolicies = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse(
    api.GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse <
      3) {
    checkUnnamed9(o.firewallPolicies!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1Key> buildUnnamed10() => [
      buildGoogleCloudRecaptchaenterpriseV1Key(),
      buildGoogleCloudRecaptchaenterpriseV1Key(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudRecaptchaenterpriseV1Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1Key(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1Key(o[1]);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse = 0;
api.GoogleCloudRecaptchaenterpriseV1ListKeysResponse
    buildGoogleCloudRecaptchaenterpriseV1ListKeysResponse() {
  final o = api.GoogleCloudRecaptchaenterpriseV1ListKeysResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse < 3) {
    o.keys = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ListKeysResponse(
    api.GoogleCloudRecaptchaenterpriseV1ListKeysResponse o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse < 3) {
    checkUnnamed10(o.keys!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListKeysResponse--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>
    buildUnnamed11() => [
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(),
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(),
        ];

void checkUnnamed11(
    core.List<api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(o[1]);
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse =
    0;
api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
    buildGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.relatedAccountGroupMemberships = buildUnnamed11();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse(
    api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.relatedAccountGroupMemberships!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup>
    buildUnnamed12() => [
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup(),
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup(),
        ];

void checkUnnamed12(
    core.List<api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup(o[1]);
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse =
    0;
api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
    buildGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse() {
  final o =
      api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.relatedAccountGroups = buildUnnamed12();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse(
    api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.relatedAccountGroups!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics>
    buildUnnamed13() => [
          buildGoogleCloudRecaptchaenterpriseV1ChallengeMetrics(),
          buildGoogleCloudRecaptchaenterpriseV1ChallengeMetrics(),
        ];

void checkUnnamed13(
    core.List<api.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1ChallengeMetrics(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1ChallengeMetrics(o[1]);
}

core.List<api.GoogleCloudRecaptchaenterpriseV1ScoreMetrics> buildUnnamed14() =>
    [
      buildGoogleCloudRecaptchaenterpriseV1ScoreMetrics(),
      buildGoogleCloudRecaptchaenterpriseV1ScoreMetrics(),
    ];

void checkUnnamed14(
    core.List<api.GoogleCloudRecaptchaenterpriseV1ScoreMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1ScoreMetrics(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1ScoreMetrics(o[1]);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1Metrics = 0;
api.GoogleCloudRecaptchaenterpriseV1Metrics
    buildGoogleCloudRecaptchaenterpriseV1Metrics() {
  final o = api.GoogleCloudRecaptchaenterpriseV1Metrics();
  buildCounterGoogleCloudRecaptchaenterpriseV1Metrics++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Metrics < 3) {
    o.challengeMetrics = buildUnnamed13();
    o.name = 'foo';
    o.scoreMetrics = buildUnnamed14();
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Metrics--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1Metrics(
    api.GoogleCloudRecaptchaenterpriseV1Metrics o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1Metrics++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1Metrics < 3) {
    checkUnnamed13(o.challengeMetrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.scoreMetrics!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1Metrics--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest = 0;
api.GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
    buildGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest() {
  final o = api.GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest();
  buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest < 3) {
    o.skipBillingCheck = true;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest(
    api.GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest < 3) {
    unittest.expect(o.skipBillingCheck!, unittest.isTrue);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification =
    0;
api.GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
    buildGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification() {
  final o =
      api.GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification();
  buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification <
      3) {
    o.encryptedLeakMatchPrefixes = buildUnnamed15();
    o.encryptedUserCredentialsHash = 'foo';
    o.lookupHashPrefix = 'foo';
    o.reencryptedUserCredentialsHash = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification(
    api.GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification <
      3) {
    checkUnnamed15(o.encryptedLeakMatchPrefixes!);
    unittest.expect(
      o.encryptedUserCredentialsHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lookupHashPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reencryptedUserCredentialsHash!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup = 0;
api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
    buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup() {
  final o = api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup();
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup(
    api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership =
    0;
api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
    buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership() {
  final o = api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership();
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership <
      3) {
    o.accountId = 'foo';
    o.hashedAccountId = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(
    api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership <
      3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest =
    0;
api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
    buildGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest() {
  final o =
      api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest();
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest <
      3) {
    o.names = buildUnnamed16();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest(
    api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest <
      3) {
    checkUnnamed16(o.names!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse =
    0;
api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
    buildGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse() {
  final o =
      api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse(
    api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse <
      3) {}
  buildCounterGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse =
    0;
api.GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
    buildGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse() {
  final o =
      api.GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse <
      3) {
    o.legacySecretKey = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse(
    api.GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse <
      3) {
    unittest.expect(
      o.legacySecretKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis = 0;
api.GoogleCloudRecaptchaenterpriseV1RiskAnalysis
    buildGoogleCloudRecaptchaenterpriseV1RiskAnalysis() {
  final o = api.GoogleCloudRecaptchaenterpriseV1RiskAnalysis();
  buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis < 3) {
    o.extendedVerdictReasons = buildUnnamed17();
    o.reasons = buildUnnamed18();
    o.score = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1RiskAnalysis(
    api.GoogleCloudRecaptchaenterpriseV1RiskAnalysis o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis < 3) {
    checkUnnamed17(o.extendedVerdictReasons!);
    checkUnnamed18(o.reasons!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1RiskAnalysis--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution = 0;
api.GoogleCloudRecaptchaenterpriseV1ScoreDistribution
    buildGoogleCloudRecaptchaenterpriseV1ScoreDistribution() {
  final o = api.GoogleCloudRecaptchaenterpriseV1ScoreDistribution();
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution < 3) {
    o.scoreBuckets = buildUnnamed19();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ScoreDistribution(
    api.GoogleCloudRecaptchaenterpriseV1ScoreDistribution o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution < 3) {
    checkUnnamed19(o.scoreBuckets!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreDistribution--;
}

core.Map<core.String, api.GoogleCloudRecaptchaenterpriseV1ScoreDistribution>
    buildUnnamed20() => {
          'x': buildGoogleCloudRecaptchaenterpriseV1ScoreDistribution(),
          'y': buildGoogleCloudRecaptchaenterpriseV1ScoreDistribution(),
        };

void checkUnnamed20(
    core.Map<core.String, api.GoogleCloudRecaptchaenterpriseV1ScoreDistribution>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1ScoreDistribution(o['x']!);
  checkGoogleCloudRecaptchaenterpriseV1ScoreDistribution(o['y']!);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics = 0;
api.GoogleCloudRecaptchaenterpriseV1ScoreMetrics
    buildGoogleCloudRecaptchaenterpriseV1ScoreMetrics() {
  final o = api.GoogleCloudRecaptchaenterpriseV1ScoreMetrics();
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics < 3) {
    o.actionMetrics = buildUnnamed20();
    o.overallMetrics = buildGoogleCloudRecaptchaenterpriseV1ScoreDistribution();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1ScoreMetrics(
    api.GoogleCloudRecaptchaenterpriseV1ScoreMetrics o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics < 3) {
    checkUnnamed20(o.actionMetrics!);
    checkGoogleCloudRecaptchaenterpriseV1ScoreDistribution(o.overallMetrics!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1ScoreMetrics--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest =
    0;
api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
    buildGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest();
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest <
      3) {
    o.accountId = 'foo';
    o.hashedAccountId = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest(
    api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest <
      3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>
    buildUnnamed21() => [
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(),
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(),
        ];

void checkUnnamed21(
    core.List<api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(o[1]);
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse =
    0;
api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
    buildGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse() {
  final o = api
      .GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse();
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.relatedAccountGroupMemberships = buildUnnamed21();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse(
    api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.relatedAccountGroupMemberships!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions = 0;
api.GoogleCloudRecaptchaenterpriseV1TestingOptions
    buildGoogleCloudRecaptchaenterpriseV1TestingOptions() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TestingOptions();
  buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions < 3) {
    o.testingChallenge = 'foo';
    o.testingScore = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TestingOptions(
    api.GoogleCloudRecaptchaenterpriseV1TestingOptions o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions < 3) {
    unittest.expect(
      o.testingChallenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testingScore!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TestingOptions--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties = 0;
api.GoogleCloudRecaptchaenterpriseV1TokenProperties
    buildGoogleCloudRecaptchaenterpriseV1TokenProperties() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TokenProperties();
  buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties < 3) {
    o.action = 'foo';
    o.androidPackageName = 'foo';
    o.createTime = 'foo';
    o.hostname = 'foo';
    o.invalidReason = 'foo';
    o.iosBundleId = 'foo';
    o.valid = true;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TokenProperties(
    api.GoogleCloudRecaptchaenterpriseV1TokenProperties o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidPackageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invalidReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iosBundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.valid!, unittest.isTrue);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TokenProperties--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1TransactionDataItem>
    buildUnnamed22() => [
          buildGoogleCloudRecaptchaenterpriseV1TransactionDataItem(),
          buildGoogleCloudRecaptchaenterpriseV1TransactionDataItem(),
        ];

void checkUnnamed22(
    core.List<api.GoogleCloudRecaptchaenterpriseV1TransactionDataItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1TransactionDataItem(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1TransactionDataItem(o[1]);
}

core.List<api.GoogleCloudRecaptchaenterpriseV1TransactionDataUser>
    buildUnnamed23() => [
          buildGoogleCloudRecaptchaenterpriseV1TransactionDataUser(),
          buildGoogleCloudRecaptchaenterpriseV1TransactionDataUser(),
        ];

void checkUnnamed23(
    core.List<api.GoogleCloudRecaptchaenterpriseV1TransactionDataUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1TransactionDataUser(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1TransactionDataUser(o[1]);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData = 0;
api.GoogleCloudRecaptchaenterpriseV1TransactionData
    buildGoogleCloudRecaptchaenterpriseV1TransactionData() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TransactionData();
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData < 3) {
    o.billingAddress =
        buildGoogleCloudRecaptchaenterpriseV1TransactionDataAddress();
    o.cardBin = 'foo';
    o.cardLastFour = 'foo';
    o.currencyCode = 'foo';
    o.gatewayInfo =
        buildGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo();
    o.items = buildUnnamed22();
    o.merchants = buildUnnamed23();
    o.paymentMethod = 'foo';
    o.shippingAddress =
        buildGoogleCloudRecaptchaenterpriseV1TransactionDataAddress();
    o.shippingValue = 42.0;
    o.transactionId = 'foo';
    o.user = buildGoogleCloudRecaptchaenterpriseV1TransactionDataUser();
    o.value = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TransactionData(
    api.GoogleCloudRecaptchaenterpriseV1TransactionData o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData < 3) {
    checkGoogleCloudRecaptchaenterpriseV1TransactionDataAddress(
        o.billingAddress!);
    unittest.expect(
      o.cardBin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cardLastFour!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo(
        o.gatewayInfo!);
    checkUnnamed22(o.items!);
    checkUnnamed23(o.merchants!);
    unittest.expect(
      o.paymentMethod!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1TransactionDataAddress(
        o.shippingAddress!);
    unittest.expect(
      o.shippingValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecaptchaenterpriseV1TransactionDataUser(o.user!);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionData--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress = 0;
api.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
    buildGoogleCloudRecaptchaenterpriseV1TransactionDataAddress() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress();
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress < 3) {
    o.address = buildUnnamed24();
    o.administrativeArea = 'foo';
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipient = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TransactionDataAddress(
    api.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress < 3) {
    checkUnnamed24(o.address!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recipient!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataAddress--;
}

core.int
    buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo = 0;
api.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
    buildGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo();
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo <
      3) {
    o.avsResponseCode = 'foo';
    o.cvvResponseCode = 'foo';
    o.gatewayResponseCode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo(
    api.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo <
      3) {
    unittest.expect(
      o.avsResponseCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cvvResponseCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatewayResponseCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem = 0;
api.GoogleCloudRecaptchaenterpriseV1TransactionDataItem
    buildGoogleCloudRecaptchaenterpriseV1TransactionDataItem() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TransactionDataItem();
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem < 3) {
    o.merchantAccountId = 'foo';
    o.name = 'foo';
    o.quantity = 'foo';
    o.value = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TransactionDataItem(
    api.GoogleCloudRecaptchaenterpriseV1TransactionDataItem o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem < 3) {
    unittest.expect(
      o.merchantAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataItem--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser = 0;
api.GoogleCloudRecaptchaenterpriseV1TransactionDataUser
    buildGoogleCloudRecaptchaenterpriseV1TransactionDataUser() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TransactionDataUser();
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser < 3) {
    o.accountId = 'foo';
    o.creationMs = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.phoneNumber = 'foo';
    o.phoneVerified = true;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TransactionDataUser(
    api.GoogleCloudRecaptchaenterpriseV1TransactionDataUser o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.phoneVerified!, unittest.isTrue);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionDataUser--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent = 0;
api.GoogleCloudRecaptchaenterpriseV1TransactionEvent
    buildGoogleCloudRecaptchaenterpriseV1TransactionEvent() {
  final o = api.GoogleCloudRecaptchaenterpriseV1TransactionEvent();
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent < 3) {
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.reason = 'foo';
    o.value = 42.0;
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1TransactionEvent(
    api.GoogleCloudRecaptchaenterpriseV1TransactionEvent o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent < 3) {
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1TransactionEvent--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1UserId = 0;
api.GoogleCloudRecaptchaenterpriseV1UserId
    buildGoogleCloudRecaptchaenterpriseV1UserId() {
  final o = api.GoogleCloudRecaptchaenterpriseV1UserId();
  buildCounterGoogleCloudRecaptchaenterpriseV1UserId++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1UserId < 3) {
    o.email = 'foo';
    o.phoneNumber = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1UserId--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1UserId(
    api.GoogleCloudRecaptchaenterpriseV1UserId o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1UserId++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1UserId < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1UserId--;
}

core.List<api.GoogleCloudRecaptchaenterpriseV1UserId> buildUnnamed25() => [
      buildGoogleCloudRecaptchaenterpriseV1UserId(),
      buildGoogleCloudRecaptchaenterpriseV1UserId(),
    ];

void checkUnnamed25(core.List<api.GoogleCloudRecaptchaenterpriseV1UserId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecaptchaenterpriseV1UserId(o[0]);
  checkGoogleCloudRecaptchaenterpriseV1UserId(o[1]);
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo = 0;
api.GoogleCloudRecaptchaenterpriseV1UserInfo
    buildGoogleCloudRecaptchaenterpriseV1UserInfo() {
  final o = api.GoogleCloudRecaptchaenterpriseV1UserInfo();
  buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo < 3) {
    o.accountId = 'foo';
    o.createAccountTime = 'foo';
    o.userIds = buildUnnamed25();
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1UserInfo(
    api.GoogleCloudRecaptchaenterpriseV1UserInfo o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createAccountTime!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.userIds!);
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1UserInfo--;
}

core.int buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings = 0;
api.GoogleCloudRecaptchaenterpriseV1WafSettings
    buildGoogleCloudRecaptchaenterpriseV1WafSettings() {
  final o = api.GoogleCloudRecaptchaenterpriseV1WafSettings();
  buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings < 3) {
    o.wafFeature = 'foo';
    o.wafService = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1WafSettings(
    api.GoogleCloudRecaptchaenterpriseV1WafSettings o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings < 3) {
    unittest.expect(
      o.wafFeature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wafService!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1WafSettings--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings = 0;
api.GoogleCloudRecaptchaenterpriseV1WebKeySettings
    buildGoogleCloudRecaptchaenterpriseV1WebKeySettings() {
  final o = api.GoogleCloudRecaptchaenterpriseV1WebKeySettings();
  buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings < 3) {
    o.allowAllDomains = true;
    o.allowAmpTraffic = true;
    o.allowedDomains = buildUnnamed26();
    o.challengeSecurityPreference = 'foo';
    o.integrationType = 'foo';
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings--;
  return o;
}

void checkGoogleCloudRecaptchaenterpriseV1WebKeySettings(
    api.GoogleCloudRecaptchaenterpriseV1WebKeySettings o) {
  buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings++;
  if (buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings < 3) {
    unittest.expect(o.allowAllDomains!, unittest.isTrue);
    unittest.expect(o.allowAmpTraffic!, unittest.isTrue);
    checkUnnamed26(o.allowedDomains!);
    unittest.expect(
      o.challengeSecurityPreference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integrationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecaptchaenterpriseV1WebKeySettings--;
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

core.Map<core.String, core.Object?> buildUnnamed27() => {
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

void checkUnnamed27(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed28() => [
      buildUnnamed27(),
      buildUnnamed27(),
    ];

void checkUnnamed28(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed27(o[0]);
  checkUnnamed27(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed28();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed28(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1AndroidKeySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1AndroidKeySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1AndroidKeySettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1AppleDeveloperId',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1AppleDeveloperId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1AppleDeveloperId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1AppleDeveloperId(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1Assessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1Assessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1Assessment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1Assessment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1ChallengeMetrics',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1ChallengeMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ChallengeMetrics(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1Event();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1Event.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1Event(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1FirewallAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1FirewallAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1FraudSignals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1FraudSignals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1FraudSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudSignals(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1IOSKeySettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1IOSKeySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1IOSKeySettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1Key', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1Key();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1Key.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1Key(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1ListKeysResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1ListKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1ListKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ListKeysResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1Metrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1Metrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1Metrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1Metrics(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1RiskAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1RiskAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1RiskAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1RiskAnalysis(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1ScoreDistribution',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1ScoreDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ScoreDistribution(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1ScoreMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1ScoreMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1ScoreMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1ScoreMetrics(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1TestingOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TestingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1TestingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TestingOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1TokenProperties',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TokenProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1TokenProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TokenProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1TransactionData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TransactionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1TransactionData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TransactionData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1TransactionDataAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TransactionDataAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TransactionDataAddress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1TransactionDataItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TransactionDataItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1TransactionDataItem.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TransactionDataItem(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecaptchaenterpriseV1TransactionDataUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TransactionDataUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecaptchaenterpriseV1TransactionDataUser.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TransactionDataUser(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1TransactionEvent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1TransactionEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1TransactionEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1TransactionEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1UserId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1UserId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1UserId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1UserId(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1UserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1WafSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1WafSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1WafSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1WafSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecaptchaenterpriseV1WebKeySettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecaptchaenterpriseV1WebKeySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecaptchaenterpriseV1WebKeySettings(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-ProjectsAssessmentsResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.assessments;
      final arg_request =
          buildGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.annotate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse(response
          as api.GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.assessments;
      final arg_request = buildGoogleCloudRecaptchaenterpriseV1Assessment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecaptchaenterpriseV1Assessment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1Assessment(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecaptchaenterpriseV1Assessment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1Assessment(
          response as api.GoogleCloudRecaptchaenterpriseV1Assessment);
    });
  });

  unittest.group('resource-ProjectsFirewallpoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.firewallpolicies;
      final arg_request = buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(
          response as api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.firewallpolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.firewallpolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(
          response as api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.firewallpolicies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse(response
          as api.GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.firewallpolicies;
      final arg_request = buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecaptchaenterpriseV1FirewallPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1FirewallPolicy(
          response as api.GoogleCloudRecaptchaenterpriseV1FirewallPolicy);
    });

    unittest.test('method--reorder', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.firewallpolicies;
      final arg_request =
          buildGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reorder(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse(
          response as api
              .GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse);
    });
  });

  unittest.group('resource-ProjectsKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_request = buildGoogleCloudRecaptchaenterpriseV1Key();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecaptchaenterpriseV1Key.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1Key(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecaptchaenterpriseV1Key());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1Key(
          response as api.GoogleCloudRecaptchaenterpriseV1Key);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecaptchaenterpriseV1Key());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1Key(
          response as api.GoogleCloudRecaptchaenterpriseV1Key);
    });

    unittest.test('method--getMetrics', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecaptchaenterpriseV1Metrics());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetrics(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1Metrics(
          response as api.GoogleCloudRecaptchaenterpriseV1Metrics);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecaptchaenterpriseV1ListKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1ListKeysResponse(
          response as api.GoogleCloudRecaptchaenterpriseV1ListKeysResponse);
    });

    unittest.test('method--migrate', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_request =
          buildGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecaptchaenterpriseV1Key());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.migrate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1Key(
          response as api.GoogleCloudRecaptchaenterpriseV1Key);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_request = buildGoogleCloudRecaptchaenterpriseV1Key();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecaptchaenterpriseV1Key.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1Key(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecaptchaenterpriseV1Key());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1Key(
          response as api.GoogleCloudRecaptchaenterpriseV1Key);
    });

    unittest.test('method--retrieveLegacySecretKey', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock).projects.keys;
      final arg_key = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.retrieveLegacySecretKey(arg_key, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse(
          response as api
              .GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse);
    });
  });

  unittest.group('resource-ProjectsRelatedaccountgroupmembershipsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock)
          .projects
          .relatedaccountgroupmemberships;
      final arg_request =
          buildGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_project, $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse(
          response as api
              .GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse);
    });
  });

  unittest.group('resource-ProjectsRelatedaccountgroupsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecaptchaEnterpriseApi(mock).projects.relatedaccountgroups;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse(
          response as api
              .GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse);
    });
  });

  unittest.group('resource-ProjectsRelatedaccountgroupsMembershipsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecaptchaEnterpriseApi(mock)
          .projects
          .relatedaccountgroups
          .memberships;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse(
          response as api
              .GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse);
    });
  });
}
