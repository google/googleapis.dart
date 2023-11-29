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

import 'package:googleapis/binaryauthorization/v1.dart' as api;
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
    unittest.expect(
      o.enforcementMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evaluationMode!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.namePattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdmissionWhitelistPattern--;
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkPkixPublicKeySet(o.pkixPublicKeySet!);
  }
  buildCounterAttestationAuthenticator--;
}

core.List<api.Jwt> buildUnnamed1() => [
      buildJwt(),
      buildJwt(),
    ];

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
    unittest.expect(
      o.serializedPayload!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.signatures!);
  }
  buildCounterAttestationOccurrence--;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.asciiArmoredPgpPublicKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkPkixPublicKey(o.pkixPublicKey!);
  }
  buildCounterAttestorPublicKey--;
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
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkImageAllowlist(o.imageAllowlist!);
    checkImageFreshnessCheck(o.imageFreshnessCheck!);
    checkSimpleSigningAttestationCheck(o.simpleSigningAttestationCheck!);
    checkSlsaCheck(o.slsaCheck!);
    checkTrustedDirectoryCheck(o.trustedDirectoryCheck!);
    checkVulnerabilityCheck(o.vulnerabilityCheck!);
  }
  buildCounterCheck--;
}

core.List<api.Check> buildUnnamed5() => [
      buildCheck(),
      buildCheck(),
    ];

void checkUnnamed5(core.List<api.Check> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheck(o[0]);
  checkCheck(o[1]);
}

