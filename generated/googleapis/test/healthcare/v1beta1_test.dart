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

import 'package:googleapis/healthcare/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessDeterminationLogConfig = 0;
api.AccessDeterminationLogConfig buildAccessDeterminationLogConfig() {
  final o = api.AccessDeterminationLogConfig();
  buildCounterAccessDeterminationLogConfig++;
  if (buildCounterAccessDeterminationLogConfig < 3) {
    o.logLevel = 'foo';
  }
  buildCounterAccessDeterminationLogConfig--;
  return o;
}

void checkAccessDeterminationLogConfig(api.AccessDeterminationLogConfig o) {
  buildCounterAccessDeterminationLogConfig++;
  if (buildCounterAccessDeterminationLogConfig < 3) {
    unittest.expect(o.logLevel!, unittest.equals('foo'));
  }
  buildCounterAccessDeterminationLogConfig--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.cleanImageTag = buildImageConfig();
    o.cleanTextTag = buildCleanTextTag();
    o.deleteTag = buildDeleteTag();
    o.keepTag = buildKeepTag();
    o.queries = buildUnnamed0();
    o.recurseTag = buildRecurseTag();
    o.regenUidTag = buildRegenUidTag();
    o.removeTag = buildRemoveTag();
    o.resetTag = buildResetTag();
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    checkImageConfig(o.cleanImageTag!);
    checkCleanTextTag(o.cleanTextTag!);
    checkDeleteTag(o.deleteTag!);
    checkKeepTag(o.keepTag!);
    checkUnnamed0(o.queries!);
    checkRecurseTag(o.recurseTag!);
    checkRegenUidTag(o.regenUidTag!);
    checkRemoveTag(o.removeTag!);
    checkResetTag(o.resetTag!);
  }
  buildCounterAction--;
}

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
    unittest.expect(o.consentArtifact!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
  }
  buildCounterActivateConsentRequest--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdminConsents = 0;
api.AdminConsents buildAdminConsents() {
  final o = api.AdminConsents();
  buildCounterAdminConsents++;
  if (buildCounterAdminConsents < 3) {
    o.names = buildUnnamed1();
  }
  buildCounterAdminConsents--;
  return o;
}

void checkAdminConsents(api.AdminConsents o) {
  buildCounterAdminConsents++;
  if (buildCounterAdminConsents < 3) {
    checkUnnamed1(o.names!);
  }
  buildCounterAdminConsents--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAnalyzeEntitiesRequest = 0;
api.AnalyzeEntitiesRequest buildAnalyzeEntitiesRequest() {
  final o = api.AnalyzeEntitiesRequest();
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    o.alternativeOutputFormat = 'foo';
    o.documentContent = 'foo';
    o.licensedVocabularies = buildUnnamed2();
  }
  buildCounterAnalyzeEntitiesRequest--;
  return o;
}

void checkAnalyzeEntitiesRequest(api.AnalyzeEntitiesRequest o) {
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    unittest.expect(o.alternativeOutputFormat!, unittest.equals('foo'));
    unittest.expect(o.documentContent!, unittest.equals('foo'));
    checkUnnamed2(o.licensedVocabularies!);
  }
  buildCounterAnalyzeEntitiesRequest--;
}

core.List<api.Entity> buildUnnamed3() => [buildEntity(), buildEntity()];

void checkUnnamed3(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.List<api.EntityMention> buildUnnamed4() => [
  buildEntityMention(),
  buildEntityMention(),
];

void checkUnnamed4(core.List<api.EntityMention> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMention(o[0]);
  checkEntityMention(o[1]);
}

core.List<api.EntityMentionRelationship> buildUnnamed5() => [
  buildEntityMentionRelationship(),
  buildEntityMentionRelationship(),
];

void checkUnnamed5(core.List<api.EntityMentionRelationship> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMentionRelationship(o[0]);
  checkEntityMentionRelationship(o[1]);
}

core.int buildCounterAnalyzeEntitiesResponse = 0;
api.AnalyzeEntitiesResponse buildAnalyzeEntitiesResponse() {
  final o = api.AnalyzeEntitiesResponse();
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    o.entities = buildUnnamed3();
    o.entityMentions = buildUnnamed4();
    o.fhirBundle = 'foo';
    o.relationships = buildUnnamed5();
  }
  buildCounterAnalyzeEntitiesResponse--;
  return o;
}

void checkAnalyzeEntitiesResponse(api.AnalyzeEntitiesResponse o) {
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    checkUnnamed3(o.entities!);
    checkUnnamed4(o.entityMentions!);
    unittest.expect(o.fhirBundle!, unittest.equals('foo'));
    checkUnnamed5(o.relationships!);
  }
  buildCounterAnalyzeEntitiesResponse--;
}

core.int buildCounterApplyAdminConsentsRequest = 0;
api.ApplyAdminConsentsRequest buildApplyAdminConsentsRequest() {
  final o = api.ApplyAdminConsentsRequest();
  buildCounterApplyAdminConsentsRequest++;
  if (buildCounterApplyAdminConsentsRequest < 3) {
    o.newConsentsList = buildAdminConsents();
    o.validateOnly = true;
  }
  buildCounterApplyAdminConsentsRequest--;
  return o;
}

