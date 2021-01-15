// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.binaryauthorization.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/binaryauthorization/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<core.String> buildUnnamed3627() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3627(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdmissionRule = 0;
api.AdmissionRule buildAdmissionRule() {
  var o = api.AdmissionRule();
  buildCounterAdmissionRule++;
  if (buildCounterAdmissionRule < 3) {
    o.enforcementMode = 'foo';
    o.evaluationMode = 'foo';
    o.requireAttestationsBy = buildUnnamed3627();
  }
  buildCounterAdmissionRule--;
  return o;
}

void checkAdmissionRule(api.AdmissionRule o) {
  buildCounterAdmissionRule++;
  if (buildCounterAdmissionRule < 3) {
    unittest.expect(o.enforcementMode, unittest.equals('foo'));
    unittest.expect(o.evaluationMode, unittest.equals('foo'));
    checkUnnamed3627(o.requireAttestationsBy);
  }
  buildCounterAdmissionRule--;
}

core.int buildCounterAdmissionWhitelistPattern = 0;
api.AdmissionWhitelistPattern buildAdmissionWhitelistPattern() {
  var o = api.AdmissionWhitelistPattern();
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
    unittest.expect(o.namePattern, unittest.equals('foo'));
  }
  buildCounterAdmissionWhitelistPattern--;
}

core.List<api.Jwt> buildUnnamed3628() {
  var o = <api.Jwt>[];
  o.add(buildJwt());
  o.add(buildJwt());
  return o;
}

void checkUnnamed3628(core.List<api.Jwt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwt(o[0]);
  checkJwt(o[1]);
}

core.List<api.Signature> buildUnnamed3629() {
  var o = <api.Signature>[];
  o.add(buildSignature());
  o.add(buildSignature());
  return o;
}

void checkUnnamed3629(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0]);
  checkSignature(o[1]);
}

core.int buildCounterAttestationOccurrence = 0;
api.AttestationOccurrence buildAttestationOccurrence() {
  var o = api.AttestationOccurrence();
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    o.jwts = buildUnnamed3628();
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed3629();
  }
  buildCounterAttestationOccurrence--;
  return o;
}

void checkAttestationOccurrence(api.AttestationOccurrence o) {
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    checkUnnamed3628(o.jwts);
    unittest.expect(o.serializedPayload, unittest.equals('foo'));
    checkUnnamed3629(o.signatures);
  }
  buildCounterAttestationOccurrence--;
}

core.int buildCounterAttestor = 0;
api.Attestor buildAttestor() {
  var o = api.Attestor();
  buildCounterAttestor++;
  if (buildCounterAttestor < 3) {
    o.description = 'foo';
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkUserOwnedGrafeasNote(o.userOwnedGrafeasNote);
  }
  buildCounterAttestor--;
}

core.int buildCounterAttestorPublicKey = 0;
api.AttestorPublicKey buildAttestorPublicKey() {
  var o = api.AttestorPublicKey();
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
    unittest.expect(o.asciiArmoredPgpPublicKey, unittest.equals('foo'));
    unittest.expect(o.comment, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkPkixPublicKey(o.pkixPublicKey);
  }
  buildCounterAttestorPublicKey--;
}