core.int buildCounterCheckSet = 0;
api.CheckSet buildCheckSet() {
  final o = api.CheckSet();
  buildCounterCheckSet++;
  if (buildCounterCheckSet < 3) {
    o.checks = buildUnnamed5();
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
    checkUnnamed5(o.checks!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkImageAllowlist(o.imageAllowlist!);
    checkScope(o.scope!);
  }
  buildCounterCheckSet--;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.List<api.CheckSet> buildUnnamed6() => [
      buildCheckSet(),
      buildCheckSet(),
    ];

void checkUnnamed6(core.List<api.CheckSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheckSet(o[0]);
  checkCheckSet(o[1]);
}

core.int buildCounterGkePolicy = 0;
api.GkePolicy buildGkePolicy() {
  final o = api.GkePolicy();
  buildCounterGkePolicy++;
  if (buildCounterGkePolicy < 3) {
    o.checkSets = buildUnnamed6();
    o.imageAllowlist = buildImageAllowlist();
  }
  buildCounterGkePolicy--;
  return o;
}

void checkGkePolicy(api.GkePolicy o) {
  buildCounterGkePolicy++;
  if (buildCounterGkePolicy < 3) {
    checkUnnamed6(o.checkSets!);
    checkImageAllowlist(o.imageAllowlist!);
  }
  buildCounterGkePolicy--;
}

core.List<api.Binding> buildUnnamed7() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed7(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterIamPolicy = 0;
api.IamPolicy buildIamPolicy() {
  final o = api.IamPolicy();
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    o.bindings = buildUnnamed7();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterIamPolicy--;
  return o;
}

void checkIamPolicy(api.IamPolicy o) {
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    checkUnnamed7(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterIamPolicy--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterImageAllowlist = 0;
api.ImageAllowlist buildImageAllowlist() {
  final o = api.ImageAllowlist();
  buildCounterImageAllowlist++;
  if (buildCounterImageAllowlist < 3) {
    o.allowPattern = buildUnnamed8();
  }
  buildCounterImageAllowlist--;
  return o;
}

void checkImageAllowlist(api.ImageAllowlist o) {
  buildCounterImageAllowlist++;
  if (buildCounterImageAllowlist < 3) {
    checkUnnamed8(o.allowPattern!);
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
    unittest.expect(
      o.maxUploadAgeDays!,
      unittest.equals(42),
    );
  }
  buildCounterImageFreshnessCheck--;
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
    unittest.expect(
      o.compactJwt!,
      unittest.equals('foo'),
    );
  }
  buildCounterJwt--;
}

core.List<api.Attestor> buildUnnamed9() => [
      buildAttestor(),
      buildAttestor(),
    ];

void checkUnnamed9(core.List<api.Attestor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestor(o[0]);
  checkAttestor(o[1]);
}

core.int buildCounterListAttestorsResponse = 0;
api.ListAttestorsResponse buildListAttestorsResponse() {
  final o = api.ListAttestorsResponse();
  buildCounterListAttestorsResponse++;
  if (buildCounterListAttestorsResponse < 3) {
    o.attestors = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttestorsResponse--;
  return o;
}

void checkListAttestorsResponse(api.ListAttestorsResponse o) {
  buildCounterListAttestorsResponse++;
  if (buildCounterListAttestorsResponse < 3) {
    checkUnnamed9(o.attestors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAttestorsResponse--;
}

core.List<api.PlatformPolicy> buildUnnamed10() => [
      buildPlatformPolicy(),
      buildPlatformPolicy(),
    ];

void checkUnnamed10(core.List<api.PlatformPolicy> o) {
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
    o.platformPolicies = buildUnnamed10();
  }
  buildCounterListPlatformPoliciesResponse--;
  return o;
}

void checkListPlatformPoliciesResponse(api.ListPlatformPoliciesResponse o) {
  buildCounterListPlatformPoliciesResponse++;
  if (buildCounterListPlatformPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.platformPolicies!);
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
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKeyPem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signatureAlgorithm!,
      unittest.equals('foo'),
    );
  }
  buildCounterPkixPublicKey--;
}

core.List<api.PkixPublicKey> buildUnnamed11() => [
      buildPkixPublicKey(),
      buildPkixPublicKey(),
    ];

void checkUnnamed11(core.List<api.PkixPublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPkixPublicKey(o[0]);
  checkPkixPublicKey(o[1]);
}

core.int buildCounterPkixPublicKeySet = 0;
api.PkixPublicKeySet buildPkixPublicKeySet() {
  final o = api.PkixPublicKeySet();
  buildCounterPkixPublicKeySet++;
  if (buildCounterPkixPublicKeySet < 3) {
    o.pkixPublicKeys = buildUnnamed11();
  }
  buildCounterPkixPublicKeySet--;
  return o;
}

void checkPkixPublicKeySet(api.PkixPublicKeySet o) {
  buildCounterPkixPublicKeySet++;
  if (buildCounterPkixPublicKeySet < 3) {
    checkUnnamed11(o.pkixPublicKeys!);
  }
  buildCounterPkixPublicKeySet--;
}

core.int buildCounterPlatformPolicy = 0;
api.PlatformPolicy buildPlatformPolicy() {
  final o = api.PlatformPolicy();
  buildCounterPlatformPolicy++;
  if (buildCounterPlatformPolicy < 3) {
    o.description = 'foo';
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGkePolicy(o.gkePolicy!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlatformPolicy--;
}

core.List<api.AdmissionWhitelistPattern> buildUnnamed12() => [
      buildAdmissionWhitelistPattern(),
      buildAdmissionWhitelistPattern(),
    ];

void checkUnnamed12(core.List<api.AdmissionWhitelistPattern> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionWhitelistPattern(o[0]);
  checkAdmissionWhitelistPattern(o[1]);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed13() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed13(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed14() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed14(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed15() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed15(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed16() => {
      'x': buildAdmissionRule(),
      'y': buildAdmissionRule(),
    };

void checkUnnamed16(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']!);
  checkAdmissionRule(o['y']!);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.admissionWhitelistPatterns = buildUnnamed12();
    o.clusterAdmissionRules = buildUnnamed13();
    o.defaultAdmissionRule = buildAdmissionRule();
    o.description = 'foo';
    o.etag = 'foo';
    o.globalPolicyEvaluationMode = 'foo';
    o.istioServiceIdentityAdmissionRules = buildUnnamed14();
    o.kubernetesNamespaceAdmissionRules = buildUnnamed15();
    o.kubernetesServiceAccountAdmissionRules = buildUnnamed16();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed12(o.admissionWhitelistPatterns!);
    checkUnnamed13(o.clusterAdmissionRules!);
    checkAdmissionRule(o.defaultAdmissionRule!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.globalPolicyEvaluationMode!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.istioServiceIdentityAdmissionRules!);
    checkUnnamed15(o.kubernetesNamespaceAdmissionRules!);
    checkUnnamed16(o.kubernetesServiceAccountAdmissionRules!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.kubernetesNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kubernetesServiceAccount!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.publicKeyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignature--;
}

core.List<api.AttestationAuthenticator> buildUnnamed17() => [
      buildAttestationAuthenticator(),
      buildAttestationAuthenticator(),
    ];

void checkUnnamed17(core.List<api.AttestationAuthenticator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestationAuthenticator(o[0]);
  checkAttestationAuthenticator(o[1]);
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

core.int buildCounterSimpleSigningAttestationCheck = 0;
api.SimpleSigningAttestationCheck buildSimpleSigningAttestationCheck() {
  final o = api.SimpleSigningAttestationCheck();
  buildCounterSimpleSigningAttestationCheck++;
  if (buildCounterSimpleSigningAttestationCheck < 3) {
    o.attestationAuthenticators = buildUnnamed17();
    o.containerAnalysisAttestationProjects = buildUnnamed18();
  }
  buildCounterSimpleSigningAttestationCheck--;
  return o;
}

void checkSimpleSigningAttestationCheck(api.SimpleSigningAttestationCheck o) {
  buildCounterSimpleSigningAttestationCheck++;
  if (buildCounterSimpleSigningAttestationCheck < 3) {
    checkUnnamed17(o.attestationAuthenticators!);
    checkUnnamed18(o.containerAnalysisAttestationProjects!);
  }
  buildCounterSimpleSigningAttestationCheck--;
}

core.List<api.VerificationRule> buildUnnamed19() => [
      buildVerificationRule(),
      buildVerificationRule(),
    ];

void checkUnnamed19(core.List<api.VerificationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationRule(o[0]);
  checkVerificationRule(o[1]);
}

core.int buildCounterSlsaCheck = 0;
api.SlsaCheck buildSlsaCheck() {
  final o = api.SlsaCheck();
  buildCounterSlsaCheck++;
  if (buildCounterSlsaCheck < 3) {
    o.rules = buildUnnamed19();
  }
  buildCounterSlsaCheck--;
  return o;
}

void checkSlsaCheck(api.SlsaCheck o) {
  buildCounterSlsaCheck++;
  if (buildCounterSlsaCheck < 3) {
    checkUnnamed19(o.rules!);
  }
  buildCounterSlsaCheck--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed20();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed20(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed21();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed21(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterTrustedDirectoryCheck = 0;
api.TrustedDirectoryCheck buildTrustedDirectoryCheck() {
  final o = api.TrustedDirectoryCheck();
  buildCounterTrustedDirectoryCheck++;
  if (buildCounterTrustedDirectoryCheck < 3) {
    o.trustedDirPatterns = buildUnnamed22();
  }
  buildCounterTrustedDirectoryCheck--;
  return o;
}

void checkTrustedDirectoryCheck(api.TrustedDirectoryCheck o) {
  buildCounterTrustedDirectoryCheck++;
  if (buildCounterTrustedDirectoryCheck < 3) {
    checkUnnamed22(o.trustedDirPatterns!);
  }
  buildCounterTrustedDirectoryCheck--;
}

core.List<api.AttestorPublicKey> buildUnnamed23() => [
      buildAttestorPublicKey(),
      buildAttestorPublicKey(),
    ];

void checkUnnamed23(core.List<api.AttestorPublicKey> o) {
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
    o.publicKeys = buildUnnamed23();
  }
  buildCounterUserOwnedGrafeasNote--;
  return o;
}

void checkUserOwnedGrafeasNote(api.UserOwnedGrafeasNote o) {
  buildCounterUserOwnedGrafeasNote++;
  if (buildCounterUserOwnedGrafeasNote < 3) {
    unittest.expect(
      o.delegationServiceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noteReference!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.publicKeys!);
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
    api.ValidateAttestationOccurrenceRequest o) {
  buildCounterValidateAttestationOccurrenceRequest++;
  if (buildCounterValidateAttestationOccurrenceRequest < 3) {
    checkAttestationOccurrence(o.attestation!);
    unittest.expect(
      o.occurrenceNote!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.occurrenceResourceUri!,
      unittest.equals('foo'),
    );
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
    api.ValidateAttestationOccurrenceResponse o) {
  buildCounterValidateAttestationOccurrenceResponse++;
  if (buildCounterValidateAttestationOccurrenceResponse < 3) {
    unittest.expect(
      o.denialReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateAttestationOccurrenceResponse--;
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

core.int buildCounterVerificationRule = 0;
api.VerificationRule buildVerificationRule() {
  final o = api.VerificationRule();
  buildCounterVerificationRule++;
  if (buildCounterVerificationRule < 3) {
    o.attestationSource = buildAttestationSource();
    o.configBasedBuildRequired = true;
    o.trustedBuilder = 'foo';
    o.trustedSourceRepoPatterns = buildUnnamed24();
  }
  buildCounterVerificationRule--;
  return o;
}

void checkVerificationRule(api.VerificationRule o) {
  buildCounterVerificationRule++;
  if (buildCounterVerificationRule < 3) {
    checkAttestationSource(o.attestationSource!);
    unittest.expect(o.configBasedBuildRequired!, unittest.isTrue);
    unittest.expect(
      o.trustedBuilder!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.trustedSourceRepoPatterns!);
  }
  buildCounterVerificationRule--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int buildCounterVulnerabilityCheck = 0;
api.VulnerabilityCheck buildVulnerabilityCheck() {
  final o = api.VulnerabilityCheck();
  buildCounterVulnerabilityCheck++;
  if (buildCounterVulnerabilityCheck < 3) {
    o.allowedCves = buildUnnamed25();
    o.blockedCves = buildUnnamed26();
    o.containerAnalysisVulnerabilityProjects = buildUnnamed27();
    o.maximumFixableSeverity = 'foo';
    o.maximumUnfixableSeverity = 'foo';
  }
  buildCounterVulnerabilityCheck--;
  return o;
}

void checkVulnerabilityCheck(api.VulnerabilityCheck o) {
  buildCounterVulnerabilityCheck++;
  if (buildCounterVulnerabilityCheck < 3) {
    checkUnnamed25(o.allowedCves!);
    checkUnnamed26(o.blockedCves!);
    checkUnnamed27(o.containerAnalysisVulnerabilityProjects!);
    unittest.expect(
      o.maximumFixableSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maximumUnfixableSeverity!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityCheck--;
}

void main() {
  unittest.group('obj-schema-AdmissionRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdmissionRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdmissionRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdmissionRule(od);
    });
  });

  unittest.group('obj-schema-AdmissionWhitelistPattern', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdmissionWhitelistPattern();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdmissionWhitelistPattern.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdmissionWhitelistPattern(od);
    });
  });

  unittest.group('obj-schema-AttestationAuthenticator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationAuthenticator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationAuthenticator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationAuthenticator(od);
    });
  });

  unittest.group('obj-schema-AttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-AttestationSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationSource(od);
    });
  });

  unittest.group('obj-schema-Attestor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attestor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttestor(od);
    });
  });

  unittest.group('obj-schema-AttestorPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestorPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestorPublicKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestorPublicKey(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Check', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Check.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCheck(od);
    });
  });

  unittest.group('obj-schema-CheckSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CheckSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCheckSet(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GkePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GkePolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGkePolicy(od);
    });
  });

  unittest.group('obj-schema-IamPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IamPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicy(od);
    });
  });

  unittest.group('obj-schema-ImageAllowlist', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageAllowlist();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageAllowlist.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageAllowlist(od);
    });
  });

  unittest.group('obj-schema-ImageFreshnessCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageFreshnessCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageFreshnessCheck.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageFreshnessCheck(od);
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
          oJson as core.Map<core.String, core.dynamic>);
      checkListAttestorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlatformPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlatformPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlatformPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPlatformPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-PkixPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPkixPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PkixPublicKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPkixPublicKey(od);
    });
  });

  unittest.group('obj-schema-PkixPublicKeySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPkixPublicKeySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PkixPublicKeySet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPkixPublicKeySet(od);
    });
  });

  unittest.group('obj-schema-PlatformPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlatformPolicy(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-Scope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Scope.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScope(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Signature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignature(od);
    });
  });

  unittest.group('obj-schema-SimpleSigningAttestationCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleSigningAttestationCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleSigningAttestationCheck.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSimpleSigningAttestationCheck(od);
    });
  });

  unittest.group('obj-schema-SlsaCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SlsaCheck.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSlsaCheck(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TrustedDirectoryCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrustedDirectoryCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrustedDirectoryCheck.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrustedDirectoryCheck(od);
    });
  });

  unittest.group('obj-schema-UserOwnedGrafeasNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserOwnedGrafeasNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserOwnedGrafeasNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserOwnedGrafeasNote(od);
    });
  });

  unittest.group('obj-schema-ValidateAttestationOccurrenceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateAttestationOccurrenceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateAttestationOccurrenceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateAttestationOccurrenceRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateAttestationOccurrenceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateAttestationOccurrenceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateAttestationOccurrenceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateAttestationOccurrenceResponse(od);
    });
  });

  unittest.group('obj-schema-VerificationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerificationRule(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityCheck.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityCheck(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPolicy(arg_name, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--updatePolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects;
      final arg_request = buildPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updatePolicy(arg_request, arg_name, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Attestor.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAttestor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          attestorId: arg_attestorId, $fields: arg_$fields);
      checkAttestor(response as api.Attestor);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
        final resp = convert.json.encode(buildAttestor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAttestor(response as api.Attestor);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
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
        final resp = convert.json.encode(buildListAttestorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAttestorsResponse(response as api.ListAttestorsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildAttestor();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Attestor.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAttestor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkAttestor(response as api.Attestor);
    });

    unittest.test('method--validateAttestationOccurrence', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.attestors;
      final arg_request = buildValidateAttestationOccurrenceRequest();
      final arg_attestor = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateAttestationOccurrenceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildValidateAttestationOccurrenceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.validateAttestationOccurrence(
          arg_request, arg_attestor,
          $fields: arg_$fields);
      checkValidateAttestationOccurrenceResponse(
          response as api.ValidateAttestationOccurrenceResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlatformPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlatformPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          policyId: arg_policyId, $fields: arg_$fields);
      checkPlatformPolicy(response as api.PlatformPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
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
        final resp = convert.json.encode(buildPlatformPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListPlatformPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPlatformPoliciesResponse(
          response as api.ListPlatformPoliciesResponse);
    });

    unittest.test('method--replacePlatformPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.platforms.policies;
      final arg_request = buildPlatformPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlatformPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlatformPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.replacePlatformPolicy(arg_request, arg_name,
          $fields: arg_$fields);
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.policy;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkIamPolicy(response as api.IamPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).projects.policy;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-SystempolicyResource', () {
    unittest.test('method--getPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BinaryAuthorizationApi(mock).systempolicy;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPolicy(arg_name, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });
  });
}
