// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/healthcare/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActivateConsentRequest = 0;
api.ActivateConsentRequest buildActivateConsentRequest() {
  final o = api.ActivateConsentRequest();
  buildCounterActivateConsentRequest++;
  if (buildCounterActivateConsentRequest < 3) {
    o.consentArtifact = 'foo';
    o.expireTime = 'foo';
    o.ttl = 'foo';
  }
  buildCounterActivateConsentRequest--;
  return o;
}

void checkActivateConsentRequest(api.ActivateConsentRequest o) {
  buildCounterActivateConsentRequest++;
  if (buildCounterActivateConsentRequest < 3) {
    unittest.expect(
      o.consentArtifact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivateConsentRequest--;
}

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

core.int buildCounterAnalyzeEntitiesRequest = 0;
api.AnalyzeEntitiesRequest buildAnalyzeEntitiesRequest() {
  final o = api.AnalyzeEntitiesRequest();
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    o.documentContent = 'foo';
    o.licensedVocabularies = buildUnnamed0();
  }
  buildCounterAnalyzeEntitiesRequest--;
  return o;
}

void checkAnalyzeEntitiesRequest(api.AnalyzeEntitiesRequest o) {
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    unittest.expect(
      o.documentContent!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.licensedVocabularies!);
  }
  buildCounterAnalyzeEntitiesRequest--;
}

core.List<api.Entity> buildUnnamed1() => [
      buildEntity(),
      buildEntity(),
    ];

void checkUnnamed1(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.List<api.EntityMention> buildUnnamed2() => [
      buildEntityMention(),
      buildEntityMention(),
    ];

void checkUnnamed2(core.List<api.EntityMention> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMention(o[0]);
  checkEntityMention(o[1]);
}

core.List<api.EntityMentionRelationship> buildUnnamed3() => [
      buildEntityMentionRelationship(),
      buildEntityMentionRelationship(),
    ];

void checkUnnamed3(core.List<api.EntityMentionRelationship> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMentionRelationship(o[0]);
  checkEntityMentionRelationship(o[1]);
}

core.int buildCounterAnalyzeEntitiesResponse = 0;
api.AnalyzeEntitiesResponse buildAnalyzeEntitiesResponse() {
  final o = api.AnalyzeEntitiesResponse();
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    o.entities = buildUnnamed1();
    o.entityMentions = buildUnnamed2();
    o.relationships = buildUnnamed3();
  }
  buildCounterAnalyzeEntitiesResponse--;
  return o;
}

void checkAnalyzeEntitiesResponse(api.AnalyzeEntitiesResponse o) {
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    checkUnnamed1(o.entities!);
    checkUnnamed2(o.entityMentions!);
    checkUnnamed3(o.relationships!);
  }
  buildCounterAnalyzeEntitiesResponse--;
}

core.int buildCounterArchiveUserDataMappingRequest = 0;
api.ArchiveUserDataMappingRequest buildArchiveUserDataMappingRequest() {
  final o = api.ArchiveUserDataMappingRequest();
  buildCounterArchiveUserDataMappingRequest++;
  if (buildCounterArchiveUserDataMappingRequest < 3) {}
  buildCounterArchiveUserDataMappingRequest--;
  return o;
}

void checkArchiveUserDataMappingRequest(api.ArchiveUserDataMappingRequest o) {
  buildCounterArchiveUserDataMappingRequest++;
  if (buildCounterArchiveUserDataMappingRequest < 3) {}
  buildCounterArchiveUserDataMappingRequest--;
}

core.int buildCounterArchiveUserDataMappingResponse = 0;
api.ArchiveUserDataMappingResponse buildArchiveUserDataMappingResponse() {
  final o = api.ArchiveUserDataMappingResponse();
  buildCounterArchiveUserDataMappingResponse++;
  if (buildCounterArchiveUserDataMappingResponse < 3) {}
  buildCounterArchiveUserDataMappingResponse--;
  return o;
}