core.List<core.String> buildUnnamed3630() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3630(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = 'foo';
    o.condition = buildExpr();
    o.members = buildUnnamed3630();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed3630(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.Expr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<api.Binding> buildUnnamed3631() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed3631(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterIamPolicy = 0;
api.IamPolicy buildIamPolicy() {
  var o = api.IamPolicy();
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    o.bindings = buildUnnamed3631();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterIamPolicy--;
  return o;
}

void checkIamPolicy(api.IamPolicy o) {
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    checkUnnamed3631(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterIamPolicy--;
}

core.int buildCounterJwt = 0;
api.Jwt buildJwt() {
  var o = api.Jwt();
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
    unittest.expect(o.compactJwt, unittest.equals('foo'));
  }
  buildCounterJwt--;
}

core.List<api.Attestor> buildUnnamed3632() {
  var o = <api.Attestor>[];
  o.add(buildAttestor());
  o.add(buildAttestor());
  return o;
}

void checkUnnamed3632(core.List<api.Attestor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestor(o[0]);
  checkAttestor(o[1]);
}

core.int buildCounterListAttestorsResponse = 0;
api.ListAttestorsResponse buildListAttestorsResponse() {
  var o = api.ListAttestorsResponse();
  buildCounterListAttestorsResponse++;
  if (buildCounterListAttestorsResponse < 3) {
    o.attestors = buildUnnamed3632();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttestorsResponse--;
  return o;
}

void checkListAttestorsResponse(api.ListAttestorsResponse o) {
  buildCounterListAttestorsResponse++;
  if (buildCounterListAttestorsResponse < 3) {
    checkUnnamed3632(o.attestors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAttestorsResponse--;
}

core.int buildCounterPkixPublicKey = 0;
api.PkixPublicKey buildPkixPublicKey() {
  var o = api.PkixPublicKey();
  buildCounterPkixPublicKey++;
  if (buildCounterPkixPublicKey < 3) {
    o.publicKeyPem = 'foo';
    o.signatureAlgorithm = 'foo';
  }
  buildCounterPkixPublicKey--;
  return o;
}

void checkPkixPublicKey(api.PkixPublicKey o) {
  buildCounterPkixPublicKey++;
  if (buildCounterPkixPublicKey < 3) {
    unittest.expect(o.publicKeyPem, unittest.equals('foo'));
    unittest.expect(o.signatureAlgorithm, unittest.equals('foo'));
  }
  buildCounterPkixPublicKey--;
}

core.List<api.AdmissionWhitelistPattern> buildUnnamed3633() {
  var o = <api.AdmissionWhitelistPattern>[];
  o.add(buildAdmissionWhitelistPattern());
  o.add(buildAdmissionWhitelistPattern());
  return o;
}

void checkUnnamed3633(core.List<api.AdmissionWhitelistPattern> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionWhitelistPattern(o[0]);
  checkAdmissionWhitelistPattern(o[1]);
}

core.Map<core.String, api.AdmissionRule> buildUnnamed3634() {
  var o = <core.String, api.AdmissionRule>{};
  o['x'] = buildAdmissionRule();
  o['y'] = buildAdmissionRule();
  return o;
}

void checkUnnamed3634(core.Map<core.String, api.AdmissionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdmissionRule(o['x']);
  checkAdmissionRule(o['y']);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.admissionWhitelistPatterns = buildUnnamed3633();
    o.clusterAdmissionRules = buildUnnamed3634();
    o.defaultAdmissionRule = buildAdmissionRule();
    o.description = 'foo';
    o.globalPolicyEvaluationMode = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3633(o.admissionWhitelistPatterns);
    checkUnnamed3634(o.clusterAdmissionRules);
    checkAdmissionRule(o.defaultAdmissionRule);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.globalPolicyEvaluationMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterPolicy--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
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
    checkIamPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSignature = 0;
api.Signature buildSignature() {
  var o = api.Signature();
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
    unittest.expect(o.publicKeyId, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterSignature--;
}

core.List<core.String> buildUnnamed3635() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3635(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3635();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3635(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed3636() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3636(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3636();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3636(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.AttestorPublicKey> buildUnnamed3637() {
  var o = <api.AttestorPublicKey>[];
  o.add(buildAttestorPublicKey());
  o.add(buildAttestorPublicKey());
  return o;
}

void checkUnnamed3637(core.List<api.AttestorPublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttestorPublicKey(o[0]);
  checkAttestorPublicKey(o[1]);
}

core.int buildCounterUserOwnedGrafeasNote = 0;
api.UserOwnedGrafeasNote buildUserOwnedGrafeasNote() {
  var o = api.UserOwnedGrafeasNote();
  buildCounterUserOwnedGrafeasNote++;
  if (buildCounterUserOwnedGrafeasNote < 3) {
    o.delegationServiceAccountEmail = 'foo';
    o.noteReference = 'foo';
    o.publicKeys = buildUnnamed3637();
  }
  buildCounterUserOwnedGrafeasNote--;
  return o;
}

void checkUserOwnedGrafeasNote(api.UserOwnedGrafeasNote o) {
  buildCounterUserOwnedGrafeasNote++;
  if (buildCounterUserOwnedGrafeasNote < 3) {
    unittest.expect(o.delegationServiceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.noteReference, unittest.equals('foo'));
    checkUnnamed3637(o.publicKeys);
  }
  buildCounterUserOwnedGrafeasNote--;
}

core.int buildCounterValidateAttestationOccurrenceRequest = 0;
api.ValidateAttestationOccurrenceRequest
    buildValidateAttestationOccurrenceRequest() {
  var o = api.ValidateAttestationOccurrenceRequest();
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
    checkAttestationOccurrence(o.attestation);
    unittest.expect(o.occurrenceNote, unittest.equals('foo'));
    unittest.expect(o.occurrenceResourceUri, unittest.equals('foo'));
  }
  buildCounterValidateAttestationOccurrenceRequest--;
}

core.int buildCounterValidateAttestationOccurrenceResponse = 0;
api.ValidateAttestationOccurrenceResponse
    buildValidateAttestationOccurrenceResponse() {
  var o = api.ValidateAttestationOccurrenceResponse();
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
    unittest.expect(o.denialReason, unittest.equals('foo'));
    unittest.expect(o.result, unittest.equals('foo'));
  }
  buildCounterValidateAttestationOccurrenceResponse--;
}

void main() {
  unittest.group('obj-schema-AdmissionRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdmissionRule();
      var od = api.AdmissionRule.fromJson(o.toJson());
      checkAdmissionRule(od);
    });
  });

  unittest.group('obj-schema-AdmissionWhitelistPattern', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdmissionWhitelistPattern();
      var od = api.AdmissionWhitelistPattern.fromJson(o.toJson());
      checkAdmissionWhitelistPattern(od);
    });
  });

  unittest.group('obj-schema-AttestationOccurrence', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttestationOccurrence();
      var od = api.AttestationOccurrence.fromJson(o.toJson());
      checkAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-Attestor', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttestor();
      var od = api.Attestor.fromJson(o.toJson());
      checkAttestor(od);
    });
  });

  unittest.group('obj-schema-AttestorPublicKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttestorPublicKey();
      var od = api.AttestorPublicKey.fromJson(o.toJson());
      checkAttestorPublicKey(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-IamPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicy();
      var od = api.IamPolicy.fromJson(o.toJson());
      checkIamPolicy(od);
    });
  });

  unittest.group('obj-schema-Jwt', () {
    unittest.test('to-json--from-json', () {
      var o = buildJwt();
      var od = api.Jwt.fromJson(o.toJson());
      checkJwt(od);
    });
  });

  unittest.group('obj-schema-ListAttestorsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAttestorsResponse();
      var od = api.ListAttestorsResponse.fromJson(o.toJson());
      checkListAttestorsResponse(od);
    });
  });

  unittest.group('obj-schema-PkixPublicKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildPkixPublicKey();
      var od = api.PkixPublicKey.fromJson(o.toJson());
      checkPkixPublicKey(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignature();
      var od = api.Signature.fromJson(o.toJson());
      checkSignature(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-UserOwnedGrafeasNote', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserOwnedGrafeasNote();
      var od = api.UserOwnedGrafeasNote.fromJson(o.toJson());
      checkUserOwnedGrafeasNote(od);
    });
  });

  unittest.group('obj-schema-ValidateAttestationOccurrenceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateAttestationOccurrenceRequest();
      var od = api.ValidateAttestationOccurrenceRequest.fromJson(o.toJson());
      checkValidateAttestationOccurrenceRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateAttestationOccurrenceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateAttestationOccurrenceResponse();
      var od = api.ValidateAttestationOccurrenceResponse.fromJson(o.toJson());
      checkValidateAttestationOccurrenceResponse(od);
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--getPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.BinaryauthorizationApi(mock).projects;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPolicy(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--updatePolicy', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.BinaryauthorizationApi(mock).projects;
      var arg_request = buildPolicy();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePolicy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });
  });

  unittest.group('resource-ProjectsAttestorsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_request = buildAttestor();
      var arg_parent = 'foo';
      var arg_attestorId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Attestor.fromJson(json);
        checkAttestor(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["attestorId"].first, unittest.equals(arg_attestorId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAttestor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              attestorId: arg_attestorId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAttestor(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAttestor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAttestor(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIamPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAttestorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAttestorsResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIamPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_request = buildAttestor();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Attestor.fromJson(json);
        checkAttestor(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAttestor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAttestor(response);
      })));
    });

    unittest.test('method--validateAttestationOccurrence', () {
      var mock = HttpServerMock();
      api.ProjectsAttestorsResourceApi res =
          api.BinaryauthorizationApi(mock).projects.attestors;
      var arg_request = buildValidateAttestationOccurrenceRequest();
      var arg_attestor = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ValidateAttestationOccurrenceRequest.fromJson(json);
        checkValidateAttestationOccurrenceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildValidateAttestationOccurrenceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validateAttestationOccurrence(arg_request, arg_attestor,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValidateAttestationOccurrenceResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsPolicyResourceApi', () {
    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsPolicyResourceApi res =
          api.BinaryauthorizationApi(mock).projects.policy;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIamPolicy(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsPolicyResourceApi res =
          api.BinaryauthorizationApi(mock).projects.policy;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIamPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIamPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsPolicyResourceApi res =
          api.BinaryauthorizationApi(mock).projects.policy;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });
}
