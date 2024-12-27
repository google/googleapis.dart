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

import 'package:googleapis/binaryauthorization/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdmissionRule = 0;
api.AdmissionRule buildAdmissionRule() {
  final o = api.AdmissionRule();
  buildCounterAdmissionRule++;
  if (buildCounterAdmissionRule < 3) {
    o.enforcementMode = 'foo';
    o.evaluationMode = 'foo';
    o.requireAttestationsBy = buildUnnamed0();
  }
  buildCounterAdmissionRule--;
  return o;
}

void checkAdmissionRule(api.AdmissionRule o) {
  buildCounterAdmissionRule++;
  if (buildCounterAdmissionRule < 3) {
    unittest.expect(o.enforcementMode!, unittest.equals('foo'));
    unittest.expect(o.evaluationMode!, unittest.equals('foo'));
    checkUnnamed0(o.requireAttestationsBy!);
  }
  buildCounterAdmissionRule--;
}

core.int buildCounterAdmissionWhitelistPattern = 0;
api.AdmissionWhitelistPattern buildAdmissionWhitelistPattern() {
  final o = api.AdmissionWhitelistPattern();
  buildCounterAdmissionWhitelistPattern++;
  if (buildCounterAdmissionWhitelistPattern < 3) {
    o.namePattern = 'foo';
  }
  buildCounterAdmissionWhitelistPattern--;
  return o;
}

void checkAdmissionWhitelistPattern(api.AdmissionWhitelistPattern o) {
  buildCounterAdmissionWhitelistPattern++;
  if (buildCounterAdmissionWhitelistPattern < 3) {
    unittest.expect(o.namePattern!, unittest.equals('foo'));
  }
  buildCounterAdmissionWhitelistPattern--;
}

core.int buildCounterAllowlistResult = 0;
api.AllowlistResult buildAllowlistResult() {
  final o = api.AllowlistResult();
  buildCounterAllowlistResult++;
  if (buildCounterAllowlistResult < 3) {
    o.matchedPattern = 'foo';
  }
  buildCounterAllowlistResult--;
  return o;
}

void checkAllowlistResult(api.AllowlistResult o) {
  buildCounterAllowlistResult++;
  if (buildCounterAllowlistResult < 3) {
    unittest.expect(o.matchedPattern!, unittest.equals('foo'));
  }
  buildCounterAllowlistResult--;
}

core.int buildCounterAttestationAuthenticator = 0;
api.AttestationAuthenticator buildAttestationAuthenticator() {
  final o = api.AttestationAuthenticator();
  buildCounterAttestationAuthenticator++;
  if (buildCounterAttestationAuthenticator < 3) {
    o.displayName = 'foo';
    o.pkixPublicKeySet = buildPkixPublicKeySet();
  }
  buildCounterAttestationAuthenticator--;
  return o;
}

void checkAttestationAuthenticator(api.AttestationAuthenticator o) {
  buildCounterAttestationAuthenticator++;
  if (buildCounterAttestationAuthenticator < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkPkixPublicKeySet(o.pkixPublicKeySet!);
  }
  buildCounterAttestationAuthenticator--;
}

core.List<api.Jwt> buildUnnamed1() => [buildJwt(), buildJwt()];

void checkUnnamed1(core.List<api.Jwt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwt(o[0]);
  checkJwt(o[1]);
}

core.List<api.Signature> buildUnnamed2() => [
      buildSignature(),
      buildSignature(),
    ];

void checkUnnamed2(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0]);
  checkSignature(o[1]);
}

core.int buildCounterAttestationOccurrence = 0;
api.AttestationOccurrence buildAttestationOccurrence() {
  final o = api.AttestationOccurrence();
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    o.jwts = buildUnnamed1();
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed2();
  }
  buildCounterAttestationOccurrence--;
  return o;
}

void checkAttestationOccurrence(api.AttestationOccurrence o) {
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    checkUnnamed1(o.jwts!);
    unittest.expect(o.serializedPayload!, unittest.equals('foo'));
    checkUnnamed2(o.signatures!);
  }
  buildCounterAttestationOccurrence--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttestationSource = 0;
api.AttestationSource buildAttestationSource() {
  final o = api.AttestationSource();
  buildCounterAttestationSource++;
  if (buildCounterAttestationSource < 3) {
    o.containerAnalysisAttestationProjects = buildUnnamed3();
  }
  buildCounterAttestationSource--;
  return o;
}

void checkAttestationSource(api.AttestationSource o) {
  buildCounterAttestationSource++;
  if (buildCounterAttestationSource < 3) {
    checkUnnamed3(o.containerAnalysisAttestationProjects!);
  }
  buildCounterAttestationSource--;
}

core.int buildCounterAttestor = 0;
api.Attestor buildAttestor() {
  final o = api.Attestor();
  buildCounterAttestor++;
  if (buildCounterAttestor < 3) {
    o.description = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.userOwnedGrafeasNote = buildUserOwnedGrafeasNote();
  }
  buildCounterAttestor--;
  return o;
}

void checkAttestor(api.Attestor o) {
  buildCounterAttestor++;
  if (buildCounterAttestor < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUserOwnedGrafeasNote(o.userOwnedGrafeasNote!);
  }
  buildCounterAttestor--;
}

core.int buildCounterAttestorPublicKey = 0;
api.AttestorPublicKey buildAttestorPublicKey() {
  final o = api.AttestorPublicKey();
  buildCounterAttestorPublicKey++;
  if (buildCounterAttestorPublicKey < 3) {
    o.asciiArmoredPgpPublicKey = 'foo';
    o.comment = 'foo';
    o.id = 'foo';
    o.pkixPublicKey = buildPkixPublicKey();
  }
  buildCounterAttestorPublicKey--;
  return o;
}