void checkArchiveUserDataMappingResponse(api.ArchiveUserDataMappingResponse o) {
  buildCounterArchiveUserDataMappingResponse++;
  if (buildCounterArchiveUserDataMappingResponse < 3) {}
  buildCounterArchiveUserDataMappingResponse--;
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

core.int buildCounterAttribute = 0;
api.Attribute buildAttribute() {
  final o = api.Attribute();
  buildCounterAttribute++;
  if (buildCounterAttribute < 3) {
    o.attributeDefinitionId = 'foo';
    o.values = buildUnnamed4();
  }
  buildCounterAttribute--;
  return o;
}

void checkAttribute(api.Attribute o) {
  buildCounterAttribute++;
  if (buildCounterAttribute < 3) {
    unittest.expect(
      o.attributeDefinitionId!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.values!);
  }
  buildCounterAttribute--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterAttributeDefinition = 0;
api.AttributeDefinition buildAttributeDefinition() {
  final o = api.AttributeDefinition();
  buildCounterAttributeDefinition++;
  if (buildCounterAttributeDefinition < 3) {
    o.allowedValues = buildUnnamed5();
    o.category = 'foo';
    o.consentDefaultValues = buildUnnamed6();
    o.dataMappingDefaultValue = 'foo';
    o.description = 'foo';
    o.name = 'foo';
  }
  buildCounterAttributeDefinition--;
  return o;
}

void checkAttributeDefinition(api.AttributeDefinition o) {
  buildCounterAttributeDefinition++;
  if (buildCounterAttributeDefinition < 3) {
    checkUnnamed5(o.allowedValues!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.consentDefaultValues!);
    unittest.expect(
      o.dataMappingDefaultValue!,
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
  }
  buildCounterAttributeDefinition--;
}

core.List<api.AuditLogConfig> buildUnnamed7() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed7(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed7();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed7(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed8();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed8(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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
    o.members = buildUnnamed9();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed9(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

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

core.int buildCounterCharacterMaskConfig = 0;
api.CharacterMaskConfig buildCharacterMaskConfig() {
  final o = api.CharacterMaskConfig();
  buildCounterCharacterMaskConfig++;
  if (buildCounterCharacterMaskConfig < 3) {
    o.maskingCharacter = 'foo';
  }
  buildCounterCharacterMaskConfig--;
  return o;
}

void checkCharacterMaskConfig(api.CharacterMaskConfig o) {
  buildCounterCharacterMaskConfig++;
  if (buildCounterCharacterMaskConfig < 3) {
    unittest.expect(
      o.maskingCharacter!,
      unittest.equals('foo'),
    );
  }
  buildCounterCharacterMaskConfig--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterCheckDataAccessRequest = 0;
api.CheckDataAccessRequest buildCheckDataAccessRequest() {
  final o = api.CheckDataAccessRequest();
  buildCounterCheckDataAccessRequest++;
  if (buildCounterCheckDataAccessRequest < 3) {
    o.consentList = buildConsentList();
    o.dataId = 'foo';
    o.requestAttributes = buildUnnamed10();
    o.responseView = 'foo';
  }
  buildCounterCheckDataAccessRequest--;
  return o;
}

void checkCheckDataAccessRequest(api.CheckDataAccessRequest o) {
  buildCounterCheckDataAccessRequest++;
  if (buildCounterCheckDataAccessRequest < 3) {
    checkConsentList(o.consentList!);
    unittest.expect(
      o.dataId!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.requestAttributes!);
    unittest.expect(
      o.responseView!,
      unittest.equals('foo'),
    );
  }
  buildCounterCheckDataAccessRequest--;
}

core.Map<core.String, api.ConsentEvaluation> buildUnnamed11() => {
      'x': buildConsentEvaluation(),
      'y': buildConsentEvaluation(),
    };

void checkUnnamed11(core.Map<core.String, api.ConsentEvaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentEvaluation(o['x']!);
  checkConsentEvaluation(o['y']!);
}

core.int buildCounterCheckDataAccessResponse = 0;
api.CheckDataAccessResponse buildCheckDataAccessResponse() {
  final o = api.CheckDataAccessResponse();
  buildCounterCheckDataAccessResponse++;
  if (buildCounterCheckDataAccessResponse < 3) {
    o.consentDetails = buildUnnamed11();
    o.consented = true;
  }
  buildCounterCheckDataAccessResponse--;
  return o;
}

void checkCheckDataAccessResponse(api.CheckDataAccessResponse o) {
  buildCounterCheckDataAccessResponse++;
  if (buildCounterCheckDataAccessResponse < 3) {
    checkUnnamed11(o.consentDetails!);
    unittest.expect(o.consented!, unittest.isTrue);
  }
  buildCounterCheckDataAccessResponse--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudHealthcareV1ConsentPolicy> buildUnnamed13() => [
      buildGoogleCloudHealthcareV1ConsentPolicy(),
      buildGoogleCloudHealthcareV1ConsentPolicy(),
    ];

void checkUnnamed13(core.List<api.GoogleCloudHealthcareV1ConsentPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudHealthcareV1ConsentPolicy(o[0]);
  checkGoogleCloudHealthcareV1ConsentPolicy(o[1]);
}

core.int buildCounterConsent = 0;
api.Consent buildConsent() {
  final o = api.Consent();
  buildCounterConsent++;
  if (buildCounterConsent < 3) {
    o.consentArtifact = 'foo';
    o.expireTime = 'foo';
    o.metadata = buildUnnamed12();
    o.name = 'foo';
    o.policies = buildUnnamed13();
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.state = 'foo';
    o.ttl = 'foo';
    o.userId = 'foo';
  }
  buildCounterConsent--;
  return o;
}

void checkConsent(api.Consent o) {
  buildCounterConsent++;
  if (buildCounterConsent < 3) {
    unittest.expect(
      o.consentArtifact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.policies!);
    unittest.expect(
      o.revisionCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsent--;
}

core.List<api.Image> buildUnnamed14() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed14(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
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

core.int buildCounterConsentArtifact = 0;
api.ConsentArtifact buildConsentArtifact() {
  final o = api.ConsentArtifact();
  buildCounterConsentArtifact++;
  if (buildCounterConsentArtifact < 3) {
    o.consentContentScreenshots = buildUnnamed14();
    o.consentContentVersion = 'foo';
    o.guardianSignature = buildSignature();
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.userId = 'foo';
    o.userSignature = buildSignature();
    o.witnessSignature = buildSignature();
  }
  buildCounterConsentArtifact--;
  return o;
}

void checkConsentArtifact(api.ConsentArtifact o) {
  buildCounterConsentArtifact++;
  if (buildCounterConsentArtifact < 3) {
    checkUnnamed14(o.consentContentScreenshots!);
    unittest.expect(
      o.consentContentVersion!,
      unittest.equals('foo'),
    );
    checkSignature(o.guardianSignature!);
    checkUnnamed15(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
    checkSignature(o.userSignature!);
    checkSignature(o.witnessSignature!);
  }
  buildCounterConsentArtifact--;
}

core.int buildCounterConsentEvaluation = 0;
api.ConsentEvaluation buildConsentEvaluation() {
  final o = api.ConsentEvaluation();
  buildCounterConsentEvaluation++;
  if (buildCounterConsentEvaluation < 3) {
    o.evaluationResult = 'foo';
  }
  buildCounterConsentEvaluation--;
  return o;
}

void checkConsentEvaluation(api.ConsentEvaluation o) {
  buildCounterConsentEvaluation++;
  if (buildCounterConsentEvaluation < 3) {
    unittest.expect(
      o.evaluationResult!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsentEvaluation--;
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

core.int buildCounterConsentList = 0;
api.ConsentList buildConsentList() {
  final o = api.ConsentList();
  buildCounterConsentList++;
  if (buildCounterConsentList < 3) {
    o.consents = buildUnnamed16();
  }
  buildCounterConsentList--;
  return o;
}

void checkConsentList(api.ConsentList o) {
  buildCounterConsentList++;
  if (buildCounterConsentList < 3) {
    checkUnnamed16(o.consents!);
  }
  buildCounterConsentList--;
}

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
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

core.int buildCounterConsentStore = 0;
api.ConsentStore buildConsentStore() {
  final o = api.ConsentStore();
  buildCounterConsentStore++;
  if (buildCounterConsentStore < 3) {
    o.defaultConsentTtl = 'foo';
    o.enableConsentCreateOnUpdate = true;
    o.labels = buildUnnamed17();
    o.name = 'foo';
  }
  buildCounterConsentStore--;
  return o;
}

void checkConsentStore(api.ConsentStore o) {
  buildCounterConsentStore++;
  if (buildCounterConsentStore < 3) {
    unittest.expect(
      o.defaultConsentTtl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableConsentCreateOnUpdate!, unittest.isTrue);
    checkUnnamed17(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsentStore--;
}

core.int buildCounterCreateMessageRequest = 0;
api.CreateMessageRequest buildCreateMessageRequest() {
  final o = api.CreateMessageRequest();
  buildCounterCreateMessageRequest++;
  if (buildCounterCreateMessageRequest < 3) {
    o.message = buildMessage();
  }
  buildCounterCreateMessageRequest--;
  return o;
}

void checkCreateMessageRequest(api.CreateMessageRequest o) {
  buildCounterCreateMessageRequest++;
  if (buildCounterCreateMessageRequest < 3) {
    checkMessage(o.message!);
  }
  buildCounterCreateMessageRequest--;
}

core.int buildCounterCryptoHashConfig = 0;
api.CryptoHashConfig buildCryptoHashConfig() {
  final o = api.CryptoHashConfig();
  buildCounterCryptoHashConfig++;
  if (buildCounterCryptoHashConfig < 3) {
    o.cryptoKey = 'foo';
  }
  buildCounterCryptoHashConfig--;
  return o;
}

void checkCryptoHashConfig(api.CryptoHashConfig o) {
  buildCounterCryptoHashConfig++;
  if (buildCounterCryptoHashConfig < 3) {
    unittest.expect(
      o.cryptoKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterCryptoHashConfig--;
}

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.name = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataset--;
}

core.int buildCounterDateShiftConfig = 0;
api.DateShiftConfig buildDateShiftConfig() {
  final o = api.DateShiftConfig();
  buildCounterDateShiftConfig++;
  if (buildCounterDateShiftConfig < 3) {
    o.cryptoKey = 'foo';
  }
  buildCounterDateShiftConfig--;
  return o;
}

void checkDateShiftConfig(api.DateShiftConfig o) {
  buildCounterDateShiftConfig++;
  if (buildCounterDateShiftConfig < 3) {
    unittest.expect(
      o.cryptoKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterDateShiftConfig--;
}

core.int buildCounterDeidentifyConfig = 0;
api.DeidentifyConfig buildDeidentifyConfig() {
  final o = api.DeidentifyConfig();
  buildCounterDeidentifyConfig++;
  if (buildCounterDeidentifyConfig < 3) {
    o.dicom = buildDicomConfig();
    o.fhir = buildFhirConfig();
    o.image = buildImageConfig();
    o.text = buildTextConfig();
  }
  buildCounterDeidentifyConfig--;
  return o;
}

void checkDeidentifyConfig(api.DeidentifyConfig o) {
  buildCounterDeidentifyConfig++;
  if (buildCounterDeidentifyConfig < 3) {
    checkDicomConfig(o.dicom!);
    checkFhirConfig(o.fhir!);
    checkImageConfig(o.image!);
    checkTextConfig(o.text!);
  }
  buildCounterDeidentifyConfig--;
}

core.int buildCounterDeidentifyDatasetRequest = 0;
api.DeidentifyDatasetRequest buildDeidentifyDatasetRequest() {
  final o = api.DeidentifyDatasetRequest();
  buildCounterDeidentifyDatasetRequest++;
  if (buildCounterDeidentifyDatasetRequest < 3) {
    o.config = buildDeidentifyConfig();
    o.destinationDataset = 'foo';
    o.gcsConfigUri = 'foo';
  }
  buildCounterDeidentifyDatasetRequest--;
  return o;
}

void checkDeidentifyDatasetRequest(api.DeidentifyDatasetRequest o) {
  buildCounterDeidentifyDatasetRequest++;
  if (buildCounterDeidentifyDatasetRequest < 3) {
    checkDeidentifyConfig(o.config!);
    unittest.expect(
      o.destinationDataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsConfigUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeidentifyDatasetRequest--;
}

core.int buildCounterDeidentifyDicomStoreRequest = 0;
api.DeidentifyDicomStoreRequest buildDeidentifyDicomStoreRequest() {
  final o = api.DeidentifyDicomStoreRequest();
  buildCounterDeidentifyDicomStoreRequest++;
  if (buildCounterDeidentifyDicomStoreRequest < 3) {
    o.config = buildDeidentifyConfig();
    o.destinationStore = 'foo';
    o.filterConfig = buildDicomFilterConfig();
    o.gcsConfigUri = 'foo';
  }
  buildCounterDeidentifyDicomStoreRequest--;
  return o;
}

void checkDeidentifyDicomStoreRequest(api.DeidentifyDicomStoreRequest o) {
  buildCounterDeidentifyDicomStoreRequest++;
  if (buildCounterDeidentifyDicomStoreRequest < 3) {
    checkDeidentifyConfig(o.config!);
    unittest.expect(
      o.destinationStore!,
      unittest.equals('foo'),
    );
    checkDicomFilterConfig(o.filterConfig!);
    unittest.expect(
      o.gcsConfigUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeidentifyDicomStoreRequest--;
}

core.int buildCounterDeidentifyFhirStoreRequest = 0;
api.DeidentifyFhirStoreRequest buildDeidentifyFhirStoreRequest() {
  final o = api.DeidentifyFhirStoreRequest();
  buildCounterDeidentifyFhirStoreRequest++;
  if (buildCounterDeidentifyFhirStoreRequest < 3) {
    o.config = buildDeidentifyConfig();
    o.destinationStore = 'foo';
    o.gcsConfigUri = 'foo';
    o.resourceFilter = buildFhirFilter();
  }
  buildCounterDeidentifyFhirStoreRequest--;
  return o;
}

void checkDeidentifyFhirStoreRequest(api.DeidentifyFhirStoreRequest o) {
  buildCounterDeidentifyFhirStoreRequest++;
  if (buildCounterDeidentifyFhirStoreRequest < 3) {
    checkDeidentifyConfig(o.config!);
    unittest.expect(
      o.destinationStore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsConfigUri!,
      unittest.equals('foo'),
    );
    checkFhirFilter(o.resourceFilter!);
  }
  buildCounterDeidentifyFhirStoreRequest--;
}

core.int buildCounterDicomConfig = 0;
api.DicomConfig buildDicomConfig() {
  final o = api.DicomConfig();
  buildCounterDicomConfig++;
  if (buildCounterDicomConfig < 3) {
    o.filterProfile = 'foo';
    o.keepList = buildTagFilterList();
    o.removeList = buildTagFilterList();
    o.skipIdRedaction = true;
  }
  buildCounterDicomConfig--;
  return o;
}

void checkDicomConfig(api.DicomConfig o) {
  buildCounterDicomConfig++;
  if (buildCounterDicomConfig < 3) {
    unittest.expect(
      o.filterProfile!,
      unittest.equals('foo'),
    );
    checkTagFilterList(o.keepList!);
    checkTagFilterList(o.removeList!);
    unittest.expect(o.skipIdRedaction!, unittest.isTrue);
  }
  buildCounterDicomConfig--;
}

core.int buildCounterDicomFilterConfig = 0;
api.DicomFilterConfig buildDicomFilterConfig() {
  final o = api.DicomFilterConfig();
  buildCounterDicomFilterConfig++;
  if (buildCounterDicomFilterConfig < 3) {
    o.resourcePathsGcsUri = 'foo';
  }
  buildCounterDicomFilterConfig--;
  return o;
}

void checkDicomFilterConfig(api.DicomFilterConfig o) {
  buildCounterDicomFilterConfig++;
  if (buildCounterDicomFilterConfig < 3) {
    unittest.expect(
      o.resourcePathsGcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDicomFilterConfig--;
}

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
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

core.int buildCounterDicomStore = 0;
api.DicomStore buildDicomStore() {
  final o = api.DicomStore();
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    o.labels = buildUnnamed18();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
  }
  buildCounterDicomStore--;
  return o;
}

void checkDicomStore(api.DicomStore o) {
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    checkUnnamed18(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNotificationConfig(o.notificationConfig!);
  }
  buildCounterDicomStore--;
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.entityId = 'foo';
    o.preferredTerm = 'foo';
    o.vocabularyCodes = buildUnnamed19();
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preferredTerm!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.vocabularyCodes!);
  }
  buildCounterEntity--;
}

core.List<api.LinkedEntity> buildUnnamed20() => [
      buildLinkedEntity(),
      buildLinkedEntity(),
    ];

void checkUnnamed20(core.List<api.LinkedEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedEntity(o[0]);
  checkLinkedEntity(o[1]);
}

core.int buildCounterEntityMention = 0;
api.EntityMention buildEntityMention() {
  final o = api.EntityMention();
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    o.certaintyAssessment = buildFeature();
    o.confidence = 42.0;
    o.linkedEntities = buildUnnamed20();
    o.mentionId = 'foo';
    o.subject = buildFeature();
    o.temporalAssessment = buildFeature();
    o.text = buildTextSpan();
    o.type = 'foo';
  }
  buildCounterEntityMention--;
  return o;
}

void checkEntityMention(api.EntityMention o) {
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    checkFeature(o.certaintyAssessment!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed20(o.linkedEntities!);
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    checkFeature(o.subject!);
    checkFeature(o.temporalAssessment!);
    checkTextSpan(o.text!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityMention--;
}

core.int buildCounterEntityMentionRelationship = 0;
api.EntityMentionRelationship buildEntityMentionRelationship() {
  final o = api.EntityMentionRelationship();
  buildCounterEntityMentionRelationship++;
  if (buildCounterEntityMentionRelationship < 3) {
    o.confidence = 42.0;
    o.objectId = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterEntityMentionRelationship--;
  return o;
}

void checkEntityMentionRelationship(api.EntityMentionRelationship o) {
  buildCounterEntityMentionRelationship++;
  if (buildCounterEntityMentionRelationship < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityMentionRelationship--;
}

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed22() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed22(core.Map<core.String, core.String> o) {
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

core.int buildCounterEvaluateUserConsentsRequest = 0;
api.EvaluateUserConsentsRequest buildEvaluateUserConsentsRequest() {
  final o = api.EvaluateUserConsentsRequest();
  buildCounterEvaluateUserConsentsRequest++;
  if (buildCounterEvaluateUserConsentsRequest < 3) {
    o.consentList = buildConsentList();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.requestAttributes = buildUnnamed21();
    o.resourceAttributes = buildUnnamed22();
    o.responseView = 'foo';
    o.userId = 'foo';
  }
  buildCounterEvaluateUserConsentsRequest--;
  return o;
}

void checkEvaluateUserConsentsRequest(api.EvaluateUserConsentsRequest o) {
  buildCounterEvaluateUserConsentsRequest++;
  if (buildCounterEvaluateUserConsentsRequest < 3) {
    checkConsentList(o.consentList!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.requestAttributes!);
    checkUnnamed22(o.resourceAttributes!);
    unittest.expect(
      o.responseView!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvaluateUserConsentsRequest--;
}

core.List<api.Result> buildUnnamed23() => [
      buildResult(),
      buildResult(),
    ];

void checkUnnamed23(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.int buildCounterEvaluateUserConsentsResponse = 0;
api.EvaluateUserConsentsResponse buildEvaluateUserConsentsResponse() {
  final o = api.EvaluateUserConsentsResponse();
  buildCounterEvaluateUserConsentsResponse++;
  if (buildCounterEvaluateUserConsentsResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed23();
  }
  buildCounterEvaluateUserConsentsResponse--;
  return o;
}

void checkEvaluateUserConsentsResponse(api.EvaluateUserConsentsResponse o) {
  buildCounterEvaluateUserConsentsResponse++;
  if (buildCounterEvaluateUserConsentsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.results!);
  }
  buildCounterEvaluateUserConsentsResponse--;
}

core.int buildCounterExportDicomDataRequest = 0;
api.ExportDicomDataRequest buildExportDicomDataRequest() {
  final o = api.ExportDicomDataRequest();
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1DicomBigQueryDestination();
    o.gcsDestination = buildGoogleCloudHealthcareV1DicomGcsDestination();
  }
  buildCounterExportDicomDataRequest--;
  return o;
}

void checkExportDicomDataRequest(api.ExportDicomDataRequest o) {
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1DicomBigQueryDestination(
        o.bigqueryDestination!);
    checkGoogleCloudHealthcareV1DicomGcsDestination(o.gcsDestination!);
  }
  buildCounterExportDicomDataRequest--;
}

core.int buildCounterExportMessagesRequest = 0;
api.ExportMessagesRequest buildExportMessagesRequest() {
  final o = api.ExportMessagesRequest();
  buildCounterExportMessagesRequest++;
  if (buildCounterExportMessagesRequest < 3) {
    o.endTime = 'foo';
    o.gcsDestination = buildGcsDestination();
    o.startTime = 'foo';
  }
  buildCounterExportMessagesRequest--;
  return o;
}

void checkExportMessagesRequest(api.ExportMessagesRequest o) {
  buildCounterExportMessagesRequest++;
  if (buildCounterExportMessagesRequest < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGcsDestination(o.gcsDestination!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportMessagesRequest--;
}

core.int buildCounterExportResourcesRequest = 0;
api.ExportResourcesRequest buildExportResourcesRequest() {
  final o = api.ExportResourcesRequest();
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    o.P_since = 'foo';
    o.P_type = 'foo';
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1FhirBigQueryDestination();
    o.gcsDestination = buildGoogleCloudHealthcareV1FhirGcsDestination();
  }
  buildCounterExportResourcesRequest--;
  return o;
}

void checkExportResourcesRequest(api.ExportResourcesRequest o) {
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    unittest.expect(
      o.P_since!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.P_type!,
      unittest.equals('foo'),
    );
    checkGoogleCloudHealthcareV1FhirBigQueryDestination(o.bigqueryDestination!);
    checkGoogleCloudHealthcareV1FhirGcsDestination(o.gcsDestination!);
  }
  buildCounterExportResourcesRequest--;
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

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  final o = api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.confidence = 42.0;
    o.value = 'foo';
  }
  buildCounterFeature--;
  return o;
}

void checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeature--;
}

core.List<api.FieldMetadata> buildUnnamed24() => [
      buildFieldMetadata(),
      buildFieldMetadata(),
    ];

void checkUnnamed24(core.List<api.FieldMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldMetadata(o[0]);
  checkFieldMetadata(o[1]);
}

core.int buildCounterFhirConfig = 0;
api.FhirConfig buildFhirConfig() {
  final o = api.FhirConfig();
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    o.defaultKeepExtensions = true;
    o.fieldMetadataList = buildUnnamed24();
  }
  buildCounterFhirConfig--;
  return o;
}

void checkFhirConfig(api.FhirConfig o) {
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    unittest.expect(o.defaultKeepExtensions!, unittest.isTrue);
    checkUnnamed24(o.fieldMetadataList!);
  }
  buildCounterFhirConfig--;
}

core.int buildCounterFhirFilter = 0;
api.FhirFilter buildFhirFilter() {
  final o = api.FhirFilter();
  buildCounterFhirFilter++;
  if (buildCounterFhirFilter < 3) {
    o.resources = buildResources();
  }
  buildCounterFhirFilter--;
  return o;
}

void checkFhirFilter(api.FhirFilter o) {
  buildCounterFhirFilter++;
  if (buildCounterFhirFilter < 3) {
    checkResources(o.resources!);
  }
  buildCounterFhirFilter--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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

core.List<api.StreamConfig> buildUnnamed26() => [
      buildStreamConfig(),
      buildStreamConfig(),
    ];

void checkUnnamed26(core.List<api.StreamConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamConfig(o[0]);
  checkStreamConfig(o[1]);
}

core.int buildCounterFhirStore = 0;
api.FhirStore buildFhirStore() {
  final o = api.FhirStore();
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    o.complexDataTypeReferenceParsing = 'foo';
    o.defaultSearchHandlingStrict = true;
    o.disableReferentialIntegrity = true;
    o.disableResourceVersioning = true;
    o.enableUpdateCreate = true;
    o.labels = buildUnnamed25();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
    o.streamConfigs = buildUnnamed26();
    o.validationConfig = buildValidationConfig();
    o.version = 'foo';
  }
  buildCounterFhirStore--;
  return o;
}

void checkFhirStore(api.FhirStore o) {
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    unittest.expect(
      o.complexDataTypeReferenceParsing!,
      unittest.equals('foo'),
    );
    unittest.expect(o.defaultSearchHandlingStrict!, unittest.isTrue);
    unittest.expect(o.disableReferentialIntegrity!, unittest.isTrue);
    unittest.expect(o.disableResourceVersioning!, unittest.isTrue);
    unittest.expect(o.enableUpdateCreate!, unittest.isTrue);
    checkUnnamed25(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNotificationConfig(o.notificationConfig!);
    checkUnnamed26(o.streamConfigs!);
    checkValidationConfig(o.validationConfig!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterFhirStore--;
}

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.maxOccurs = 42;
    o.minOccurs = 42;
    o.name = 'foo';
    o.table = 'foo';
    o.type = 'foo';
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(
      o.maxOccurs!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minOccurs!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterField--;
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

core.int buildCounterFieldMetadata = 0;
api.FieldMetadata buildFieldMetadata() {
  final o = api.FieldMetadata();
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    o.action = 'foo';
    o.paths = buildUnnamed27();
  }
  buildCounterFieldMetadata--;
  return o;
}

void checkFieldMetadata(api.FieldMetadata o) {
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.paths!);
  }
  buildCounterFieldMetadata--;
}

core.int buildCounterGcsDestination = 0;
api.GcsDestination buildGcsDestination() {
  final o = api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.contentStructure = 'foo';
    o.messageView = 'foo';
    o.uriPrefix = 'foo';
  }
  buildCounterGcsDestination--;
  return o;
}

void checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(
      o.contentStructure!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageView!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGcsSource = 0;
api.GcsSource buildGcsSource() {
  final o = api.GcsSource();
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGcsSource--;
  return o;
}

void checkGcsSource(api.GcsSource o) {
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsSource--;
}

core.int buildCounterGoogleCloudHealthcareV1ConsentGcsDestination = 0;
api.GoogleCloudHealthcareV1ConsentGcsDestination
    buildGoogleCloudHealthcareV1ConsentGcsDestination() {
  final o = api.GoogleCloudHealthcareV1ConsentGcsDestination();
  buildCounterGoogleCloudHealthcareV1ConsentGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1ConsentGcsDestination < 3) {
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1ConsentGcsDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1ConsentGcsDestination(
    api.GoogleCloudHealthcareV1ConsentGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1ConsentGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1ConsentGcsDestination < 3) {
    unittest.expect(
      o.uriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1ConsentGcsDestination--;
}

core.List<api.Attribute> buildUnnamed28() => [
      buildAttribute(),
      buildAttribute(),
    ];

void checkUnnamed28(core.List<api.Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttribute(o[0]);
  checkAttribute(o[1]);
}

core.int buildCounterGoogleCloudHealthcareV1ConsentPolicy = 0;
api.GoogleCloudHealthcareV1ConsentPolicy
    buildGoogleCloudHealthcareV1ConsentPolicy() {
  final o = api.GoogleCloudHealthcareV1ConsentPolicy();
  buildCounterGoogleCloudHealthcareV1ConsentPolicy++;
  if (buildCounterGoogleCloudHealthcareV1ConsentPolicy < 3) {
    o.authorizationRule = buildExpr();
    o.resourceAttributes = buildUnnamed28();
  }
  buildCounterGoogleCloudHealthcareV1ConsentPolicy--;
  return o;
}

void checkGoogleCloudHealthcareV1ConsentPolicy(
    api.GoogleCloudHealthcareV1ConsentPolicy o) {
  buildCounterGoogleCloudHealthcareV1ConsentPolicy++;
  if (buildCounterGoogleCloudHealthcareV1ConsentPolicy < 3) {
    checkExpr(o.authorizationRule!);
    checkUnnamed28(o.resourceAttributes!);
  }
  buildCounterGoogleCloudHealthcareV1ConsentPolicy--;
}

core.int buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination = 0;
api.GoogleCloudHealthcareV1DicomBigQueryDestination
    buildGoogleCloudHealthcareV1DicomBigQueryDestination() {
  final o = api.GoogleCloudHealthcareV1DicomBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination < 3) {
    o.force = true;
    o.tableUri = 'foo';
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1DicomBigQueryDestination(
    api.GoogleCloudHealthcareV1DicomBigQueryDestination o) {
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(
      o.tableUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1DicomGcsDestination = 0;
api.GoogleCloudHealthcareV1DicomGcsDestination
    buildGoogleCloudHealthcareV1DicomGcsDestination() {
  final o = api.GoogleCloudHealthcareV1DicomGcsDestination();
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsDestination < 3) {
    o.mimeType = 'foo';
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1DicomGcsDestination(
    api.GoogleCloudHealthcareV1DicomGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsDestination < 3) {
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1DicomGcsSource = 0;
api.GoogleCloudHealthcareV1DicomGcsSource
    buildGoogleCloudHealthcareV1DicomGcsSource() {
  final o = api.GoogleCloudHealthcareV1DicomGcsSource();
  buildCounterGoogleCloudHealthcareV1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsSource--;
  return o;
}

void checkGoogleCloudHealthcareV1DicomGcsSource(
    api.GoogleCloudHealthcareV1DicomGcsSource o) {
  buildCounterGoogleCloudHealthcareV1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsSource--;
}

core.int buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination = 0;
api.GoogleCloudHealthcareV1FhirBigQueryDestination
    buildGoogleCloudHealthcareV1FhirBigQueryDestination() {
  final o = api.GoogleCloudHealthcareV1FhirBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination < 3) {
    o.datasetUri = 'foo';
    o.force = true;
    o.schemaConfig = buildSchemaConfig();
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1FhirBigQueryDestination(
    api.GoogleCloudHealthcareV1FhirBigQueryDestination o) {
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination < 3) {
    unittest.expect(
      o.datasetUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
    checkSchemaConfig(o.schemaConfig!);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1FhirGcsDestination = 0;
api.GoogleCloudHealthcareV1FhirGcsDestination
    buildGoogleCloudHealthcareV1FhirGcsDestination() {
  final o = api.GoogleCloudHealthcareV1FhirGcsDestination();
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsDestination < 3) {
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1FhirGcsDestination(
    api.GoogleCloudHealthcareV1FhirGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsDestination < 3) {
    unittest.expect(
      o.uriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1FhirGcsSource = 0;
api.GoogleCloudHealthcareV1FhirGcsSource
    buildGoogleCloudHealthcareV1FhirGcsSource() {
  final o = api.GoogleCloudHealthcareV1FhirGcsSource();
  buildCounterGoogleCloudHealthcareV1FhirGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsSource--;
  return o;
}

void checkGoogleCloudHealthcareV1FhirGcsSource(
    api.GoogleCloudHealthcareV1FhirGcsSource o) {
  buildCounterGoogleCloudHealthcareV1FhirGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsSource--;
}

core.int buildCounterGroupOrSegment = 0;
api.GroupOrSegment buildGroupOrSegment() {
  final o = api.GroupOrSegment();
  buildCounterGroupOrSegment++;
  if (buildCounterGroupOrSegment < 3) {
    o.group = buildSchemaGroup();
    o.segment = buildSchemaSegment();
  }
  buildCounterGroupOrSegment--;
  return o;
}

void checkGroupOrSegment(api.GroupOrSegment o) {
  buildCounterGroupOrSegment++;
  if (buildCounterGroupOrSegment < 3) {
    checkSchemaGroup(o.group!);
    checkSchemaSegment(o.segment!);
  }
  buildCounterGroupOrSegment--;
}

core.Map<core.String, api.SchemaGroup> buildUnnamed29() => {
      'x': buildSchemaGroup(),
      'y': buildSchemaGroup(),
    };

void checkUnnamed29(core.Map<core.String, api.SchemaGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaGroup(o['x']!);
  checkSchemaGroup(o['y']!);
}

core.List<api.VersionSource> buildUnnamed30() => [
      buildVersionSource(),
      buildVersionSource(),
    ];

void checkUnnamed30(core.List<api.VersionSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionSource(o[0]);
  checkVersionSource(o[1]);
}

core.int buildCounterHl7SchemaConfig = 0;
api.Hl7SchemaConfig buildHl7SchemaConfig() {
  final o = api.Hl7SchemaConfig();
  buildCounterHl7SchemaConfig++;
  if (buildCounterHl7SchemaConfig < 3) {
    o.messageSchemaConfigs = buildUnnamed29();
    o.version = buildUnnamed30();
  }
  buildCounterHl7SchemaConfig--;
  return o;
}

void checkHl7SchemaConfig(api.Hl7SchemaConfig o) {
  buildCounterHl7SchemaConfig++;
  if (buildCounterHl7SchemaConfig < 3) {
    checkUnnamed29(o.messageSchemaConfigs!);
    checkUnnamed30(o.version!);
  }
  buildCounterHl7SchemaConfig--;
}

core.List<api.Type> buildUnnamed31() => [
      buildType(),
      buildType(),
    ];

void checkUnnamed31(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.List<api.VersionSource> buildUnnamed32() => [
      buildVersionSource(),
      buildVersionSource(),
    ];

void checkUnnamed32(core.List<api.VersionSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionSource(o[0]);
  checkVersionSource(o[1]);
}

core.int buildCounterHl7TypesConfig = 0;
api.Hl7TypesConfig buildHl7TypesConfig() {
  final o = api.Hl7TypesConfig();
  buildCounterHl7TypesConfig++;
  if (buildCounterHl7TypesConfig < 3) {
    o.type = buildUnnamed31();
    o.version = buildUnnamed32();
  }
  buildCounterHl7TypesConfig--;
  return o;
}

void checkHl7TypesConfig(api.Hl7TypesConfig o) {
  buildCounterHl7TypesConfig++;
  if (buildCounterHl7TypesConfig < 3) {
    checkUnnamed31(o.type!);
    checkUnnamed32(o.version!);
  }
  buildCounterHl7TypesConfig--;
}

core.int buildCounterHl7V2NotificationConfig = 0;
api.Hl7V2NotificationConfig buildHl7V2NotificationConfig() {
  final o = api.Hl7V2NotificationConfig();
  buildCounterHl7V2NotificationConfig++;
  if (buildCounterHl7V2NotificationConfig < 3) {
    o.filter = 'foo';
    o.pubsubTopic = 'foo';
  }
  buildCounterHl7V2NotificationConfig--;
  return o;
}

void checkHl7V2NotificationConfig(api.Hl7V2NotificationConfig o) {
  buildCounterHl7V2NotificationConfig++;
  if (buildCounterHl7V2NotificationConfig < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterHl7V2NotificationConfig--;
}

core.Map<core.String, core.String> buildUnnamed33() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed33(core.Map<core.String, core.String> o) {
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

core.List<api.Hl7V2NotificationConfig> buildUnnamed34() => [
      buildHl7V2NotificationConfig(),
      buildHl7V2NotificationConfig(),
    ];

void checkUnnamed34(core.List<api.Hl7V2NotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2NotificationConfig(o[0]);
  checkHl7V2NotificationConfig(o[1]);
}

core.int buildCounterHl7V2Store = 0;
api.Hl7V2Store buildHl7V2Store() {
  final o = api.Hl7V2Store();
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    o.labels = buildUnnamed33();
    o.name = 'foo';
    o.notificationConfigs = buildUnnamed34();
    o.parserConfig = buildParserConfig();
    o.rejectDuplicateMessage = true;
  }
  buildCounterHl7V2Store--;
  return o;
}

void checkHl7V2Store(api.Hl7V2Store o) {
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    checkUnnamed33(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.notificationConfigs!);
    checkParserConfig(o.parserConfig!);
    unittest.expect(o.rejectDuplicateMessage!, unittest.isTrue);
  }
  buildCounterHl7V2Store--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed36() => [
      buildUnnamed35(),
      buildUnnamed35(),
    ];

void checkUnnamed36(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed35(o[0]);
  checkUnnamed35(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed36();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.gcsUri = 'foo';
    o.rawBytes = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.int buildCounterImageConfig = 0;
api.ImageConfig buildImageConfig() {
  final o = api.ImageConfig();
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    o.textRedactionMode = 'foo';
  }
  buildCounterImageConfig--;
  return o;
}

void checkImageConfig(api.ImageConfig o) {
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    unittest.expect(
      o.textRedactionMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageConfig--;
}

core.int buildCounterImportDicomDataRequest = 0;
api.ImportDicomDataRequest buildImportDicomDataRequest() {
  final o = api.ImportDicomDataRequest();
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    o.gcsSource = buildGoogleCloudHealthcareV1DicomGcsSource();
  }
  buildCounterImportDicomDataRequest--;
  return o;
}

void checkImportDicomDataRequest(api.ImportDicomDataRequest o) {
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1DicomGcsSource(o.gcsSource!);
  }
  buildCounterImportDicomDataRequest--;
}

core.int buildCounterImportMessagesRequest = 0;
api.ImportMessagesRequest buildImportMessagesRequest() {
  final o = api.ImportMessagesRequest();
  buildCounterImportMessagesRequest++;
  if (buildCounterImportMessagesRequest < 3) {
    o.gcsSource = buildGcsSource();
  }
  buildCounterImportMessagesRequest--;
  return o;
}

void checkImportMessagesRequest(api.ImportMessagesRequest o) {
  buildCounterImportMessagesRequest++;
  if (buildCounterImportMessagesRequest < 3) {
    checkGcsSource(o.gcsSource!);
  }
  buildCounterImportMessagesRequest--;
}

core.int buildCounterImportResourcesRequest = 0;
api.ImportResourcesRequest buildImportResourcesRequest() {
  final o = api.ImportResourcesRequest();
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    o.contentStructure = 'foo';
    o.gcsSource = buildGoogleCloudHealthcareV1FhirGcsSource();
  }
  buildCounterImportResourcesRequest--;
  return o;
}

void checkImportResourcesRequest(api.ImportResourcesRequest o) {
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    unittest.expect(
      o.contentStructure!,
      unittest.equals('foo'),
    );
    checkGoogleCloudHealthcareV1FhirGcsSource(o.gcsSource!);
  }
  buildCounterImportResourcesRequest--;
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterInfoTypeTransformation = 0;
api.InfoTypeTransformation buildInfoTypeTransformation() {
  final o = api.InfoTypeTransformation();
  buildCounterInfoTypeTransformation++;
  if (buildCounterInfoTypeTransformation < 3) {
    o.characterMaskConfig = buildCharacterMaskConfig();
    o.cryptoHashConfig = buildCryptoHashConfig();
    o.dateShiftConfig = buildDateShiftConfig();
    o.infoTypes = buildUnnamed37();
    o.redactConfig = buildRedactConfig();
    o.replaceWithInfoTypeConfig = buildReplaceWithInfoTypeConfig();
  }
  buildCounterInfoTypeTransformation--;
  return o;
}

void checkInfoTypeTransformation(api.InfoTypeTransformation o) {
  buildCounterInfoTypeTransformation++;
  if (buildCounterInfoTypeTransformation < 3) {
    checkCharacterMaskConfig(o.characterMaskConfig!);
    checkCryptoHashConfig(o.cryptoHashConfig!);
    checkDateShiftConfig(o.dateShiftConfig!);
    checkUnnamed37(o.infoTypes!);
    checkRedactConfig(o.redactConfig!);
    checkReplaceWithInfoTypeConfig(o.replaceWithInfoTypeConfig!);
  }
  buildCounterInfoTypeTransformation--;
}

core.int buildCounterIngestMessageRequest = 0;
api.IngestMessageRequest buildIngestMessageRequest() {
  final o = api.IngestMessageRequest();
  buildCounterIngestMessageRequest++;
  if (buildCounterIngestMessageRequest < 3) {
    o.message = buildMessage();
  }
  buildCounterIngestMessageRequest--;
  return o;
}

void checkIngestMessageRequest(api.IngestMessageRequest o) {
  buildCounterIngestMessageRequest++;
  if (buildCounterIngestMessageRequest < 3) {
    checkMessage(o.message!);
  }
  buildCounterIngestMessageRequest--;
}

core.int buildCounterIngestMessageResponse = 0;
api.IngestMessageResponse buildIngestMessageResponse() {
  final o = api.IngestMessageResponse();
  buildCounterIngestMessageResponse++;
  if (buildCounterIngestMessageResponse < 3) {
    o.hl7Ack = 'foo';
    o.message = buildMessage();
  }
  buildCounterIngestMessageResponse--;
  return o;
}

void checkIngestMessageResponse(api.IngestMessageResponse o) {
  buildCounterIngestMessageResponse++;
  if (buildCounterIngestMessageResponse < 3) {
    unittest.expect(
      o.hl7Ack!,
      unittest.equals('foo'),
    );
    checkMessage(o.message!);
  }
  buildCounterIngestMessageResponse--;
}

core.int buildCounterLinkedEntity = 0;
api.LinkedEntity buildLinkedEntity() {
  final o = api.LinkedEntity();
  buildCounterLinkedEntity++;
  if (buildCounterLinkedEntity < 3) {
    o.entityId = 'foo';
  }
  buildCounterLinkedEntity--;
  return o;
}

void checkLinkedEntity(api.LinkedEntity o) {
  buildCounterLinkedEntity++;
  if (buildCounterLinkedEntity < 3) {
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedEntity--;
}

core.List<api.AttributeDefinition> buildUnnamed38() => [
      buildAttributeDefinition(),
      buildAttributeDefinition(),
    ];

void checkUnnamed38(core.List<api.AttributeDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeDefinition(o[0]);
  checkAttributeDefinition(o[1]);
}

core.int buildCounterListAttributeDefinitionsResponse = 0;
api.ListAttributeDefinitionsResponse buildListAttributeDefinitionsResponse() {
  final o = api.ListAttributeDefinitionsResponse();
  buildCounterListAttributeDefinitionsResponse++;
  if (buildCounterListAttributeDefinitionsResponse < 3) {
    o.attributeDefinitions = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttributeDefinitionsResponse--;
  return o;
}

void checkListAttributeDefinitionsResponse(
    api.ListAttributeDefinitionsResponse o) {
  buildCounterListAttributeDefinitionsResponse++;
  if (buildCounterListAttributeDefinitionsResponse < 3) {
    checkUnnamed38(o.attributeDefinitions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAttributeDefinitionsResponse--;
}

core.List<api.ConsentArtifact> buildUnnamed39() => [
      buildConsentArtifact(),
      buildConsentArtifact(),
    ];

void checkUnnamed39(core.List<api.ConsentArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentArtifact(o[0]);
  checkConsentArtifact(o[1]);
}

core.int buildCounterListConsentArtifactsResponse = 0;
api.ListConsentArtifactsResponse buildListConsentArtifactsResponse() {
  final o = api.ListConsentArtifactsResponse();
  buildCounterListConsentArtifactsResponse++;
  if (buildCounterListConsentArtifactsResponse < 3) {
    o.consentArtifacts = buildUnnamed39();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentArtifactsResponse--;
  return o;
}

void checkListConsentArtifactsResponse(api.ListConsentArtifactsResponse o) {
  buildCounterListConsentArtifactsResponse++;
  if (buildCounterListConsentArtifactsResponse < 3) {
    checkUnnamed39(o.consentArtifacts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConsentArtifactsResponse--;
}

core.List<api.Consent> buildUnnamed40() => [
      buildConsent(),
      buildConsent(),
    ];

void checkUnnamed40(core.List<api.Consent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsent(o[0]);
  checkConsent(o[1]);
}

core.int buildCounterListConsentRevisionsResponse = 0;
api.ListConsentRevisionsResponse buildListConsentRevisionsResponse() {
  final o = api.ListConsentRevisionsResponse();
  buildCounterListConsentRevisionsResponse++;
  if (buildCounterListConsentRevisionsResponse < 3) {
    o.consents = buildUnnamed40();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentRevisionsResponse--;
  return o;
}

void checkListConsentRevisionsResponse(api.ListConsentRevisionsResponse o) {
  buildCounterListConsentRevisionsResponse++;
  if (buildCounterListConsentRevisionsResponse < 3) {
    checkUnnamed40(o.consents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConsentRevisionsResponse--;
}

core.List<api.ConsentStore> buildUnnamed41() => [
      buildConsentStore(),
      buildConsentStore(),
    ];

void checkUnnamed41(core.List<api.ConsentStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentStore(o[0]);
  checkConsentStore(o[1]);
}

core.int buildCounterListConsentStoresResponse = 0;
api.ListConsentStoresResponse buildListConsentStoresResponse() {
  final o = api.ListConsentStoresResponse();
  buildCounterListConsentStoresResponse++;
  if (buildCounterListConsentStoresResponse < 3) {
    o.consentStores = buildUnnamed41();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentStoresResponse--;
  return o;
}

void checkListConsentStoresResponse(api.ListConsentStoresResponse o) {
  buildCounterListConsentStoresResponse++;
  if (buildCounterListConsentStoresResponse < 3) {
    checkUnnamed41(o.consentStores!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConsentStoresResponse--;
}

core.List<api.Consent> buildUnnamed42() => [
      buildConsent(),
      buildConsent(),
    ];

void checkUnnamed42(core.List<api.Consent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsent(o[0]);
  checkConsent(o[1]);
}

core.int buildCounterListConsentsResponse = 0;
api.ListConsentsResponse buildListConsentsResponse() {
  final o = api.ListConsentsResponse();
  buildCounterListConsentsResponse++;
  if (buildCounterListConsentsResponse < 3) {
    o.consents = buildUnnamed42();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentsResponse--;
  return o;
}

void checkListConsentsResponse(api.ListConsentsResponse o) {
  buildCounterListConsentsResponse++;
  if (buildCounterListConsentsResponse < 3) {
    checkUnnamed42(o.consents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConsentsResponse--;
}

core.List<api.Dataset> buildUnnamed43() => [
      buildDataset(),
      buildDataset(),
    ];

void checkUnnamed43(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
api.ListDatasetsResponse buildListDatasetsResponse() {
  final o = api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatasetsResponse--;
  return o;
}

void checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed43(o.datasets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDatasetsResponse--;
}

core.List<api.DicomStore> buildUnnamed44() => [
      buildDicomStore(),
      buildDicomStore(),
    ];

void checkUnnamed44(core.List<api.DicomStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDicomStore(o[0]);
  checkDicomStore(o[1]);
}

core.int buildCounterListDicomStoresResponse = 0;
api.ListDicomStoresResponse buildListDicomStoresResponse() {
  final o = api.ListDicomStoresResponse();
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    o.dicomStores = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterListDicomStoresResponse--;
  return o;
}

void checkListDicomStoresResponse(api.ListDicomStoresResponse o) {
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    checkUnnamed44(o.dicomStores!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDicomStoresResponse--;
}

core.List<api.FhirStore> buildUnnamed45() => [
      buildFhirStore(),
      buildFhirStore(),
    ];

void checkUnnamed45(core.List<api.FhirStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFhirStore(o[0]);
  checkFhirStore(o[1]);
}

core.int buildCounterListFhirStoresResponse = 0;
api.ListFhirStoresResponse buildListFhirStoresResponse() {
  final o = api.ListFhirStoresResponse();
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    o.fhirStores = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterListFhirStoresResponse--;
  return o;
}

void checkListFhirStoresResponse(api.ListFhirStoresResponse o) {
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    checkUnnamed45(o.fhirStores!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFhirStoresResponse--;
}

core.List<api.Hl7V2Store> buildUnnamed46() => [
      buildHl7V2Store(),
      buildHl7V2Store(),
    ];

void checkUnnamed46(core.List<api.Hl7V2Store> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2Store(o[0]);
  checkHl7V2Store(o[1]);
}

core.int buildCounterListHl7V2StoresResponse = 0;
api.ListHl7V2StoresResponse buildListHl7V2StoresResponse() {
  final o = api.ListHl7V2StoresResponse();
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    o.hl7V2Stores = buildUnnamed46();
    o.nextPageToken = 'foo';
  }
  buildCounterListHl7V2StoresResponse--;
  return o;
}

void checkListHl7V2StoresResponse(api.ListHl7V2StoresResponse o) {
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    checkUnnamed46(o.hl7V2Stores!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListHl7V2StoresResponse--;
}

core.List<api.Location> buildUnnamed47() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed47(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed47();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed47(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Message> buildUnnamed48() => [
      buildMessage(),
      buildMessage(),
    ];

void checkUnnamed48(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterListMessagesResponse = 0;
api.ListMessagesResponse buildListMessagesResponse() {
  final o = api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.hl7V2Messages = buildUnnamed48();
    o.nextPageToken = 'foo';
  }
  buildCounterListMessagesResponse--;
  return o;
}

void checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed48(o.hl7V2Messages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMessagesResponse--;
}

core.List<api.Operation> buildUnnamed49() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed49(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed49();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.UserDataMapping> buildUnnamed50() => [
      buildUserDataMapping(),
      buildUserDataMapping(),
    ];

void checkUnnamed50(core.List<api.UserDataMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDataMapping(o[0]);
  checkUserDataMapping(o[1]);
}

core.int buildCounterListUserDataMappingsResponse = 0;
api.ListUserDataMappingsResponse buildListUserDataMappingsResponse() {
  final o = api.ListUserDataMappingsResponse();
  buildCounterListUserDataMappingsResponse++;
  if (buildCounterListUserDataMappingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.userDataMappings = buildUnnamed50();
  }
  buildCounterListUserDataMappingsResponse--;
  return o;
}

void checkListUserDataMappingsResponse(api.ListUserDataMappingsResponse o) {
  buildCounterListUserDataMappingsResponse++;
  if (buildCounterListUserDataMappingsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.userDataMappings!);
  }
  buildCounterListUserDataMappingsResponse--;
}

core.Map<core.String, core.String> buildUnnamed51() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed51(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed51();
    o.locationId = 'foo';
    o.metadata = buildUnnamed52();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed53() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed53(core.Map<core.String, core.String> o) {
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

core.List<api.PatientId> buildUnnamed54() => [
      buildPatientId(),
      buildPatientId(),
    ];

void checkUnnamed54(core.List<api.PatientId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatientId(o[0]);
  checkPatientId(o[1]);
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.createTime = 'foo';
    o.data = 'foo';
    o.labels = buildUnnamed53();
    o.messageType = 'foo';
    o.name = 'foo';
    o.parsedData = buildParsedData();
    o.patientIds = buildUnnamed54();
    o.schematizedData = buildSchematizedData();
    o.sendFacility = 'foo';
    o.sendTime = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.labels!);
    unittest.expect(
      o.messageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkParsedData(o.parsedData!);
    checkUnnamed54(o.patientIds!);
    checkSchematizedData(o.schematizedData!);
    unittest.expect(
      o.sendFacility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sendTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMessage--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsubTopic = 'foo';
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed55() => {
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

void checkUnnamed55(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed56() => {
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

void checkUnnamed56(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed55();
    o.name = 'foo';
    o.response = buildUnnamed56();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed55(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Segment> buildUnnamed57() => [
      buildSegment(),
      buildSegment(),
    ];

void checkUnnamed57(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterParsedData = 0;
api.ParsedData buildParsedData() {
  final o = api.ParsedData();
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    o.segments = buildUnnamed57();
  }
  buildCounterParsedData--;
  return o;
}

void checkParsedData(api.ParsedData o) {
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    checkUnnamed57(o.segments!);
  }
  buildCounterParsedData--;
}

core.int buildCounterParserConfig = 0;
api.ParserConfig buildParserConfig() {
  final o = api.ParserConfig();
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    o.allowNullHeader = true;
    o.schema = buildSchemaPackage();
    o.segmentTerminator = 'foo';
    o.version = 'foo';
  }
  buildCounterParserConfig--;
  return o;
}

void checkParserConfig(api.ParserConfig o) {
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    unittest.expect(o.allowNullHeader!, unittest.isTrue);
    checkSchemaPackage(o.schema!);
    unittest.expect(
      o.segmentTerminator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterParserConfig--;
}

core.int buildCounterPatientId = 0;
api.PatientId buildPatientId() {
  final o = api.PatientId();
  buildCounterPatientId++;
  if (buildCounterPatientId < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterPatientId--;
  return o;
}

void checkPatientId(api.PatientId o) {
  buildCounterPatientId++;
  if (buildCounterPatientId < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatientId--;
}

core.List<api.AuditConfig> buildUnnamed58() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed58(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed59() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed59(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed58();
    o.bindings = buildUnnamed59();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed58(o.auditConfigs!);
    checkUnnamed59(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.Map<core.String, core.String> buildUnnamed60() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed60(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed61() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed61(core.Map<core.String, core.String> o) {
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

core.int buildCounterQueryAccessibleDataRequest = 0;
api.QueryAccessibleDataRequest buildQueryAccessibleDataRequest() {
  final o = api.QueryAccessibleDataRequest();
  buildCounterQueryAccessibleDataRequest++;
  if (buildCounterQueryAccessibleDataRequest < 3) {
    o.gcsDestination = buildGoogleCloudHealthcareV1ConsentGcsDestination();
    o.requestAttributes = buildUnnamed60();
    o.resourceAttributes = buildUnnamed61();
  }
  buildCounterQueryAccessibleDataRequest--;
  return o;
}

void checkQueryAccessibleDataRequest(api.QueryAccessibleDataRequest o) {
  buildCounterQueryAccessibleDataRequest++;
  if (buildCounterQueryAccessibleDataRequest < 3) {
    checkGoogleCloudHealthcareV1ConsentGcsDestination(o.gcsDestination!);
    checkUnnamed60(o.requestAttributes!);
    checkUnnamed61(o.resourceAttributes!);
  }
  buildCounterQueryAccessibleDataRequest--;
}

core.int buildCounterRedactConfig = 0;
api.RedactConfig buildRedactConfig() {
  final o = api.RedactConfig();
  buildCounterRedactConfig++;
  if (buildCounterRedactConfig < 3) {}
  buildCounterRedactConfig--;
  return o;
}

void checkRedactConfig(api.RedactConfig o) {
  buildCounterRedactConfig++;
  if (buildCounterRedactConfig < 3) {}
  buildCounterRedactConfig--;
}

core.int buildCounterRejectConsentRequest = 0;
api.RejectConsentRequest buildRejectConsentRequest() {
  final o = api.RejectConsentRequest();
  buildCounterRejectConsentRequest++;
  if (buildCounterRejectConsentRequest < 3) {
    o.consentArtifact = 'foo';
  }
  buildCounterRejectConsentRequest--;
  return o;
}

void checkRejectConsentRequest(api.RejectConsentRequest o) {
  buildCounterRejectConsentRequest++;
  if (buildCounterRejectConsentRequest < 3) {
    unittest.expect(
      o.consentArtifact!,
      unittest.equals('foo'),
    );
  }
  buildCounterRejectConsentRequest--;
}

core.int buildCounterReplaceWithInfoTypeConfig = 0;
api.ReplaceWithInfoTypeConfig buildReplaceWithInfoTypeConfig() {
  final o = api.ReplaceWithInfoTypeConfig();
  buildCounterReplaceWithInfoTypeConfig++;
  if (buildCounterReplaceWithInfoTypeConfig < 3) {}
  buildCounterReplaceWithInfoTypeConfig--;
  return o;
}

void checkReplaceWithInfoTypeConfig(api.ReplaceWithInfoTypeConfig o) {
  buildCounterReplaceWithInfoTypeConfig++;
  if (buildCounterReplaceWithInfoTypeConfig < 3) {}
  buildCounterReplaceWithInfoTypeConfig--;
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.int buildCounterResources = 0;
api.Resources buildResources() {
  final o = api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.resources = buildUnnamed62();
  }
  buildCounterResources--;
  return o;
}

void checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed62(o.resources!);
  }
  buildCounterResources--;
}

core.Map<core.String, api.ConsentEvaluation> buildUnnamed63() => {
      'x': buildConsentEvaluation(),
      'y': buildConsentEvaluation(),
    };

void checkUnnamed63(core.Map<core.String, api.ConsentEvaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentEvaluation(o['x']!);
  checkConsentEvaluation(o['y']!);
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  final o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.consentDetails = buildUnnamed63();
    o.consented = true;
    o.dataId = 'foo';
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    checkUnnamed63(o.consentDetails!);
    unittest.expect(o.consented!, unittest.isTrue);
    unittest.expect(
      o.dataId!,
      unittest.equals('foo'),
    );
  }
  buildCounterResult--;
}

core.int buildCounterRevokeConsentRequest = 0;
api.RevokeConsentRequest buildRevokeConsentRequest() {
  final o = api.RevokeConsentRequest();
  buildCounterRevokeConsentRequest++;
  if (buildCounterRevokeConsentRequest < 3) {
    o.consentArtifact = 'foo';
  }
  buildCounterRevokeConsentRequest--;
  return o;
}

void checkRevokeConsentRequest(api.RevokeConsentRequest o) {
  buildCounterRevokeConsentRequest++;
  if (buildCounterRevokeConsentRequest < 3) {
    unittest.expect(
      o.consentArtifact!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevokeConsentRequest--;
}

core.int buildCounterSchemaConfig = 0;
api.SchemaConfig buildSchemaConfig() {
  final o = api.SchemaConfig();
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    o.recursiveStructureDepth = 'foo';
    o.schemaType = 'foo';
  }
  buildCounterSchemaConfig--;
  return o;
}

void checkSchemaConfig(api.SchemaConfig o) {
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    unittest.expect(
      o.recursiveStructureDepth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchemaConfig--;
}

core.List<api.GroupOrSegment> buildUnnamed64() => [
      buildGroupOrSegment(),
      buildGroupOrSegment(),
    ];

void checkUnnamed64(core.List<api.GroupOrSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupOrSegment(o[0]);
  checkGroupOrSegment(o[1]);
}

core.int buildCounterSchemaGroup = 0;
api.SchemaGroup buildSchemaGroup() {
  final o = api.SchemaGroup();
  buildCounterSchemaGroup++;
  if (buildCounterSchemaGroup < 3) {
    o.choice = true;
    o.maxOccurs = 42;
    o.members = buildUnnamed64();
    o.minOccurs = 42;
    o.name = 'foo';
  }
  buildCounterSchemaGroup--;
  return o;
}

void checkSchemaGroup(api.SchemaGroup o) {
  buildCounterSchemaGroup++;
  if (buildCounterSchemaGroup < 3) {
    unittest.expect(o.choice!, unittest.isTrue);
    unittest.expect(
      o.maxOccurs!,
      unittest.equals(42),
    );
    checkUnnamed64(o.members!);
    unittest.expect(
      o.minOccurs!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchemaGroup--;
}

core.List<api.Hl7SchemaConfig> buildUnnamed65() => [
      buildHl7SchemaConfig(),
      buildHl7SchemaConfig(),
    ];

void checkUnnamed65(core.List<api.Hl7SchemaConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7SchemaConfig(o[0]);
  checkHl7SchemaConfig(o[1]);
}

core.List<api.Hl7TypesConfig> buildUnnamed66() => [
      buildHl7TypesConfig(),
      buildHl7TypesConfig(),
    ];

void checkUnnamed66(core.List<api.Hl7TypesConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7TypesConfig(o[0]);
  checkHl7TypesConfig(o[1]);
}

core.int buildCounterSchemaPackage = 0;
api.SchemaPackage buildSchemaPackage() {
  final o = api.SchemaPackage();
  buildCounterSchemaPackage++;
  if (buildCounterSchemaPackage < 3) {
    o.ignoreMinOccurs = true;
    o.schemas = buildUnnamed65();
    o.schematizedParsingType = 'foo';
    o.types = buildUnnamed66();
    o.unexpectedSegmentHandling = 'foo';
  }
  buildCounterSchemaPackage--;
  return o;
}

void checkSchemaPackage(api.SchemaPackage o) {
  buildCounterSchemaPackage++;
  if (buildCounterSchemaPackage < 3) {
    unittest.expect(o.ignoreMinOccurs!, unittest.isTrue);
    checkUnnamed65(o.schemas!);
    unittest.expect(
      o.schematizedParsingType!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.types!);
    unittest.expect(
      o.unexpectedSegmentHandling!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchemaPackage--;
}

core.int buildCounterSchemaSegment = 0;
api.SchemaSegment buildSchemaSegment() {
  final o = api.SchemaSegment();
  buildCounterSchemaSegment++;
  if (buildCounterSchemaSegment < 3) {
    o.maxOccurs = 42;
    o.minOccurs = 42;
    o.type = 'foo';
  }
  buildCounterSchemaSegment--;
  return o;
}

void checkSchemaSegment(api.SchemaSegment o) {
  buildCounterSchemaSegment++;
  if (buildCounterSchemaSegment < 3) {
    unittest.expect(
      o.maxOccurs!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minOccurs!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchemaSegment--;
}

core.int buildCounterSchematizedData = 0;
api.SchematizedData buildSchematizedData() {
  final o = api.SchematizedData();
  buildCounterSchematizedData++;
  if (buildCounterSchematizedData < 3) {
    o.data = 'foo';
    o.error = 'foo';
  }
  buildCounterSchematizedData--;
  return o;
}

void checkSchematizedData(api.SchematizedData o) {
  buildCounterSchematizedData++;
  if (buildCounterSchematizedData < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchematizedData--;
}

core.int buildCounterSearchResourcesRequest = 0;
api.SearchResourcesRequest buildSearchResourcesRequest() {
  final o = api.SearchResourcesRequest();
  buildCounterSearchResourcesRequest++;
  if (buildCounterSearchResourcesRequest < 3) {
    o.resourceType = 'foo';
  }
  buildCounterSearchResourcesRequest--;
  return o;
}

void checkSearchResourcesRequest(api.SearchResourcesRequest o) {
  buildCounterSearchResourcesRequest++;
  if (buildCounterSearchResourcesRequest < 3) {
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchResourcesRequest--;
}

core.Map<core.String, core.String> buildUnnamed67() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed67(core.Map<core.String, core.String> o) {
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

core.int buildCounterSegment = 0;
api.Segment buildSegment() {
  final o = api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.fields = buildUnnamed67();
    o.segmentId = 'foo';
    o.setId = 'foo';
  }
  buildCounterSegment--;
  return o;
}

void checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkUnnamed67(o.fields!);
    unittest.expect(
      o.segmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.setId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegment--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.String> buildUnnamed68() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed68(core.Map<core.String, core.String> o) {
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

core.int buildCounterSignature = 0;
api.Signature buildSignature() {
  final o = api.Signature();
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    o.image = buildImage();
    o.metadata = buildUnnamed68();
    o.signatureTime = 'foo';
    o.userId = 'foo';
  }
  buildCounterSignature--;
  return o;
}

void checkSignature(api.Signature o) {
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    checkImage(o.image!);
    checkUnnamed68(o.metadata!);
    unittest.expect(
      o.signatureTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignature--;
}

core.Map<core.String, core.Object?> buildUnnamed69() => {
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

void checkUnnamed69(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed70() => [
      buildUnnamed69(),
      buildUnnamed69(),
    ];

void checkUnnamed70(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed69(o[0]);
  checkUnnamed69(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed70();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed70(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.int buildCounterStreamConfig = 0;
api.StreamConfig buildStreamConfig() {
  final o = api.StreamConfig();
  buildCounterStreamConfig++;
  if (buildCounterStreamConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1FhirBigQueryDestination();
    o.resourceTypes = buildUnnamed71();
  }
  buildCounterStreamConfig--;
  return o;
}

void checkStreamConfig(api.StreamConfig o) {
  buildCounterStreamConfig++;
  if (buildCounterStreamConfig < 3) {
    checkGoogleCloudHealthcareV1FhirBigQueryDestination(o.bigqueryDestination!);
    checkUnnamed71(o.resourceTypes!);
  }
  buildCounterStreamConfig--;
}

core.List<core.String> buildUnnamed72() => [
      'foo',
      'foo',
    ];

void checkUnnamed72(core.List<core.String> o) {
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

core.int buildCounterTagFilterList = 0;
api.TagFilterList buildTagFilterList() {
  final o = api.TagFilterList();
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    o.tags = buildUnnamed72();
  }
  buildCounterTagFilterList--;
  return o;
}

void checkTagFilterList(api.TagFilterList o) {
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    checkUnnamed72(o.tags!);
  }
  buildCounterTagFilterList--;
}

core.List<core.String> buildUnnamed73() => [
      'foo',
      'foo',
    ];

void checkUnnamed73(core.List<core.String> o) {
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
    o.permissions = buildUnnamed73();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed73(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed74() => [
      'foo',
      'foo',
    ];

void checkUnnamed74(core.List<core.String> o) {
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
    o.permissions = buildUnnamed74();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed74(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.InfoTypeTransformation> buildUnnamed75() => [
      buildInfoTypeTransformation(),
      buildInfoTypeTransformation(),
    ];

void checkUnnamed75(core.List<api.InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoTypeTransformation(o[0]);
  checkInfoTypeTransformation(o[1]);
}

core.int buildCounterTextConfig = 0;
api.TextConfig buildTextConfig() {
  final o = api.TextConfig();
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    o.transformations = buildUnnamed75();
  }
  buildCounterTextConfig--;
  return o;
}

void checkTextConfig(api.TextConfig o) {
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    checkUnnamed75(o.transformations!);
  }
  buildCounterTextConfig--;
}

core.int buildCounterTextSpan = 0;
api.TextSpan buildTextSpan() {
  final o = api.TextSpan();
  buildCounterTextSpan++;
  if (buildCounterTextSpan < 3) {
    o.beginOffset = 42;
    o.content = 'foo';
  }
  buildCounterTextSpan--;
  return o;
}

void checkTextSpan(api.TextSpan o) {
  buildCounterTextSpan++;
  if (buildCounterTextSpan < 3) {
    unittest.expect(
      o.beginOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextSpan--;
}

core.List<api.Field> buildUnnamed76() => [
      buildField(),
      buildField(),
    ];

void checkUnnamed76(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed76();
    o.name = 'foo';
    o.primitive = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed76(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primitive!,
      unittest.equals('foo'),
    );
  }
  buildCounterType--;
}

core.List<api.Attribute> buildUnnamed77() => [
      buildAttribute(),
      buildAttribute(),
    ];

void checkUnnamed77(core.List<api.Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttribute(o[0]);
  checkAttribute(o[1]);
}

core.int buildCounterUserDataMapping = 0;
api.UserDataMapping buildUserDataMapping() {
  final o = api.UserDataMapping();
  buildCounterUserDataMapping++;
  if (buildCounterUserDataMapping < 3) {
    o.archiveTime = 'foo';
    o.archived = true;
    o.dataId = 'foo';
    o.name = 'foo';
    o.resourceAttributes = buildUnnamed77();
    o.userId = 'foo';
  }
  buildCounterUserDataMapping--;
  return o;
}

void checkUserDataMapping(api.UserDataMapping o) {
  buildCounterUserDataMapping++;
  if (buildCounterUserDataMapping < 3) {
    unittest.expect(
      o.archiveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.archived!, unittest.isTrue);
    unittest.expect(
      o.dataId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed77(o.resourceAttributes!);
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDataMapping--;
}

core.List<core.String> buildUnnamed78() => [
      'foo',
      'foo',
    ];

void checkUnnamed78(core.List<core.String> o) {
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

core.int buildCounterValidationConfig = 0;
api.ValidationConfig buildValidationConfig() {
  final o = api.ValidationConfig();
  buildCounterValidationConfig++;
  if (buildCounterValidationConfig < 3) {
    o.disableFhirpathValidation = true;
    o.disableProfileValidation = true;
    o.disableReferenceTypeValidation = true;
    o.disableRequiredFieldValidation = true;
    o.enabledImplementationGuides = buildUnnamed78();
  }
  buildCounterValidationConfig--;
  return o;
}

void checkValidationConfig(api.ValidationConfig o) {
  buildCounterValidationConfig++;
  if (buildCounterValidationConfig < 3) {
    unittest.expect(o.disableFhirpathValidation!, unittest.isTrue);
    unittest.expect(o.disableProfileValidation!, unittest.isTrue);
    unittest.expect(o.disableReferenceTypeValidation!, unittest.isTrue);
    unittest.expect(o.disableRequiredFieldValidation!, unittest.isTrue);
    checkUnnamed78(o.enabledImplementationGuides!);
  }
  buildCounterValidationConfig--;
}

core.int buildCounterVersionSource = 0;
api.VersionSource buildVersionSource() {
  final o = api.VersionSource();
  buildCounterVersionSource++;
  if (buildCounterVersionSource < 3) {
    o.mshField = 'foo';
    o.value = 'foo';
  }
  buildCounterVersionSource--;
  return o;
}

void checkVersionSource(api.VersionSource o) {
  buildCounterVersionSource++;
  if (buildCounterVersionSource < 3) {
    unittest.expect(
      o.mshField!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersionSource--;
}

void main() {
  unittest.group('obj-schema-ActivateConsentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateConsentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateConsentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateConsentRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-ArchiveUserDataMappingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveUserDataMappingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveUserDataMappingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArchiveUserDataMappingRequest(od);
    });
  });

  unittest.group('obj-schema-ArchiveUserDataMappingResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveUserDataMappingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveUserDataMappingResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArchiveUserDataMappingResponse(od);
    });
  });

  unittest.group('obj-schema-Attribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attribute.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttribute(od);
    });
  });

  unittest.group('obj-schema-AttributeDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributeDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributeDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttributeDefinition(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
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

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CharacterMaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCharacterMaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CharacterMaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCharacterMaskConfig(od);
    });
  });

  unittest.group('obj-schema-CheckDataAccessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckDataAccessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckDataAccessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckDataAccessRequest(od);
    });
  });

  unittest.group('obj-schema-CheckDataAccessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckDataAccessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckDataAccessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckDataAccessResponse(od);
    });
  });

  unittest.group('obj-schema-Consent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Consent.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConsent(od);
    });
  });

  unittest.group('obj-schema-ConsentArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsentArtifact(od);
    });
  });

  unittest.group('obj-schema-ConsentEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentEvaluation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsentEvaluation(od);
    });
  });

  unittest.group('obj-schema-ConsentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsentList(od);
    });
  });

  unittest.group('obj-schema-ConsentStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentStore.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsentStore(od);
    });
  });

  unittest.group('obj-schema-CreateMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateMessageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateMessageRequest(od);
    });
  });

  unittest.group('obj-schema-CryptoHashConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoHashConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoHashConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCryptoHashConfig(od);
    });
  });

  unittest.group('obj-schema-Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dataset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataset(od);
    });
  });

  unittest.group('obj-schema-DateShiftConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateShiftConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateShiftConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDateShiftConfig(od);
    });
  });

  unittest.group('obj-schema-DeidentifyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeidentifyConfig(od);
    });
  });

  unittest.group('obj-schema-DeidentifyDatasetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyDatasetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyDatasetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeidentifyDatasetRequest(od);
    });
  });

  unittest.group('obj-schema-DeidentifyDicomStoreRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyDicomStoreRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyDicomStoreRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeidentifyDicomStoreRequest(od);
    });
  });

  unittest.group('obj-schema-DeidentifyFhirStoreRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyFhirStoreRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyFhirStoreRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeidentifyFhirStoreRequest(od);
    });
  });

  unittest.group('obj-schema-DicomConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDicomConfig(od);
    });
  });

  unittest.group('obj-schema-DicomFilterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomFilterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomFilterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDicomFilterConfig(od);
    });
  });

  unittest.group('obj-schema-DicomStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DicomStore.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDicomStore(od);
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

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityMention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMention.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityMention(od);
    });
  });

  unittest.group('obj-schema-EntityMentionRelationship', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMentionRelationship();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMentionRelationship.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityMentionRelationship(od);
    });
  });

  unittest.group('obj-schema-EvaluateUserConsentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluateUserConsentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluateUserConsentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEvaluateUserConsentsRequest(od);
    });
  });

  unittest.group('obj-schema-EvaluateUserConsentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluateUserConsentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluateUserConsentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEvaluateUserConsentsResponse(od);
    });
  });

  unittest.group('obj-schema-ExportDicomDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportDicomDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportDicomDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportDicomDataRequest(od);
    });
  });

  unittest.group('obj-schema-ExportMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportMessagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-ExportResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportResourcesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportResourcesRequest(od);
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

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeature(od);
    });
  });

  unittest.group('obj-schema-FhirConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FhirConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFhirConfig(od);
    });
  });

  unittest.group('obj-schema-FhirFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FhirFilter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFhirFilter(od);
    });
  });

  unittest.group('obj-schema-FhirStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FhirStore.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFhirStore(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od);
    });
  });

  unittest.group('obj-schema-FieldMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldMetadata(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1ConsentGcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1ConsentGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1ConsentGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1ConsentGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1ConsentPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1ConsentPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1ConsentPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1ConsentPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1DicomBigQueryDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1DicomBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1DicomBigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1DicomGcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1DicomGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1DicomGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1DicomGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1DicomGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1DicomGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1DicomGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1DicomGcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1FhirBigQueryDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1FhirBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1FhirBigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1FhirGcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1FhirGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1FhirGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1FhirGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudHealthcareV1FhirGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1FhirGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1FhirGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudHealthcareV1FhirGcsSource(od);
    });
  });

  unittest.group('obj-schema-GroupOrSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupOrSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupOrSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupOrSegment(od);
    });
  });

  unittest.group('obj-schema-Hl7SchemaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7SchemaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7SchemaConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHl7SchemaConfig(od);
    });
  });

  unittest.group('obj-schema-Hl7TypesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7TypesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7TypesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHl7TypesConfig(od);
    });
  });

  unittest.group('obj-schema-Hl7V2NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7V2NotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7V2NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHl7V2NotificationConfig(od);
    });
  });

  unittest.group('obj-schema-Hl7V2Store', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7V2Store();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hl7V2Store.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHl7V2Store(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpBody.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageConfig(od);
    });
  });

  unittest.group('obj-schema-ImportDicomDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportDicomDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportDicomDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportDicomDataRequest(od);
    });
  });

  unittest.group('obj-schema-ImportMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportMessagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-ImportResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportResourcesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportResourcesRequest(od);
    });
  });

  unittest.group('obj-schema-InfoTypeTransformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInfoTypeTransformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InfoTypeTransformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInfoTypeTransformation(od);
    });
  });

  unittest.group('obj-schema-IngestMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestMessageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIngestMessageRequest(od);
    });
  });

  unittest.group('obj-schema-IngestMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestMessageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIngestMessageResponse(od);
    });
  });

  unittest.group('obj-schema-LinkedEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedEntity(od);
    });
  });

  unittest.group('obj-schema-ListAttributeDefinitionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAttributeDefinitionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAttributeDefinitionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAttributeDefinitionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentArtifactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentArtifactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentArtifactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConsentArtifactsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentRevisionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConsentRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentStoresResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConsentStoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConsentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatasetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatasetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatasetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatasetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDicomStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDicomStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDicomStoresResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDicomStoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListFhirStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFhirStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFhirStoresResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFhirStoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListHl7V2StoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHl7V2StoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHl7V2StoresResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHl7V2StoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMessagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMessagesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUserDataMappingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserDataMappingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserDataMappingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUserDataMappingsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Message.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-ParsedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParsedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ParsedData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParsedData(od);
    });
  });

  unittest.group('obj-schema-ParserConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParserConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParserConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParserConfig(od);
    });
  });

  unittest.group('obj-schema-PatientId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatientId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PatientId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPatientId(od);
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

  unittest.group('obj-schema-QueryAccessibleDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAccessibleDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAccessibleDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAccessibleDataRequest(od);
    });
  });

  unittest.group('obj-schema-RedactConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRedactConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RedactConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRedactConfig(od);
    });
  });

  unittest.group('obj-schema-RejectConsentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectConsentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectConsentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRejectConsentRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceWithInfoTypeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceWithInfoTypeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceWithInfoTypeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group('obj-schema-Resources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Resources.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResources(od);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Result.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResult(od);
    });
  });

  unittest.group('obj-schema-RevokeConsentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeConsentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeConsentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeConsentRequest(od);
    });
  });

  unittest.group('obj-schema-SchemaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaConfig(od);
    });
  });

  unittest.group('obj-schema-SchemaGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaGroup(od);
    });
  });

  unittest.group('obj-schema-SchemaPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaPackage(od);
    });
  });

  unittest.group('obj-schema-SchemaSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaSegment(od);
    });
  });

  unittest.group('obj-schema-SchematizedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchematizedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchematizedData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchematizedData(od);
    });
  });

  unittest.group('obj-schema-SearchResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResourcesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResourcesRequest(od);
    });
  });

  unittest.group('obj-schema-Segment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Segment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSegment(od);
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

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StreamConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamConfig(od);
    });
  });

  unittest.group('obj-schema-TagFilterList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagFilterList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagFilterList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTagFilterList(od);
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

  unittest.group('obj-schema-TextConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextConfig(od);
    });
  });

  unittest.group('obj-schema-TextSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextSpan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextSpan(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Type.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkType(od);
    });
  });

  unittest.group('obj-schema-UserDataMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDataMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDataMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDataMapping(od);
    });
  });

  unittest.group('obj-schema-ValidationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidationConfig(od);
    });
  });

  unittest.group('obj-schema-VersionSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersionSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VersionSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVersionSource(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildDataset();
      final arg_parent = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['datasetId']!.first,
          unittest.equals(arg_datasetId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          datasetId: arg_datasetId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildDeidentifyDatasetRequest();
      final arg_sourceDataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeidentifyDatasetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeidentifyDatasetRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deidentify(arg_request, arg_sourceDataset,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatasetsResponse(response as api.ListDatasetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildDataset();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

  unittest.group('resource-ProjectsLocationsDatasetsConsentStoresResource', () {
    unittest.test('method--checkDataAccess', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildCheckDataAccessRequest();
      final arg_consentStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CheckDataAccessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckDataAccessRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildCheckDataAccessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkDataAccess(arg_request, arg_consentStore,
          $fields: arg_$fields);
      checkCheckDataAccessResponse(response as api.CheckDataAccessResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildConsentStore();
      final arg_parent = 'foo';
      final arg_consentStoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConsentStore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConsentStore(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['consentStoreId']!.first,
          unittest.equals(arg_consentStoreId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConsentStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          consentStoreId: arg_consentStoreId, $fields: arg_$fields);
      checkConsentStore(response as api.ConsentStore);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--evaluateUserConsents', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildEvaluateUserConsentsRequest();
      final arg_consentStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EvaluateUserConsentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEvaluateUserConsentsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildEvaluateUserConsentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.evaluateUserConsents(
          arg_request, arg_consentStore,
          $fields: arg_$fields);
      checkEvaluateUserConsentsResponse(
          response as api.EvaluateUserConsentsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsentStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsentStore(response as api.ConsentStore);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConsentStoresResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConsentStoresResponse(response as api.ListConsentStoresResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildConsentStore();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConsentStore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConsentStore(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsentStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkConsentStore(response as api.ConsentStore);
    });

    unittest.test('method--queryAccessibleData', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildQueryAccessibleDataRequest();
      final arg_consentStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryAccessibleDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryAccessibleDataRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryAccessibleData(
          arg_request, arg_consentStore,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

  unittest.group(
      'resource-ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .attributeDefinitions;
      final arg_request = buildAttributeDefinition();
      final arg_parent = 'foo';
      final arg_attributeDefinitionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AttributeDefinition.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttributeDefinition(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['attributeDefinitionId']!.first,
          unittest.equals(arg_attributeDefinitionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAttributeDefinition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          attributeDefinitionId: arg_attributeDefinitionId,
          $fields: arg_$fields);
      checkAttributeDefinition(response as api.AttributeDefinition);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .attributeDefinitions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .attributeDefinitions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildAttributeDefinition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAttributeDefinition(response as api.AttributeDefinition);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .attributeDefinitions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListAttributeDefinitionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAttributeDefinitionsResponse(
          response as api.ListAttributeDefinitionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .attributeDefinitions;
      final arg_request = buildAttributeDefinition();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AttributeDefinition.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttributeDefinition(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildAttributeDefinition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkAttributeDefinition(response as api.AttributeDefinition);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consentArtifacts;
      final arg_request = buildConsentArtifact();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConsentArtifact.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConsentArtifact(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsentArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkConsentArtifact(response as api.ConsentArtifact);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consentArtifacts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consentArtifacts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsentArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsentArtifact(response as api.ConsentArtifact);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consentArtifacts;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConsentArtifactsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConsentArtifactsResponse(
          response as api.ListConsentArtifactsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDatasetsConsentStoresConsentsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_request = buildActivateConsentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateConsentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateConsentRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_request = buildConsent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Consent.fromJson(json as core.Map<core.String, core.dynamic>);
        checkConsent(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--deleteRevision', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.deleteRevision(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConsentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConsentsResponse(response as api.ListConsentsResponse);
    });

    unittest.test('method--listRevisions', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConsentRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listRevisions(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConsentRevisionsResponse(
          response as api.ListConsentRevisionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_request = buildConsent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Consent.fromJson(json as core.Map<core.String, core.dynamic>);
        checkConsent(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });

    unittest.test('method--reject', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_request = buildRejectConsentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RejectConsentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRejectConsentRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reject(arg_request, arg_name, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .consents;
      final arg_request = buildRevokeConsentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RevokeConsentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevokeConsentRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildConsent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revoke(arg_request, arg_name, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource',
      () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .userDataMappings;
      final arg_request = buildArchiveUserDataMappingRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ArchiveUserDataMappingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkArchiveUserDataMappingRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildArchiveUserDataMappingResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.archive(arg_request, arg_name, $fields: arg_$fields);
      checkArchiveUserDataMappingResponse(
          response as api.ArchiveUserDataMappingResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .userDataMappings;
      final arg_request = buildUserDataMapping();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserDataMapping.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserDataMapping(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildUserDataMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkUserDataMapping(response as api.UserDataMapping);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .userDataMappings;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .userDataMappings;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildUserDataMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserDataMapping(response as api.UserDataMapping);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .userDataMappings;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListUserDataMappingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUserDataMappingsResponse(
          response as api.ListUserDataMappingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .consentStores
          .userDataMappings;
      final arg_request = buildUserDataMapping();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserDataMapping.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserDataMapping(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildUserDataMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkUserDataMapping(response as api.UserDataMapping);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsDicomStoresResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildDicomStore();
      final arg_parent = 'foo';
      final arg_dicomStoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DicomStore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDicomStore(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['dicomStoreId']!.first,
          unittest.equals(arg_dicomStoreId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDicomStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dicomStoreId: arg_dicomStoreId, $fields: arg_$fields);
      checkDicomStore(response as api.DicomStore);
    });

    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildDeidentifyDicomStoreRequest();
      final arg_sourceStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeidentifyDicomStoreRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeidentifyDicomStoreRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deidentify(arg_request, arg_sourceStore,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildExportDicomDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportDicomDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportDicomDataRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildDicomStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDicomStore(response as api.DicomStore);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildImportDicomDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportDicomDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportDicomDataRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDicomStoresResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDicomStoresResponse(response as api.ListDicomStoresResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildDicomStore();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DicomStore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDicomStore(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildDicomStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDicomStore(response as api.DicomStore);
    });

    unittest.test('method--searchForInstances', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForInstances(
          arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForSeries', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForSeries(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForStudies', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForStudies(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--storeInstances', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.storeInstances(
          arg_request, arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

  unittest.group('resource-ProjectsLocationsDatasetsDicomStoresStudiesResource',
      () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_parent, arg_dicomWebPath, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--retrieveMetadata', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveMetadata(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--retrieveStudy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveStudy(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForInstances', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForInstances(
          arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForSeries', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForSeries(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--storeInstances', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.storeInstances(
          arg_request, arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_parent, arg_dicomWebPath, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--retrieveMetadata', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveMetadata(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--retrieveSeries', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveSeries(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForInstances', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForInstances(
          arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource',
      () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series
          .instances;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response =
          await res.delete(arg_parent, arg_dicomWebPath, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--retrieveInstance', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series
          .instances;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveInstance(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--retrieveMetadata', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series
          .instances;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveMetadata(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--retrieveRendered', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series
          .instances;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveRendered(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource',
      () {
    unittest.test('method--retrieveFrames', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series
          .instances
          .frames;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveFrames(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--retrieveRendered', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .dicomStores
          .studies
          .series
          .instances
          .frames;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveRendered(arg_parent, arg_dicomWebPath,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsFhirStoresResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildFhirStore();
      final arg_parent = 'foo';
      final arg_fhirStoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.FhirStore.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFhirStore(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['fhirStoreId']!.first,
          unittest.equals(arg_fhirStoreId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFhirStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          fhirStoreId: arg_fhirStoreId, $fields: arg_$fields);
      checkFhirStore(response as api.FhirStore);
    });

    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildDeidentifyFhirStoreRequest();
      final arg_sourceStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeidentifyFhirStoreRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeidentifyFhirStoreRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deidentify(arg_request, arg_sourceStore,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildExportResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportResourcesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildFhirStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFhirStore(response as api.FhirStore);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildImportResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportResourcesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListFhirStoresResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFhirStoresResponse(response as api.ListFhirStoresResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildFhirStore();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.FhirStore.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFhirStore(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildFhirStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkFhirStore(response as api.FhirStore);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

  unittest.group('resource-ProjectsLocationsDatasetsFhirStoresFhirResource',
      () {
    unittest.test('method--PatientEverything', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
      final arg_P_since = 'foo';
      final arg_P_type = 'foo';
      final arg_end = 'foo';
      final arg_start = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
          core.int.parse(queryMap['_count']!.first),
          unittest.equals(arg_P_count),
        );
        unittest.expect(
          queryMap['_page_token']!.first,
          unittest.equals(arg_P_pageToken),
        );
        unittest.expect(
          queryMap['_since']!.first,
          unittest.equals(arg_P_since),
        );
        unittest.expect(
          queryMap['_type']!.first,
          unittest.equals(arg_P_type),
        );
        unittest.expect(
          queryMap['end']!.first,
          unittest.equals(arg_end),
        );
        unittest.expect(
          queryMap['start']!.first,
          unittest.equals(arg_start),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.PatientEverything(arg_name,
          P_count: arg_P_count,
          P_pageToken: arg_P_pageToken,
          P_since: arg_P_since,
          P_type: arg_P_type,
          end: arg_end,
          start: arg_start,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ResourcePurge', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.ResourcePurge(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--ResourceValidate', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_type = 'foo';
      final arg_profile = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['profile']!.first,
          unittest.equals(arg_profile),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.ResourceValidate(
          arg_request, arg_parent, arg_type,
          profile: arg_profile, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--capabilities', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.capabilities(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_type = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent, arg_type,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--executeBundle', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeBundle(arg_request, arg_parent,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--history', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_P_at = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
      final arg_P_since = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['_at']!.first,
          unittest.equals(arg_P_at),
        );
        unittest.expect(
          core.int.parse(queryMap['_count']!.first),
          unittest.equals(arg_P_count),
        );
        unittest.expect(
          queryMap['_page_token']!.first,
          unittest.equals(arg_P_pageToken),
        );
        unittest.expect(
          queryMap['_since']!.first,
          unittest.equals(arg_P_since),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.history(arg_name,
          P_at: arg_P_at,
          P_count: arg_P_count,
          P_pageToken: arg_P_pageToken,
          P_since: arg_P_since,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildHttpBody();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--read', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.read(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildSearchResourcesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchResourcesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_parent, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchType', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildSearchResourcesRequest();
      final arg_parent = 'foo';
      final arg_resourceType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchResourcesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchType(
          arg_request, arg_parent, arg_resourceType,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_request = buildHttpBody();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--vread', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .fhirStores
          .fhir;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.vread(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsHl7V2StoresResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildHl7V2Store();
      final arg_parent = 'foo';
      final arg_hl7V2StoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Hl7V2Store.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkHl7V2Store(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['hl7V2StoreId']!.first,
          unittest.equals(arg_hl7V2StoreId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHl7V2Store());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          hl7V2StoreId: arg_hl7V2StoreId, $fields: arg_$fields);
      checkHl7V2Store(response as api.Hl7V2Store);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildExportMessagesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportMessagesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHl7V2Store());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkHl7V2Store(response as api.Hl7V2Store);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildImportMessagesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportMessagesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListHl7V2StoresResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListHl7V2StoresResponse(response as api.ListHl7V2StoresResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildHl7V2Store();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Hl7V2Store.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkHl7V2Store(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildHl7V2Store());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkHl7V2Store(response as api.Hl7V2Store);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

  unittest.group(
      'resource-ProjectsLocationsDatasetsHl7V2StoresMessagesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .hl7V2Stores
          .messages;
      final arg_request = buildCreateMessageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateMessageRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .hl7V2Stores
          .messages;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .hl7V2Stores
          .messages;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .hl7V2Stores
          .messages;
      final arg_request = buildIngestMessageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.IngestMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIngestMessageRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildIngestMessageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.ingest(arg_request, arg_parent, $fields: arg_$fields);
      checkIngestMessageResponse(response as api.IngestMessageResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .hl7V2Stores
          .messages;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListMessagesResponse(response as api.ListMessagesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock)
          .projects
          .locations
          .datasets
          .hl7V2Stores
          .messages;
      final arg_request = buildMessage();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesNlpResource', () {
    unittest.test('method--analyzeEntities', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.services.nlp;
      final arg_request = buildAnalyzeEntitiesRequest();
      final arg_nlpService = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzeEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeEntitiesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildAnalyzeEntitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeEntities(arg_request, arg_nlpService,
          $fields: arg_$fields);
      checkAnalyzeEntitiesResponse(response as api.AnalyzeEntitiesResponse);
    });
  });
}