void checkApplyAdminConsentsRequest(api.ApplyAdminConsentsRequest o) {
  buildCounterApplyAdminConsentsRequest++;
  if (buildCounterApplyAdminConsentsRequest < 3) {
    checkAdminConsents(o.newConsentsList!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterApplyAdminConsentsRequest--;
}

core.int buildCounterApplyConsentsRequest = 0;
api.ApplyConsentsRequest buildApplyConsentsRequest() {
  final o = api.ApplyConsentsRequest();
  buildCounterApplyConsentsRequest++;
  if (buildCounterApplyConsentsRequest < 3) {
    o.patientScope = buildPatientScope();
    o.timeRange = buildTimeRange();
    o.validateOnly = true;
  }
  buildCounterApplyConsentsRequest--;
  return o;
}

void checkApplyConsentsRequest(api.ApplyConsentsRequest o) {
  buildCounterApplyConsentsRequest++;
  if (buildCounterApplyConsentsRequest < 3) {
    checkPatientScope(o.patientScope!);
    checkTimeRange(o.timeRange!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterApplyConsentsRequest--;
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

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttribute = 0;
api.Attribute buildAttribute() {
  final o = api.Attribute();
  buildCounterAttribute++;
  if (buildCounterAttribute < 3) {
    o.attributeDefinitionId = 'foo';
    o.values = buildUnnamed6();
  }
  buildCounterAttribute--;
  return o;
}

void checkAttribute(api.Attribute o) {
  buildCounterAttribute++;
  if (buildCounterAttribute < 3) {
    unittest.expect(o.attributeDefinitionId!, unittest.equals('foo'));
    checkUnnamed6(o.values!);
  }
  buildCounterAttribute--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttributeDefinition = 0;
api.AttributeDefinition buildAttributeDefinition() {
  final o = api.AttributeDefinition();
  buildCounterAttributeDefinition++;
  if (buildCounterAttributeDefinition < 3) {
    o.allowedValues = buildUnnamed7();
    o.category = 'foo';
    o.consentDefaultValues = buildUnnamed8();
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
    checkUnnamed7(o.allowedValues!);
    unittest.expect(o.category!, unittest.equals('foo'));
    checkUnnamed8(o.consentDefaultValues!);
    unittest.expect(o.dataMappingDefaultValue!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAttributeDefinition--;
}

core.List<api.AuditLogConfig> buildUnnamed9() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed9(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed9();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed9(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed10();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed10(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<api.Message> buildUnnamed11() => [buildMessage(), buildMessage()];

void checkUnnamed11(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterBatchGetMessagesResponse = 0;
api.BatchGetMessagesResponse buildBatchGetMessagesResponse() {
  final o = api.BatchGetMessagesResponse();
  buildCounterBatchGetMessagesResponse++;
  if (buildCounterBatchGetMessagesResponse < 3) {
    o.messages = buildUnnamed11();
  }
  buildCounterBatchGetMessagesResponse--;
  return o;
}

void checkBatchGetMessagesResponse(api.BatchGetMessagesResponse o) {
  buildCounterBatchGetMessagesResponse++;
  if (buildCounterBatchGetMessagesResponse < 3) {
    checkUnnamed11(o.messages!);
  }
  buildCounterBatchGetMessagesResponse--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
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
    o.members = buildUnnamed12();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed12(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBlobStorageInfo = 0;
api.BlobStorageInfo buildBlobStorageInfo() {
  final o = api.BlobStorageInfo();
  buildCounterBlobStorageInfo++;
  if (buildCounterBlobStorageInfo < 3) {
    o.sizeBytes = 'foo';
    o.storageClass = 'foo';
    o.storageClassUpdateTime = 'foo';
  }
  buildCounterBlobStorageInfo--;
  return o;
}

void checkBlobStorageInfo(api.BlobStorageInfo o) {
  buildCounterBlobStorageInfo++;
  if (buildCounterBlobStorageInfo < 3) {
    unittest.expect(o.sizeBytes!, unittest.equals('foo'));
    unittest.expect(o.storageClass!, unittest.equals('foo'));
    unittest.expect(o.storageClassUpdateTime!, unittest.equals('foo'));
  }
  buildCounterBlobStorageInfo--;
}

core.int buildCounterBlobStorageSettings = 0;
api.BlobStorageSettings buildBlobStorageSettings() {
  final o = api.BlobStorageSettings();
  buildCounterBlobStorageSettings++;
  if (buildCounterBlobStorageSettings < 3) {
    o.blobStorageClass = 'foo';
  }
  buildCounterBlobStorageSettings--;
  return o;
}

void checkBlobStorageSettings(api.BlobStorageSettings o) {
  buildCounterBlobStorageSettings++;
  if (buildCounterBlobStorageSettings < 3) {
    unittest.expect(o.blobStorageClass!, unittest.equals('foo'));
  }
  buildCounterBlobStorageSettings--;
}

core.int buildCounterBulkExportGcsDestination = 0;
api.BulkExportGcsDestination buildBulkExportGcsDestination() {
  final o = api.BulkExportGcsDestination();
  buildCounterBulkExportGcsDestination++;
  if (buildCounterBulkExportGcsDestination < 3) {
    o.uriPrefix = 'foo';
  }
  buildCounterBulkExportGcsDestination--;
  return o;
}

void checkBulkExportGcsDestination(api.BulkExportGcsDestination o) {
  buildCounterBulkExportGcsDestination++;
  if (buildCounterBulkExportGcsDestination < 3) {
    unittest.expect(o.uriPrefix!, unittest.equals('foo'));
  }
  buildCounterBulkExportGcsDestination--;
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
    unittest.expect(o.maskingCharacter!, unittest.equals('foo'));
  }
  buildCounterCharacterMaskConfig--;
}

core.int buildCounterCharacterMaskField = 0;
api.CharacterMaskField buildCharacterMaskField() {
  final o = api.CharacterMaskField();
  buildCounterCharacterMaskField++;
  if (buildCounterCharacterMaskField < 3) {}
  buildCounterCharacterMaskField--;
  return o;
}

void checkCharacterMaskField(api.CharacterMaskField o) {
  buildCounterCharacterMaskField++;
  if (buildCounterCharacterMaskField < 3) {}
  buildCounterCharacterMaskField--;
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCheckDataAccessRequest = 0;
api.CheckDataAccessRequest buildCheckDataAccessRequest() {
  final o = api.CheckDataAccessRequest();
  buildCounterCheckDataAccessRequest++;
  if (buildCounterCheckDataAccessRequest < 3) {
    o.consentList = buildConsentList();
    o.dataId = 'foo';
    o.requestAttributes = buildUnnamed13();
    o.responseView = 'foo';
  }
  buildCounterCheckDataAccessRequest--;
  return o;
}

void checkCheckDataAccessRequest(api.CheckDataAccessRequest o) {
  buildCounterCheckDataAccessRequest++;
  if (buildCounterCheckDataAccessRequest < 3) {
    checkConsentList(o.consentList!);
    unittest.expect(o.dataId!, unittest.equals('foo'));
    checkUnnamed13(o.requestAttributes!);
    unittest.expect(o.responseView!, unittest.equals('foo'));
  }
  buildCounterCheckDataAccessRequest--;
}

core.Map<core.String, api.ConsentEvaluation> buildUnnamed14() => {
  'x': buildConsentEvaluation(),
  'y': buildConsentEvaluation(),
};

void checkUnnamed14(core.Map<core.String, api.ConsentEvaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentEvaluation(o['x']!);
  checkConsentEvaluation(o['y']!);
}

core.int buildCounterCheckDataAccessResponse = 0;
api.CheckDataAccessResponse buildCheckDataAccessResponse() {
  final o = api.CheckDataAccessResponse();
  buildCounterCheckDataAccessResponse++;
  if (buildCounterCheckDataAccessResponse < 3) {
    o.consentDetails = buildUnnamed14();
    o.consented = true;
  }
  buildCounterCheckDataAccessResponse--;
  return o;
}

void checkCheckDataAccessResponse(api.CheckDataAccessResponse o) {
  buildCounterCheckDataAccessResponse++;
  if (buildCounterCheckDataAccessResponse < 3) {
    checkUnnamed14(o.consentDetails!);
    unittest.expect(o.consented!, unittest.isTrue);
  }
  buildCounterCheckDataAccessResponse--;
}

core.int buildCounterCleanDescriptorsOption = 0;
api.CleanDescriptorsOption buildCleanDescriptorsOption() {
  final o = api.CleanDescriptorsOption();
  buildCounterCleanDescriptorsOption++;
  if (buildCounterCleanDescriptorsOption < 3) {}
  buildCounterCleanDescriptorsOption--;
  return o;
}

void checkCleanDescriptorsOption(api.CleanDescriptorsOption o) {
  buildCounterCleanDescriptorsOption++;
  if (buildCounterCleanDescriptorsOption < 3) {}
  buildCounterCleanDescriptorsOption--;
}

core.int buildCounterCleanTextField = 0;
api.CleanTextField buildCleanTextField() {
  final o = api.CleanTextField();
  buildCounterCleanTextField++;
  if (buildCounterCleanTextField < 3) {}
  buildCounterCleanTextField--;
  return o;
}

void checkCleanTextField(api.CleanTextField o) {
  buildCounterCleanTextField++;
  if (buildCounterCleanTextField < 3) {}
  buildCounterCleanTextField--;
}

core.int buildCounterCleanTextTag = 0;
api.CleanTextTag buildCleanTextTag() {
  final o = api.CleanTextTag();
  buildCounterCleanTextTag++;
  if (buildCounterCleanTextTag < 3) {}
  buildCounterCleanTextTag--;
  return o;
}

void checkCleanTextTag(api.CleanTextTag o) {
  buildCounterCleanTextTag++;
  if (buildCounterCleanTextTag < 3) {}
  buildCounterCleanTextTag--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConfigureSearchRequest = 0;
api.ConfigureSearchRequest buildConfigureSearchRequest() {
  final o = api.ConfigureSearchRequest();
  buildCounterConfigureSearchRequest++;
  if (buildCounterConfigureSearchRequest < 3) {
    o.canonicalUrls = buildUnnamed15();
    o.validateOnly = true;
  }
  buildCounterConfigureSearchRequest--;
  return o;
}

void checkConfigureSearchRequest(api.ConfigureSearchRequest o) {
  buildCounterConfigureSearchRequest++;
  if (buildCounterConfigureSearchRequest < 3) {
    checkUnnamed15(o.canonicalUrls!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterConfigureSearchRequest--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudHealthcareV1beta1ConsentPolicy> buildUnnamed17() => [
  buildGoogleCloudHealthcareV1beta1ConsentPolicy(),
  buildGoogleCloudHealthcareV1beta1ConsentPolicy(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudHealthcareV1beta1ConsentPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudHealthcareV1beta1ConsentPolicy(o[0]);
  checkGoogleCloudHealthcareV1beta1ConsentPolicy(o[1]);
}

core.int buildCounterConsent = 0;
api.Consent buildConsent() {
  final o = api.Consent();
  buildCounterConsent++;
  if (buildCounterConsent < 3) {
    o.consentArtifact = 'foo';
    o.expireTime = 'foo';
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.policies = buildUnnamed17();
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
    unittest.expect(o.consentArtifact!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed16(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed17(o.policies!);
    unittest.expect(o.revisionCreateTime!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterConsent--;
}

core.int buildCounterConsentAccessorScope = 0;
api.ConsentAccessorScope buildConsentAccessorScope() {
  final o = api.ConsentAccessorScope();
  buildCounterConsentAccessorScope++;
  if (buildCounterConsentAccessorScope < 3) {
    o.actor = 'foo';
    o.environment = 'foo';
    o.purpose = 'foo';
  }
  buildCounterConsentAccessorScope--;
  return o;
}

void checkConsentAccessorScope(api.ConsentAccessorScope o) {
  buildCounterConsentAccessorScope++;
  if (buildCounterConsentAccessorScope < 3) {
    unittest.expect(o.actor!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
    unittest.expect(o.purpose!, unittest.equals('foo'));
  }
  buildCounterConsentAccessorScope--;
}

core.List<api.Image> buildUnnamed18() => [buildImage(), buildImage()];

void checkUnnamed18(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConsentArtifact = 0;
api.ConsentArtifact buildConsentArtifact() {
  final o = api.ConsentArtifact();
  buildCounterConsentArtifact++;
  if (buildCounterConsentArtifact < 3) {
    o.consentContentScreenshots = buildUnnamed18();
    o.consentContentVersion = 'foo';
    o.guardianSignature = buildSignature();
    o.metadata = buildUnnamed19();
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
    checkUnnamed18(o.consentContentScreenshots!);
    unittest.expect(o.consentContentVersion!, unittest.equals('foo'));
    checkSignature(o.guardianSignature!);
    checkUnnamed19(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
    checkSignature(o.userSignature!);
    checkSignature(o.witnessSignature!);
  }
  buildCounterConsentArtifact--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConsentConfig = 0;
api.ConsentConfig buildConsentConfig() {
  final o = api.ConsentConfig();
  buildCounterConsentConfig++;
  if (buildCounterConsentConfig < 3) {
    o.accessDeterminationLogConfig = buildAccessDeterminationLogConfig();
    o.accessEnforced = true;
    o.consentHeaderHandling = buildConsentHeaderHandling();
    o.enforcedAdminConsents = buildUnnamed20();
    o.version = 'foo';
  }
  buildCounterConsentConfig--;
  return o;
}

void checkConsentConfig(api.ConsentConfig o) {
  buildCounterConsentConfig++;
  if (buildCounterConsentConfig < 3) {
    checkAccessDeterminationLogConfig(o.accessDeterminationLogConfig!);
    unittest.expect(o.accessEnforced!, unittest.isTrue);
    checkConsentHeaderHandling(o.consentHeaderHandling!);
    checkUnnamed20(o.enforcedAdminConsents!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterConsentConfig--;
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
    unittest.expect(o.evaluationResult!, unittest.equals('foo'));
  }
  buildCounterConsentEvaluation--;
}

core.int buildCounterConsentHeaderHandling = 0;
api.ConsentHeaderHandling buildConsentHeaderHandling() {
  final o = api.ConsentHeaderHandling();
  buildCounterConsentHeaderHandling++;
  if (buildCounterConsentHeaderHandling < 3) {
    o.profile = 'foo';
  }
  buildCounterConsentHeaderHandling--;
  return o;
}

void checkConsentHeaderHandling(api.ConsentHeaderHandling o) {
  buildCounterConsentHeaderHandling++;
  if (buildCounterConsentHeaderHandling < 3) {
    unittest.expect(o.profile!, unittest.equals('foo'));
  }
  buildCounterConsentHeaderHandling--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConsentList = 0;
api.ConsentList buildConsentList() {
  final o = api.ConsentList();
  buildCounterConsentList++;
  if (buildCounterConsentList < 3) {
    o.consents = buildUnnamed21();
  }
  buildCounterConsentList--;
  return o;
}

void checkConsentList(api.ConsentList o) {
  buildCounterConsentList++;
  if (buildCounterConsentList < 3) {
    checkUnnamed21(o.consents!);
  }
  buildCounterConsentList--;
}

core.Map<core.String, core.String> buildUnnamed22() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed22(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConsentStore = 0;
api.ConsentStore buildConsentStore() {
  final o = api.ConsentStore();
  buildCounterConsentStore++;
  if (buildCounterConsentStore < 3) {
    o.defaultConsentTtl = 'foo';
    o.enableConsentCreateOnUpdate = true;
    o.labels = buildUnnamed22();
    o.name = 'foo';
  }
  buildCounterConsentStore--;
  return o;
}

void checkConsentStore(api.ConsentStore o) {
  buildCounterConsentStore++;
  if (buildCounterConsentStore < 3) {
    unittest.expect(o.defaultConsentTtl!, unittest.equals('foo'));
    unittest.expect(o.enableConsentCreateOnUpdate!, unittest.isTrue);
    checkUnnamed22(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterConsentStore--;
}

core.int buildCounterContextualDeidConfig = 0;
api.ContextualDeidConfig buildContextualDeidConfig() {
  final o = api.ContextualDeidConfig();
  buildCounterContextualDeidConfig++;
  if (buildCounterContextualDeidConfig < 3) {}
  buildCounterContextualDeidConfig--;
  return o;
}

void checkContextualDeidConfig(api.ContextualDeidConfig o) {
  buildCounterContextualDeidConfig++;
  if (buildCounterContextualDeidConfig < 3) {}
  buildCounterContextualDeidConfig--;
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
    o.kmsWrapped = buildKmsWrappedCryptoKey();
  }
  buildCounterCryptoHashConfig--;
  return o;
}

void checkCryptoHashConfig(api.CryptoHashConfig o) {
  buildCounterCryptoHashConfig++;
  if (buildCounterCryptoHashConfig < 3) {
    unittest.expect(o.cryptoKey!, unittest.equals('foo'));
    checkKmsWrappedCryptoKey(o.kmsWrapped!);
  }
  buildCounterCryptoHashConfig--;
}

core.int buildCounterCryptoHashField = 0;
api.CryptoHashField buildCryptoHashField() {
  final o = api.CryptoHashField();
  buildCounterCryptoHashField++;
  if (buildCounterCryptoHashField < 3) {}
  buildCounterCryptoHashField--;
  return o;
}

void checkCryptoHashField(api.CryptoHashField o) {
  buildCounterCryptoHashField++;
  if (buildCounterCryptoHashField < 3) {}
  buildCounterCryptoHashField--;
}

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.encryptionSpec = buildEncryptionSpec();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.timeZone = 'foo';
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkEncryptionSpec(o.encryptionSpec!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

core.int buildCounterDateShiftConfig = 0;
api.DateShiftConfig buildDateShiftConfig() {
  final o = api.DateShiftConfig();
  buildCounterDateShiftConfig++;
  if (buildCounterDateShiftConfig < 3) {
    o.cryptoKey = 'foo';
    o.kmsWrapped = buildKmsWrappedCryptoKey();
  }
  buildCounterDateShiftConfig--;
  return o;
}

void checkDateShiftConfig(api.DateShiftConfig o) {
  buildCounterDateShiftConfig++;
  if (buildCounterDateShiftConfig < 3) {
    unittest.expect(o.cryptoKey!, unittest.equals('foo'));
    checkKmsWrappedCryptoKey(o.kmsWrapped!);
  }
  buildCounterDateShiftConfig--;
}

core.int buildCounterDateShiftField = 0;
api.DateShiftField buildDateShiftField() {
  final o = api.DateShiftField();
  buildCounterDateShiftField++;
  if (buildCounterDateShiftField < 3) {}
  buildCounterDateShiftField--;
  return o;
}

void checkDateShiftField(api.DateShiftField o) {
  buildCounterDateShiftField++;
  if (buildCounterDateShiftField < 3) {}
  buildCounterDateShiftField--;
}

core.int buildCounterDeidentifiedStoreDestination = 0;
api.DeidentifiedStoreDestination buildDeidentifiedStoreDestination() {
  final o = api.DeidentifiedStoreDestination();
  buildCounterDeidentifiedStoreDestination++;
  if (buildCounterDeidentifiedStoreDestination < 3) {
    o.config = buildDeidentifyConfig();
    o.store = 'foo';
  }
  buildCounterDeidentifiedStoreDestination--;
  return o;
}

void checkDeidentifiedStoreDestination(api.DeidentifiedStoreDestination o) {
  buildCounterDeidentifiedStoreDestination++;
  if (buildCounterDeidentifiedStoreDestination < 3) {
    checkDeidentifyConfig(o.config!);
    unittest.expect(o.store!, unittest.equals('foo'));
  }
  buildCounterDeidentifiedStoreDestination--;
}

core.int buildCounterDeidentifyConfig = 0;
api.DeidentifyConfig buildDeidentifyConfig() {
  final o = api.DeidentifyConfig();
  buildCounterDeidentifyConfig++;
  if (buildCounterDeidentifyConfig < 3) {
    o.dicom = buildDicomConfig();
    o.dicomTagConfig = buildDicomTagConfig();
    o.fhir = buildFhirConfig();
    o.fhirFieldConfig = buildFhirFieldConfig();
    o.image = buildImageConfig();
    o.operationMetadata = buildDeidentifyOperationMetadata();
    o.text = buildTextConfig();
    o.useRegionalDataProcessing = true;
  }
  buildCounterDeidentifyConfig--;
  return o;
}

void checkDeidentifyConfig(api.DeidentifyConfig o) {
  buildCounterDeidentifyConfig++;
  if (buildCounterDeidentifyConfig < 3) {
    checkDicomConfig(o.dicom!);
    checkDicomTagConfig(o.dicomTagConfig!);
    checkFhirConfig(o.fhir!);
    checkFhirFieldConfig(o.fhirFieldConfig!);
    checkImageConfig(o.image!);
    checkDeidentifyOperationMetadata(o.operationMetadata!);
    checkTextConfig(o.text!);
    unittest.expect(o.useRegionalDataProcessing!, unittest.isTrue);
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
    unittest.expect(o.destinationDataset!, unittest.equals('foo'));
    unittest.expect(o.gcsConfigUri!, unittest.equals('foo'));
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
    unittest.expect(o.destinationStore!, unittest.equals('foo'));
    checkDicomFilterConfig(o.filterConfig!);
    unittest.expect(o.gcsConfigUri!, unittest.equals('foo'));
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
    o.skipModifiedResources = true;
  }
  buildCounterDeidentifyFhirStoreRequest--;
  return o;
}

void checkDeidentifyFhirStoreRequest(api.DeidentifyFhirStoreRequest o) {
  buildCounterDeidentifyFhirStoreRequest++;
  if (buildCounterDeidentifyFhirStoreRequest < 3) {
    checkDeidentifyConfig(o.config!);
    unittest.expect(o.destinationStore!, unittest.equals('foo'));
    unittest.expect(o.gcsConfigUri!, unittest.equals('foo'));
    checkFhirFilter(o.resourceFilter!);
    unittest.expect(o.skipModifiedResources!, unittest.isTrue);
  }
  buildCounterDeidentifyFhirStoreRequest--;
}

core.int buildCounterDeidentifyOperationMetadata = 0;
api.DeidentifyOperationMetadata buildDeidentifyOperationMetadata() {
  final o = api.DeidentifyOperationMetadata();
  buildCounterDeidentifyOperationMetadata++;
  if (buildCounterDeidentifyOperationMetadata < 3) {
    o.fhirOutput = buildFhirOutput();
  }
  buildCounterDeidentifyOperationMetadata--;
  return o;
}

void checkDeidentifyOperationMetadata(api.DeidentifyOperationMetadata o) {
  buildCounterDeidentifyOperationMetadata++;
  if (buildCounterDeidentifyOperationMetadata < 3) {
    checkFhirOutput(o.fhirOutput!);
  }
  buildCounterDeidentifyOperationMetadata--;
}

core.int buildCounterDeleteTag = 0;
api.DeleteTag buildDeleteTag() {
  final o = api.DeleteTag();
  buildCounterDeleteTag++;
  if (buildCounterDeleteTag < 3) {}
  buildCounterDeleteTag--;
  return o;
}

void checkDeleteTag(api.DeleteTag o) {
  buildCounterDeleteTag++;
  if (buildCounterDeleteTag < 3) {}
  buildCounterDeleteTag--;
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
    unittest.expect(o.filterProfile!, unittest.equals('foo'));
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
    unittest.expect(o.resourcePathsGcsUri!, unittest.equals('foo'));
  }
  buildCounterDicomFilterConfig--;
}

core.int buildCounterDicomNotificationConfig = 0;
api.DicomNotificationConfig buildDicomNotificationConfig() {
  final o = api.DicomNotificationConfig();
  buildCounterDicomNotificationConfig++;
  if (buildCounterDicomNotificationConfig < 3) {
    o.pubsubTopic = 'foo';
  }
  buildCounterDicomNotificationConfig--;
  return o;
}

void checkDicomNotificationConfig(api.DicomNotificationConfig o) {
  buildCounterDicomNotificationConfig++;
  if (buildCounterDicomNotificationConfig < 3) {
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
  }
  buildCounterDicomNotificationConfig--;
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.DicomNotificationConfig> buildUnnamed24() => [
  buildDicomNotificationConfig(),
  buildDicomNotificationConfig(),
];

void checkUnnamed24(core.List<api.DicomNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDicomNotificationConfig(o[0]);
  checkDicomNotificationConfig(o[1]);
}

core.List<api.GoogleCloudHealthcareV1beta1DicomStreamConfig> buildUnnamed25() =>
    [
      buildGoogleCloudHealthcareV1beta1DicomStreamConfig(),
      buildGoogleCloudHealthcareV1beta1DicomStreamConfig(),
    ];

void checkUnnamed25(
  core.List<api.GoogleCloudHealthcareV1beta1DicomStreamConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudHealthcareV1beta1DicomStreamConfig(o[0]);
  checkGoogleCloudHealthcareV1beta1DicomStreamConfig(o[1]);
}

core.int buildCounterDicomStore = 0;
api.DicomStore buildDicomStore() {
  final o = api.DicomStore();
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    o.labels = buildUnnamed23();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
    o.notificationConfigs = buildUnnamed24();
    o.streamConfigs = buildUnnamed25();
  }
  buildCounterDicomStore--;
  return o;
}

void checkDicomStore(api.DicomStore o) {
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    checkUnnamed23(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig!);
    checkUnnamed24(o.notificationConfigs!);
    checkUnnamed25(o.streamConfigs!);
  }
  buildCounterDicomStore--;
}

core.int buildCounterDicomStoreMetrics = 0;
api.DicomStoreMetrics buildDicomStoreMetrics() {
  final o = api.DicomStoreMetrics();
  buildCounterDicomStoreMetrics++;
  if (buildCounterDicomStoreMetrics < 3) {
    o.blobStorageSizeBytes = 'foo';
    o.instanceCount = 'foo';
    o.name = 'foo';
    o.seriesCount = 'foo';
    o.structuredStorageSizeBytes = 'foo';
    o.studyCount = 'foo';
  }
  buildCounterDicomStoreMetrics--;
  return o;
}

void checkDicomStoreMetrics(api.DicomStoreMetrics o) {
  buildCounterDicomStoreMetrics++;
  if (buildCounterDicomStoreMetrics < 3) {
    unittest.expect(o.blobStorageSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.instanceCount!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.seriesCount!, unittest.equals('foo'));
    unittest.expect(o.structuredStorageSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.studyCount!, unittest.equals('foo'));
  }
  buildCounterDicomStoreMetrics--;
}

core.List<api.Action> buildUnnamed26() => [buildAction(), buildAction()];

void checkUnnamed26(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.int buildCounterDicomTagConfig = 0;
api.DicomTagConfig buildDicomTagConfig() {
  final o = api.DicomTagConfig();
  buildCounterDicomTagConfig++;
  if (buildCounterDicomTagConfig < 3) {
    o.actions = buildUnnamed26();
    o.options = buildOptions();
    o.profileType = 'foo';
  }
  buildCounterDicomTagConfig--;
  return o;
}

void checkDicomTagConfig(api.DicomTagConfig o) {
  buildCounterDicomTagConfig++;
  if (buildCounterDicomTagConfig < 3) {
    checkUnnamed26(o.actions!);
    checkOptions(o.options!);
    unittest.expect(o.profileType!, unittest.equals('foo'));
  }
  buildCounterDicomTagConfig--;
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

core.int buildCounterEncryptionSpec = 0;
api.EncryptionSpec buildEncryptionSpec() {
  final o = api.EncryptionSpec();
  buildCounterEncryptionSpec++;
  if (buildCounterEncryptionSpec < 3) {
    o.kmsKeyName = 'foo';
  }
  buildCounterEncryptionSpec--;
  return o;
}

void checkEncryptionSpec(api.EncryptionSpec o) {
  buildCounterEncryptionSpec++;
  if (buildCounterEncryptionSpec < 3) {
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
  }
  buildCounterEncryptionSpec--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.entityId = 'foo';
    o.preferredTerm = 'foo';
    o.vocabularyCodes = buildUnnamed27();
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.preferredTerm!, unittest.equals('foo'));
    checkUnnamed27(o.vocabularyCodes!);
  }
  buildCounterEntity--;
}

core.List<api.Feature> buildUnnamed28() => [buildFeature(), buildFeature()];

void checkUnnamed28(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.List<api.LinkedEntity> buildUnnamed29() => [
  buildLinkedEntity(),
  buildLinkedEntity(),
];

void checkUnnamed29(core.List<api.LinkedEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedEntity(o[0]);
  checkLinkedEntity(o[1]);
}

core.int buildCounterEntityMention = 0;
api.EntityMention buildEntityMention() {
  final o = api.EntityMention();
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    o.additionalInfo = buildUnnamed28();
    o.certaintyAssessment = buildFeature();
    o.confidence = 42.0;
    o.linkedEntities = buildUnnamed29();
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
    checkUnnamed28(o.additionalInfo!);
    checkFeature(o.certaintyAssessment!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    checkUnnamed29(o.linkedEntities!);
    unittest.expect(o.mentionId!, unittest.equals('foo'));
    checkFeature(o.subject!);
    checkFeature(o.temporalAssessment!);
    checkTextSpan(o.text!);
    unittest.expect(o.type!, unittest.equals('foo'));
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
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.objectId!, unittest.equals('foo'));
    unittest.expect(o.subjectId!, unittest.equals('foo'));
  }
  buildCounterEntityMentionRelationship--;
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed31() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed31(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEvaluateUserConsentsRequest = 0;
api.EvaluateUserConsentsRequest buildEvaluateUserConsentsRequest() {
  final o = api.EvaluateUserConsentsRequest();
  buildCounterEvaluateUserConsentsRequest++;
  if (buildCounterEvaluateUserConsentsRequest < 3) {
    o.consentList = buildConsentList();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.requestAttributes = buildUnnamed30();
    o.resourceAttributes = buildUnnamed31();
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
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkUnnamed30(o.requestAttributes!);
    checkUnnamed31(o.resourceAttributes!);
    unittest.expect(o.responseView!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterEvaluateUserConsentsRequest--;
}

core.List<api.Result> buildUnnamed32() => [buildResult(), buildResult()];

void checkUnnamed32(core.List<api.Result> o) {
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
    o.results = buildUnnamed32();
  }
  buildCounterEvaluateUserConsentsResponse--;
  return o;
}

void checkEvaluateUserConsentsResponse(api.EvaluateUserConsentsResponse o) {
  buildCounterEvaluateUserConsentsResponse++;
  if (buildCounterEvaluateUserConsentsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.results!);
  }
  buildCounterEvaluateUserConsentsResponse--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ConsentAccessorScope> buildUnnamed34() => [
  buildConsentAccessorScope(),
  buildConsentAccessorScope(),
];

void checkUnnamed34(core.List<api.ConsentAccessorScope> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentAccessorScope(o[0]);
  checkConsentAccessorScope(o[1]);
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExplainDataAccessConsentInfo = 0;
api.ExplainDataAccessConsentInfo buildExplainDataAccessConsentInfo() {
  final o = api.ExplainDataAccessConsentInfo();
  buildCounterExplainDataAccessConsentInfo++;
  if (buildCounterExplainDataAccessConsentInfo < 3) {
    o.cascadeOrigins = buildUnnamed33();
    o.consentResource = 'foo';
    o.enforcementTime = 'foo';
    o.matchingAccessorScopes = buildUnnamed34();
    o.patientConsentOwner = 'foo';
    o.type = 'foo';
    o.variants = buildUnnamed35();
  }
  buildCounterExplainDataAccessConsentInfo--;
  return o;
}

void checkExplainDataAccessConsentInfo(api.ExplainDataAccessConsentInfo o) {
  buildCounterExplainDataAccessConsentInfo++;
  if (buildCounterExplainDataAccessConsentInfo < 3) {
    checkUnnamed33(o.cascadeOrigins!);
    unittest.expect(o.consentResource!, unittest.equals('foo'));
    unittest.expect(o.enforcementTime!, unittest.equals('foo'));
    checkUnnamed34(o.matchingAccessorScopes!);
    unittest.expect(o.patientConsentOwner!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkUnnamed35(o.variants!);
  }
  buildCounterExplainDataAccessConsentInfo--;
}

core.List<api.ExplainDataAccessConsentInfo> buildUnnamed36() => [
  buildExplainDataAccessConsentInfo(),
  buildExplainDataAccessConsentInfo(),
];

void checkUnnamed36(core.List<api.ExplainDataAccessConsentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainDataAccessConsentInfo(o[0]);
  checkExplainDataAccessConsentInfo(o[1]);
}

core.List<api.ExplainDataAccessConsentScope> buildUnnamed37() => [
  buildExplainDataAccessConsentScope(),
  buildExplainDataAccessConsentScope(),
];

void checkUnnamed37(core.List<api.ExplainDataAccessConsentScope> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainDataAccessConsentScope(o[0]);
  checkExplainDataAccessConsentScope(o[1]);
}

core.int buildCounterExplainDataAccessConsentScope = 0;
api.ExplainDataAccessConsentScope buildExplainDataAccessConsentScope() {
  final o = api.ExplainDataAccessConsentScope();
  buildCounterExplainDataAccessConsentScope++;
  if (buildCounterExplainDataAccessConsentScope < 3) {
    o.accessorScope = buildConsentAccessorScope();
    o.decision = 'foo';
    o.enforcingConsents = buildUnnamed36();
    o.exceptions = buildUnnamed37();
  }
  buildCounterExplainDataAccessConsentScope--;
  return o;
}

void checkExplainDataAccessConsentScope(api.ExplainDataAccessConsentScope o) {
  buildCounterExplainDataAccessConsentScope++;
  if (buildCounterExplainDataAccessConsentScope < 3) {
    checkConsentAccessorScope(o.accessorScope!);
    unittest.expect(o.decision!, unittest.equals('foo'));
    checkUnnamed36(o.enforcingConsents!);
    checkUnnamed37(o.exceptions!);
  }
  buildCounterExplainDataAccessConsentScope--;
}

core.List<api.ExplainDataAccessConsentScope> buildUnnamed38() => [
  buildExplainDataAccessConsentScope(),
  buildExplainDataAccessConsentScope(),
];

void checkUnnamed38(core.List<api.ExplainDataAccessConsentScope> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainDataAccessConsentScope(o[0]);
  checkExplainDataAccessConsentScope(o[1]);
}

core.int buildCounterExplainDataAccessResponse = 0;
api.ExplainDataAccessResponse buildExplainDataAccessResponse() {
  final o = api.ExplainDataAccessResponse();
  buildCounterExplainDataAccessResponse++;
  if (buildCounterExplainDataAccessResponse < 3) {
    o.consentScopes = buildUnnamed38();
    o.warning = 'foo';
  }
  buildCounterExplainDataAccessResponse--;
  return o;
}

void checkExplainDataAccessResponse(api.ExplainDataAccessResponse o) {
  buildCounterExplainDataAccessResponse++;
  if (buildCounterExplainDataAccessResponse < 3) {
    checkUnnamed38(o.consentScopes!);
    unittest.expect(o.warning!, unittest.equals('foo'));
  }
  buildCounterExplainDataAccessResponse--;
}

core.int buildCounterExportDicomDataRequest = 0;
api.ExportDicomDataRequest buildExportDicomDataRequest() {
  final o = api.ExportDicomDataRequest();
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination();
    o.filterConfig = buildDicomFilterConfig();
    o.gcsDestination = buildGoogleCloudHealthcareV1beta1DicomGcsDestination();
  }
  buildCounterExportDicomDataRequest--;
  return o;
}

void checkExportDicomDataRequest(api.ExportDicomDataRequest o) {
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkDicomFilterConfig(o.filterConfig!);
    checkGoogleCloudHealthcareV1beta1DicomGcsDestination(o.gcsDestination!);
  }
  buildCounterExportDicomDataRequest--;
}

core.int buildCounterExportMessagesRequest = 0;
api.ExportMessagesRequest buildExportMessagesRequest() {
  final o = api.ExportMessagesRequest();
  buildCounterExportMessagesRequest++;
  if (buildCounterExportMessagesRequest < 3) {
    o.endTime = 'foo';
    o.filter = 'foo';
    o.gcsDestination = buildGcsDestination();
    o.pubsubDestination = buildPubsubDestination();
    o.startTime = 'foo';
  }
  buildCounterExportMessagesRequest--;
  return o;
}

void checkExportMessagesRequest(api.ExportMessagesRequest o) {
  buildCounterExportMessagesRequest++;
  if (buildCounterExportMessagesRequest < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGcsDestination(o.gcsDestination!);
    checkPubsubDestination(o.pubsubDestination!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterExportMessagesRequest--;
}

core.int buildCounterExportResourcesHistoryRequest = 0;
api.ExportResourcesHistoryRequest buildExportResourcesHistoryRequest() {
  final o = api.ExportResourcesHistoryRequest();
  buildCounterExportResourcesHistoryRequest++;
  if (buildCounterExportResourcesHistoryRequest < 3) {
    o.P_since = 'foo';
    o.P_type = 'foo';
    o.gcsDestination = buildGoogleCloudHealthcareV1beta1FhirGcsDestination();
    o.maxResourceVersions = 'foo';
  }
  buildCounterExportResourcesHistoryRequest--;
  return o;
}

void checkExportResourcesHistoryRequest(api.ExportResourcesHistoryRequest o) {
  buildCounterExportResourcesHistoryRequest++;
  if (buildCounterExportResourcesHistoryRequest < 3) {
    unittest.expect(o.P_since!, unittest.equals('foo'));
    unittest.expect(o.P_type!, unittest.equals('foo'));
    checkGoogleCloudHealthcareV1beta1FhirGcsDestination(o.gcsDestination!);
    unittest.expect(o.maxResourceVersions!, unittest.equals('foo'));
  }
  buildCounterExportResourcesHistoryRequest--;
}

core.int buildCounterExportResourcesRequest = 0;
api.ExportResourcesRequest buildExportResourcesRequest() {
  final o = api.ExportResourcesRequest();
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    o.P_since = 'foo';
    o.P_type = 'foo';
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination();
    o.gcsDestination = buildGoogleCloudHealthcareV1beta1FhirGcsDestination();
  }
  buildCounterExportResourcesRequest--;
  return o;
}

void checkExportResourcesRequest(api.ExportResourcesRequest o) {
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    unittest.expect(o.P_since!, unittest.equals('foo'));
    unittest.expect(o.P_type!, unittest.equals('foo'));
    checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkGoogleCloudHealthcareV1beta1FhirGcsDestination(o.gcsDestination!);
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
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
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterFeature--;
}

core.List<api.FieldMetadata> buildUnnamed39() => [
  buildFieldMetadata(),
  buildFieldMetadata(),
];

void checkUnnamed39(core.List<api.FieldMetadata> o) {
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
    o.fieldMetadataList = buildUnnamed39();
  }
  buildCounterFhirConfig--;
  return o;
}

void checkFhirConfig(api.FhirConfig o) {
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    unittest.expect(o.defaultKeepExtensions!, unittest.isTrue);
    checkUnnamed39(o.fieldMetadataList!);
  }
  buildCounterFhirConfig--;
}

core.List<api.GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata>
buildUnnamed40() => [
  buildGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(),
  buildGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(),
];

void checkUnnamed40(
  core.List<api.GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(o[0]);
  checkGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(o[1]);
}

core.int buildCounterFhirFieldConfig = 0;
api.FhirFieldConfig buildFhirFieldConfig() {
  final o = api.FhirFieldConfig();
  buildCounterFhirFieldConfig++;
  if (buildCounterFhirFieldConfig < 3) {
    o.fieldMetadataList = buildUnnamed40();
    o.options = buildGoogleCloudHealthcareV1beta1DeidentifyOptions();
    o.profileType = 'foo';
  }
  buildCounterFhirFieldConfig--;
  return o;
}

void checkFhirFieldConfig(api.FhirFieldConfig o) {
  buildCounterFhirFieldConfig++;
  if (buildCounterFhirFieldConfig < 3) {
    checkUnnamed40(o.fieldMetadataList!);
    checkGoogleCloudHealthcareV1beta1DeidentifyOptions(o.options!);
    unittest.expect(o.profileType!, unittest.equals('foo'));
  }
  buildCounterFhirFieldConfig--;
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

core.int buildCounterFhirNotificationConfig = 0;
api.FhirNotificationConfig buildFhirNotificationConfig() {
  final o = api.FhirNotificationConfig();
  buildCounterFhirNotificationConfig++;
  if (buildCounterFhirNotificationConfig < 3) {
    o.pubsubTopic = 'foo';
    o.sendFullResource = true;
    o.sendPreviousResourceOnDelete = true;
  }
  buildCounterFhirNotificationConfig--;
  return o;
}

void checkFhirNotificationConfig(api.FhirNotificationConfig o) {
  buildCounterFhirNotificationConfig++;
  if (buildCounterFhirNotificationConfig < 3) {
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.sendFullResource!, unittest.isTrue);
    unittest.expect(o.sendPreviousResourceOnDelete!, unittest.isTrue);
  }
  buildCounterFhirNotificationConfig--;
}

core.int buildCounterFhirOutput = 0;
api.FhirOutput buildFhirOutput() {
  final o = api.FhirOutput();
  buildCounterFhirOutput++;
  if (buildCounterFhirOutput < 3) {
    o.fhirStore = 'foo';
  }
  buildCounterFhirOutput--;
  return o;
}

void checkFhirOutput(api.FhirOutput o) {
  buildCounterFhirOutput++;
  if (buildCounterFhirOutput < 3) {
    unittest.expect(o.fhirStore!, unittest.equals('foo'));
  }
  buildCounterFhirOutput--;
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.FhirNotificationConfig> buildUnnamed42() => [
  buildFhirNotificationConfig(),
  buildFhirNotificationConfig(),
];

void checkUnnamed42(core.List<api.FhirNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFhirNotificationConfig(o[0]);
  checkFhirNotificationConfig(o[1]);
}

core.List<api.StreamConfig> buildUnnamed43() => [
  buildStreamConfig(),
  buildStreamConfig(),
];

void checkUnnamed43(core.List<api.StreamConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamConfig(o[0]);
  checkStreamConfig(o[1]);
}

core.int buildCounterFhirStore = 0;
api.FhirStore buildFhirStore() {
  final o = api.FhirStore();
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    o.bulkExportGcsDestination = buildBulkExportGcsDestination();
    o.complexDataTypeReferenceParsing = 'foo';
    o.consentConfig = buildConsentConfig();
    o.defaultSearchHandlingStrict = true;
    o.disableReferentialIntegrity = true;
    o.disableResourceVersioning = true;
    o.enableHistoryModifications = true;
    o.enableUpdateCreate = true;
    o.labels = buildUnnamed41();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
    o.notificationConfigs = buildUnnamed42();
    o.searchConfig = buildSearchConfig();
    o.streamConfigs = buildUnnamed43();
    o.validationConfig = buildValidationConfig();
    o.version = 'foo';
  }
  buildCounterFhirStore--;
  return o;
}

void checkFhirStore(api.FhirStore o) {
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    checkBulkExportGcsDestination(o.bulkExportGcsDestination!);
    unittest.expect(o.complexDataTypeReferenceParsing!, unittest.equals('foo'));
    checkConsentConfig(o.consentConfig!);
    unittest.expect(o.defaultSearchHandlingStrict!, unittest.isTrue);
    unittest.expect(o.disableReferentialIntegrity!, unittest.isTrue);
    unittest.expect(o.disableResourceVersioning!, unittest.isTrue);
    unittest.expect(o.enableHistoryModifications!, unittest.isTrue);
    unittest.expect(o.enableUpdateCreate!, unittest.isTrue);
    checkUnnamed41(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig!);
    checkUnnamed42(o.notificationConfigs!);
    checkSearchConfig(o.searchConfig!);
    checkUnnamed43(o.streamConfigs!);
    checkValidationConfig(o.validationConfig!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterFhirStore--;
}

core.int buildCounterFhirStoreMetric = 0;
api.FhirStoreMetric buildFhirStoreMetric() {
  final o = api.FhirStoreMetric();
  buildCounterFhirStoreMetric++;
  if (buildCounterFhirStoreMetric < 3) {
    o.count = 'foo';
    o.resourceType = 'foo';
    o.structuredStorageSizeBytes = 'foo';
  }
  buildCounterFhirStoreMetric--;
  return o;
}

void checkFhirStoreMetric(api.FhirStoreMetric o) {
  buildCounterFhirStoreMetric++;
  if (buildCounterFhirStoreMetric < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.structuredStorageSizeBytes!, unittest.equals('foo'));
  }
  buildCounterFhirStoreMetric--;
}

core.List<api.FhirStoreMetric> buildUnnamed44() => [
  buildFhirStoreMetric(),
  buildFhirStoreMetric(),
];

void checkUnnamed44(core.List<api.FhirStoreMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFhirStoreMetric(o[0]);
  checkFhirStoreMetric(o[1]);
}

core.int buildCounterFhirStoreMetrics = 0;
api.FhirStoreMetrics buildFhirStoreMetrics() {
  final o = api.FhirStoreMetrics();
  buildCounterFhirStoreMetrics++;
  if (buildCounterFhirStoreMetrics < 3) {
    o.metrics = buildUnnamed44();
    o.name = 'foo';
  }
  buildCounterFhirStoreMetrics--;
  return o;
}

void checkFhirStoreMetrics(api.FhirStoreMetrics o) {
  buildCounterFhirStoreMetrics++;
  if (buildCounterFhirStoreMetrics < 3) {
    checkUnnamed44(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFhirStoreMetrics--;
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
    unittest.expect(o.maxOccurs!, unittest.equals(42));
    unittest.expect(o.minOccurs!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.table!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFieldMetadata = 0;
api.FieldMetadata buildFieldMetadata() {
  final o = api.FieldMetadata();
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    o.action = 'foo';
    o.paths = buildUnnamed45();
  }
  buildCounterFieldMetadata--;
  return o;
}

void checkFieldMetadata(api.FieldMetadata o) {
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkUnnamed45(o.paths!);
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
    unittest.expect(o.contentStructure!, unittest.equals('foo'));
    unittest.expect(o.messageView!, unittest.equals('foo'));
    unittest.expect(o.uriPrefix!, unittest.equals('foo'));
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
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGcsSource--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination = 0;
api.GoogleCloudHealthcareV1beta1ConsentGcsDestination
buildGoogleCloudHealthcareV1beta1ConsentGcsDestination() {
  final o = api.GoogleCloudHealthcareV1beta1ConsentGcsDestination();
  buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination < 3) {
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1ConsentGcsDestination(
  api.GoogleCloudHealthcareV1beta1ConsentGcsDestination o,
) {
  buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination < 3) {
    unittest.expect(o.uriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1ConsentGcsDestination--;
}

core.List<api.Attribute> buildUnnamed46() => [
  buildAttribute(),
  buildAttribute(),
];

void checkUnnamed46(core.List<api.Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttribute(o[0]);
  checkAttribute(o[1]);
}

core.int buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy = 0;
api.GoogleCloudHealthcareV1beta1ConsentPolicy
buildGoogleCloudHealthcareV1beta1ConsentPolicy() {
  final o = api.GoogleCloudHealthcareV1beta1ConsentPolicy();
  buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy++;
  if (buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy < 3) {
    o.authorizationRule = buildExpr();
    o.resourceAttributes = buildUnnamed46();
  }
  buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1ConsentPolicy(
  api.GoogleCloudHealthcareV1beta1ConsentPolicy o,
) {
  buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy++;
  if (buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy < 3) {
    checkExpr(o.authorizationRule!);
    checkUnnamed46(o.resourceAttributes!);
  }
  buildCounterGoogleCloudHealthcareV1beta1ConsentPolicy--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata = 0;
api.GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata
buildGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata() {
  final o = api.GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata();
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata++;
  if (buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata < 3) {
    o.characterMaskField = buildCharacterMaskField();
    o.cleanTextField = buildCleanTextField();
    o.cryptoHashField = buildCryptoHashField();
    o.dateShiftField = buildDateShiftField();
    o.keepField = buildKeepField();
    o.paths = buildUnnamed47();
    o.removeField = buildRemoveField();
  }
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(
  api.GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata o,
) {
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata++;
  if (buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata < 3) {
    checkCharacterMaskField(o.characterMaskField!);
    checkCleanTextField(o.cleanTextField!);
    checkCryptoHashField(o.cryptoHashField!);
    checkDateShiftField(o.dateShiftField!);
    checkKeepField(o.keepField!);
    checkUnnamed47(o.paths!);
    checkRemoveField(o.removeField!);
  }
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions = 0;
api.GoogleCloudHealthcareV1beta1DeidentifyOptions
buildGoogleCloudHealthcareV1beta1DeidentifyOptions() {
  final o = api.GoogleCloudHealthcareV1beta1DeidentifyOptions();
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions++;
  if (buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions < 3) {
    o.characterMaskConfig = buildCharacterMaskConfig();
    o.contextualDeid = buildContextualDeidConfig();
    o.cryptoHashConfig = buildCryptoHashConfig();
    o.dateShiftConfig = buildDateShiftConfig();
    o.keepExtensions = buildKeepExtensionsConfig();
  }
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1DeidentifyOptions(
  api.GoogleCloudHealthcareV1beta1DeidentifyOptions o,
) {
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions++;
  if (buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions < 3) {
    checkCharacterMaskConfig(o.characterMaskConfig!);
    checkContextualDeidConfig(o.contextualDeid!);
    checkCryptoHashConfig(o.cryptoHashConfig!);
    checkDateShiftConfig(o.dateShiftConfig!);
    checkKeepExtensionsConfig(o.keepExtensions!);
  }
  buildCounterGoogleCloudHealthcareV1beta1DeidentifyOptions--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination = 0;
api.GoogleCloudHealthcareV1beta1DicomBigQueryDestination
buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination() {
  final o = api.GoogleCloudHealthcareV1beta1DicomBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination < 3) {
    o.force = true;
    o.tableUri = 'foo';
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(
  api.GoogleCloudHealthcareV1beta1DicomBigQueryDestination o,
) {
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.tableUri!, unittest.equals('foo'));
    unittest.expect(o.writeDisposition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination = 0;
api.GoogleCloudHealthcareV1beta1DicomGcsDestination
buildGoogleCloudHealthcareV1beta1DicomGcsDestination() {
  final o = api.GoogleCloudHealthcareV1beta1DicomGcsDestination();
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination < 3) {
    o.mimeType = 'foo';
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1DicomGcsDestination(
  api.GoogleCloudHealthcareV1beta1DicomGcsDestination o,
) {
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination < 3) {
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.uriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource = 0;
api.GoogleCloudHealthcareV1beta1DicomGcsSource
buildGoogleCloudHealthcareV1beta1DicomGcsSource() {
  final o = api.GoogleCloudHealthcareV1beta1DicomGcsSource();
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1DicomGcsSource(
  api.GoogleCloudHealthcareV1beta1DicomGcsSource o,
) {
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig = 0;
api.GoogleCloudHealthcareV1beta1DicomStreamConfig
buildGoogleCloudHealthcareV1beta1DicomStreamConfig() {
  final o = api.GoogleCloudHealthcareV1beta1DicomStreamConfig();
  buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination();
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1DicomStreamConfig(
  api.GoogleCloudHealthcareV1beta1DicomStreamConfig o,
) {
  buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig < 3) {
    checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(
      o.bigqueryDestination!,
    );
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomStreamConfig--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination = 0;
api.GoogleCloudHealthcareV1beta1FhirBigQueryDestination
buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination() {
  final o = api.GoogleCloudHealthcareV1beta1FhirBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination < 3) {
    o.changeDataCaptureConfig =
        buildGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig();
    o.datasetUri = 'foo';
    o.force = true;
    o.schemaConfig = buildSchemaConfig();
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(
  api.GoogleCloudHealthcareV1beta1FhirBigQueryDestination o,
) {
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination < 3) {
    checkGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig(
      o.changeDataCaptureConfig!,
    );
    unittest.expect(o.datasetUri!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
    checkSchemaConfig(o.schemaConfig!);
    unittest.expect(o.writeDisposition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig =
    0;
api.GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig
buildGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig() {
  final o = api.GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig();
  buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig < 3) {
    o.historyMode = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig(
  api.GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig o,
) {
  buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig < 3) {
    unittest.expect(o.historyMode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination = 0;
api.GoogleCloudHealthcareV1beta1FhirGcsDestination
buildGoogleCloudHealthcareV1beta1FhirGcsDestination() {
  final o = api.GoogleCloudHealthcareV1beta1FhirGcsDestination();
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination < 3) {
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1FhirGcsDestination(
  api.GoogleCloudHealthcareV1beta1FhirGcsDestination o,
) {
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination < 3) {
    unittest.expect(o.uriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource = 0;
api.GoogleCloudHealthcareV1beta1FhirGcsSource
buildGoogleCloudHealthcareV1beta1FhirGcsSource() {
  final o = api.GoogleCloudHealthcareV1beta1FhirGcsSource();
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource--;
  return o;
}

void checkGoogleCloudHealthcareV1beta1FhirGcsSource(
  api.GoogleCloudHealthcareV1beta1FhirGcsSource o,
) {
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirGcsSource--;
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

core.Map<core.String, api.SchemaGroup> buildUnnamed48() => {
  'x': buildSchemaGroup(),
  'y': buildSchemaGroup(),
};

void checkUnnamed48(core.Map<core.String, api.SchemaGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaGroup(o['x']!);
  checkSchemaGroup(o['y']!);
}

core.List<api.VersionSource> buildUnnamed49() => [
  buildVersionSource(),
  buildVersionSource(),
];

void checkUnnamed49(core.List<api.VersionSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionSource(o[0]);
  checkVersionSource(o[1]);
}

core.int buildCounterHl7SchemaConfig = 0;
api.Hl7SchemaConfig buildHl7SchemaConfig() {
  final o = api.Hl7SchemaConfig();
  buildCounterHl7SchemaConfig++;
  if (buildCounterHl7SchemaConfig < 3) {
    o.messageSchemaConfigs = buildUnnamed48();
    o.version = buildUnnamed49();
  }
  buildCounterHl7SchemaConfig--;
  return o;
}

void checkHl7SchemaConfig(api.Hl7SchemaConfig o) {
  buildCounterHl7SchemaConfig++;
  if (buildCounterHl7SchemaConfig < 3) {
    checkUnnamed48(o.messageSchemaConfigs!);
    checkUnnamed49(o.version!);
  }
  buildCounterHl7SchemaConfig--;
}

core.List<api.Type> buildUnnamed50() => [buildType(), buildType()];

void checkUnnamed50(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.List<api.VersionSource> buildUnnamed51() => [
  buildVersionSource(),
  buildVersionSource(),
];

void checkUnnamed51(core.List<api.VersionSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionSource(o[0]);
  checkVersionSource(o[1]);
}

core.int buildCounterHl7TypesConfig = 0;
api.Hl7TypesConfig buildHl7TypesConfig() {
  final o = api.Hl7TypesConfig();
  buildCounterHl7TypesConfig++;
  if (buildCounterHl7TypesConfig < 3) {
    o.type = buildUnnamed50();
    o.version = buildUnnamed51();
  }
  buildCounterHl7TypesConfig--;
  return o;
}

void checkHl7TypesConfig(api.Hl7TypesConfig o) {
  buildCounterHl7TypesConfig++;
  if (buildCounterHl7TypesConfig < 3) {
    checkUnnamed50(o.type!);
    checkUnnamed51(o.version!);
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
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
  }
  buildCounterHl7V2NotificationConfig--;
}

core.Map<core.String, core.String> buildUnnamed52() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed52(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Hl7V2NotificationConfig> buildUnnamed53() => [
  buildHl7V2NotificationConfig(),
  buildHl7V2NotificationConfig(),
];

void checkUnnamed53(core.List<api.Hl7V2NotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2NotificationConfig(o[0]);
  checkHl7V2NotificationConfig(o[1]);
}

core.int buildCounterHl7V2Store = 0;
api.Hl7V2Store buildHl7V2Store() {
  final o = api.Hl7V2Store();
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    o.labels = buildUnnamed52();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
    o.notificationConfigs = buildUnnamed53();
    o.parserConfig = buildParserConfig();
    o.rejectDuplicateMessage = true;
  }
  buildCounterHl7V2Store--;
  return o;
}

void checkHl7V2Store(api.Hl7V2Store o) {
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    checkUnnamed52(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig!);
    checkUnnamed53(o.notificationConfigs!);
    checkParserConfig(o.parserConfig!);
    unittest.expect(o.rejectDuplicateMessage!, unittest.isTrue);
  }
  buildCounterHl7V2Store--;
}

core.int buildCounterHl7V2StoreMetric = 0;
api.Hl7V2StoreMetric buildHl7V2StoreMetric() {
  final o = api.Hl7V2StoreMetric();
  buildCounterHl7V2StoreMetric++;
  if (buildCounterHl7V2StoreMetric < 3) {
    o.count = 'foo';
    o.messageType = 'foo';
    o.structuredStorageSizeBytes = 'foo';
  }
  buildCounterHl7V2StoreMetric--;
  return o;
}

void checkHl7V2StoreMetric(api.Hl7V2StoreMetric o) {
  buildCounterHl7V2StoreMetric++;
  if (buildCounterHl7V2StoreMetric < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.messageType!, unittest.equals('foo'));
    unittest.expect(o.structuredStorageSizeBytes!, unittest.equals('foo'));
  }
  buildCounterHl7V2StoreMetric--;
}

core.List<api.Hl7V2StoreMetric> buildUnnamed54() => [
  buildHl7V2StoreMetric(),
  buildHl7V2StoreMetric(),
];

void checkUnnamed54(core.List<api.Hl7V2StoreMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2StoreMetric(o[0]);
  checkHl7V2StoreMetric(o[1]);
}

core.int buildCounterHl7V2StoreMetrics = 0;
api.Hl7V2StoreMetrics buildHl7V2StoreMetrics() {
  final o = api.Hl7V2StoreMetrics();
  buildCounterHl7V2StoreMetrics++;
  if (buildCounterHl7V2StoreMetrics < 3) {
    o.metrics = buildUnnamed54();
    o.name = 'foo';
  }
  buildCounterHl7V2StoreMetrics--;
  return o;
}

void checkHl7V2StoreMetrics(api.Hl7V2StoreMetrics o) {
  buildCounterHl7V2StoreMetrics++;
  if (buildCounterHl7V2StoreMetrics < 3) {
    checkUnnamed54(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterHl7V2StoreMetrics--;
}

core.Map<core.String, core.Object?> buildUnnamed55() => {
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

void checkUnnamed55(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed56() => [
  buildUnnamed55(),
  buildUnnamed55(),
];

void checkUnnamed56(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed55(o[0]);
  checkUnnamed55(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed56();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed56(o.extensions!);
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
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.rawBytes!, unittest.equals('foo'));
  }
  buildCounterImage--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImageConfig = 0;
api.ImageConfig buildImageConfig() {
  final o = api.ImageConfig();
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    o.additionalInfoTypes = buildUnnamed57();
    o.excludeInfoTypes = buildUnnamed58();
    o.textRedactionMode = 'foo';
  }
  buildCounterImageConfig--;
  return o;
}

void checkImageConfig(api.ImageConfig o) {
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    checkUnnamed57(o.additionalInfoTypes!);
    checkUnnamed58(o.excludeInfoTypes!);
    unittest.expect(o.textRedactionMode!, unittest.equals('foo'));
  }
  buildCounterImageConfig--;
}

core.int buildCounterImportDicomDataRequest = 0;
api.ImportDicomDataRequest buildImportDicomDataRequest() {
  final o = api.ImportDicomDataRequest();
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    o.blobStorageSettings = buildBlobStorageSettings();
    o.gcsSource = buildGoogleCloudHealthcareV1beta1DicomGcsSource();
  }
  buildCounterImportDicomDataRequest--;
  return o;
}

void checkImportDicomDataRequest(api.ImportDicomDataRequest o) {
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    checkBlobStorageSettings(o.blobStorageSettings!);
    checkGoogleCloudHealthcareV1beta1DicomGcsSource(o.gcsSource!);
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

core.int buildCounterImportResourcesHistoryRequest = 0;
api.ImportResourcesHistoryRequest buildImportResourcesHistoryRequest() {
  final o = api.ImportResourcesHistoryRequest();
  buildCounterImportResourcesHistoryRequest++;
  if (buildCounterImportResourcesHistoryRequest < 3) {
    o.contentStructure = 'foo';
    o.gcsSource = buildGoogleCloudHealthcareV1beta1FhirGcsSource();
    o.maxErrorCount = 'foo';
  }
  buildCounterImportResourcesHistoryRequest--;
  return o;
}

void checkImportResourcesHistoryRequest(api.ImportResourcesHistoryRequest o) {
  buildCounterImportResourcesHistoryRequest++;
  if (buildCounterImportResourcesHistoryRequest < 3) {
    unittest.expect(o.contentStructure!, unittest.equals('foo'));
    checkGoogleCloudHealthcareV1beta1FhirGcsSource(o.gcsSource!);
    unittest.expect(o.maxErrorCount!, unittest.equals('foo'));
  }
  buildCounterImportResourcesHistoryRequest--;
}

core.int buildCounterImportResourcesRequest = 0;
api.ImportResourcesRequest buildImportResourcesRequest() {
  final o = api.ImportResourcesRequest();
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    o.contentStructure = 'foo';
    o.gcsSource = buildGoogleCloudHealthcareV1beta1FhirGcsSource();
  }
  buildCounterImportResourcesRequest--;
  return o;
}

void checkImportResourcesRequest(api.ImportResourcesRequest o) {
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    unittest.expect(o.contentStructure!, unittest.equals('foo'));
    checkGoogleCloudHealthcareV1beta1FhirGcsSource(o.gcsSource!);
  }
  buildCounterImportResourcesRequest--;
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInfoTypeTransformation = 0;
api.InfoTypeTransformation buildInfoTypeTransformation() {
  final o = api.InfoTypeTransformation();
  buildCounterInfoTypeTransformation++;
  if (buildCounterInfoTypeTransformation < 3) {
    o.characterMaskConfig = buildCharacterMaskConfig();
    o.cryptoHashConfig = buildCryptoHashConfig();
    o.dateShiftConfig = buildDateShiftConfig();
    o.infoTypes = buildUnnamed59();
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
    checkUnnamed59(o.infoTypes!);
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
    unittest.expect(o.hl7Ack!, unittest.equals('foo'));
    checkMessage(o.message!);
  }
  buildCounterIngestMessageResponse--;
}

core.int buildCounterKeepExtensionsConfig = 0;
api.KeepExtensionsConfig buildKeepExtensionsConfig() {
  final o = api.KeepExtensionsConfig();
  buildCounterKeepExtensionsConfig++;
  if (buildCounterKeepExtensionsConfig < 3) {}
  buildCounterKeepExtensionsConfig--;
  return o;
}

void checkKeepExtensionsConfig(api.KeepExtensionsConfig o) {
  buildCounterKeepExtensionsConfig++;
  if (buildCounterKeepExtensionsConfig < 3) {}
  buildCounterKeepExtensionsConfig--;
}

core.int buildCounterKeepField = 0;
api.KeepField buildKeepField() {
  final o = api.KeepField();
  buildCounterKeepField++;
  if (buildCounterKeepField < 3) {}
  buildCounterKeepField--;
  return o;
}

void checkKeepField(api.KeepField o) {
  buildCounterKeepField++;
  if (buildCounterKeepField < 3) {}
  buildCounterKeepField--;
}

core.int buildCounterKeepTag = 0;
api.KeepTag buildKeepTag() {
  final o = api.KeepTag();
  buildCounterKeepTag++;
  if (buildCounterKeepTag < 3) {}
  buildCounterKeepTag--;
  return o;
}

void checkKeepTag(api.KeepTag o) {
  buildCounterKeepTag++;
  if (buildCounterKeepTag < 3) {}
  buildCounterKeepTag--;
}

core.int buildCounterKmsWrappedCryptoKey = 0;
api.KmsWrappedCryptoKey buildKmsWrappedCryptoKey() {
  final o = api.KmsWrappedCryptoKey();
  buildCounterKmsWrappedCryptoKey++;
  if (buildCounterKmsWrappedCryptoKey < 3) {
    o.cryptoKey = 'foo';
    o.wrappedKey = 'foo';
  }
  buildCounterKmsWrappedCryptoKey--;
  return o;
}

void checkKmsWrappedCryptoKey(api.KmsWrappedCryptoKey o) {
  buildCounterKmsWrappedCryptoKey++;
  if (buildCounterKmsWrappedCryptoKey < 3) {
    unittest.expect(o.cryptoKey!, unittest.equals('foo'));
    unittest.expect(o.wrappedKey!, unittest.equals('foo'));
  }
  buildCounterKmsWrappedCryptoKey--;
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
    unittest.expect(o.entityId!, unittest.equals('foo'));
  }
  buildCounterLinkedEntity--;
}

core.List<api.AttributeDefinition> buildUnnamed60() => [
  buildAttributeDefinition(),
  buildAttributeDefinition(),
];

void checkUnnamed60(core.List<api.AttributeDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeDefinition(o[0]);
  checkAttributeDefinition(o[1]);
}

core.int buildCounterListAttributeDefinitionsResponse = 0;
api.ListAttributeDefinitionsResponse buildListAttributeDefinitionsResponse() {
  final o = api.ListAttributeDefinitionsResponse();
  buildCounterListAttributeDefinitionsResponse++;
  if (buildCounterListAttributeDefinitionsResponse < 3) {
    o.attributeDefinitions = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttributeDefinitionsResponse--;
  return o;
}

void checkListAttributeDefinitionsResponse(
  api.ListAttributeDefinitionsResponse o,
) {
  buildCounterListAttributeDefinitionsResponse++;
  if (buildCounterListAttributeDefinitionsResponse < 3) {
    checkUnnamed60(o.attributeDefinitions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAttributeDefinitionsResponse--;
}

core.List<api.ConsentArtifact> buildUnnamed61() => [
  buildConsentArtifact(),
  buildConsentArtifact(),
];

void checkUnnamed61(core.List<api.ConsentArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentArtifact(o[0]);
  checkConsentArtifact(o[1]);
}

core.int buildCounterListConsentArtifactsResponse = 0;
api.ListConsentArtifactsResponse buildListConsentArtifactsResponse() {
  final o = api.ListConsentArtifactsResponse();
  buildCounterListConsentArtifactsResponse++;
  if (buildCounterListConsentArtifactsResponse < 3) {
    o.consentArtifacts = buildUnnamed61();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentArtifactsResponse--;
  return o;
}

void checkListConsentArtifactsResponse(api.ListConsentArtifactsResponse o) {
  buildCounterListConsentArtifactsResponse++;
  if (buildCounterListConsentArtifactsResponse < 3) {
    checkUnnamed61(o.consentArtifacts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConsentArtifactsResponse--;
}

core.List<api.Consent> buildUnnamed62() => [buildConsent(), buildConsent()];

void checkUnnamed62(core.List<api.Consent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsent(o[0]);
  checkConsent(o[1]);
}

core.int buildCounterListConsentRevisionsResponse = 0;
api.ListConsentRevisionsResponse buildListConsentRevisionsResponse() {
  final o = api.ListConsentRevisionsResponse();
  buildCounterListConsentRevisionsResponse++;
  if (buildCounterListConsentRevisionsResponse < 3) {
    o.consents = buildUnnamed62();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentRevisionsResponse--;
  return o;
}

void checkListConsentRevisionsResponse(api.ListConsentRevisionsResponse o) {
  buildCounterListConsentRevisionsResponse++;
  if (buildCounterListConsentRevisionsResponse < 3) {
    checkUnnamed62(o.consents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConsentRevisionsResponse--;
}

core.List<api.ConsentStore> buildUnnamed63() => [
  buildConsentStore(),
  buildConsentStore(),
];

void checkUnnamed63(core.List<api.ConsentStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentStore(o[0]);
  checkConsentStore(o[1]);
}

core.int buildCounterListConsentStoresResponse = 0;
api.ListConsentStoresResponse buildListConsentStoresResponse() {
  final o = api.ListConsentStoresResponse();
  buildCounterListConsentStoresResponse++;
  if (buildCounterListConsentStoresResponse < 3) {
    o.consentStores = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentStoresResponse--;
  return o;
}

void checkListConsentStoresResponse(api.ListConsentStoresResponse o) {
  buildCounterListConsentStoresResponse++;
  if (buildCounterListConsentStoresResponse < 3) {
    checkUnnamed63(o.consentStores!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConsentStoresResponse--;
}

core.List<api.Consent> buildUnnamed64() => [buildConsent(), buildConsent()];

void checkUnnamed64(core.List<api.Consent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsent(o[0]);
  checkConsent(o[1]);
}

core.int buildCounterListConsentsResponse = 0;
api.ListConsentsResponse buildListConsentsResponse() {
  final o = api.ListConsentsResponse();
  buildCounterListConsentsResponse++;
  if (buildCounterListConsentsResponse < 3) {
    o.consents = buildUnnamed64();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsentsResponse--;
  return o;
}

void checkListConsentsResponse(api.ListConsentsResponse o) {
  buildCounterListConsentsResponse++;
  if (buildCounterListConsentsResponse < 3) {
    checkUnnamed64(o.consents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConsentsResponse--;
}

core.List<api.Dataset> buildUnnamed65() => [buildDataset(), buildDataset()];

void checkUnnamed65(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
api.ListDatasetsResponse buildListDatasetsResponse() {
  final o = api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed65();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatasetsResponse--;
  return o;
}

void checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed65(o.datasets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

core.List<api.DicomStore> buildUnnamed66() => [
  buildDicomStore(),
  buildDicomStore(),
];

void checkUnnamed66(core.List<api.DicomStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDicomStore(o[0]);
  checkDicomStore(o[1]);
}

core.int buildCounterListDicomStoresResponse = 0;
api.ListDicomStoresResponse buildListDicomStoresResponse() {
  final o = api.ListDicomStoresResponse();
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    o.dicomStores = buildUnnamed66();
    o.nextPageToken = 'foo';
  }
  buildCounterListDicomStoresResponse--;
  return o;
}

void checkListDicomStoresResponse(api.ListDicomStoresResponse o) {
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    checkUnnamed66(o.dicomStores!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDicomStoresResponse--;
}

core.List<api.FhirStore> buildUnnamed67() => [
  buildFhirStore(),
  buildFhirStore(),
];

void checkUnnamed67(core.List<api.FhirStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFhirStore(o[0]);
  checkFhirStore(o[1]);
}

core.int buildCounterListFhirStoresResponse = 0;
api.ListFhirStoresResponse buildListFhirStoresResponse() {
  final o = api.ListFhirStoresResponse();
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    o.fhirStores = buildUnnamed67();
    o.nextPageToken = 'foo';
  }
  buildCounterListFhirStoresResponse--;
  return o;
}

void checkListFhirStoresResponse(api.ListFhirStoresResponse o) {
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    checkUnnamed67(o.fhirStores!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListFhirStoresResponse--;
}

core.List<api.Hl7V2Store> buildUnnamed68() => [
  buildHl7V2Store(),
  buildHl7V2Store(),
];

void checkUnnamed68(core.List<api.Hl7V2Store> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2Store(o[0]);
  checkHl7V2Store(o[1]);
}

core.int buildCounterListHl7V2StoresResponse = 0;
api.ListHl7V2StoresResponse buildListHl7V2StoresResponse() {
  final o = api.ListHl7V2StoresResponse();
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    o.hl7V2Stores = buildUnnamed68();
    o.nextPageToken = 'foo';
  }
  buildCounterListHl7V2StoresResponse--;
  return o;
}

void checkListHl7V2StoresResponse(api.ListHl7V2StoresResponse o) {
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    checkUnnamed68(o.hl7V2Stores!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListHl7V2StoresResponse--;
}

core.List<api.Location> buildUnnamed69() => [buildLocation(), buildLocation()];

void checkUnnamed69(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed69();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed69(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Message> buildUnnamed70() => [buildMessage(), buildMessage()];

void checkUnnamed70(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterListMessagesResponse = 0;
api.ListMessagesResponse buildListMessagesResponse() {
  final o = api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.hl7V2Messages = buildUnnamed70();
    o.nextPageToken = 'foo';
  }
  buildCounterListMessagesResponse--;
  return o;
}

void checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed70(o.hl7V2Messages!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMessagesResponse--;
}

core.List<api.Operation> buildUnnamed71() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed71(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed71();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed71(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.UserDataMapping> buildUnnamed72() => [
  buildUserDataMapping(),
  buildUserDataMapping(),
];

void checkUnnamed72(core.List<api.UserDataMapping> o) {
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
    o.userDataMappings = buildUnnamed72();
  }
  buildCounterListUserDataMappingsResponse--;
  return o;
}

void checkListUserDataMappingsResponse(api.ListUserDataMappingsResponse o) {
  buildCounterListUserDataMappingsResponse++;
  if (buildCounterListUserDataMappingsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed72(o.userDataMappings!);
  }
  buildCounterListUserDataMappingsResponse--;
}

core.Map<core.String, core.String> buildUnnamed73() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed73(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed74() => {
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

void checkUnnamed74(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed73();
    o.locationId = 'foo';
    o.metadata = buildUnnamed74();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed73(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed74(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed75() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed75(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PatientId> buildUnnamed76() => [
  buildPatientId(),
  buildPatientId(),
];

void checkUnnamed76(core.List<api.PatientId> o) {
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
    o.labels = buildUnnamed75();
    o.messageType = 'foo';
    o.name = 'foo';
    o.parsedData = buildParsedData();
    o.patientIds = buildUnnamed76();
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
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed75(o.labels!);
    unittest.expect(o.messageType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkParsedData(o.parsedData!);
    checkUnnamed76(o.patientIds!);
    checkSchematizedData(o.schematizedData!);
    unittest.expect(o.sendFacility!, unittest.equals('foo'));
    unittest.expect(o.sendTime!, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsubTopic = 'foo';
    o.sendForBulkImport = true;
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.sendForBulkImport!, unittest.isTrue);
  }
  buildCounterNotificationConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed77() => {
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

void checkUnnamed77(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed78() => {
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

void checkUnnamed78(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed77();
    o.name = 'foo';
    o.response = buildUnnamed78();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed77(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed78(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOptions = 0;
api.Options buildOptions() {
  final o = api.Options();
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    o.cleanDescriptors = buildCleanDescriptorsOption();
    o.cleanImage = buildImageConfig();
    o.primaryIds = 'foo';
  }
  buildCounterOptions--;
  return o;
}

void checkOptions(api.Options o) {
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    checkCleanDescriptorsOption(o.cleanDescriptors!);
    checkImageConfig(o.cleanImage!);
    unittest.expect(o.primaryIds!, unittest.equals('foo'));
  }
  buildCounterOptions--;
}

core.List<api.Segment> buildUnnamed79() => [buildSegment(), buildSegment()];

void checkUnnamed79(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterParsedData = 0;
api.ParsedData buildParsedData() {
  final o = api.ParsedData();
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    o.segments = buildUnnamed79();
  }
  buildCounterParsedData--;
  return o;
}

void checkParsedData(api.ParsedData o) {
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    checkUnnamed79(o.segments!);
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
    unittest.expect(o.segmentTerminator!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
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
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterPatientId--;
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPatientScope = 0;
api.PatientScope buildPatientScope() {
  final o = api.PatientScope();
  buildCounterPatientScope++;
  if (buildCounterPatientScope < 3) {
    o.patientIds = buildUnnamed80();
  }
  buildCounterPatientScope--;
  return o;
}

void checkPatientScope(api.PatientScope o) {
  buildCounterPatientScope++;
  if (buildCounterPatientScope < 3) {
    checkUnnamed80(o.patientIds!);
  }
  buildCounterPatientScope--;
}

core.List<api.AuditConfig> buildUnnamed81() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed81(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed82() => [buildBinding(), buildBinding()];

void checkUnnamed82(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed81();
    o.bindings = buildUnnamed82();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed81(o.auditConfigs!);
    checkUnnamed82(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPubsubDestination = 0;
api.PubsubDestination buildPubsubDestination() {
  final o = api.PubsubDestination();
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    o.pubsubTopic = 'foo';
  }
  buildCounterPubsubDestination--;
  return o;
}

void checkPubsubDestination(api.PubsubDestination o) {
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
  }
  buildCounterPubsubDestination--;
}

core.Map<core.String, core.String> buildUnnamed83() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed83(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed84() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed84(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterQueryAccessibleDataRequest = 0;
api.QueryAccessibleDataRequest buildQueryAccessibleDataRequest() {
  final o = api.QueryAccessibleDataRequest();
  buildCounterQueryAccessibleDataRequest++;
  if (buildCounterQueryAccessibleDataRequest < 3) {
    o.gcsDestination = buildGoogleCloudHealthcareV1beta1ConsentGcsDestination();
    o.requestAttributes = buildUnnamed83();
    o.resourceAttributes = buildUnnamed84();
  }
  buildCounterQueryAccessibleDataRequest--;
  return o;
}

void checkQueryAccessibleDataRequest(api.QueryAccessibleDataRequest o) {
  buildCounterQueryAccessibleDataRequest++;
  if (buildCounterQueryAccessibleDataRequest < 3) {
    checkGoogleCloudHealthcareV1beta1ConsentGcsDestination(o.gcsDestination!);
    checkUnnamed83(o.requestAttributes!);
    checkUnnamed84(o.resourceAttributes!);
  }
  buildCounterQueryAccessibleDataRequest--;
}

core.int buildCounterRecurseTag = 0;
api.RecurseTag buildRecurseTag() {
  final o = api.RecurseTag();
  buildCounterRecurseTag++;
  if (buildCounterRecurseTag < 3) {}
  buildCounterRecurseTag--;
  return o;
}

void checkRecurseTag(api.RecurseTag o) {
  buildCounterRecurseTag++;
  if (buildCounterRecurseTag < 3) {}
  buildCounterRecurseTag--;
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

core.int buildCounterRegenUidTag = 0;
api.RegenUidTag buildRegenUidTag() {
  final o = api.RegenUidTag();
  buildCounterRegenUidTag++;
  if (buildCounterRegenUidTag < 3) {}
  buildCounterRegenUidTag--;
  return o;
}

void checkRegenUidTag(api.RegenUidTag o) {
  buildCounterRegenUidTag++;
  if (buildCounterRegenUidTag < 3) {}
  buildCounterRegenUidTag--;
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
    unittest.expect(o.consentArtifact!, unittest.equals('foo'));
  }
  buildCounterRejectConsentRequest--;
}

core.int buildCounterRemoveField = 0;
api.RemoveField buildRemoveField() {
  final o = api.RemoveField();
  buildCounterRemoveField++;
  if (buildCounterRemoveField < 3) {}
  buildCounterRemoveField--;
  return o;
}

void checkRemoveField(api.RemoveField o) {
  buildCounterRemoveField++;
  if (buildCounterRemoveField < 3) {}
  buildCounterRemoveField--;
}

core.int buildCounterRemoveTag = 0;
api.RemoveTag buildRemoveTag() {
  final o = api.RemoveTag();
  buildCounterRemoveTag++;
  if (buildCounterRemoveTag < 3) {}
  buildCounterRemoveTag--;
  return o;
}

void checkRemoveTag(api.RemoveTag o) {
  buildCounterRemoveTag++;
  if (buildCounterRemoveTag < 3) {}
  buildCounterRemoveTag--;
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

core.int buildCounterResetTag = 0;
api.ResetTag buildResetTag() {
  final o = api.ResetTag();
  buildCounterResetTag++;
  if (buildCounterResetTag < 3) {}
  buildCounterResetTag--;
  return o;
}

void checkResetTag(api.ResetTag o) {
  buildCounterResetTag++;
  if (buildCounterResetTag < 3) {}
  buildCounterResetTag--;
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResources = 0;
api.Resources buildResources() {
  final o = api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.resources = buildUnnamed85();
  }
  buildCounterResources--;
  return o;
}

void checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed85(o.resources!);
  }
  buildCounterResources--;
}

core.Map<core.String, api.ConsentEvaluation> buildUnnamed86() => {
  'x': buildConsentEvaluation(),
  'y': buildConsentEvaluation(),
};

void checkUnnamed86(core.Map<core.String, api.ConsentEvaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsentEvaluation(o['x']!);
  checkConsentEvaluation(o['y']!);
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  final o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.consentDetails = buildUnnamed86();
    o.consented = true;
    o.dataId = 'foo';
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    checkUnnamed86(o.consentDetails!);
    unittest.expect(o.consented!, unittest.isTrue);
    unittest.expect(o.dataId!, unittest.equals('foo'));
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
    unittest.expect(o.consentArtifact!, unittest.equals('foo'));
  }
  buildCounterRevokeConsentRequest--;
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRollbackFhirResourceFilteringFields = 0;
api.RollbackFhirResourceFilteringFields
buildRollbackFhirResourceFilteringFields() {
  final o = api.RollbackFhirResourceFilteringFields();
  buildCounterRollbackFhirResourceFilteringFields++;
  if (buildCounterRollbackFhirResourceFilteringFields < 3) {
    o.metadataFilter = 'foo';
    o.operationIds = buildUnnamed87();
  }
  buildCounterRollbackFhirResourceFilteringFields--;
  return o;
}

void checkRollbackFhirResourceFilteringFields(
  api.RollbackFhirResourceFilteringFields o,
) {
  buildCounterRollbackFhirResourceFilteringFields++;
  if (buildCounterRollbackFhirResourceFilteringFields < 3) {
    unittest.expect(o.metadataFilter!, unittest.equals('foo'));
    checkUnnamed87(o.operationIds!);
  }
  buildCounterRollbackFhirResourceFilteringFields--;
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRollbackFhirResourcesRequest = 0;
api.RollbackFhirResourcesRequest buildRollbackFhirResourcesRequest() {
  final o = api.RollbackFhirResourcesRequest();
  buildCounterRollbackFhirResourcesRequest++;
  if (buildCounterRollbackFhirResourcesRequest < 3) {
    o.changeType = 'foo';
    o.excludeRollbacks = true;
    o.filteringFields = buildRollbackFhirResourceFilteringFields();
    o.force = true;
    o.inputGcsObject = 'foo';
    o.resultGcsBucket = 'foo';
    o.rollbackTime = 'foo';
    o.type = buildUnnamed88();
  }
  buildCounterRollbackFhirResourcesRequest--;
  return o;
}

void checkRollbackFhirResourcesRequest(api.RollbackFhirResourcesRequest o) {
  buildCounterRollbackFhirResourcesRequest++;
  if (buildCounterRollbackFhirResourcesRequest < 3) {
    unittest.expect(o.changeType!, unittest.equals('foo'));
    unittest.expect(o.excludeRollbacks!, unittest.isTrue);
    checkRollbackFhirResourceFilteringFields(o.filteringFields!);
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.inputGcsObject!, unittest.equals('foo'));
    unittest.expect(o.resultGcsBucket!, unittest.equals('foo'));
    unittest.expect(o.rollbackTime!, unittest.equals('foo'));
    checkUnnamed88(o.type!);
  }
  buildCounterRollbackFhirResourcesRequest--;
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRollbackHL7MessagesFilteringFields = 0;
api.RollbackHL7MessagesFilteringFields
buildRollbackHL7MessagesFilteringFields() {
  final o = api.RollbackHL7MessagesFilteringFields();
  buildCounterRollbackHL7MessagesFilteringFields++;
  if (buildCounterRollbackHL7MessagesFilteringFields < 3) {
    o.operationIds = buildUnnamed89();
  }
  buildCounterRollbackHL7MessagesFilteringFields--;
  return o;
}

void checkRollbackHL7MessagesFilteringFields(
  api.RollbackHL7MessagesFilteringFields o,
) {
  buildCounterRollbackHL7MessagesFilteringFields++;
  if (buildCounterRollbackHL7MessagesFilteringFields < 3) {
    checkUnnamed89(o.operationIds!);
  }
  buildCounterRollbackHL7MessagesFilteringFields--;
}

core.int buildCounterRollbackHl7V2MessagesRequest = 0;
api.RollbackHl7V2MessagesRequest buildRollbackHl7V2MessagesRequest() {
  final o = api.RollbackHl7V2MessagesRequest();
  buildCounterRollbackHl7V2MessagesRequest++;
  if (buildCounterRollbackHl7V2MessagesRequest < 3) {
    o.changeType = 'foo';
    o.excludeRollbacks = true;
    o.filteringFields = buildRollbackHL7MessagesFilteringFields();
    o.force = true;
    o.inputGcsObject = 'foo';
    o.resultGcsBucket = 'foo';
    o.rollbackTime = 'foo';
  }
  buildCounterRollbackHl7V2MessagesRequest--;
  return o;
}

void checkRollbackHl7V2MessagesRequest(api.RollbackHl7V2MessagesRequest o) {
  buildCounterRollbackHl7V2MessagesRequest++;
  if (buildCounterRollbackHl7V2MessagesRequest < 3) {
    unittest.expect(o.changeType!, unittest.equals('foo'));
    unittest.expect(o.excludeRollbacks!, unittest.isTrue);
    checkRollbackHL7MessagesFilteringFields(o.filteringFields!);
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.inputGcsObject!, unittest.equals('foo'));
    unittest.expect(o.resultGcsBucket!, unittest.equals('foo'));
    unittest.expect(o.rollbackTime!, unittest.equals('foo'));
  }
  buildCounterRollbackHl7V2MessagesRequest--;
}

core.int buildCounterSchemaConfig = 0;
api.SchemaConfig buildSchemaConfig() {
  final o = api.SchemaConfig();
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    o.lastUpdatedPartitionConfig = buildTimePartitioning();
    o.recursiveStructureDepth = 'foo';
    o.schemaType = 'foo';
  }
  buildCounterSchemaConfig--;
  return o;
}

void checkSchemaConfig(api.SchemaConfig o) {
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    checkTimePartitioning(o.lastUpdatedPartitionConfig!);
    unittest.expect(o.recursiveStructureDepth!, unittest.equals('foo'));
    unittest.expect(o.schemaType!, unittest.equals('foo'));
  }
  buildCounterSchemaConfig--;
}

core.List<api.GroupOrSegment> buildUnnamed90() => [
  buildGroupOrSegment(),
  buildGroupOrSegment(),
];

void checkUnnamed90(core.List<api.GroupOrSegment> o) {
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
    o.members = buildUnnamed90();
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
    unittest.expect(o.maxOccurs!, unittest.equals(42));
    checkUnnamed90(o.members!);
    unittest.expect(o.minOccurs!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSchemaGroup--;
}

core.List<api.Hl7SchemaConfig> buildUnnamed91() => [
  buildHl7SchemaConfig(),
  buildHl7SchemaConfig(),
];

void checkUnnamed91(core.List<api.Hl7SchemaConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7SchemaConfig(o[0]);
  checkHl7SchemaConfig(o[1]);
}

core.List<api.Hl7TypesConfig> buildUnnamed92() => [
  buildHl7TypesConfig(),
  buildHl7TypesConfig(),
];

void checkUnnamed92(core.List<api.Hl7TypesConfig> o) {
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
    o.schemas = buildUnnamed91();
    o.schematizedParsingType = 'foo';
    o.types = buildUnnamed92();
    o.unexpectedSegmentHandling = 'foo';
  }
  buildCounterSchemaPackage--;
  return o;
}

void checkSchemaPackage(api.SchemaPackage o) {
  buildCounterSchemaPackage++;
  if (buildCounterSchemaPackage < 3) {
    unittest.expect(o.ignoreMinOccurs!, unittest.isTrue);
    checkUnnamed91(o.schemas!);
    unittest.expect(o.schematizedParsingType!, unittest.equals('foo'));
    checkUnnamed92(o.types!);
    unittest.expect(o.unexpectedSegmentHandling!, unittest.equals('foo'));
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
    unittest.expect(o.maxOccurs!, unittest.equals(42));
    unittest.expect(o.minOccurs!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals('foo'));
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
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.error!, unittest.equals('foo'));
  }
  buildCounterSchematizedData--;
}

core.List<api.SearchParameter> buildUnnamed93() => [
  buildSearchParameter(),
  buildSearchParameter(),
];

void checkUnnamed93(core.List<api.SearchParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchParameter(o[0]);
  checkSearchParameter(o[1]);
}

core.int buildCounterSearchConfig = 0;
api.SearchConfig buildSearchConfig() {
  final o = api.SearchConfig();
  buildCounterSearchConfig++;
  if (buildCounterSearchConfig < 3) {
    o.searchParameters = buildUnnamed93();
  }
  buildCounterSearchConfig--;
  return o;
}

void checkSearchConfig(api.SearchConfig o) {
  buildCounterSearchConfig++;
  if (buildCounterSearchConfig < 3) {
    checkUnnamed93(o.searchParameters!);
  }
  buildCounterSearchConfig--;
}

core.int buildCounterSearchParameter = 0;
api.SearchParameter buildSearchParameter() {
  final o = api.SearchParameter();
  buildCounterSearchParameter++;
  if (buildCounterSearchParameter < 3) {
    o.canonicalUrl = 'foo';
    o.parameter = 'foo';
  }
  buildCounterSearchParameter--;
  return o;
}

void checkSearchParameter(api.SearchParameter o) {
  buildCounterSearchParameter++;
  if (buildCounterSearchParameter < 3) {
    unittest.expect(o.canonicalUrl!, unittest.equals('foo'));
    unittest.expect(o.parameter!, unittest.equals('foo'));
  }
  buildCounterSearchParameter--;
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
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterSearchResourcesRequest--;
}

core.Map<core.String, core.String> buildUnnamed94() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed94(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSegment = 0;
api.Segment buildSegment() {
  final o = api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.fields = buildUnnamed94();
    o.segmentId = 'foo';
    o.setId = 'foo';
  }
  buildCounterSegment--;
  return o;
}

void checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkUnnamed94(o.fields!);
    unittest.expect(o.segmentId!, unittest.equals('foo'));
    unittest.expect(o.setId!, unittest.equals('foo'));
  }
  buildCounterSegment--;
}

core.int buildCounterSeriesMetrics = 0;
api.SeriesMetrics buildSeriesMetrics() {
  final o = api.SeriesMetrics();
  buildCounterSeriesMetrics++;
  if (buildCounterSeriesMetrics < 3) {
    o.blobStorageSizeBytes = 'foo';
    o.instanceCount = 'foo';
    o.series = 'foo';
    o.structuredStorageSizeBytes = 'foo';
  }
  buildCounterSeriesMetrics--;
  return o;
}

void checkSeriesMetrics(api.SeriesMetrics o) {
  buildCounterSeriesMetrics++;
  if (buildCounterSeriesMetrics < 3) {
    unittest.expect(o.blobStorageSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.instanceCount!, unittest.equals('foo'));
    unittest.expect(o.series!, unittest.equals('foo'));
    unittest.expect(o.structuredStorageSizeBytes!, unittest.equals('foo'));
  }
  buildCounterSeriesMetrics--;
}

core.int buildCounterSetBlobStorageSettingsRequest = 0;
api.SetBlobStorageSettingsRequest buildSetBlobStorageSettingsRequest() {
  final o = api.SetBlobStorageSettingsRequest();
  buildCounterSetBlobStorageSettingsRequest++;
  if (buildCounterSetBlobStorageSettingsRequest < 3) {
    o.blobStorageSettings = buildBlobStorageSettings();
    o.filterConfig = buildDicomFilterConfig();
  }
  buildCounterSetBlobStorageSettingsRequest--;
  return o;
}

void checkSetBlobStorageSettingsRequest(api.SetBlobStorageSettingsRequest o) {
  buildCounterSetBlobStorageSettingsRequest++;
  if (buildCounterSetBlobStorageSettingsRequest < 3) {
    checkBlobStorageSettings(o.blobStorageSettings!);
    checkDicomFilterConfig(o.filterConfig!);
  }
  buildCounterSetBlobStorageSettingsRequest--;
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
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.String> buildUnnamed95() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed95(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSignature = 0;
api.Signature buildSignature() {
  final o = api.Signature();
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    o.image = buildImage();
    o.metadata = buildUnnamed95();
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
    checkUnnamed95(o.metadata!);
    unittest.expect(o.signatureTime!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterSignature--;
}

core.Map<core.String, core.Object?> buildUnnamed96() => {
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

void checkUnnamed96(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed97() => [
  buildUnnamed96(),
  buildUnnamed96(),
];

void checkUnnamed97(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed96(o[0]);
  checkUnnamed96(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed97();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed97(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStorageInfo = 0;
api.StorageInfo buildStorageInfo() {
  final o = api.StorageInfo();
  buildCounterStorageInfo++;
  if (buildCounterStorageInfo < 3) {
    o.blobStorageInfo = buildBlobStorageInfo();
    o.referencedResource = 'foo';
    o.structuredStorageInfo = buildStructuredStorageInfo();
  }
  buildCounterStorageInfo--;
  return o;
}

void checkStorageInfo(api.StorageInfo o) {
  buildCounterStorageInfo++;
  if (buildCounterStorageInfo < 3) {
    checkBlobStorageInfo(o.blobStorageInfo!);
    unittest.expect(o.referencedResource!, unittest.equals('foo'));
    checkStructuredStorageInfo(o.structuredStorageInfo!);
  }
  buildCounterStorageInfo--;
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStreamConfig = 0;
api.StreamConfig buildStreamConfig() {
  final o = api.StreamConfig();
  buildCounterStreamConfig++;
  if (buildCounterStreamConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination();
    o.deidentifiedStoreDestination = buildDeidentifiedStoreDestination();
    o.resourceTypes = buildUnnamed98();
  }
  buildCounterStreamConfig--;
  return o;
}

void checkStreamConfig(api.StreamConfig o) {
  buildCounterStreamConfig++;
  if (buildCounterStreamConfig < 3) {
    checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkDeidentifiedStoreDestination(o.deidentifiedStoreDestination!);
    checkUnnamed98(o.resourceTypes!);
  }
  buildCounterStreamConfig--;
}

core.int buildCounterStructuredStorageInfo = 0;
api.StructuredStorageInfo buildStructuredStorageInfo() {
  final o = api.StructuredStorageInfo();
  buildCounterStructuredStorageInfo++;
  if (buildCounterStructuredStorageInfo < 3) {
    o.sizeBytes = 'foo';
  }
  buildCounterStructuredStorageInfo--;
  return o;
}

void checkStructuredStorageInfo(api.StructuredStorageInfo o) {
  buildCounterStructuredStorageInfo++;
  if (buildCounterStructuredStorageInfo < 3) {
    unittest.expect(o.sizeBytes!, unittest.equals('foo'));
  }
  buildCounterStructuredStorageInfo--;
}

core.int buildCounterStudyMetrics = 0;
api.StudyMetrics buildStudyMetrics() {
  final o = api.StudyMetrics();
  buildCounterStudyMetrics++;
  if (buildCounterStudyMetrics < 3) {
    o.blobStorageSizeBytes = 'foo';
    o.instanceCount = 'foo';
    o.seriesCount = 'foo';
    o.structuredStorageSizeBytes = 'foo';
    o.study = 'foo';
  }
  buildCounterStudyMetrics--;
  return o;
}

void checkStudyMetrics(api.StudyMetrics o) {
  buildCounterStudyMetrics++;
  if (buildCounterStudyMetrics < 3) {
    unittest.expect(o.blobStorageSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.instanceCount!, unittest.equals('foo'));
    unittest.expect(o.seriesCount!, unittest.equals('foo'));
    unittest.expect(o.structuredStorageSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.study!, unittest.equals('foo'));
  }
  buildCounterStudyMetrics--;
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTagFilterList = 0;
api.TagFilterList buildTagFilterList() {
  final o = api.TagFilterList();
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    o.tags = buildUnnamed99();
  }
  buildCounterTagFilterList--;
  return o;
}

void checkTagFilterList(api.TagFilterList o) {
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    checkUnnamed99(o.tags!);
  }
  buildCounterTagFilterList--;
}

core.List<core.String> buildUnnamed100() => ['foo', 'foo'];

void checkUnnamed100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed100();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed100(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed101();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed101(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.InfoTypeTransformation> buildUnnamed102() => [
  buildInfoTypeTransformation(),
  buildInfoTypeTransformation(),
];

void checkUnnamed102(core.List<api.InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoTypeTransformation(o[0]);
  checkInfoTypeTransformation(o[1]);
}

core.List<core.String> buildUnnamed103() => ['foo', 'foo'];

void checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.InfoTypeTransformation> buildUnnamed104() => [
  buildInfoTypeTransformation(),
  buildInfoTypeTransformation(),
];

void checkUnnamed104(core.List<api.InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoTypeTransformation(o[0]);
  checkInfoTypeTransformation(o[1]);
}

core.int buildCounterTextConfig = 0;
api.TextConfig buildTextConfig() {
  final o = api.TextConfig();
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    o.additionalTransformations = buildUnnamed102();
    o.excludeInfoTypes = buildUnnamed103();
    o.profileType = 'foo';
    o.transformations = buildUnnamed104();
  }
  buildCounterTextConfig--;
  return o;
}

void checkTextConfig(api.TextConfig o) {
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    checkUnnamed102(o.additionalTransformations!);
    checkUnnamed103(o.excludeInfoTypes!);
    unittest.expect(o.profileType!, unittest.equals('foo'));
    checkUnnamed104(o.transformations!);
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
    unittest.expect(o.beginOffset!, unittest.equals(42));
    unittest.expect(o.content!, unittest.equals('foo'));
  }
  buildCounterTextSpan--;
}

core.int buildCounterTimePartitioning = 0;
api.TimePartitioning buildTimePartitioning() {
  final o = api.TimePartitioning();
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    o.expirationMs = 'foo';
    o.type = 'foo';
  }
  buildCounterTimePartitioning--;
  return o;
}

void checkTimePartitioning(api.TimePartitioning o) {
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    unittest.expect(o.expirationMs!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterTimePartitioning--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  final o = api.TimeRange();
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    o.end = 'foo';
    o.start = 'foo';
  }
  buildCounterTimeRange--;
  return o;
}

void checkTimeRange(api.TimeRange o) {
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    unittest.expect(o.end!, unittest.equals('foo'));
    unittest.expect(o.start!, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

core.List<api.Field> buildUnnamed105() => [buildField(), buildField()];

void checkUnnamed105(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed105();
    o.name = 'foo';
    o.primitive = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed105(o.fields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.primitive!, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.List<api.Attribute> buildUnnamed106() => [
  buildAttribute(),
  buildAttribute(),
];

void checkUnnamed106(core.List<api.Attribute> o) {
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
    o.resourceAttributes = buildUnnamed106();
    o.userId = 'foo';
  }
  buildCounterUserDataMapping--;
  return o;
}

void checkUserDataMapping(api.UserDataMapping o) {
  buildCounterUserDataMapping++;
  if (buildCounterUserDataMapping < 3) {
    unittest.expect(o.archiveTime!, unittest.equals('foo'));
    unittest.expect(o.archived!, unittest.isTrue);
    unittest.expect(o.dataId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed106(o.resourceAttributes!);
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterUserDataMapping--;
}

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.enabledImplementationGuides = buildUnnamed107();
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
    checkUnnamed107(o.enabledImplementationGuides!);
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
    unittest.expect(o.mshField!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterVersionSource--;
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AccessDeterminationLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessDeterminationLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessDeterminationLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessDeterminationLogConfig(od);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Action.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAction(od);
    });
  });

  unittest.group('obj-schema-ActivateConsentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateConsentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateConsentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivateConsentRequest(od);
    });
  });

  unittest.group('obj-schema-AdminConsents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdminConsents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdminConsents.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdminConsents(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-ApplyAdminConsentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyAdminConsentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplyAdminConsentsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplyAdminConsentsRequest(od);
    });
  });

  unittest.group('obj-schema-ApplyConsentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyConsentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplyConsentsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplyConsentsRequest(od);
    });
  });

  unittest.group('obj-schema-ArchiveUserDataMappingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveUserDataMappingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveUserDataMappingRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArchiveUserDataMappingRequest(od);
    });
  });

  unittest.group('obj-schema-ArchiveUserDataMappingResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveUserDataMappingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveUserDataMappingResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArchiveUserDataMappingResponse(od);
    });
  });

  unittest.group('obj-schema-Attribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttribute(od);
    });
  });

  unittest.group('obj-schema-AttributeDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributeDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributeDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttributeDefinition(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-BatchGetMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetMessagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchGetMessagesResponse(od);
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

  unittest.group('obj-schema-BlobStorageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlobStorageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlobStorageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlobStorageInfo(od);
    });
  });

  unittest.group('obj-schema-BlobStorageSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlobStorageSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlobStorageSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlobStorageSettings(od);
    });
  });

  unittest.group('obj-schema-BulkExportGcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkExportGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkExportGcsDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkExportGcsDestination(od);
    });
  });

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

  unittest.group('obj-schema-CharacterMaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCharacterMaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CharacterMaskConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCharacterMaskConfig(od);
    });
  });

  unittest.group('obj-schema-CharacterMaskField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCharacterMaskField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CharacterMaskField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCharacterMaskField(od);
    });
  });

  unittest.group('obj-schema-CheckDataAccessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckDataAccessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckDataAccessRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckDataAccessRequest(od);
    });
  });

  unittest.group('obj-schema-CheckDataAccessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckDataAccessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckDataAccessResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckDataAccessResponse(od);
    });
  });

  unittest.group('obj-schema-CleanDescriptorsOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCleanDescriptorsOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CleanDescriptorsOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCleanDescriptorsOption(od);
    });
  });

  unittest.group('obj-schema-CleanTextField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCleanTextField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CleanTextField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCleanTextField(od);
    });
  });

  unittest.group('obj-schema-CleanTextTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCleanTextTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CleanTextTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCleanTextTag(od);
    });
  });

  unittest.group('obj-schema-ConfigureSearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigureSearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigureSearchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfigureSearchRequest(od);
    });
  });

  unittest.group('obj-schema-Consent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Consent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsent(od);
    });
  });

  unittest.group('obj-schema-ConsentAccessorScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentAccessorScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentAccessorScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentAccessorScope(od);
    });
  });

  unittest.group('obj-schema-ConsentArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentArtifact(od);
    });
  });

  unittest.group('obj-schema-ConsentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentConfig(od);
    });
  });

  unittest.group('obj-schema-ConsentEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentEvaluation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentEvaluation(od);
    });
  });

  unittest.group('obj-schema-ConsentHeaderHandling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentHeaderHandling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentHeaderHandling.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentHeaderHandling(od);
    });
  });

  unittest.group('obj-schema-ConsentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentList(od);
    });
  });

  unittest.group('obj-schema-ConsentStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsentStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsentStore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsentStore(od);
    });
  });

  unittest.group('obj-schema-ContextualDeidConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContextualDeidConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContextualDeidConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContextualDeidConfig(od);
    });
  });

  unittest.group('obj-schema-CreateMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateMessageRequest(od);
    });
  });

  unittest.group('obj-schema-CryptoHashConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoHashConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoHashConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCryptoHashConfig(od);
    });
  });

  unittest.group('obj-schema-CryptoHashField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoHashField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoHashField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCryptoHashField(od);
    });
  });

  unittest.group('obj-schema-Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dataset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataset(od);
    });
  });

  unittest.group('obj-schema-DateShiftConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateShiftConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateShiftConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateShiftConfig(od);
    });
  });

  unittest.group('obj-schema-DateShiftField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateShiftField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateShiftField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateShiftField(od);
    });
  });

  unittest.group('obj-schema-DeidentifiedStoreDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifiedStoreDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifiedStoreDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeidentifiedStoreDestination(od);
    });
  });

  unittest.group('obj-schema-DeidentifyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeidentifyConfig(od);
    });
  });

  unittest.group('obj-schema-DeidentifyDatasetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyDatasetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyDatasetRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeidentifyDatasetRequest(od);
    });
  });

  unittest.group('obj-schema-DeidentifyDicomStoreRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyDicomStoreRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyDicomStoreRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeidentifyDicomStoreRequest(od);
    });
  });

  unittest.group('obj-schema-DeidentifyFhirStoreRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyFhirStoreRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyFhirStoreRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeidentifyFhirStoreRequest(od);
    });
  });

  unittest.group('obj-schema-DeidentifyOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeidentifyOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeidentifyOperationMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeidentifyOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-DeleteTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteTag(od);
    });
  });

  unittest.group('obj-schema-DicomConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDicomConfig(od);
    });
  });

  unittest.group('obj-schema-DicomFilterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomFilterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomFilterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDicomFilterConfig(od);
    });
  });

  unittest.group('obj-schema-DicomNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDicomNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-DicomStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomStore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDicomStore(od);
    });
  });

  unittest.group('obj-schema-DicomStoreMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomStoreMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomStoreMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDicomStoreMetrics(od);
    });
  });

  unittest.group('obj-schema-DicomTagConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDicomTagConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DicomTagConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDicomTagConfig(od);
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

  unittest.group('obj-schema-EncryptionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionSpec(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityMention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMention.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntityMention(od);
    });
  });

  unittest.group('obj-schema-EntityMentionRelationship', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMentionRelationship();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMentionRelationship.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntityMentionRelationship(od);
    });
  });

  unittest.group('obj-schema-EvaluateUserConsentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluateUserConsentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluateUserConsentsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluateUserConsentsRequest(od);
    });
  });

  unittest.group('obj-schema-EvaluateUserConsentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluateUserConsentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluateUserConsentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluateUserConsentsResponse(od);
    });
  });

  unittest.group('obj-schema-ExplainDataAccessConsentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainDataAccessConsentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainDataAccessConsentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExplainDataAccessConsentInfo(od);
    });
  });

  unittest.group('obj-schema-ExplainDataAccessConsentScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainDataAccessConsentScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainDataAccessConsentScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExplainDataAccessConsentScope(od);
    });
  });

  unittest.group('obj-schema-ExplainDataAccessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainDataAccessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainDataAccessResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExplainDataAccessResponse(od);
    });
  });

  unittest.group('obj-schema-ExportDicomDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportDicomDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportDicomDataRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportDicomDataRequest(od);
    });
  });

  unittest.group('obj-schema-ExportMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportMessagesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-ExportResourcesHistoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportResourcesHistoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportResourcesHistoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportResourcesHistoryRequest(od);
    });
  });

  unittest.group('obj-schema-ExportResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportResourcesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportResourcesRequest(od);
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

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Feature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFeature(od);
    });
  });

  unittest.group('obj-schema-FhirConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirConfig(od);
    });
  });

  unittest.group('obj-schema-FhirFieldConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirFieldConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirFieldConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirFieldConfig(od);
    });
  });

  unittest.group('obj-schema-FhirFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirFilter(od);
    });
  });

  unittest.group('obj-schema-FhirNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-FhirOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirOutput(od);
    });
  });

  unittest.group('obj-schema-FhirStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirStore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirStore(od);
    });
  });

  unittest.group('obj-schema-FhirStoreMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirStoreMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirStoreMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirStoreMetric(od);
    });
  });

  unittest.group('obj-schema-FhirStoreMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFhirStoreMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FhirStoreMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFhirStoreMetrics(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Field.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkField(od);
    });
  });

  unittest.group('obj-schema-FieldMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldMetadata(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsSource(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1ConsentGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1ConsentGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudHealthcareV1beta1ConsentGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1ConsentGcsDestination(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudHealthcareV1beta1ConsentPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1beta1ConsentPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1beta1ConsentPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudHealthcareV1beta1ConsentPolicy(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1DeidentifyOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1DeidentifyOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudHealthcareV1beta1DeidentifyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1DeidentifyOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1DicomBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudHealthcareV1beta1DicomBigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1DicomGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1DicomGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudHealthcareV1beta1DicomGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1DicomGcsDestination(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudHealthcareV1beta1DicomGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1beta1DicomGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1beta1DicomGcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudHealthcareV1beta1DicomGcsSource(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1DicomStreamConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1DicomStreamConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudHealthcareV1beta1DicomStreamConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1DicomStreamConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1FhirBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudHealthcareV1beta1FhirBigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudHealthcareV1beta1FhirGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudHealthcareV1beta1FhirGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudHealthcareV1beta1FhirGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudHealthcareV1beta1FhirGcsDestination(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudHealthcareV1beta1FhirGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudHealthcareV1beta1FhirGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudHealthcareV1beta1FhirGcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudHealthcareV1beta1FhirGcsSource(od);
    });
  });

  unittest.group('obj-schema-GroupOrSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupOrSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupOrSegment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupOrSegment(od);
    });
  });

  unittest.group('obj-schema-Hl7SchemaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7SchemaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7SchemaConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHl7SchemaConfig(od);
    });
  });

  unittest.group('obj-schema-Hl7TypesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7TypesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7TypesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHl7TypesConfig(od);
    });
  });

  unittest.group('obj-schema-Hl7V2NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7V2NotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7V2NotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHl7V2NotificationConfig(od);
    });
  });

  unittest.group('obj-schema-Hl7V2Store', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7V2Store();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7V2Store.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHl7V2Store(od);
    });
  });

  unittest.group('obj-schema-Hl7V2StoreMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7V2StoreMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7V2StoreMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHl7V2StoreMetric(od);
    });
  });

  unittest.group('obj-schema-Hl7V2StoreMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHl7V2StoreMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hl7V2StoreMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHl7V2StoreMetrics(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Image.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageConfig(od);
    });
  });

  unittest.group('obj-schema-ImportDicomDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportDicomDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportDicomDataRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportDicomDataRequest(od);
    });
  });

  unittest.group('obj-schema-ImportMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportMessagesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-ImportResourcesHistoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportResourcesHistoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportResourcesHistoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportResourcesHistoryRequest(od);
    });
  });

  unittest.group('obj-schema-ImportResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportResourcesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportResourcesRequest(od);
    });
  });

  unittest.group('obj-schema-InfoTypeTransformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInfoTypeTransformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InfoTypeTransformation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInfoTypeTransformation(od);
    });
  });

  unittest.group('obj-schema-IngestMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestMessageRequest(od);
    });
  });

  unittest.group('obj-schema-IngestMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestMessageResponse(od);
    });
  });

  unittest.group('obj-schema-KeepExtensionsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeepExtensionsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeepExtensionsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKeepExtensionsConfig(od);
    });
  });

  unittest.group('obj-schema-KeepField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeepField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeepField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKeepField(od);
    });
  });

  unittest.group('obj-schema-KeepTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeepTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeepTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKeepTag(od);
    });
  });

  unittest.group('obj-schema-KmsWrappedCryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKmsWrappedCryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KmsWrappedCryptoKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKmsWrappedCryptoKey(od);
    });
  });

  unittest.group('obj-schema-LinkedEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedEntity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkedEntity(od);
    });
  });

  unittest.group('obj-schema-ListAttributeDefinitionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAttributeDefinitionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAttributeDefinitionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAttributeDefinitionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentArtifactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentArtifactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentArtifactsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsentArtifactsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentRevisionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsentRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentStoresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsentStoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatasetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatasetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatasetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDatasetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDicomStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDicomStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDicomStoresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDicomStoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListFhirStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFhirStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFhirStoresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFhirStoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListHl7V2StoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHl7V2StoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHl7V2StoresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListHl7V2StoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMessagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMessagesResponse(od);
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

  unittest.group('obj-schema-ListUserDataMappingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserDataMappingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserDataMappingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUserDataMappingsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Message.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotificationConfig(od);
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

  unittest.group('obj-schema-Options', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Options.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOptions(od);
    });
  });

  unittest.group('obj-schema-ParsedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParsedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParsedData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParsedData(od);
    });
  });

  unittest.group('obj-schema-ParserConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParserConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParserConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParserConfig(od);
    });
  });

  unittest.group('obj-schema-PatientId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatientId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatientId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatientId(od);
    });
  });

  unittest.group('obj-schema-PatientScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatientScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatientScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatientScope(od);
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

  unittest.group('obj-schema-PubsubDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPubsubDestination(od);
    });
  });

  unittest.group('obj-schema-QueryAccessibleDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAccessibleDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAccessibleDataRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryAccessibleDataRequest(od);
    });
  });

  unittest.group('obj-schema-RecurseTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurseTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurseTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRecurseTag(od);
    });
  });

  unittest.group('obj-schema-RedactConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRedactConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RedactConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRedactConfig(od);
    });
  });

  unittest.group('obj-schema-RegenUidTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegenUidTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegenUidTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegenUidTag(od);
    });
  });

  unittest.group('obj-schema-RejectConsentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectConsentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectConsentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRejectConsentRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveField(od);
    });
  });

  unittest.group('obj-schema-RemoveTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveTag(od);
    });
  });

  unittest.group('obj-schema-ReplaceWithInfoTypeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceWithInfoTypeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceWithInfoTypeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group('obj-schema-ResetTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetTag(od);
    });
  });

  unittest.group('obj-schema-Resources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resources.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResources(od);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Result.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResult(od);
    });
  });

  unittest.group('obj-schema-RevokeConsentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeConsentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeConsentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRevokeConsentRequest(od);
    });
  });

  unittest.group('obj-schema-RollbackFhirResourceFilteringFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackFhirResourceFilteringFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackFhirResourceFilteringFields.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackFhirResourceFilteringFields(od);
    });
  });

  unittest.group('obj-schema-RollbackFhirResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackFhirResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackFhirResourcesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackFhirResourcesRequest(od);
    });
  });

  unittest.group('obj-schema-RollbackHL7MessagesFilteringFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackHL7MessagesFilteringFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackHL7MessagesFilteringFields.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackHL7MessagesFilteringFields(od);
    });
  });

  unittest.group('obj-schema-RollbackHl7V2MessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackHl7V2MessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackHl7V2MessagesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackHl7V2MessagesRequest(od);
    });
  });

  unittest.group('obj-schema-SchemaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaConfig(od);
    });
  });

  unittest.group('obj-schema-SchemaGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaGroup(od);
    });
  });

  unittest.group('obj-schema-SchemaPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaPackage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaPackage(od);
    });
  });

  unittest.group('obj-schema-SchemaSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaSegment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaSegment(od);
    });
  });

  unittest.group('obj-schema-SchematizedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchematizedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchematizedData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchematizedData(od);
    });
  });

  unittest.group('obj-schema-SearchConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchConfig(od);
    });
  });

  unittest.group('obj-schema-SearchParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchParameter(od);
    });
  });

  unittest.group('obj-schema-SearchResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResourcesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchResourcesRequest(od);
    });
  });

  unittest.group('obj-schema-Segment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Segment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSegment(od);
    });
  });

  unittest.group('obj-schema-SeriesMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeriesMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeriesMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSeriesMetrics(od);
    });
  });

  unittest.group('obj-schema-SetBlobStorageSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetBlobStorageSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetBlobStorageSettingsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetBlobStorageSettingsRequest(od);
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

  unittest.group('obj-schema-StorageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageInfo(od);
    });
  });

  unittest.group('obj-schema-StreamConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamConfig(od);
    });
  });

  unittest.group('obj-schema-StructuredStorageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredStorageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredStorageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStructuredStorageInfo(od);
    });
  });

  unittest.group('obj-schema-StudyMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStudyMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StudyMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStudyMetrics(od);
    });
  });

  unittest.group('obj-schema-TagFilterList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagFilterList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagFilterList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTagFilterList(od);
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

  unittest.group('obj-schema-TextConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextConfig(od);
    });
  });

  unittest.group('obj-schema-TextSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextSpan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextSpan(od);
    });
  });

  unittest.group('obj-schema-TimePartitioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimePartitioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimePartitioning.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimePartitioning(od);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeRange(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Type.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkType(od);
    });
  });

  unittest.group('obj-schema-UserDataMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDataMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDataMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserDataMapping(od);
    });
  });

  unittest.group('obj-schema-ValidationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidationConfig(od);
    });
  });

  unittest.group('obj-schema-VersionSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersionSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VersionSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVersionSource(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed108();
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
            unittest.equals('v1beta1/'),
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
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
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Dataset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataset(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['datasetId']!.first,
            unittest.equals(arg_datasetId),
          );
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
      final response = await res.create(
        arg_request,
        arg_parent,
        datasetId: arg_datasetId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildDeidentifyDatasetRequest();
      final arg_sourceDataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeidentifyDatasetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeidentifyDatasetRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.deidentify(
        arg_request,
        arg_sourceDataset,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
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
            unittest.equals('v1beta1/'),
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
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildDataset());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
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
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListDatasetsResponse());
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
      checkListDatasetsResponse(response as api.ListDatasetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
      final arg_request = buildDataset();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Dataset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataset(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildDataset());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.datasets;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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

  unittest.group('resource-ProjectsLocationsDatasetsAnnotationStoresResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.annotationStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
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
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.annotationStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.annotationStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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

  unittest.group('resource-ProjectsLocationsDatasetsConsentStoresResource', () {
    unittest.test('method--checkDataAccess', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
      final arg_request = buildCheckDataAccessRequest();
      final arg_consentStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CheckDataAccessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCheckDataAccessRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildCheckDataAccessResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkDataAccess(
        arg_request,
        arg_consentStore,
        $fields: arg_$fields,
      );
      checkCheckDataAccessResponse(response as api.CheckDataAccessResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
      final arg_request = buildConsentStore();
      final arg_parent = 'foo';
      final arg_consentStoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConsentStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConsentStore(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['consentStoreId']!.first,
            unittest.equals(arg_consentStoreId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConsentStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        consentStoreId: arg_consentStoreId,
        $fields: arg_$fields,
      );
      checkConsentStore(response as api.ConsentStore);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
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
            unittest.equals('v1beta1/'),
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

    unittest.test('method--evaluateUserConsents', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
      final arg_request = buildEvaluateUserConsentsRequest();
      final arg_consentStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EvaluateUserConsentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEvaluateUserConsentsRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEvaluateUserConsentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.evaluateUserConsents(
        arg_request,
        arg_consentStore,
        $fields: arg_$fields,
      );
      checkEvaluateUserConsentsResponse(
        response as api.EvaluateUserConsentsResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsentStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsentStore(response as api.ConsentStore);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
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
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListConsentStoresResponse());
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
      checkListConsentStoresResponse(response as api.ListConsentStoresResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
      final arg_request = buildConsentStore();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConsentStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConsentStore(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsentStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkConsentStore(response as api.ConsentStore);
    });

    unittest.test('method--queryAccessibleData', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
      final arg_request = buildQueryAccessibleDataRequest();
      final arg_consentStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryAccessibleDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryAccessibleDataRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.queryAccessibleData(
        arg_request,
        arg_consentStore,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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

  unittest.group(
    'resource-ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.attributeDefinitions;
        final arg_request = buildAttributeDefinition();
        final arg_parent = 'foo';
        final arg_attributeDefinitionId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.AttributeDefinition.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkAttributeDefinition(obj);

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
              unittest.equals('v1beta1/'),
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
              queryMap['attributeDefinitionId']!.first,
              unittest.equals(arg_attributeDefinitionId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildAttributeDefinition());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          attributeDefinitionId: arg_attributeDefinitionId,
          $fields: arg_$fields,
        );
        checkAttributeDefinition(response as api.AttributeDefinition);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.attributeDefinitions;
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
              unittest.equals('v1beta1/'),
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
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.attributeDefinitions;
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildAttributeDefinition());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkAttributeDefinition(response as api.AttributeDefinition);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.attributeDefinitions;
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
              unittest.equals('v1beta1/'),
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
              buildListAttributeDefinitionsResponse(),
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
        checkListAttributeDefinitionsResponse(
          response as api.ListAttributeDefinitionsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.attributeDefinitions;
        final arg_request = buildAttributeDefinition();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.AttributeDefinition.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkAttributeDefinition(obj);

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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildAttributeDefinition());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkAttributeDefinition(response as api.AttributeDefinition);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.consentArtifacts;
        final arg_request = buildConsentArtifact();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.ConsentArtifact.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkConsentArtifact(obj);

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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildConsentArtifact());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkConsentArtifact(response as api.ConsentArtifact);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.consentArtifacts;
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
              unittest.equals('v1beta1/'),
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
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.consentArtifacts;
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildConsentArtifact());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkConsentArtifact(response as api.ConsentArtifact);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.consentArtifacts;
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
              unittest.equals('v1beta1/'),
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
              buildListConsentArtifactsResponse(),
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
        checkListConsentArtifactsResponse(
          response as api.ListConsentArtifactsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDatasetsConsentStoresConsentsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
      final arg_request = buildActivateConsentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ActivateConsentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkActivateConsentRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.activate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkConsent(response as api.Consent);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
      final arg_request = buildConsent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Consent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConsent(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkConsent(response as api.Consent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
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
            unittest.equals('v1beta1/'),
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

    unittest.test('method--deleteRevision', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
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
            unittest.equals('v1beta1/'),
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
      final response = await res.deleteRevision(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsent(response as api.Consent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListConsentsResponse());
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
      checkListConsentsResponse(response as api.ListConsentsResponse);
    });

    unittest.test('method--listRevisions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListConsentRevisionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listRevisions(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListConsentRevisionsResponse(
        response as api.ListConsentRevisionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
      final arg_request = buildConsent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Consent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConsent(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkConsent(response as api.Consent);
    });

    unittest.test('method--reject', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
      final arg_request = buildRejectConsentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RejectConsentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRejectConsentRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reject(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkConsent(response as api.Consent);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.consentStores.consents;
      final arg_request = buildRevokeConsentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RevokeConsentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRevokeConsentRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildConsent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.revoke(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkConsent(response as api.Consent);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource',
    () {
      unittest.test('method--archive', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.userDataMappings;
        final arg_request = buildArchiveUserDataMappingRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.ArchiveUserDataMappingRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkArchiveUserDataMappingRequest(obj);

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
              unittest.equals('v1beta1/'),
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
              buildArchiveUserDataMappingResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.archive(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkArchiveUserDataMappingResponse(
          response as api.ArchiveUserDataMappingResponse,
        );
      });

      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.userDataMappings;
        final arg_request = buildUserDataMapping();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.UserDataMapping.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkUserDataMapping(obj);

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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildUserDataMapping());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkUserDataMapping(response as api.UserDataMapping);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.userDataMappings;
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
              unittest.equals('v1beta1/'),
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
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.userDataMappings;
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildUserDataMapping());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkUserDataMapping(response as api.UserDataMapping);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.userDataMappings;
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
              unittest.equals('v1beta1/'),
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
              buildListUserDataMappingsResponse(),
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
        checkListUserDataMappingsResponse(
          response as api.ListUserDataMappingsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.consentStores.userDataMappings;
        final arg_request = buildUserDataMapping();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.UserDataMapping.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkUserDataMapping(obj);

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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildUserDataMapping());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkUserDataMapping(response as api.UserDataMapping);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsDataMapperWorkspacesResource',
    () {
      unittest.test('method--getIamPolicy', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dataMapperWorkspaces;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
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
              core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
              unittest.equals(arg_options_requestedPolicyVersion),
            );
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
        final response = await res.getIamPolicy(
          arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields,
        );
        checkPolicy(response as api.Policy);
      });

      unittest.test('method--setIamPolicy', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dataMapperWorkspaces;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildPolicy());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.setIamPolicy(
          arg_request,
          arg_resource,
          $fields: arg_$fields,
        );
        checkPolicy(response as api.Policy);
      });

      unittest.test('method--testIamPermissions', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dataMapperWorkspaces;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
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
    },
  );

  unittest.group('resource-ProjectsLocationsDatasetsDicomStoresResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildDicomStore();
      final arg_parent = 'foo';
      final arg_dicomStoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DicomStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDicomStore(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['dicomStoreId']!.first,
            unittest.equals(arg_dicomStoreId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDicomStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        dicomStoreId: arg_dicomStoreId,
        $fields: arg_$fields,
      );
      checkDicomStore(response as api.DicomStore);
    });

    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildDeidentifyDicomStoreRequest();
      final arg_sourceStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeidentifyDicomStoreRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeidentifyDicomStoreRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.deidentify(
        arg_request,
        arg_sourceStore,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
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
            unittest.equals('v1beta1/'),
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildExportDicomDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportDicomDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportDicomDataRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildDicomStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDicomStore(response as api.DicomStore);
    });

    unittest.test('method--getDICOMStoreMetrics', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildDicomStoreMetrics());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDICOMStoreMetrics(
        arg_name,
        $fields: arg_$fields,
      );
      checkDicomStoreMetrics(response as api.DicomStoreMetrics);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
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
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildImportDicomDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportDicomDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportDicomDataRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.import(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListDicomStoresResponse());
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DicomStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDicomStore(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildDicomStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkDicomStore(response as api.DicomStore);
    });

    unittest.test('method--searchForInstances', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchForInstances(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForSeries', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchForSeries(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForStudies', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchForStudies(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--setBlobStorageSettings', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
      final arg_request = buildSetBlobStorageSettingsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetBlobStorageSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetBlobStorageSettingsRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.setBlobStorageSettings(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.storeInstances(
        arg_request,
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.dicomStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresDicomWebStudiesResource',
    () {
      unittest.test('method--getStudyMetrics', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.dicomWeb.studies;
        final arg_study = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildStudyMetrics());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getStudyMetrics(
          arg_study,
          $fields: arg_$fields,
        );
        checkStudyMetrics(response as api.StudyMetrics);
      });

      unittest.test('method--setBlobStorageSettings', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.dicomWeb.studies;
        final arg_request = buildSetBlobStorageSettingsRequest();
        final arg_resource = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.SetBlobStorageSettingsRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkSetBlobStorageSettingsRequest(obj);

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
              unittest.equals('v1beta1/'),
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
        final response = await res.setBlobStorageSettings(
          arg_request,
          arg_resource,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesResource',
    () {
      unittest.test('method--getSeriesMetrics', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.dicomWeb.studies.series;
        final arg_series = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildSeriesMetrics());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getSeriesMetrics(
          arg_series,
          $fields: arg_$fields,
        );
        checkSeriesMetrics(response as api.SeriesMetrics);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesResource',
    () {
      unittest.test('method--getStorageInfo', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(mock)
                .projects
                .locations
                .datasets
                .dicomStores
                .dicomWeb
                .studies
                .series
                .instances;
        final arg_resource = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildStorageInfo());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getStorageInfo(
          arg_resource,
          $fields: arg_$fields,
        );
        checkStorageInfo(response as api.StorageInfo);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDatasetsDicomStoresStudiesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.dicomStores.studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
      final response = await res.delete(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--retrieveMetadata', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.dicomStores.studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieveMetadata(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--retrieveStudy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.dicomStores.studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieveStudy(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForInstances', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.dicomStores.studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchForInstances(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchForSeries', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.dicomStores.studies;
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchForSeries(
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--storeInstances', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.dicomStores.studies;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_dicomWebPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.storeInstances(
        arg_request,
        arg_parent,
        arg_dicomWebPath,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource',
    () {
      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
        final response = await res.delete(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--retrieveMetadata', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveMetadata(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--retrieveSeries', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveSeries(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--searchForInstances', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.searchForInstances(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource',
    () {
      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series.instances;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
        final response = await res.delete(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkEmpty(response as api.Empty);
      });

      unittest.test('method--retrieveInstance', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series.instances;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveInstance(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--retrieveMetadata', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series.instances;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveMetadata(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--retrieveRendered', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.dicomStores.studies.series.instances;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
        final arg_viewport = 'foo';
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
              unittest.equals('v1beta1/'),
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
              queryMap['viewport']!.first,
              unittest.equals(arg_viewport),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveRendered(
          arg_parent,
          arg_dicomWebPath,
          viewport: arg_viewport,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataResource',
    () {
      unittest.test('method--retrieveBulkdata', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(mock)
                .projects
                .locations
                .datasets
                .dicomStores
                .studies
                .series
                .instances
                .bulkdata;
        final arg_parent = 'foo';
        final arg_dicomWebPath = 'foo';
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveBulkdata(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource',
    () {
      unittest.test('method--retrieveFrames', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(mock)
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveFrames(
          arg_parent,
          arg_dicomWebPath,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--retrieveRendered', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(mock)
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
        final arg_viewport = 'foo';
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
              unittest.equals('v1beta1/'),
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
              queryMap['viewport']!.first,
              unittest.equals(arg_viewport),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.retrieveRendered(
          arg_parent,
          arg_dicomWebPath,
          viewport: arg_viewport,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDatasetsFhirStoresResource', () {
    unittest.test('method--applyAdminConsents', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildApplyAdminConsentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ApplyAdminConsentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApplyAdminConsentsRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.applyAdminConsents(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--applyConsents', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildApplyConsentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ApplyConsentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApplyConsentsRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.applyConsents(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--bulkExportGroup', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_name = 'foo';
      final arg_P_since = 'foo';
      final arg_P_type = 'foo';
      final arg_organizeOutputBy = 'foo';
      final arg_outputFormat = 'foo';
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
            unittest.equals('v1beta1/'),
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
            queryMap['_since']!.first,
            unittest.equals(arg_P_since),
          );
          unittest.expect(
            queryMap['_type']!.first,
            unittest.equals(arg_P_type),
          );
          unittest.expect(
            queryMap['organizeOutputBy']!.first,
            unittest.equals(arg_organizeOutputBy),
          );
          unittest.expect(
            queryMap['outputFormat']!.first,
            unittest.equals(arg_outputFormat),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkExportGroup(
        arg_name,
        P_since: arg_P_since,
        P_type: arg_P_type,
        organizeOutputBy: arg_organizeOutputBy,
        outputFormat: arg_outputFormat,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--configureSearch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildConfigureSearchRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConfigureSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConfigureSearchRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.configureSearch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildFhirStore();
      final arg_parent = 'foo';
      final arg_fhirStoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FhirStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFhirStore(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['fhirStoreId']!.first,
            unittest.equals(arg_fhirStoreId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFhirStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        fhirStoreId: arg_fhirStoreId,
        $fields: arg_$fields,
      );
      checkFhirStore(response as api.FhirStore);
    });

    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildDeidentifyFhirStoreRequest();
      final arg_sourceStore = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeidentifyFhirStoreRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeidentifyFhirStoreRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.deidentify(
        arg_request,
        arg_sourceStore,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
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
            unittest.equals('v1beta1/'),
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

    unittest.test('method--explainDataAccess', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_name = 'foo';
      final arg_resourceId = 'foo';
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
            unittest.equals('v1beta1/'),
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
            queryMap['resourceId']!.first,
            unittest.equals(arg_resourceId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildExplainDataAccessResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.explainDataAccess(
        arg_name,
        resourceId: arg_resourceId,
        $fields: arg_$fields,
      );
      checkExplainDataAccessResponse(response as api.ExplainDataAccessResponse);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildExportResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportResourcesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--exportHistory', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildExportResourcesHistoryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportResourcesHistoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportResourcesHistoryRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.exportHistory(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildFhirStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFhirStore(response as api.FhirStore);
    });

    unittest.test('method--getFHIRStoreMetrics', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildFhirStoreMetrics());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getFHIRStoreMetrics(
        arg_name,
        $fields: arg_$fields,
      );
      checkFhirStoreMetrics(response as api.FhirStoreMetrics);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
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
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildImportResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportResourcesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.import(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--importHistory', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildImportResourcesHistoryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportResourcesHistoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportResourcesHistoryRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.importHistory(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListFhirStoresResponse());
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FhirStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFhirStore(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildFhirStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkFhirStore(response as api.FhirStore);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
      final arg_request = buildRollbackFhirResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackFhirResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollbackFhirResourcesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.rollback(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.fhirStores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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

  unittest.group('resource-ProjectsLocationsDatasetsFhirStoresFhirResource', () {
    unittest.test('method--BinaryCreate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.BinaryCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--BinaryRead', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.BinaryRead(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--BinaryUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.BinaryUpdate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--BinaryVread', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.BinaryVread(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ConceptMapSearchTranslate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_parent = 'foo';
      final arg_code = 'foo';
      final arg_conceptMapVersion = 'foo';
      final arg_source = 'foo';
      final arg_system = 'foo';
      final arg_target = 'foo';
      final arg_url = 'foo';
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['code']!.first, unittest.equals(arg_code));
          unittest.expect(
            queryMap['conceptMapVersion']!.first,
            unittest.equals(arg_conceptMapVersion),
          );
          unittest.expect(
            queryMap['source']!.first,
            unittest.equals(arg_source),
          );
          unittest.expect(
            queryMap['system']!.first,
            unittest.equals(arg_system),
          );
          unittest.expect(
            queryMap['target']!.first,
            unittest.equals(arg_target),
          );
          unittest.expect(queryMap['url']!.first, unittest.equals(arg_url));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ConceptMapSearchTranslate(
        arg_parent,
        code: arg_code,
        conceptMapVersion: arg_conceptMapVersion,
        source: arg_source,
        system: arg_system,
        target: arg_target,
        url: arg_url,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ConceptMapTranslate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_name = 'foo';
      final arg_code = 'foo';
      final arg_conceptMapVersion = 'foo';
      final arg_system = 'foo';
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['code']!.first, unittest.equals(arg_code));
          unittest.expect(
            queryMap['conceptMapVersion']!.first,
            unittest.equals(arg_conceptMapVersion),
          );
          unittest.expect(
            queryMap['system']!.first,
            unittest.equals(arg_system),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ConceptMapTranslate(
        arg_name,
        code: arg_code,
        conceptMapVersion: arg_conceptMapVersion,
        system: arg_system,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ConsentEnforcementStatus', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ConsentEnforcementStatus(
        arg_name,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--EncounterEverything', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_name = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
      final arg_P_since = 'foo';
      final arg_P_type = 'foo';
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
            unittest.equals('v1beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.EncounterEverything(
        arg_name,
        P_count: arg_P_count,
        P_pageToken: arg_P_pageToken,
        P_since: arg_P_since,
        P_type: arg_P_type,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ObservationLastn', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_parent = 'foo';
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ObservationLastn(
        arg_parent,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--PatientConsentEnforcementStatus', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_name = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
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
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['_count']!.first),
            unittest.equals(arg_P_count),
          );
          unittest.expect(
            queryMap['_page_token']!.first,
            unittest.equals(arg_P_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.PatientConsentEnforcementStatus(
        arg_name,
        P_count: arg_P_count,
        P_pageToken: arg_P_pageToken,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--PatientEverything', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_name = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
      final arg_P_since = 'foo';
      final arg_P_type = 'foo';
      final arg_end = 'foo';
      final arg_start = 'foo';
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['end']!.first, unittest.equals(arg_end));
          unittest.expect(queryMap['start']!.first, unittest.equals(arg_start));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.PatientEverything(
        arg_name,
        P_count: arg_P_count,
        P_pageToken: arg_P_pageToken,
        P_since: arg_P_since,
        P_type: arg_P_type,
        end: arg_end,
        start: arg_start,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ResourceIncomingReferences', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_parent = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
      final arg_P_summary = 'foo';
      final arg_P_type = 'foo';
      final arg_target = 'foo';
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
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['_count']!.first),
            unittest.equals(arg_P_count),
          );
          unittest.expect(
            queryMap['_page_token']!.first,
            unittest.equals(arg_P_pageToken),
          );
          unittest.expect(
            queryMap['_summary']!.first,
            unittest.equals(arg_P_summary),
          );
          unittest.expect(
            queryMap['_type']!.first,
            unittest.equals(arg_P_type),
          );
          unittest.expect(
            queryMap['target']!.first,
            unittest.equals(arg_target),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ResourceIncomingReferences(
        arg_parent,
        P_count: arg_P_count,
        P_pageToken: arg_P_pageToken,
        P_summary: arg_P_summary,
        P_type: arg_P_type,
        target: arg_target,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--ResourcePurge', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
      final response = await res.ResourcePurge(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--ResourceValidate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_type = 'foo';
      final arg_profile = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['profile']!.first,
            unittest.equals(arg_profile),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ResourceValidate(
        arg_request,
        arg_parent,
        arg_type,
        profile: arg_profile,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--bulkExport', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_name = 'foo';
      final arg_P_since = 'foo';
      final arg_P_type = 'foo';
      final arg_outputFormat = 'foo';
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
            unittest.equals('v1beta1/'),
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
            queryMap['_since']!.first,
            unittest.equals(arg_P_since),
          );
          unittest.expect(
            queryMap['_type']!.first,
            unittest.equals(arg_P_type),
          );
          unittest.expect(
            queryMap['outputFormat']!.first,
            unittest.equals(arg_outputFormat),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkExport(
        arg_name,
        P_since: arg_P_since,
        P_type: arg_P_type,
        outputFormat: arg_outputFormat,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--capabilities', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.capabilities(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--conditionalDelete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_parent = 'foo';
      final arg_type = 'foo';
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
            unittest.equals('v1beta1/'),
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
      final response = await res.conditionalDelete(
        arg_parent,
        arg_type,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--conditionalPatch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_type = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.conditionalPatch(
        arg_request,
        arg_parent,
        arg_type,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--conditionalUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_type = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.conditionalUpdate(
        arg_request,
        arg_parent,
        arg_type,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_type = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        arg_type,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--executeBundle', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeBundle(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--history', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_name = 'foo';
      final arg_P_at = 'foo';
      final arg_P_count = 42;
      final arg_P_pageToken = 'foo';
      final arg_P_since = 'foo';
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['_at']!.first, unittest.equals(arg_P_at));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.history(
        arg_name,
        P_at: arg_P_at,
        P_count: arg_P_count,
        P_pageToken: arg_P_pageToken,
        P_since: arg_P_since,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--read', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.read(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildSearchResourcesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SearchResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSearchResourcesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--searchType', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildSearchResourcesRequest();
      final arg_parent = 'foo';
      final arg_resourceType = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SearchResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSearchResourcesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchType(
        arg_request,
        arg_parent,
        arg_resourceType,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
      final arg_request = buildHttpBody();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--vread', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.fhirStores.fhir;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.vread(arg_name, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDatasetsFhirStoresOperationsResource',
    () {
      unittest.test('method--deleteFhirOperation', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.fhirStores.operations;
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.deleteFhirOperation(
          arg_name,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--getFhirOperationStatus', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudHealthcareApi(
              mock,
            ).projects.locations.datasets.fhirStores.operations;
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
              unittest.equals('v1beta1/'),
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getFhirOperationStatus(
          arg_name,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDatasetsHl7V2StoresResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildHl7V2Store();
      final arg_parent = 'foo';
      final arg_hl7V2StoreId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Hl7V2Store.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHl7V2Store(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['hl7V2StoreId']!.first,
            unittest.equals(arg_hl7V2StoreId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHl7V2Store());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        hl7V2StoreId: arg_hl7V2StoreId,
        $fields: arg_$fields,
      );
      checkHl7V2Store(response as api.Hl7V2Store);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
            unittest.equals('v1beta1/'),
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildExportMessagesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportMessagesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHl7V2Store());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkHl7V2Store(response as api.Hl7V2Store);
    });

    unittest.test('method--getHL7v2StoreMetrics', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHl7V2StoreMetrics());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getHL7v2StoreMetrics(
        arg_name,
        $fields: arg_$fields,
      );
      checkHl7V2StoreMetrics(response as api.Hl7V2StoreMetrics);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
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
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildImportMessagesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportMessagesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.import(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListHl7V2StoresResponse());
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Hl7V2Store.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHl7V2Store(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildHl7V2Store());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkHl7V2Store(response as api.Hl7V2Store);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      final arg_request = buildRollbackHl7V2MessagesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackHl7V2MessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollbackHl7V2MessagesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
      final response = await res.rollback(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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

  unittest.group('resource-ProjectsLocationsDatasetsHl7V2StoresMessagesResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
      final arg_parent = 'foo';
      final arg_ids = buildUnnamed109();
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['ids']!, unittest.equals(arg_ids));
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBatchGetMessagesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchGet(
        arg_parent,
        ids: arg_ids,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkBatchGetMessagesResponse(response as api.BatchGetMessagesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
      final arg_request = buildCreateMessageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateMessageRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildMessage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkMessage(response as api.Message);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
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
            unittest.equals('v1beta1/'),
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
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
      final arg_name = 'foo';
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMessage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkMessage(response as api.Message);
    });

    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
      final arg_request = buildIngestMessageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IngestMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIngestMessageRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildIngestMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ingest(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkIngestMessageResponse(response as api.IngestMessageResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            unittest.equals('v1beta1/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListMessagesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListMessagesResponse(response as api.ListMessagesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(
            mock,
          ).projects.locations.datasets.hl7V2Stores.messages;
      final arg_request = buildMessage();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Message.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMessage(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildMessage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
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
            unittest.equals('v1beta1/'),
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.operations;
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
            unittest.equals('v1beta1/'),
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
      final res =
          api.CloudHealthcareApi(mock).projects.locations.datasets.operations;
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
            unittest.equals('v1beta1/'),
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
  });

  unittest.group('resource-ProjectsLocationsServicesNlpResource', () {
    unittest.test('method--analyzeEntities', () async {
      final mock = HttpServerMock();
      final res = api.CloudHealthcareApi(mock).projects.locations.services.nlp;
      final arg_request = buildAnalyzeEntitiesRequest();
      final arg_nlpService = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnalyzeEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnalyzeEntitiesRequest(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildAnalyzeEntitiesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.analyzeEntities(
        arg_request,
        arg_nlpService,
        $fields: arg_$fields,
      );
      checkAnalyzeEntitiesResponse(response as api.AnalyzeEntitiesResponse);
    });
  });
}