void checkAttestorPublicKey(api.AttestorPublicKey o) {
  buildCounterAttestorPublicKey++;
  if (buildCounterAttestorPublicKey < 3) {
    unittest.expect(o.asciiArmoredPgpPublicKey!, unittest.equals('foo'));
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkPkixPublicKey(o.pkixPublicKey!);
  }
  buildCounterAttestorPublicKey--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
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
    o.members = buildUnnamed4();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed4(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCheck = 0;
api.Check buildCheck() {
  final o = api.Check();
  buildCounterCheck++;
  if (buildCounterCheck < 3) {
    o.alwaysDeny = true;
    o.displayName = 'foo';
    o.imageAllowlist = buildImageAllowlist();
    o.imageFreshnessCheck = buildImageFreshnessCheck();
    o.sigstoreSignatureCheck = buildSigstoreSignatureCheck();
    o.simpleSigningAttestationCheck = buildSimpleSigningAttestationCheck();
    o.slsaCheck = buildSlsaCheck();
    o.trustedDirectoryCheck = buildTrustedDirectoryCheck();
    o.vulnerabilityCheck = buildVulnerabilityCheck();
  }
  buildCounterCheck--;
  return o;
}

void checkCheck(api.Check o) {
  buildCounterCheck++;
  if (buildCounterCheck < 3) {
    unittest.expect(o.alwaysDeny!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkImageAllowlist(o.imageAllowlist!);
    checkImageFreshnessCheck(o.imageFreshnessCheck!);
    checkSigstoreSignatureCheck(o.sigstoreSignatureCheck!);
    checkSimpleSigningAttestationCheck(o.simpleSigningAttestationCheck!);
    checkSlsaCheck(o.slsaCheck!);
    checkTrustedDirectoryCheck(o.trustedDirectoryCheck!);
    checkVulnerabilityCheck(o.vulnerabilityCheck!);
  }
  buildCounterCheck--;
}

core.int buildCounterCheckResult = 0;
api.CheckResult buildCheckResult() {
  final o = api.CheckResult();
  buildCounterCheckResult++;
  if (buildCounterCheckResult < 3) {
    o.allowlistResult = buildAllowlistResult();
    o.displayName = 'foo';
    o.evaluationResult = buildEvaluationResult();
    o.explanation = 'foo';
    o.index = 'foo';
    o.type = 'foo';
  }
  buildCounterCheckResult--;
  return o;
}

void checkCheckResult(api.CheckResult o) {
  buildCounterCheckResult++;
  if (buildCounterCheckResult < 3) {
    checkAllowlistResult(o.allowlistResult!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkEvaluationResult(o.evaluationResult!);
    unittest.expect(o.explanation!, unittest.equals('foo'));
    unittest.expect(o.index!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterCheckResult--;
}

core.List<api.CheckResult> buildUnnamed5() => [
      buildCheckResult(),
      buildCheckResult(),
    ];

void checkUnnamed5(core.List<api.CheckResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheckResult(o[0]);
  checkCheckResult(o[1]);
}

core.int buildCounterCheckResults = 0;
api.CheckResults buildCheckResults() {
  final o = api.CheckResults();
  buildCounterCheckResults++;
  if (buildCounterCheckResults < 3) {
    o.results = buildUnnamed5();
  }
  buildCounterCheckResults--;
  return o;
}

void checkCheckResults(api.CheckResults o) {
  buildCounterCheckResults++;
  if (buildCounterCheckResults < 3) {
    checkUnnamed5(o.results!);
  }
  buildCounterCheckResults--;
}

core.List<api.Check> buildUnnamed6() => [buildCheck(), buildCheck()];

void checkUnnamed6(core.List<api.Check> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheck(o[0]);
  checkCheck(o[1]);
}

core.int buildCounterCheckSet = 0;
api.CheckSet buildCheckSet() {
  final o = api.CheckSet();
  buildCounterCheckSet++;
  if (buildCounterCheckSet < 3) {
    o.checks = buildUnnamed6();
    o.displayName = 'foo';
    o.imageAllowlist = buildImageAllowlist();
    o.scope = buildScope();
  }
  buildCounterCheckSet--;
  return o;
}

void checkCheckSet(api.CheckSet o) {
  buildCounterCheckSet++;
  if (buildCounterCheckSet < 3) {
    checkUnnamed6(o.checks!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkImageAllowlist(o.imageAllowlist!);
    checkScope(o.scope!);
  }
  buildCounterCheckSet--;
}

core.int buildCounterCheckSetResult = 0;
api.CheckSetResult buildCheckSetResult() {
  final o = api.CheckSetResult();
  buildCounterCheckSetResult++;
  if (buildCounterCheckSetResult < 3) {
    o.allowlistResult = buildAllowlistResult();
    o.checkResults = buildCheckResults();
    o.displayName = 'foo';
    o.explanation = 'foo';
    o.index = 'foo';
    o.scope = buildScope();
  }
  buildCounterCheckSetResult--;
  return o;
}

void checkCheckSetResult(api.CheckSetResult o) {
  buildCounterCheckSetResult++;
  if (buildCounterCheckSetResult < 3) {
    checkAllowlistResult(o.allowlistResult!);
    checkCheckResults(o.checkResults!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.explanation!, unittest.equals('foo'));
    unittest.expect(o.index!, unittest.equals('foo'));
    checkScope(o.scope!);
  }
  buildCounterCheckSetResult--;
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

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEvaluateGkePolicyRequest = 0;
api.EvaluateGkePolicyRequest buildEvaluateGkePolicyRequest() {
  final o = api.EvaluateGkePolicyRequest();
  buildCounterEvaluateGkePolicyRequest++;
  if (buildCounterEvaluateGkePolicyRequest < 3) {
    o.resource = buildUnnamed7();
  }
  buildCounterEvaluateGkePolicyRequest--;
  return o;
}

void checkEvaluateGkePolicyRequest(api.EvaluateGkePolicyRequest o) {
  buildCounterEvaluateGkePolicyRequest++;
  if (buildCounterEvaluateGkePolicyRequest < 3) {
    checkUnnamed7(o.resource!);
  }
  buildCounterEvaluateGkePolicyRequest--;
}

core.List<api.PodResult> buildUnnamed8() => [
      buildPodResult(),
      buildPodResult(),
    ];

void checkUnnamed8(core.List<api.PodResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPodResult(o[0]);
  checkPodResult(o[1]);
}

core.int buildCounterEvaluateGkePolicyResponse = 0;
api.EvaluateGkePolicyResponse buildEvaluateGkePolicyResponse() {
  final o = api.EvaluateGkePolicyResponse();
  buildCounterEvaluateGkePolicyResponse++;
  if (buildCounterEvaluateGkePolicyResponse < 3) {
    o.results = buildUnnamed8();
    o.verdict = 'foo';
  }
  buildCounterEvaluateGkePolicyResponse--;
  return o;
}

void checkEvaluateGkePolicyResponse(api.EvaluateGkePolicyResponse o) {
  buildCounterEvaluateGkePolicyResponse++;
  if (buildCounterEvaluateGkePolicyResponse < 3) {
    checkUnnamed8(o.results!);
    unittest.expect(o.verdict!, unittest.equals('foo'));
  }
  buildCounterEvaluateGkePolicyResponse--;
}

core.int buildCounterEvaluationResult = 0;
api.EvaluationResult buildEvaluationResult() {
  final o = api.EvaluationResult();
  buildCounterEvaluationResult++;
  if (buildCounterEvaluationResult < 3) {
    o.verdict = 'foo';
  }
  buildCounterEvaluationResult--;
  return o;
}

void checkEvaluationResult(api.EvaluationResult o) {
  buildCounterEvaluationResult++;
  if (buildCounterEvaluationResult < 3) {
    unittest.expect(o.verdict!, unittest.equals('foo'));
  }
  buildCounterEvaluationResult--;
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

core.List<api.CheckSet> buildUnnamed9() => [buildCheckSet(), buildCheckSet()];

void checkUnnamed9(core.List<api.CheckSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheckSet(o[0]);
  checkCheckSet(o[1]);
}

core.int buildCounterGkePolicy = 0;
api.GkePolicy buildGkePolicy() {
  final o = api.GkePolicy();
  buildCounterGkePolicy++;
  if (buildCounterGkePolicy < 3) {
    o.checkSets = buildUnnamed9();
    o.imageAllowlist = buildImageAllowlist();
  }
  buildCounterGkePolicy--;
  return o;
}

void checkGkePolicy(api.GkePolicy o) {
  buildCounterGkePolicy++;
  if (buildCounterGkePolicy < 3) {
    checkUnnamed9(o.checkSets!);
    checkImageAllowlist(o.imageAllowlist!);
  }
  buildCounterGkePolicy--;
}

core.List<api.Binding> buildUnnamed10() => [buildBinding(), buildBinding()];

void checkUnnamed10(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterIamPolicy = 0;
api.IamPolicy buildIamPolicy() {
  final o = api.IamPolicy();
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    o.bindings = buildUnnamed10();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterIamPolicy--;
  return o;
}

void checkIamPolicy(api.IamPolicy o) {
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    checkUnnamed10(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterIamPolicy--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImageAllowlist = 0;
api.ImageAllowlist buildImageAllowlist() {
  final o = api.ImageAllowlist();
  buildCounterImageAllowlist++;
  if (buildCounterImageAllowlist < 3) {
    o.allowPattern = buildUnnamed11();
  }
  buildCounterImageAllowlist--;
  return o;
}

void checkImageAllowlist(api.ImageAllowlist o) {
  buildCounterImageAllowlist++;
  if (buildCounterImageAllowlist < 3) {
    checkUnnamed11(o.allowPattern!);
  }
  buildCounterImageAllowlist--;
}

core.int buildCounterImageFreshnessCheck = 0;
api.ImageFreshnessCheck buildImageFreshnessCheck() {
  final o = api.ImageFreshnessCheck();
  buildCounterImageFreshnessCheck++;
  if (buildCounterImageFreshnessCheck < 3) {
    o.maxUploadAgeDays = 42;
  }
  buildCounterImageFreshnessCheck--;
  return o;
}

void checkImageFreshnessCheck(api.ImageFreshnessCheck o) {
  buildCounterImageFreshnessCheck++;
  if (buildCounterImageFreshnessCheck < 3) {
    unittest.expect(o.maxUploadAgeDays!, unittest.equals(42));
  }
  buildCounterImageFreshnessCheck--;
}

core.int buildCounterImageResult = 0;
api.ImageResult buildImageResult() {
  final o = api.ImageResult();
  buildCounterImageResult++;
  if (buildCounterImageResult < 3) {
    o.allowlistResult = buildAllowlistResult();
    o.checkSetResult = buildCheckSetResult();
    o.explanation = 'foo';
    o.imageUri = 'foo';
    o.verdict = 'foo';
  }
  buildCounterImageResult--;
  return o;
}

void checkImageResult(api.ImageResult o) {
  buildCounterImageResult++;
  if (buildCounterImageResult < 3) {
    checkAllowlistResult(o.allowlistResult!);
    checkCheckSetResult(o.checkSetResult!);
    unittest.expect(o.explanation!, unittest.equals('foo'));
    unittest.expect(o.imageUri!, unittest.equals('foo'));
    unittest.expect(o.verdict!, unittest.equals('foo'));
  }
  buildCounterImageResult--;
}

core.int buildCounterJwt = 0;
api.Jwt buildJwt() {
  final o = api.Jwt();
  buildCounterJwt++;
  if (buildCounterJwt < 3) {
    o.compactJwt = 'foo';
  }
  buildCounterJwt--;
  return o;
}

void checkJwt(api.Jwt o) {
  buildCounterJwt++;
  if (buildCounterJwt < 3) {
    unittest.expect(o.compactJwt!, unittest.equals('foo'));
  }
  buildCounterJwt--;
}

core.List<api.Attestor> buildUnnamed12() => [buildAttestor(), buildAttestor()];

void checkUnnamed12(core.List<api.Attestor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestor(o[0]);
  checkAttestor(o[1]);
}

core.int buildCounterListAttestorsResponse = 0;
api.ListAttestorsResponse buildListAttestorsResponse() {
  final o = api.ListAttestorsResponse();
  buildCounterListAttestorsResponse++;
  if (buildCounterListAttestorsResponse < 3) {
    o.attestors = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttestorsResponse--;
  return o;
}

void checkListAttestorsResponse(api.ListAttestorsResponse o) {
  buildCounterListAttestorsResponse++;
  if (buildCounterListAttestorsResponse < 3) {
    checkUnnamed12(o.attestors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAttestorsResponse--;
}

core.List<api.PlatformPolicy> buildUnnamed13() => [
      buildPlatformPolicy(),
      buildPlatformPolicy(),
    ];

void checkUnnamed13(core.List<api.PlatformPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformPolicy(o[0]);
  checkPlatformPolicy(o[1]);
}

core.int buildCounterListPlatformPoliciesResponse = 0;
api.ListPlatformPoliciesResponse buildListPlatformPoliciesResponse() {
  final o = api.ListPlatformPoliciesResponse();
  buildCounterListPlatformPoliciesResponse++;
  if (buildCounterListPlatformPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.platformPolicies = buildUnnamed13();
  }
  buildCounterListPlatformPoliciesResponse--;
  return o;
}

void checkListPlatformPoliciesResponse(api.ListPlatformPoliciesResponse o) {
  buildCounterListPlatformPoliciesResponse++;
  if (buildCounterListPlatformPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.platformPolicies!);
  }
  buildCounterListPlatformPoliciesResponse--;
}

core.int buildCounterPkixPublicKey = 0;
api.PkixPublicKey buildPkixPublicKey() {
  final o = api.PkixPublicKey();
  buildCounterPkixPublicKey++;
  if (buildCounterPkixPublicKey < 3) {
    o.keyId = 'foo';
    o.publicKeyPem = 'foo';
    o.signatureAlgorithm = 'foo';
  }
  buildCounterPkixPublicKey--;
  return o;
}

void checkPkixPublicKey(api.PkixPublicKey o) {
  buildCounterPkixPublicKey++;
  if (buildCounterPkixPublicKey < 3) {
    unittest.expect(o.keyId!, unittest.equals('foo'));
    unittest.expect(o.publicKeyPem!, unittest.equals('foo'));
    unittest.expect(o.signatureAlgorithm!, unittest.equals('foo'));
  }
  buildCounterPkixPublicKey--;
}

core.List<api.PkixPublicKey> buildUnnamed14() => [
      buildPkixPublicKey(),
      buildPkixPublicKey(),
    ];

void checkUnnamed14(core.List<api.PkixPublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPkixPublicKey(o[0]);
  checkPkixPublicKey(o[1]);
}

core.int buildCounterPkixPublicKeySet = 0;
api.PkixPublicKeySet buildPkixPublicKeySet() {
  final o = api.PkixPublicKeySet();
  buildCounterPkixPublicKeySet++;
  if (buildCounterPkixPublicKeySet < 3) {
    o.pkixPublicKeys = buildUnnamed14();
  }
  buildCounterPkixPublicKeySet--;
  return o;
}

void checkPkixPublicKeySet(api.PkixPublicKeySet o) {
  buildCounterPkixPublicKeySet++;
  if (buildCounterPkixPublicKeySet < 3) {
    checkUnnamed14(o.pkixPublicKeys!);
  }
  buildCounterPkixPublicKeySet--;
}

core.int buildCounterPlatformPolicy = 0;
api.PlatformPolicy buildPlatformPolicy() {
  final o = api.PlatformPolicy();
  buildCounterPlatformPolicy++;
  if (buildCounterPlatformPolicy < 3) {
    o.description = 'foo';
    o.etag = 'foo';
    o.gkePolicy = buildGkePolicy();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPlatformPolicy--;
  return o;
}

void checkPlatformPolicy(api.PlatformPolicy o) {
  buildCounterPlatformPolicy++;
  if (buildCounterPlatformPolicy < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGkePolicy(o.gkePolicy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPlatformPolicy--;
}

core.List<api.ImageResult> buildUnnamed15() => [
      buildImageResult(),
      buildImageResult(),
    ];

void checkUnnamed15(core.List<api.ImageResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageResult(o[0]);
  checkImageResult(o[1]);
}

core.int buildCounterPodResult = 0;
api.PodResult buildPodResult() {
  final o = api.PodResult();
  buildCounterPodResult++;
  if (buildCounterPodResult < 3) {
    o.imageResults = buildUnnamed15();
    o.kubernetesNamespace = 'foo';
    o.kubernetesServiceAccount = 'foo';
    o.podName = 'foo';
    o.verdict = 'foo';
  }
  buildCounterPodResult--;
  return o;
}

void checkPodResult(api.PodResult o) {
  buildCounterPodResult++;
  if (buildCounterPodResult < 3) {
    checkUnnamed15(o.imageResults!);
    unittest.expect(o.kubernetesNamespace!, unittest.equals('foo'));
    unittest.expect(o.kubernetesServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.podName!, unittest.equals('foo'));
    unittest.expect(o.verdict!, unittest.equals('foo'));
  }
  buildCounterPodResult--;
}

core.List<api.AdmissionWhitelistPattern> buildUnnamed16() => [
      buildAdmissionWhitelistPattern(),
      buildAdmissionWhitelistPattern(),
    ];

void checkUnnamed16(core.List<api.AdmissionWhitelistPattern> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionWhitelistPattern(o[0]);
  checkAdmissionWhitelistPattern(o[1]);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed17() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed17(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed18() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed18(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed19() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed19(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed20() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed20(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.admissionWhitelistPatterns = buildUnnamed16();
    o.clusterAdmissionRules = buildUnnamed17();
    o.defaultAdmissionRule = buildAdmissionRule();
    o.description = 'foo';
    o.etag = 'foo';
    o.globalPolicyEvaluationMode = 'foo';
    o.istioServiceIdentityAdmissionRules = buildUnnamed18();
    o.kubernetesNamespaceAdmissionRules = buildUnnamed19();
    o.kubernetesServiceAccountAdmissionRules = buildUnnamed20();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed16(o.admissionWhitelistPatterns!);
    checkUnnamed17(o.clusterAdmissionRules!);
    checkAdmissionRule(o.defaultAdmissionRule!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.globalPolicyEvaluationMode!, unittest.equals('foo'));
    checkUnnamed18(o.istioServiceIdentityAdmissionRules!);
    checkUnnamed19(o.kubernetesNamespaceAdmissionRules!);
    checkUnnamed20(o.kubernetesServiceAccountAdmissionRules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPolicy--;
}

core.int buildCounterScope = 0;
api.Scope buildScope() {
  final o = api.Scope();
  buildCounterScope++;
  if (buildCounterScope < 3) {
    o.kubernetesNamespace = 'foo';
    o.kubernetesServiceAccount = 'foo';
  }
  buildCounterScope--;
  return o;
}

void checkScope(api.Scope o) {
  buildCounterScope++;
  if (buildCounterScope < 3) {
    unittest.expect(o.kubernetesNamespace!, unittest.equals('foo'));
    unittest.expect(o.kubernetesServiceAccount!, unittest.equals('foo'));
  }
  buildCounterScope--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildIamPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkIamPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSignature = 0;
api.Signature buildSignature() {
  final o = api.Signature();
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    o.publicKeyId = 'foo';
    o.signature = 'foo';
  }
  buildCounterSignature--;
  return o;
}

void checkSignature(api.Signature o) {
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    unittest.expect(o.publicKeyId!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
  }
  buildCounterSignature--;
}

core.int buildCounterSigstoreAuthority = 0;
api.SigstoreAuthority buildSigstoreAuthority() {
  final o = api.SigstoreAuthority();
  buildCounterSigstoreAuthority++;
  if (buildCounterSigstoreAuthority < 3) {
    o.displayName = 'foo';
    o.publicKeySet = buildSigstorePublicKeySet();
  }
  buildCounterSigstoreAuthority--;
  return o;
}

void checkSigstoreAuthority(api.SigstoreAuthority o) {
  buildCounterSigstoreAuthority++;
  if (buildCounterSigstoreAuthority < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkSigstorePublicKeySet(o.publicKeySet!);
  }
  buildCounterSigstoreAuthority--;
}

core.int buildCounterSigstorePublicKey = 0;
api.SigstorePublicKey buildSigstorePublicKey() {
  final o = api.SigstorePublicKey();
  buildCounterSigstorePublicKey++;
  if (buildCounterSigstorePublicKey < 3) {
    o.publicKeyPem = 'foo';
  }
  buildCounterSigstorePublicKey--;
  return o;
}

void checkSigstorePublicKey(api.SigstorePublicKey o) {
  buildCounterSigstorePublicKey++;
  if (buildCounterSigstorePublicKey < 3) {
    unittest.expect(o.publicKeyPem!, unittest.equals('foo'));
  }
  buildCounterSigstorePublicKey--;
}

core.List<api.SigstorePublicKey> buildUnnamed21() => [
      buildSigstorePublicKey(),
      buildSigstorePublicKey(),
    ];

void checkUnnamed21(core.List<api.SigstorePublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigstorePublicKey(o[0]);
  checkSigstorePublicKey(o[1]);
}

core.int buildCounterSigstorePublicKeySet = 0;
api.SigstorePublicKeySet buildSigstorePublicKeySet() {
  final o = api.SigstorePublicKeySet();
  buildCounterSigstorePublicKeySet++;
  if (buildCounterSigstorePublicKeySet < 3) {
    o.publicKeys = buildUnnamed21();
  }
  buildCounterSigstorePublicKeySet--;
  return o;
}

void checkSigstorePublicKeySet(api.SigstorePublicKeySet o) {
  buildCounterSigstorePublicKeySet++;
  if (buildCounterSigstorePublicKeySet < 3) {
    checkUnnamed21(o.publicKeys!);
  }
  buildCounterSigstorePublicKeySet--;
}

core.List<api.SigstoreAuthority> buildUnnamed22() => [
      buildSigstoreAuthority(),
      buildSigstoreAuthority(),
    ];

void checkUnnamed22(core.List<api.SigstoreAuthority> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigstoreAuthority(o[0]);
  checkSigstoreAuthority(o[1]);
}

core.int buildCounterSigstoreSignatureCheck = 0;
api.SigstoreSignatureCheck buildSigstoreSignatureCheck() {
  final o = api.SigstoreSignatureCheck();
  buildCounterSigstoreSignatureCheck++;
  if (buildCounterSigstoreSignatureCheck < 3) {
    o.sigstoreAuthorities = buildUnnamed22();
  }
  buildCounterSigstoreSignatureCheck--;
  return o;
}

void checkSigstoreSignatureCheck(api.SigstoreSignatureCheck o) {
  buildCounterSigstoreSignatureCheck++;
  if (buildCounterSigstoreSignatureCheck < 3) {
    checkUnnamed22(o.sigstoreAuthorities!);
  }
  buildCounterSigstoreSignatureCheck--;
}

core.List<api.AttestationAuthenticator> buildUnnamed23() => [
      buildAttestationAuthenticator(),
      buildAttestationAuthenticator(),
    ];

void checkUnnamed23(core.List<api.AttestationAuthenticator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestationAuthenticator(o[0]);
  checkAttestationAuthenticator(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSimpleSigningAttestationCheck = 0;
api.SimpleSigningAttestationCheck buildSimpleSigningAttestationCheck() {
  final o = api.SimpleSigningAttestationCheck();
  buildCounterSimpleSigningAttestationCheck++;
  if (buildCounterSimpleSigningAttestationCheck < 3) {
    o.attestationAuthenticators = buildUnnamed23();
    o.containerAnalysisAttestationProjects = buildUnnamed24();
  }
  buildCounterSimpleSigningAttestationCheck--;
  return o;
}

void checkSimpleSigningAttestationCheck(api.SimpleSigningAttestationCheck o) {
  buildCounterSimpleSigningAttestationCheck++;
  if (buildCounterSimpleSigningAttestationCheck < 3) {
    checkUnnamed23(o.attestationAuthenticators!);
    checkUnnamed24(o.containerAnalysisAttestationProjects!);
  }
  buildCounterSimpleSigningAttestationCheck--;
}

core.List<api.VerificationRule> buildUnnamed25() => [
      buildVerificationRule(),
      buildVerificationRule(),
    ];

void checkUnnamed25(core.List<api.VerificationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationRule(o[0]);
  checkVerificationRule(o[1]);
}

core.int buildCounterSlsaCheck = 0;
api.SlsaCheck buildSlsaCheck() {
  final o = api.SlsaCheck();
  buildCounterSlsaCheck++;
  if (buildCounterSlsaCheck < 3) {
    o.rules = buildUnnamed25();
  }
  buildCounterSlsaCheck--;
  return o;
}

void checkSlsaCheck(api.SlsaCheck o) {
  buildCounterSlsaCheck++;
  if (buildCounterSlsaCheck < 3) {
    checkUnnamed25(o.rules!);
  }
  buildCounterSlsaCheck--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed26();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed26(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed27();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed27(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrustedDirectoryCheck = 0;
api.TrustedDirectoryCheck buildTrustedDirectoryCheck() {
  final o = api.TrustedDirectoryCheck();
  buildCounterTrustedDirectoryCheck++;
  if (buildCounterTrustedDirectoryCheck < 3) {
    o.trustedDirPatterns = buildUnnamed28();
  }
  buildCounterTrustedDirectoryCheck--;
  return o;
}

void checkTrustedDirectoryCheck(api.TrustedDirectoryCheck o) {
  buildCounterTrustedDirectoryCheck++;
  if (buildCounterTrustedDirectoryCheck < 3) {
    checkUnnamed28(o.trustedDirPatterns!);
  }
  buildCounterTrustedDirectoryCheck--;
}

core.List<api.AttestorPublicKey> buildUnnamed29() => [
      buildAttestorPublicKey(),
      buildAttestorPublicKey(),
    ];

void checkUnnamed29(core.List<api.AttestorPublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestorPublicKey(o[0]);
  checkAttestorPublicKey(o[1]);
}

core.int buildCounterUserOwnedGrafeasNote = 0;
api.UserOwnedGrafeasNote buildUserOwnedGrafeasNote() {
  final o = api.UserOwnedGrafeasNote();
  buildCounterUserOwnedGrafeasNote++;
  if (buildCounterUserOwnedGrafeasNote < 3) {
    o.delegationServiceAccountEmail = 'foo';
    o.noteReference = 'foo';
    o.publicKeys = buildUnnamed29();
  }
  buildCounterUserOwnedGrafeasNote--;
  return o;
}

void checkUserOwnedGrafeasNote(api.UserOwnedGrafeasNote o) {
  buildCounterUserOwnedGrafeasNote++;
  if (buildCounterUserOwnedGrafeasNote < 3) {
    unittest.expect(o.delegationServiceAccountEmail!, unittest.equals('foo'));
    unittest.expect(o.noteReference!, unittest.equals('foo'));
    checkUnnamed29(o.publicKeys!);
  }
  buildCounterUserOwnedGrafeasNote--;
}

core.int buildCounterValidateAttestationOccurrenceRequest = 0;
api.ValidateAttestationOccurrenceRequest
    buildValidateAttestationOccurrenceRequest() {
  final o = api.ValidateAttestationOccurrenceRequest();
  buildCounterValidateAttestationOccurrenceRequest++;
  if (buildCounterValidateAttestationOccurrenceRequest < 3) {
    o.attestation = buildAttestationOccurrence();
    o.occurrenceNote = 'foo';
    o.occurrenceResourceUri = 'foo';
  }
  buildCounterValidateAttestationOccurrenceRequest--;
  return o;
}

void checkValidateAttestationOccurrenceRequest(
  api.ValidateAttestationOccurrenceRequest o,
) {
  buildCounterValidateAttestationOccurrenceRequest++;
  if (buildCounterValidateAttestationOccurrenceRequest < 3) {
    checkAttestationOccurrence(o.attestation!);
    unittest.expect(o.occurrenceNote!, unittest.equals('foo'));
    unittest.expect(o.occurrenceResourceUri!, unittest.equals('foo'));
  }
  buildCounterValidateAttestationOccurrenceRequest--;
}

core.int buildCounterValidateAttestationOccurrenceResponse = 0;
api.ValidateAttestationOccurrenceResponse
    buildValidateAttestationOccurrenceResponse() {
  final o = api.ValidateAttestationOccurrenceResponse();
  buildCounterValidateAttestationOccurrenceResponse++;
  if (buildCounterValidateAttestationOccurrenceResponse < 3) {
    o.denialReason = 'foo';
    o.result = 'foo';
  }
  buildCounterValidateAttestationOccurrenceResponse--;
  return o;
}

void checkValidateAttestationOccurrenceResponse(
  api.ValidateAttestationOccurrenceResponse o,
) {
  buildCounterValidateAttestationOccurrenceResponse++;
  if (buildCounterValidateAttestationOccurrenceResponse < 3) {
    unittest.expect(o.denialReason!, unittest.equals('foo'));
    unittest.expect(o.result!, unittest.equals('foo'));
  }
  buildCounterValidateAttestationOccurrenceResponse--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVerificationRule = 0;
api.VerificationRule buildVerificationRule() {
  final o = api.VerificationRule();
  buildCounterVerificationRule++;
  if (buildCounterVerificationRule < 3) {
    o.attestationSource = buildAttestationSource();
    o.configBasedBuildRequired = true;
    o.trustedBuilder = 'foo';
    o.trustedSourceRepoPatterns = buildUnnamed30();
  }
  buildCounterVerificationRule--;
  return o;
}

void checkVerificationRule(api.VerificationRule o) {
  buildCounterVerificationRule++;
  if (buildCounterVerificationRule < 3) {
    checkAttestationSource(o.attestationSource!);
    unittest.expect(o.configBasedBuildRequired!, unittest.isTrue);
    unittest.expect(o.trustedBuilder!, unittest.equals('foo'));
    checkUnnamed30(o.trustedSourceRepoPatterns!);
  }
  buildCounterVerificationRule--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVulnerabilityCheck = 0;
api.VulnerabilityCheck buildVulnerabilityCheck() {
  final o = api.VulnerabilityCheck();
  buildCounterVulnerabilityCheck++;
  if (buildCounterVulnerabilityCheck < 3) {
    o.allowedCves = buildUnnamed31();
    o.blockedCves = buildUnnamed32();
    o.containerAnalysisVulnerabilityProjects = buildUnnamed33();
    o.maximumFixableSeverity = 'foo';
    o.maximumUnfixableSeverity = 'foo';
  }
  buildCounterVulnerabilityCheck--;
  return o;
}

void checkVulnerabilityCheck(api.VulnerabilityCheck o) {
  buildCounterVulnerabilityCheck++;
  if (buildCounterVulnerabilityCheck < 3) {
    checkUnnamed31(o.allowedCves!);
    checkUnnamed32(o.blockedCves!);
    checkUnnamed33(o.containerAnalysisVulnerabilityProjects!);
    unittest.expect(o.maximumFixableSeverity!, unittest.equals('foo'));
    unittest.expect(o.maximumUnfixableSeverity!, unittest.equals('foo'));
  }
  buildCounterVulnerabilityCheck--;
}

void main() {
  unittest.group('obj-schema-AdmissionRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdmissionRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdmissionRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdmissionRule(od);
    });
  });

  unittest.group('obj-schema-AdmissionWhitelistPattern', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdmissionWhitelistPattern();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdmissionWhitelistPattern.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdmissionWhitelistPattern(od);
    });
  });

  unittest.group('obj-schema-AllowlistResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowlistResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowlistResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAllowlistResult(od);
    });
  });

  unittest.group('obj-schema-AttestationAuthenticator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationAuthenticator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationAuthenticator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestationAuthenticator(od);
    });
  });

  unittest.group('obj-schema-AttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-AttestationSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestationSource(od);
    });
  });

  unittest.group('obj-schema-Attestor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attestor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestor(od);
    });
  });

  unittest.group('obj-schema-AttestorPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestorPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestorPublicKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestorPublicKey(od);
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

  unittest.group('obj-schema-Check', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Check.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheck(od);
    });
  });

  unittest.group('obj-schema-CheckResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckResult(od);
    });
  });

  unittest.group('obj-schema-CheckResults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckResults.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckResults(od);
    });
  });

  unittest.group('obj-schema-CheckSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckSet(od);
    });
  });

  unittest.group('obj-schema-CheckSetResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckSetResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckSetResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckSetResult(od);
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

  unittest.group('obj-schema-EvaluateGkePolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluateGkePolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluateGkePolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluateGkePolicyRequest(od);
    });
  });

  unittest.group('obj-schema-EvaluateGkePolicyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluateGkePolicyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluateGkePolicyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluateGkePolicyResponse(od);
    });
  });

  unittest.group('obj-schema-EvaluationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluationResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluationResult(od);
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

  unittest.group('obj-schema-GkePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkePolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkePolicy(od);
    });
  });

  unittest.group('obj-schema-IamPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIamPolicy(od);
    });
  });

  unittest.group('obj-schema-ImageAllowlist', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageAllowlist();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageAllowlist.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageAllowlist(od);
    });
  });

  unittest.group('obj-schema-ImageFreshnessCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageFreshnessCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageFreshnessCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageFreshnessCheck(od);
    });
  });

  unittest.group('obj-schema-ImageResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageResult(od);
    });
  });

  unittest.group('obj-schema-Jwt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Jwt.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJwt(od);
    });
  });

  unittest.group('obj-schema-ListAttestorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAttestorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAttestorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAttestorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlatformPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlatformPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlatformPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPlatformPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-PkixPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPkixPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PkixPublicKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPkixPublicKey(od);
    });
  });

  unittest.group('obj-schema-PkixPublicKeySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPkixPublicKeySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PkixPublicKeySet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPkixPublicKeySet(od);
    });
  });

  unittest.group('obj-schema-PlatformPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlatformPolicy(od);
    });
  });

  unittest.group('obj-schema-PodResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPodResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PodResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPodResult(od);
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

  unittest.group('obj-schema-Scope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Scope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScope(od);
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

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Signature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignature(od);
    });
  });

  unittest.group('obj-schema-SigstoreAuthority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigstoreAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigstoreAuthority.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSigstoreAuthority(od);
    });
  });

  unittest.group('obj-schema-SigstorePublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigstorePublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigstorePublicKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSigstorePublicKey(od);
    });
  });

  unittest.group('obj-schema-SigstorePublicKeySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigstorePublicKeySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigstorePublicKeySet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSigstorePublicKeySet(od);
    });
  });

  unittest.group('obj-schema-SigstoreSignatureCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigstoreSignatureCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigstoreSignatureCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSigstoreSignatureCheck(od);
    });
  });

  unittest.group('obj-schema-SimpleSigningAttestationCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleSigningAttestationCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleSigningAttestationCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSimpleSigningAttestationCheck(od);
    });
  });

  unittest.group('obj-schema-SlsaCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaCheck(od);
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

  unittest.group('obj-schema-TrustedDirectoryCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrustedDirectoryCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrustedDirectoryCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrustedDirectoryCheck(od);
    });
  });

  unittest.group('obj-schema-UserOwnedGrafeasNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserOwnedGrafeasNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserOwnedGrafeasNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserOwnedGrafeasNote(od);
    });
  });

  unittest.group('obj-schema-ValidateAttestationOccurrenceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateAttestationOccurrenceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateAttestationOccurrenceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateAttestationOccurrenceRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateAttestationOccurrenceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateAttestationOccurrenceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateAttestationOccurrenceResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateAttestationOccurrenceResponse(od);
    });
  });

  unittest.group('obj-schema-VerificationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerificationRule(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityCheck(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects;
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getPolicy(arg_name, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--updatePolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects;
      final arg_request = buildPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Policy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPolicy(obj);

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
      final response = await res.updatePolicy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-ProjectsAttestorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildAttestor();
      final arg_parent = 'foo';
      final arg_attestorId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Attestor.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAttestor(obj);

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
            queryMap['attestorId']!.first,
            unittest.equals(arg_attestorId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAttestor());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        attestorId: arg_attestorId,
        $fields: arg_$fields,
      );
      checkAttestor(response as api.Attestor);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
          final resp = convert.json.encode(buildAttestor());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAttestor(response as api.Attestor);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildIamPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
          final resp = convert.json.encode(buildListAttestorsResponse());
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
      checkListAttestorsResponse(response as api.ListAttestorsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
          final resp = convert.json.encode(buildIamPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildAttestor();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Attestor.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAttestor(obj);

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
          final resp = convert.json.encode(buildAttestor());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAttestor(response as api.Attestor);
    });

    unittest.test('method--validateAttestationOccurrence', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildValidateAttestationOccurrenceRequest();
      final arg_attestor = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ValidateAttestationOccurrenceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkValidateAttestationOccurrenceRequest(obj);

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
            buildValidateAttestationOccurrenceResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validateAttestationOccurrence(
        arg_request,
        arg_attestor,
        $fields: arg_$fields,
      );
      checkValidateAttestationOccurrenceResponse(
        response as api.ValidateAttestationOccurrenceResponse,
      );
    });
  });

  unittest.group('resource-ProjectsPlatformsGkePoliciesResource', () {
    unittest.test('method--evaluate', () async {
      final mock = HttpServerMock();
      final res =
          api.BinaryAuthorizationApi(mock).projects.platforms.gke.policies;
      final arg_request = buildEvaluateGkePolicyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EvaluateGkePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEvaluateGkePolicyRequest(obj);

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
          final resp = convert.json.encode(buildEvaluateGkePolicyResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.evaluate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEvaluateGkePolicyResponse(response as api.EvaluateGkePolicyResponse);
    });
  });

  unittest.group('resource-ProjectsPlatformsPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
      final arg_request = buildPlatformPolicy();
      final arg_parent = 'foo';
      final arg_policyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PlatformPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPlatformPolicy(obj);

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
            queryMap['policyId']!.first,
            unittest.equals(arg_policyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPlatformPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        policyId: arg_policyId,
        $fields: arg_$fields,
      );
      checkPlatformPolicy(response as api.PlatformPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
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
          final resp = convert.json.encode(buildPlatformPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPlatformPolicy(response as api.PlatformPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
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
          final resp = convert.json.encode(buildListPlatformPoliciesResponse());
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
      checkListPlatformPoliciesResponse(
        response as api.ListPlatformPoliciesResponse,
      );
    });

    unittest.test('method--replacePlatformPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
      final arg_request = buildPlatformPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PlatformPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPlatformPolicy(obj);

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
          final resp = convert.json.encode(buildPlatformPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replacePlatformPolicy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPlatformPolicy(response as api.PlatformPolicy);
    });
  });

  unittest.group('resource-ProjectsPolicyResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.policy;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildIamPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.policy;
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
          final resp = convert.json.encode(buildIamPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.policy;
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

  unittest.group('resource-SystempolicyResource', () {
    unittest.test('method--getPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).systempolicy;
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getPolicy(arg_name, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });
  });
}
