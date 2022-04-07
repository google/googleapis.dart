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

import 'package:googleapis/containeranalysis/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAliasContext = 0;
api.AliasContext buildAliasContext() {
  final o = api.AliasContext();
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterAliasContext--;
  return o;
}

void checkAliasContext(api.AliasContext o) {
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAliasContext--;
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

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  final o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.checksum = 'foo';
    o.id = 'foo';
    o.names = buildUnnamed0();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(
      o.checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.names!);
  }
  buildCounterArtifact--;
}

core.int buildCounterAttestationNote = 0;
api.AttestationNote buildAttestationNote() {
  final o = api.AttestationNote();
  buildCounterAttestationNote++;
  if (buildCounterAttestationNote < 3) {
    o.hint = buildHint();
  }
  buildCounterAttestationNote--;
  return o;
}

void checkAttestationNote(api.AttestationNote o) {
  buildCounterAttestationNote++;
  if (buildCounterAttestationNote < 3) {
    checkHint(o.hint!);
  }
  buildCounterAttestationNote--;
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

core.Map<core.String, api.Note> buildUnnamed3() => {
      'x': buildNote(),
      'y': buildNote(),
    };

void checkUnnamed3(core.Map<core.String, api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o['x']!);
  checkNote(o['y']!);
}

core.int buildCounterBatchCreateNotesRequest = 0;
api.BatchCreateNotesRequest buildBatchCreateNotesRequest() {
  final o = api.BatchCreateNotesRequest();
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    o.notes = buildUnnamed3();
  }
  buildCounterBatchCreateNotesRequest--;
  return o;
}

void checkBatchCreateNotesRequest(api.BatchCreateNotesRequest o) {
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    checkUnnamed3(o.notes!);
  }
  buildCounterBatchCreateNotesRequest--;
}

core.List<api.Note> buildUnnamed4() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed4(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterBatchCreateNotesResponse = 0;
api.BatchCreateNotesResponse buildBatchCreateNotesResponse() {
  final o = api.BatchCreateNotesResponse();
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    o.notes = buildUnnamed4();
  }
  buildCounterBatchCreateNotesResponse--;
  return o;
}

void checkBatchCreateNotesResponse(api.BatchCreateNotesResponse o) {
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    checkUnnamed4(o.notes!);
  }
  buildCounterBatchCreateNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed5() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed5(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesRequest = 0;
api.BatchCreateOccurrencesRequest buildBatchCreateOccurrencesRequest() {
  final o = api.BatchCreateOccurrencesRequest();
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    o.occurrences = buildUnnamed5();
  }
  buildCounterBatchCreateOccurrencesRequest--;
  return o;
}

void checkBatchCreateOccurrencesRequest(api.BatchCreateOccurrencesRequest o) {
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    checkUnnamed5(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesRequest--;
}

core.List<api.Occurrence> buildUnnamed6() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed6(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesResponse = 0;
api.BatchCreateOccurrencesResponse buildBatchCreateOccurrencesResponse() {
  final o = api.BatchCreateOccurrencesResponse();
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    o.occurrences = buildUnnamed6();
  }
  buildCounterBatchCreateOccurrencesResponse--;
  return o;
}

void checkBatchCreateOccurrencesResponse(api.BatchCreateOccurrencesResponse o) {
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    checkUnnamed6(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesResponse--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed7(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterBuildNote = 0;
api.BuildNote buildBuildNote() {
  final o = api.BuildNote();
  buildCounterBuildNote++;
  if (buildCounterBuildNote < 3) {
    o.builderVersion = 'foo';
  }
  buildCounterBuildNote--;
  return o;
}

void checkBuildNote(api.BuildNote o) {
  buildCounterBuildNote++;
  if (buildCounterBuildNote < 3) {
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildNote--;
}

core.int buildCounterBuildOccurrence = 0;
api.BuildOccurrence buildBuildOccurrence() {
  final o = api.BuildOccurrence();
  buildCounterBuildOccurrence++;
  if (buildCounterBuildOccurrence < 3) {
    o.intotoProvenance = buildInTotoProvenance();
    o.intotoStatement = buildInTotoStatement();
    o.provenance = buildBuildProvenance();
    o.provenanceBytes = 'foo';
  }
  buildCounterBuildOccurrence--;
  return o;
}

void checkBuildOccurrence(api.BuildOccurrence o) {
  buildCounterBuildOccurrence++;
  if (buildCounterBuildOccurrence < 3) {
    checkInTotoProvenance(o.intotoProvenance!);
    checkInTotoStatement(o.intotoStatement!);
    checkBuildProvenance(o.provenance!);
    unittest.expect(
      o.provenanceBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildOccurrence--;
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

core.List<api.Artifact> buildUnnamed9() => [
      buildArtifact(),
      buildArtifact(),
    ];

void checkUnnamed9(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Command> buildUnnamed10() => [
      buildCommand(),
      buildCommand(),
    ];

void checkUnnamed10(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  final o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed8();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed9();
    o.commands = buildUnnamed10();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.endTime = 'foo';
    o.id = 'foo';
    o.logsUri = 'foo';
    o.projectId = 'foo';
    o.sourceProvenance = buildSource();
    o.startTime = 'foo';
    o.triggerId = 'foo';
  }
  buildCounterBuildProvenance--;
  return o;
}

void checkBuildProvenance(api.BuildProvenance o) {
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    checkUnnamed8(o.buildOptions!);
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.builtArtifacts!);
    checkUnnamed10(o.commands!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkSource(o.sourceProvenance!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildProvenance--;
}

core.int buildCounterBuilderConfig = 0;
api.BuilderConfig buildBuilderConfig() {
  final o = api.BuilderConfig();
  buildCounterBuilderConfig++;
  if (buildCounterBuilderConfig < 3) {
    o.id = 'foo';
  }
  buildCounterBuilderConfig--;
  return o;
}

void checkBuilderConfig(api.BuilderConfig o) {
  buildCounterBuilderConfig++;
  if (buildCounterBuilderConfig < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuilderConfig--;
}

core.int buildCounterCVSS = 0;
api.CVSS buildCVSS() {
  final o = api.CVSS();
  buildCounterCVSS++;
  if (buildCounterCVSS < 3) {
    o.attackComplexity = 'foo';
    o.attackVector = 'foo';
    o.authentication = 'foo';
    o.availabilityImpact = 'foo';
    o.baseScore = 42.0;
    o.confidentialityImpact = 'foo';
    o.exploitabilityScore = 42.0;
    o.impactScore = 42.0;
    o.integrityImpact = 'foo';
    o.privilegesRequired = 'foo';
    o.scope = 'foo';
    o.userInteraction = 'foo';
  }
  buildCounterCVSS--;
  return o;
}

void checkCVSS(api.CVSS o) {
  buildCounterCVSS++;
  if (buildCounterCVSS < 3) {
    unittest.expect(
      o.attackComplexity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attackVector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authentication!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.confidentialityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exploitabilityScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impactScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integrityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privilegesRequired!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInteraction!,
      unittest.equals('foo'),
    );
  }
  buildCounterCVSS--;
}

core.int buildCounterCVSSv3 = 0;
api.CVSSv3 buildCVSSv3() {
  final o = api.CVSSv3();
  buildCounterCVSSv3++;
  if (buildCounterCVSSv3 < 3) {
    o.attackComplexity = 'foo';
    o.attackVector = 'foo';
    o.availabilityImpact = 'foo';
    o.baseScore = 42.0;
    o.confidentialityImpact = 'foo';
    o.exploitabilityScore = 42.0;
    o.impactScore = 42.0;
    o.integrityImpact = 'foo';
    o.privilegesRequired = 'foo';
    o.scope = 'foo';
    o.userInteraction = 'foo';
  }
  buildCounterCVSSv3--;
  return o;
}

void checkCVSSv3(api.CVSSv3 o) {
  buildCounterCVSSv3++;
  if (buildCounterCVSSv3 < 3) {
    unittest.expect(
      o.attackComplexity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attackVector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.confidentialityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exploitabilityScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impactScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integrityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privilegesRequired!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInteraction!,
      unittest.equals('foo'),
    );
  }
  buildCounterCVSSv3--;
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  final o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.categoryId = 'foo';
    o.name = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(
      o.categoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategory--;
}

core.int buildCounterCisBenchmark = 0;
api.CisBenchmark buildCisBenchmark() {
  final o = api.CisBenchmark();
  buildCounterCisBenchmark++;
  if (buildCounterCisBenchmark < 3) {
    o.profileLevel = 42;
    o.severity = 'foo';
  }
  buildCounterCisBenchmark--;
  return o;
}

void checkCisBenchmark(api.CisBenchmark o) {
  buildCounterCisBenchmark++;
  if (buildCounterCisBenchmark < 3) {
    unittest.expect(
      o.profileLevel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterCisBenchmark--;
}

core.int buildCounterCloudRepoSourceContext = 0;
api.CloudRepoSourceContext buildCloudRepoSourceContext() {
  final o = api.CloudRepoSourceContext();
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.repoId = buildRepoId();
    o.revisionId = 'foo';
  }
  buildCounterCloudRepoSourceContext--;
  return o;
}

void checkCloudRepoSourceContext(api.CloudRepoSourceContext o) {
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    checkAliasContext(o.aliasContext!);
    checkRepoId(o.repoId!);
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRepoSourceContext--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed11();
    o.dir = 'foo';
    o.env = buildUnnamed12();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed13();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed11(o.args!);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.env!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.waitFor!);
  }
  buildCounterCommand--;
}

core.int buildCounterCompleteness = 0;
api.Completeness buildCompleteness() {
  final o = api.Completeness();
  buildCounterCompleteness++;
  if (buildCounterCompleteness < 3) {
    o.arguments = true;
    o.environment = true;
    o.materials = true;
  }
  buildCounterCompleteness--;
  return o;
}

void checkCompleteness(api.Completeness o) {
  buildCounterCompleteness++;
  if (buildCounterCompleteness < 3) {
    unittest.expect(o.arguments!, unittest.isTrue);
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
  }
  buildCounterCompleteness--;
}

core.List<api.ComplianceVersion> buildUnnamed14() => [
      buildComplianceVersion(),
      buildComplianceVersion(),
    ];

void checkUnnamed14(core.List<api.ComplianceVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceVersion(o[0]);
  checkComplianceVersion(o[1]);
}

core.int buildCounterComplianceNote = 0;
api.ComplianceNote buildComplianceNote() {
  final o = api.ComplianceNote();
  buildCounterComplianceNote++;
  if (buildCounterComplianceNote < 3) {
    o.cisBenchmark = buildCisBenchmark();
    o.description = 'foo';
    o.rationale = 'foo';
    o.remediation = 'foo';
    o.scanInstructions = 'foo';
    o.title = 'foo';
    o.version = buildUnnamed14();
  }
  buildCounterComplianceNote--;
  return o;
}

void checkComplianceNote(api.ComplianceNote o) {
  buildCounterComplianceNote++;
  if (buildCounterComplianceNote < 3) {
    checkCisBenchmark(o.cisBenchmark!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rationale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remediation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scanInstructions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.version!);
  }
  buildCounterComplianceNote--;
}

core.List<api.NonCompliantFile> buildUnnamed15() => [
      buildNonCompliantFile(),
      buildNonCompliantFile(),
    ];

void checkUnnamed15(core.List<api.NonCompliantFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonCompliantFile(o[0]);
  checkNonCompliantFile(o[1]);
}

core.int buildCounterComplianceOccurrence = 0;
api.ComplianceOccurrence buildComplianceOccurrence() {
  final o = api.ComplianceOccurrence();
  buildCounterComplianceOccurrence++;
  if (buildCounterComplianceOccurrence < 3) {
    o.nonComplianceReason = 'foo';
    o.nonCompliantFiles = buildUnnamed15();
  }
  buildCounterComplianceOccurrence--;
  return o;
}

void checkComplianceOccurrence(api.ComplianceOccurrence o) {
  buildCounterComplianceOccurrence++;
  if (buildCounterComplianceOccurrence < 3) {
    unittest.expect(
      o.nonComplianceReason!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.nonCompliantFiles!);
  }
  buildCounterComplianceOccurrence--;
}

core.int buildCounterComplianceVersion = 0;
api.ComplianceVersion buildComplianceVersion() {
  final o = api.ComplianceVersion();
  buildCounterComplianceVersion++;
  if (buildCounterComplianceVersion < 3) {
    o.benchmarkDocument = 'foo';
    o.cpeUri = 'foo';
    o.version = 'foo';
  }
  buildCounterComplianceVersion--;
  return o;
}

void checkComplianceVersion(api.ComplianceVersion o) {
  buildCounterComplianceVersion++;
  if (buildCounterComplianceVersion < 3) {
    unittest.expect(
      o.benchmarkDocument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterComplianceVersion--;
}

core.int buildCounterDSSEAttestationNote = 0;
api.DSSEAttestationNote buildDSSEAttestationNote() {
  final o = api.DSSEAttestationNote();
  buildCounterDSSEAttestationNote++;
  if (buildCounterDSSEAttestationNote < 3) {
    o.hint = buildDSSEHint();
  }
  buildCounterDSSEAttestationNote--;
  return o;
}

void checkDSSEAttestationNote(api.DSSEAttestationNote o) {
  buildCounterDSSEAttestationNote++;
  if (buildCounterDSSEAttestationNote < 3) {
    checkDSSEHint(o.hint!);
  }
  buildCounterDSSEAttestationNote--;
}

core.int buildCounterDSSEAttestationOccurrence = 0;
api.DSSEAttestationOccurrence buildDSSEAttestationOccurrence() {
  final o = api.DSSEAttestationOccurrence();
  buildCounterDSSEAttestationOccurrence++;
  if (buildCounterDSSEAttestationOccurrence < 3) {
    o.envelope = buildEnvelope();
    o.statement = buildInTotoStatement();
  }
  buildCounterDSSEAttestationOccurrence--;
  return o;
}

void checkDSSEAttestationOccurrence(api.DSSEAttestationOccurrence o) {
  buildCounterDSSEAttestationOccurrence++;
  if (buildCounterDSSEAttestationOccurrence < 3) {
    checkEnvelope(o.envelope!);
    checkInTotoStatement(o.statement!);
  }
  buildCounterDSSEAttestationOccurrence--;
}

core.int buildCounterDSSEHint = 0;
api.DSSEHint buildDSSEHint() {
  final o = api.DSSEHint();
  buildCounterDSSEHint++;
  if (buildCounterDSSEHint < 3) {
    o.humanReadableName = 'foo';
  }
  buildCounterDSSEHint--;
  return o;
}

void checkDSSEHint(api.DSSEHint o) {
  buildCounterDSSEHint++;
  if (buildCounterDSSEHint < 3) {
    unittest.expect(
      o.humanReadableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDSSEHint--;
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

core.int buildCounterDeploymentNote = 0;
api.DeploymentNote buildDeploymentNote() {
  final o = api.DeploymentNote();
  buildCounterDeploymentNote++;
  if (buildCounterDeploymentNote < 3) {
    o.resourceUri = buildUnnamed16();
  }
  buildCounterDeploymentNote--;
  return o;
}

void checkDeploymentNote(api.DeploymentNote o) {
  buildCounterDeploymentNote++;
  if (buildCounterDeploymentNote < 3) {
    checkUnnamed16(o.resourceUri!);
  }
  buildCounterDeploymentNote--;
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

core.int buildCounterDeploymentOccurrence = 0;
api.DeploymentOccurrence buildDeploymentOccurrence() {
  final o = api.DeploymentOccurrence();
  buildCounterDeploymentOccurrence++;
  if (buildCounterDeploymentOccurrence < 3) {
    o.address = 'foo';
    o.config = 'foo';
    o.deployTime = 'foo';
    o.platform = 'foo';
    o.resourceUri = buildUnnamed17();
    o.undeployTime = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeploymentOccurrence--;
  return o;
}

void checkDeploymentOccurrence(api.DeploymentOccurrence o) {
  buildCounterDeploymentOccurrence++;
  if (buildCounterDeploymentOccurrence < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.resourceUri!);
    unittest.expect(
      o.undeployTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentOccurrence--;
}

core.int buildCounterDetail = 0;
api.Detail buildDetail() {
  final o = api.Detail();
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    o.affectedCpeUri = 'foo';
    o.affectedPackage = 'foo';
    o.affectedVersionEnd = buildVersion();
    o.affectedVersionStart = buildVersion();
    o.description = 'foo';
    o.fixedCpeUri = 'foo';
    o.fixedPackage = 'foo';
    o.fixedVersion = buildVersion();
    o.isObsolete = true;
    o.packageType = 'foo';
    o.severityName = 'foo';
    o.source = 'foo';
    o.sourceUpdateTime = 'foo';
    o.vendor = 'foo';
  }
  buildCounterDetail--;
  return o;
}

void checkDetail(api.Detail o) {
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    unittest.expect(
      o.affectedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.affectedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.affectedVersionEnd!);
    checkVersion(o.affectedVersionStart!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.fixedVersion!);
    unittest.expect(o.isObsolete!, unittest.isTrue);
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severityName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetail--;
}

core.int buildCounterDiscoveryNote = 0;
api.DiscoveryNote buildDiscoveryNote() {
  final o = api.DiscoveryNote();
  buildCounterDiscoveryNote++;
  if (buildCounterDiscoveryNote < 3) {
    o.analysisKind = 'foo';
  }
  buildCounterDiscoveryNote--;
  return o;
}

void checkDiscoveryNote(api.DiscoveryNote o) {
  buildCounterDiscoveryNote++;
  if (buildCounterDiscoveryNote < 3) {
    unittest.expect(
      o.analysisKind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiscoveryNote--;
}

core.int buildCounterDiscoveryOccurrence = 0;
api.DiscoveryOccurrence buildDiscoveryOccurrence() {
  final o = api.DiscoveryOccurrence();
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
    o.archiveTime = 'foo';
    o.continuousAnalysis = 'foo';
    o.cpe = 'foo';
    o.lastScanTime = 'foo';
  }
  buildCounterDiscoveryOccurrence--;
  return o;
}

void checkDiscoveryOccurrence(api.DiscoveryOccurrence o) {
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    unittest.expect(
      o.analysisStatus!,
      unittest.equals('foo'),
    );
    checkStatus(o.analysisStatusError!);
    unittest.expect(
      o.archiveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.continuousAnalysis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpe!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastScanTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiscoveryOccurrence--;
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  final o = api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.latestVersion = buildVersion();
    o.maintainer = 'foo';
    o.url = 'foo';
  }
  buildCounterDistribution--;
  return o;
}

void checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkVersion(o.latestVersion!);
    unittest.expect(
      o.maintainer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDistribution--;
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

core.List<api.EnvelopeSignature> buildUnnamed18() => [
      buildEnvelopeSignature(),
      buildEnvelopeSignature(),
    ];

void checkUnnamed18(core.List<api.EnvelopeSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvelopeSignature(o[0]);
  checkEnvelopeSignature(o[1]);
}

core.int buildCounterEnvelope = 0;
api.Envelope buildEnvelope() {
  final o = api.Envelope();
  buildCounterEnvelope++;
  if (buildCounterEnvelope < 3) {
    o.payload = 'foo';
    o.payloadType = 'foo';
    o.signatures = buildUnnamed18();
  }
  buildCounterEnvelope--;
  return o;
}

void checkEnvelope(api.Envelope o) {
  buildCounterEnvelope++;
  if (buildCounterEnvelope < 3) {
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payloadType!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.signatures!);
  }
  buildCounterEnvelope--;
}

core.int buildCounterEnvelopeSignature = 0;
api.EnvelopeSignature buildEnvelopeSignature() {
  final o = api.EnvelopeSignature();
  buildCounterEnvelopeSignature++;
  if (buildCounterEnvelopeSignature < 3) {
    o.keyid = 'foo';
    o.sig = 'foo';
  }
  buildCounterEnvelopeSignature--;
  return o;
}

void checkEnvelopeSignature(api.EnvelopeSignature o) {
  buildCounterEnvelopeSignature++;
  if (buildCounterEnvelopeSignature < 3) {
    unittest.expect(
      o.keyid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sig!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvelopeSignature--;
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

core.List<api.Hash> buildUnnamed19() => [
      buildHash(),
      buildHash(),
    ];

void checkUnnamed19(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed19();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed19(o.fileHash!);
  }
  buildCounterFileHashes--;
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

core.int buildCounterFingerprint = 0;
api.Fingerprint buildFingerprint() {
  final o = api.Fingerprint();
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    o.v1Name = 'foo';
    o.v2Blob = buildUnnamed20();
    o.v2Name = 'foo';
  }
  buildCounterFingerprint--;
  return o;
}

void checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(
      o.v1Name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.v2Blob!);
    unittest.expect(
      o.v2Name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFingerprint--;
}

core.int buildCounterFixableTotalByDigest = 0;
api.FixableTotalByDigest buildFixableTotalByDigest() {
  final o = api.FixableTotalByDigest();
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    o.fixableCount = 'foo';
    o.resourceUri = 'foo';
    o.severity = 'foo';
    o.totalCount = 'foo';
  }
  buildCounterFixableTotalByDigest--;
  return o;
}

void checkFixableTotalByDigest(api.FixableTotalByDigest o) {
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    unittest.expect(
      o.fixableCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterFixableTotalByDigest--;
}

core.int buildCounterGerritSourceContext = 0;
api.GerritSourceContext buildGerritSourceContext() {
  final o = api.GerritSourceContext();
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.gerritProject = 'foo';
    o.hostUri = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterGerritSourceContext--;
  return o;
}

void checkGerritSourceContext(api.GerritSourceContext o) {
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    checkAliasContext(o.aliasContext!);
    unittest.expect(
      o.gerritProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGerritSourceContext--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGitSourceContext = 0;
api.GitSourceContext buildGitSourceContext() {
  final o = api.GitSourceContext();
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    o.revisionId = 'foo';
    o.url = 'foo';
  }
  buildCounterGitSourceContext--;
  return o;
}

void checkGitSourceContext(api.GitSourceContext o) {
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitSourceContext--;
}

core.int buildCounterHash = 0;
api.Hash buildHash() {
  final o = api.Hash();
  buildCounterHash++;
  if (buildCounterHash < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterHash--;
  return o;
}

void checkHash(api.Hash o) {
  buildCounterHash++;
  if (buildCounterHash < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHash--;
}

core.int buildCounterHint = 0;
api.Hint buildHint() {
  final o = api.Hint();
  buildCounterHint++;
  if (buildCounterHint < 3) {
    o.humanReadableName = 'foo';
  }
  buildCounterHint--;
  return o;
}

void checkHint(api.Hint o) {
  buildCounterHint++;
  if (buildCounterHint < 3) {
    unittest.expect(
      o.humanReadableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterHint--;
}

core.int buildCounterIdentity = 0;
api.Identity buildIdentity() {
  final o = api.Identity();
  buildCounterIdentity++;
  if (buildCounterIdentity < 3) {
    o.revision = 42;
    o.updateId = 'foo';
  }
  buildCounterIdentity--;
  return o;
}

void checkIdentity(api.Identity o) {
  buildCounterIdentity++;
  if (buildCounterIdentity < 3) {
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentity--;
}

core.int buildCounterImageNote = 0;
api.ImageNote buildImageNote() {
  final o = api.ImageNote();
  buildCounterImageNote++;
  if (buildCounterImageNote < 3) {
    o.fingerprint = buildFingerprint();
    o.resourceUrl = 'foo';
  }
  buildCounterImageNote--;
  return o;
}

void checkImageNote(api.ImageNote o) {
  buildCounterImageNote++;
  if (buildCounterImageNote < 3) {
    checkFingerprint(o.fingerprint!);
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageNote--;
}

core.List<api.Layer> buildUnnamed21() => [
      buildLayer(),
      buildLayer(),
    ];

void checkUnnamed21(core.List<api.Layer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayer(o[0]);
  checkLayer(o[1]);
}

core.int buildCounterImageOccurrence = 0;
api.ImageOccurrence buildImageOccurrence() {
  final o = api.ImageOccurrence();
  buildCounterImageOccurrence++;
  if (buildCounterImageOccurrence < 3) {
    o.baseResourceUrl = 'foo';
    o.distance = 42;
    o.fingerprint = buildFingerprint();
    o.layerInfo = buildUnnamed21();
  }
  buildCounterImageOccurrence--;
  return o;
}

void checkImageOccurrence(api.ImageOccurrence o) {
  buildCounterImageOccurrence++;
  if (buildCounterImageOccurrence < 3) {
    unittest.expect(
      o.baseResourceUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distance!,
      unittest.equals(42),
    );
    checkFingerprint(o.fingerprint!);
    checkUnnamed21(o.layerInfo!);
  }
  buildCounterImageOccurrence--;
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

core.int buildCounterInTotoProvenance = 0;
api.InTotoProvenance buildInTotoProvenance() {
  final o = api.InTotoProvenance();
  buildCounterInTotoProvenance++;
  if (buildCounterInTotoProvenance < 3) {
    o.builderConfig = buildBuilderConfig();
    o.materials = buildUnnamed22();
    o.metadata = buildMetadata();
    o.recipe = buildRecipe();
  }
  buildCounterInTotoProvenance--;
  return o;
}

void checkInTotoProvenance(api.InTotoProvenance o) {
  buildCounterInTotoProvenance++;
  if (buildCounterInTotoProvenance < 3) {
    checkBuilderConfig(o.builderConfig!);
    checkUnnamed22(o.materials!);
    checkMetadata(o.metadata!);
    checkRecipe(o.recipe!);
  }
  buildCounterInTotoProvenance--;
}

core.List<api.Subject> buildUnnamed23() => [
      buildSubject(),
      buildSubject(),
    ];

void checkUnnamed23(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterInTotoStatement = 0;
api.InTotoStatement buildInTotoStatement() {
  final o = api.InTotoStatement();
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    o.P_type = 'foo';
    o.predicateType = 'foo';
    o.provenance = buildInTotoProvenance();
    o.slsaProvenance = buildSlsaProvenance();
    o.subject = buildUnnamed23();
  }
  buildCounterInTotoStatement--;
  return o;
}

void checkInTotoStatement(api.InTotoStatement o) {
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    unittest.expect(
      o.P_type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predicateType!,
      unittest.equals('foo'),
    );
    checkInTotoProvenance(o.provenance!);
    checkSlsaProvenance(o.slsaProvenance!);
    checkUnnamed23(o.subject!);
  }
  buildCounterInTotoStatement--;
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

core.int buildCounterKnowledgeBase = 0;
api.KnowledgeBase buildKnowledgeBase() {
  final o = api.KnowledgeBase();
  buildCounterKnowledgeBase++;
  if (buildCounterKnowledgeBase < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterKnowledgeBase--;
  return o;
}

void checkKnowledgeBase(api.KnowledgeBase o) {
  buildCounterKnowledgeBase++;
  if (buildCounterKnowledgeBase < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterKnowledgeBase--;
}

core.int buildCounterLayer = 0;
api.Layer buildLayer() {
  final o = api.Layer();
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    o.arguments = 'foo';
    o.directive = 'foo';
  }
  buildCounterLayer--;
  return o;
}

void checkLayer(api.Layer o) {
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    unittest.expect(
      o.arguments!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directive!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayer--;
}

core.List<api.Occurrence> buildUnnamed24() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed24(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListNoteOccurrencesResponse = 0;
api.ListNoteOccurrencesResponse buildListNoteOccurrencesResponse() {
  final o = api.ListNoteOccurrencesResponse();
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed24();
  }
  buildCounterListNoteOccurrencesResponse--;
  return o;
}

void checkListNoteOccurrencesResponse(api.ListNoteOccurrencesResponse o) {
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.occurrences!);
  }
  buildCounterListNoteOccurrencesResponse--;
}

core.List<api.Note> buildUnnamed25() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed25(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterListNotesResponse = 0;
api.ListNotesResponse buildListNotesResponse() {
  final o = api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed25();
  }
  buildCounterListNotesResponse--;
  return o;
}

void checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.notes!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed26() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed26(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListOccurrencesResponse = 0;
api.ListOccurrencesResponse buildListOccurrencesResponse() {
  final o = api.ListOccurrencesResponse();
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed26();
  }
  buildCounterListOccurrencesResponse--;
  return o;
}

void checkListOccurrencesResponse(api.ListOccurrencesResponse o) {
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.occurrences!);
  }
  buildCounterListOccurrencesResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.cpeUri = 'foo';
    o.path = 'foo';
    o.version = buildVersion();
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkVersion(o.version!);
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed27() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed27(core.Map<core.String, core.String> o) {
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

core.int buildCounterMaterial = 0;
api.Material buildMaterial() {
  final o = api.Material();
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    o.digest = buildUnnamed27();
    o.uri = 'foo';
  }
  buildCounterMaterial--;
  return o;
}

void checkMaterial(api.Material o) {
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    checkUnnamed27(o.digest!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaterial--;
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness = buildCompleteness();
    o.reproducible = true;
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(
      o.buildFinishedOn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildInvocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildStartedOn!,
      unittest.equals('foo'),
    );
    checkCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterMetadata--;
}

core.int buildCounterNonCompliantFile = 0;
api.NonCompliantFile buildNonCompliantFile() {
  final o = api.NonCompliantFile();
  buildCounterNonCompliantFile++;
  if (buildCounterNonCompliantFile < 3) {
    o.displayCommand = 'foo';
    o.path = 'foo';
    o.reason = 'foo';
  }
  buildCounterNonCompliantFile--;
  return o;
}

void checkNonCompliantFile(api.NonCompliantFile o) {
  buildCounterNonCompliantFile++;
  if (buildCounterNonCompliantFile < 3) {
    unittest.expect(
      o.displayCommand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonCompliantFile--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<api.RelatedUrl> buildUnnamed29() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed29(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attestation = buildAttestationNote();
    o.build = buildBuildNote();
    o.compliance = buildComplianceNote();
    o.createTime = 'foo';
    o.deployment = buildDeploymentNote();
    o.discovery = buildDiscoveryNote();
    o.dsseAttestation = buildDSSEAttestationNote();
    o.expirationTime = 'foo';
    o.image = buildImageNote();
    o.kind = 'foo';
    o.longDescription = 'foo';
    o.name = 'foo';
    o.package = buildPackageNote();
    o.relatedNoteNames = buildUnnamed28();
    o.relatedUrl = buildUnnamed29();
    o.shortDescription = 'foo';
    o.updateTime = 'foo';
    o.upgrade = buildUpgradeNote();
    o.vulnerability = buildVulnerabilityNote();
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkAttestationNote(o.attestation!);
    checkBuildNote(o.build!);
    checkComplianceNote(o.compliance!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeploymentNote(o.deployment!);
    checkDiscoveryNote(o.discovery!);
    checkDSSEAttestationNote(o.dsseAttestation!);
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkImageNote(o.image!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPackageNote(o.package!);
    checkUnnamed28(o.relatedNoteNames!);
    checkUnnamed29(o.relatedUrl!);
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUpgradeNote(o.upgrade!);
    checkVulnerabilityNote(o.vulnerability!);
  }
  buildCounterNote--;
}

core.int buildCounterOccurrence = 0;
api.Occurrence buildOccurrence() {
  final o = api.Occurrence();
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    o.attestation = buildAttestationOccurrence();
    o.build = buildBuildOccurrence();
    o.compliance = buildComplianceOccurrence();
    o.createTime = 'foo';
    o.deployment = buildDeploymentOccurrence();
    o.discovery = buildDiscoveryOccurrence();
    o.dsseAttestation = buildDSSEAttestationOccurrence();
    o.envelope = buildEnvelope();
    o.image = buildImageOccurrence();
    o.kind = 'foo';
    o.name = 'foo';
    o.noteName = 'foo';
    o.package = buildPackageOccurrence();
    o.remediation = 'foo';
    o.resourceUri = 'foo';
    o.updateTime = 'foo';
    o.upgrade = buildUpgradeOccurrence();
    o.vulnerability = buildVulnerabilityOccurrence();
  }
  buildCounterOccurrence--;
  return o;
}

void checkOccurrence(api.Occurrence o) {
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    checkAttestationOccurrence(o.attestation!);
    checkBuildOccurrence(o.build!);
    checkComplianceOccurrence(o.compliance!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeploymentOccurrence(o.deployment!);
    checkDiscoveryOccurrence(o.discovery!);
    checkDSSEAttestationOccurrence(o.dsseAttestation!);
    checkEnvelope(o.envelope!);
    checkImageOccurrence(o.image!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noteName!,
      unittest.equals('foo'),
    );
    checkPackageOccurrence(o.package!);
    unittest.expect(
      o.remediation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUpgradeOccurrence(o.upgrade!);
    checkVulnerabilityOccurrence(o.vulnerability!);
  }
  buildCounterOccurrence--;
}

core.int buildCounterPackageIssue = 0;
api.PackageIssue buildPackageIssue() {
  final o = api.PackageIssue();
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    o.affectedCpeUri = 'foo';
    o.affectedPackage = 'foo';
    o.affectedVersion = buildVersion();
    o.effectiveSeverity = 'foo';
    o.fixAvailable = true;
    o.fixedCpeUri = 'foo';
    o.fixedPackage = 'foo';
    o.fixedVersion = buildVersion();
    o.packageType = 'foo';
  }
  buildCounterPackageIssue--;
  return o;
}

void checkPackageIssue(api.PackageIssue o) {
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    unittest.expect(
      o.affectedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.affectedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.affectedVersion!);
    unittest.expect(
      o.effectiveSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(
      o.fixedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.fixedVersion!);
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageIssue--;
}

core.List<api.Distribution> buildUnnamed30() => [
      buildDistribution(),
      buildDistribution(),
    ];

void checkUnnamed30(core.List<api.Distribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistribution(o[0]);
  checkDistribution(o[1]);
}

core.int buildCounterPackageNote = 0;
api.PackageNote buildPackageNote() {
  final o = api.PackageNote();
  buildCounterPackageNote++;
  if (buildCounterPackageNote < 3) {
    o.distribution = buildUnnamed30();
    o.name = 'foo';
  }
  buildCounterPackageNote--;
  return o;
}

void checkPackageNote(api.PackageNote o) {
  buildCounterPackageNote++;
  if (buildCounterPackageNote < 3) {
    checkUnnamed30(o.distribution!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageNote--;
}

core.List<api.Location> buildUnnamed31() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed31(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterPackageOccurrence = 0;
api.PackageOccurrence buildPackageOccurrence() {
  final o = api.PackageOccurrence();
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    o.location = buildUnnamed31();
    o.name = 'foo';
  }
  buildCounterPackageOccurrence--;
  return o;
}

void checkPackageOccurrence(api.PackageOccurrence o) {
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    checkUnnamed31(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageOccurrence--;
}

core.List<api.Binding> buildUnnamed32() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed32(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed32();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed32(o.bindings!);
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

core.int buildCounterProjectRepoId = 0;
api.ProjectRepoId buildProjectRepoId() {
  final o = api.ProjectRepoId();
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    o.projectId = 'foo';
    o.repoName = 'foo';
  }
  buildCounterProjectRepoId--;
  return o;
}

void checkProjectRepoId(api.ProjectRepoId o) {
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoName!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectRepoId--;
}

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed34() => [
      buildUnnamed33(),
      buildUnnamed33(),
    ];

void checkUnnamed34(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed33(o[0]);
  checkUnnamed33(o[1]);
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed36() => [
      buildUnnamed35(),
      buildUnnamed35(),
    ];

void checkUnnamed36(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed35(o[0]);
  checkUnnamed35(o[1]);
}

core.int buildCounterRecipe = 0;
api.Recipe buildRecipe() {
  final o = api.Recipe();
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    o.arguments = buildUnnamed34();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed36();
    o.type = 'foo';
  }
  buildCounterRecipe--;
  return o;
}

void checkRecipe(api.Recipe o) {
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    checkUnnamed34(o.arguments!);
    unittest.expect(
      o.definedInMaterial!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.environment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecipe--;
}

core.int buildCounterRelatedUrl = 0;
api.RelatedUrl buildRelatedUrl() {
  final o = api.RelatedUrl();
  buildCounterRelatedUrl++;
  if (buildCounterRelatedUrl < 3) {
    o.label = 'foo';
    o.url = 'foo';
  }
  buildCounterRelatedUrl--;
  return o;
}

void checkRelatedUrl(api.RelatedUrl o) {
  buildCounterRelatedUrl++;
  if (buildCounterRelatedUrl < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelatedUrl--;
}

core.int buildCounterRepoId = 0;
api.RepoId buildRepoId() {
  final o = api.RepoId();
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    o.projectRepoId = buildProjectRepoId();
    o.uid = 'foo';
  }
  buildCounterRepoId--;
  return o;
}

void checkRepoId(api.RepoId o) {
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    checkProjectRepoId(o.projectRepoId!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepoId--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
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

core.int buildCounterSlsaBuilder = 0;
api.SlsaBuilder buildSlsaBuilder() {
  final o = api.SlsaBuilder();
  buildCounterSlsaBuilder++;
  if (buildCounterSlsaBuilder < 3) {
    o.id = 'foo';
  }
  buildCounterSlsaBuilder--;
  return o;
}

void checkSlsaBuilder(api.SlsaBuilder o) {
  buildCounterSlsaBuilder++;
  if (buildCounterSlsaBuilder < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlsaBuilder--;
}

core.int buildCounterSlsaCompleteness = 0;
api.SlsaCompleteness buildSlsaCompleteness() {
  final o = api.SlsaCompleteness();
  buildCounterSlsaCompleteness++;
  if (buildCounterSlsaCompleteness < 3) {
    o.arguments = true;
    o.environment = true;
    o.materials = true;
  }
  buildCounterSlsaCompleteness--;
  return o;
}

void checkSlsaCompleteness(api.SlsaCompleteness o) {
  buildCounterSlsaCompleteness++;
  if (buildCounterSlsaCompleteness < 3) {
    unittest.expect(o.arguments!, unittest.isTrue);
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
  }
  buildCounterSlsaCompleteness--;
}

core.int buildCounterSlsaMetadata = 0;
api.SlsaMetadata buildSlsaMetadata() {
  final o = api.SlsaMetadata();
  buildCounterSlsaMetadata++;
  if (buildCounterSlsaMetadata < 3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness = buildSlsaCompleteness();
    o.reproducible = true;
  }
  buildCounterSlsaMetadata--;
  return o;
}

void checkSlsaMetadata(api.SlsaMetadata o) {
  buildCounterSlsaMetadata++;
  if (buildCounterSlsaMetadata < 3) {
    unittest.expect(
      o.buildFinishedOn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildInvocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildStartedOn!,
      unittest.equals('foo'),
    );
    checkSlsaCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterSlsaMetadata--;
}

core.List<api.Material> buildUnnamed37() => [
      buildMaterial(),
      buildMaterial(),
    ];

void checkUnnamed37(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterSlsaProvenance = 0;
api.SlsaProvenance buildSlsaProvenance() {
  final o = api.SlsaProvenance();
  buildCounterSlsaProvenance++;
  if (buildCounterSlsaProvenance < 3) {
    o.builder = buildSlsaBuilder();
    o.materials = buildUnnamed37();
    o.metadata = buildSlsaMetadata();
    o.recipe = buildSlsaRecipe();
  }
  buildCounterSlsaProvenance--;
  return o;
}

void checkSlsaProvenance(api.SlsaProvenance o) {
  buildCounterSlsaProvenance++;
  if (buildCounterSlsaProvenance < 3) {
    checkSlsaBuilder(o.builder!);
    checkUnnamed37(o.materials!);
    checkSlsaMetadata(o.metadata!);
    checkSlsaRecipe(o.recipe!);
  }
  buildCounterSlsaProvenance--;
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterSlsaRecipe = 0;
api.SlsaRecipe buildSlsaRecipe() {
  final o = api.SlsaRecipe();
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    o.arguments = buildUnnamed38();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed39();
    o.type = 'foo';
  }
  buildCounterSlsaRecipe--;
  return o;
}

void checkSlsaRecipe(api.SlsaRecipe o) {
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    checkUnnamed38(o.arguments!);
    unittest.expect(
      o.definedInMaterial!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.environment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlsaRecipe--;
}

core.List<api.SourceContext> buildUnnamed40() => [
      buildSourceContext(),
      buildSourceContext(),
    ];

void checkUnnamed40(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.Map<core.String, api.FileHashes> buildUnnamed41() => {
      'x': buildFileHashes(),
      'y': buildFileHashes(),
    };

void checkUnnamed41(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed40();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed41();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed40(o.additionalContexts!);
    unittest.expect(
      o.artifactStorageSourceUri!,
      unittest.equals('foo'),
    );
    checkSourceContext(o.context!);
    checkUnnamed41(o.fileHashes!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed42() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed42(core.Map<core.String, core.String> o) {
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

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  final o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
    o.labels = buildUnnamed42();
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo!);
    checkGerritSourceContext(o.gerrit!);
    checkGitSourceContext(o.git!);
    checkUnnamed42(o.labels!);
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed44() => [
      buildUnnamed43(),
      buildUnnamed43(),
    ];

void checkUnnamed44(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed43(o[0]);
  checkUnnamed43(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed44();
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
    checkUnnamed44(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.Map<core.String, core.String> buildUnnamed45() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed45(core.Map<core.String, core.String> o) {
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

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.digest = buildUnnamed45();
    o.name = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    checkUnnamed45(o.digest!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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
    o.permissions = buildUnnamed46();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed46(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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
    o.permissions = buildUnnamed47();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed47(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterUpgradeDistribution = 0;
api.UpgradeDistribution buildUpgradeDistribution() {
  final o = api.UpgradeDistribution();
  buildCounterUpgradeDistribution++;
  if (buildCounterUpgradeDistribution < 3) {
    o.classification = 'foo';
    o.cpeUri = 'foo';
    o.cve = buildUnnamed48();
    o.severity = 'foo';
  }
  buildCounterUpgradeDistribution--;
  return o;
}

void checkUpgradeDistribution(api.UpgradeDistribution o) {
  buildCounterUpgradeDistribution++;
  if (buildCounterUpgradeDistribution < 3) {
    unittest.expect(
      o.classification!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.cve!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeDistribution--;
}

core.List<api.UpgradeDistribution> buildUnnamed49() => [
      buildUpgradeDistribution(),
      buildUpgradeDistribution(),
    ];

void checkUnnamed49(core.List<api.UpgradeDistribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeDistribution(o[0]);
  checkUpgradeDistribution(o[1]);
}

core.int buildCounterUpgradeNote = 0;
api.UpgradeNote buildUpgradeNote() {
  final o = api.UpgradeNote();
  buildCounterUpgradeNote++;
  if (buildCounterUpgradeNote < 3) {
    o.distributions = buildUnnamed49();
    o.package = 'foo';
    o.version = buildVersion();
    o.windowsUpdate = buildWindowsUpdate();
  }
  buildCounterUpgradeNote--;
  return o;
}

void checkUpgradeNote(api.UpgradeNote o) {
  buildCounterUpgradeNote++;
  if (buildCounterUpgradeNote < 3) {
    checkUnnamed49(o.distributions!);
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    checkVersion(o.version!);
    checkWindowsUpdate(o.windowsUpdate!);
  }
  buildCounterUpgradeNote--;
}

core.int buildCounterUpgradeOccurrence = 0;
api.UpgradeOccurrence buildUpgradeOccurrence() {
  final o = api.UpgradeOccurrence();
  buildCounterUpgradeOccurrence++;
  if (buildCounterUpgradeOccurrence < 3) {
    o.distribution = buildUpgradeDistribution();
    o.package = 'foo';
    o.parsedVersion = buildVersion();
    o.windowsUpdate = buildWindowsUpdate();
  }
  buildCounterUpgradeOccurrence--;
  return o;
}

void checkUpgradeOccurrence(api.UpgradeOccurrence o) {
  buildCounterUpgradeOccurrence++;
  if (buildCounterUpgradeOccurrence < 3) {
    checkUpgradeDistribution(o.distribution!);
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    checkVersion(o.parsedVersion!);
    checkWindowsUpdate(o.windowsUpdate!);
  }
  buildCounterUpgradeOccurrence--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  final o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.epoch = 42;
    o.fullName = 'foo';
    o.inclusive = true;
    o.kind = 'foo';
    o.name = 'foo';
    o.revision = 'foo';
  }
  buildCounterVersion--;
  return o;
}

void checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(
      o.epoch!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.inclusive!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersion--;
}

core.List<api.Detail> buildUnnamed50() => [
      buildDetail(),
      buildDetail(),
    ];

void checkUnnamed50(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0]);
  checkDetail(o[1]);
}

core.List<api.WindowsDetail> buildUnnamed51() => [
      buildWindowsDetail(),
      buildWindowsDetail(),
    ];

void checkUnnamed51(core.List<api.WindowsDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsDetail(o[0]);
  checkWindowsDetail(o[1]);
}

core.int buildCounterVulnerabilityNote = 0;
api.VulnerabilityNote buildVulnerabilityNote() {
  final o = api.VulnerabilityNote();
  buildCounterVulnerabilityNote++;
  if (buildCounterVulnerabilityNote < 3) {
    o.cvssScore = 42.0;
    o.cvssV3 = buildCVSSv3();
    o.details = buildUnnamed50();
    o.severity = 'foo';
    o.sourceUpdateTime = 'foo';
    o.windowsDetails = buildUnnamed51();
  }
  buildCounterVulnerabilityNote--;
  return o;
}

void checkVulnerabilityNote(api.VulnerabilityNote o) {
  buildCounterVulnerabilityNote++;
  if (buildCounterVulnerabilityNote < 3) {
    unittest.expect(
      o.cvssScore!,
      unittest.equals(42.0),
    );
    checkCVSSv3(o.cvssV3!);
    checkUnnamed50(o.details!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.windowsDetails!);
  }
  buildCounterVulnerabilityNote--;
}

core.List<api.PackageIssue> buildUnnamed52() => [
      buildPackageIssue(),
      buildPackageIssue(),
    ];

void checkUnnamed52(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

core.List<api.RelatedUrl> buildUnnamed53() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed53(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterVulnerabilityOccurrence = 0;
api.VulnerabilityOccurrence buildVulnerabilityOccurrence() {
  final o = api.VulnerabilityOccurrence();
  buildCounterVulnerabilityOccurrence++;
  if (buildCounterVulnerabilityOccurrence < 3) {
    o.cvssScore = 42.0;
    o.cvssv3 = buildCVSS();
    o.effectiveSeverity = 'foo';
    o.fixAvailable = true;
    o.longDescription = 'foo';
    o.packageIssue = buildUnnamed52();
    o.relatedUrls = buildUnnamed53();
    o.severity = 'foo';
    o.shortDescription = 'foo';
    o.type = 'foo';
  }
  buildCounterVulnerabilityOccurrence--;
  return o;
}

void checkVulnerabilityOccurrence(api.VulnerabilityOccurrence o) {
  buildCounterVulnerabilityOccurrence++;
  if (buildCounterVulnerabilityOccurrence < 3) {
    unittest.expect(
      o.cvssScore!,
      unittest.equals(42.0),
    );
    checkCVSS(o.cvssv3!);
    unittest.expect(
      o.effectiveSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.packageIssue!);
    checkUnnamed53(o.relatedUrls!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityOccurrence--;
}

core.List<api.FixableTotalByDigest> buildUnnamed54() => [
      buildFixableTotalByDigest(),
      buildFixableTotalByDigest(),
    ];

void checkUnnamed54(core.List<api.FixableTotalByDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixableTotalByDigest(o[0]);
  checkFixableTotalByDigest(o[1]);
}

core.int buildCounterVulnerabilityOccurrencesSummary = 0;
api.VulnerabilityOccurrencesSummary buildVulnerabilityOccurrencesSummary() {
  final o = api.VulnerabilityOccurrencesSummary();
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    o.counts = buildUnnamed54();
  }
  buildCounterVulnerabilityOccurrencesSummary--;
  return o;
}

void checkVulnerabilityOccurrencesSummary(
    api.VulnerabilityOccurrencesSummary o) {
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    checkUnnamed54(o.counts!);
  }
  buildCounterVulnerabilityOccurrencesSummary--;
}

core.List<api.KnowledgeBase> buildUnnamed55() => [
      buildKnowledgeBase(),
      buildKnowledgeBase(),
    ];

void checkUnnamed55(core.List<api.KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKnowledgeBase(o[0]);
  checkKnowledgeBase(o[1]);
}

core.int buildCounterWindowsDetail = 0;
api.WindowsDetail buildWindowsDetail() {
  final o = api.WindowsDetail();
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.fixingKbs = buildUnnamed55();
    o.name = 'foo';
  }
  buildCounterWindowsDetail--;
  return o;
}

void checkWindowsDetail(api.WindowsDetail o) {
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.fixingKbs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsDetail--;
}

core.List<api.Category> buildUnnamed56() => [
      buildCategory(),
      buildCategory(),
    ];

void checkUnnamed56(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterWindowsUpdate = 0;
api.WindowsUpdate buildWindowsUpdate() {
  final o = api.WindowsUpdate();
  buildCounterWindowsUpdate++;
  if (buildCounterWindowsUpdate < 3) {
    o.categories = buildUnnamed56();
    o.description = 'foo';
    o.identity = buildIdentity();
    o.kbArticleIds = buildUnnamed57();
    o.lastPublishedTimestamp = 'foo';
    o.supportUrl = 'foo';
    o.title = 'foo';
  }
  buildCounterWindowsUpdate--;
  return o;
}

void checkWindowsUpdate(api.WindowsUpdate o) {
  buildCounterWindowsUpdate++;
  if (buildCounterWindowsUpdate < 3) {
    checkUnnamed56(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkIdentity(o.identity!);
    checkUnnamed57(o.kbArticleIds!);
    unittest.expect(
      o.lastPublishedTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.supportUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsUpdate--;
}

void main() {
  unittest.group('obj-schema-AliasContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAliasContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AliasContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAliasContext(od);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Artifact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArtifact(od);
    });
  });

  unittest.group('obj-schema-AttestationNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationNote(od);
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

  unittest.group('obj-schema-BatchCreateNotesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateNotesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateNotesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateNotesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateNotesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateOccurrencesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateOccurrencesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateOccurrencesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateOccurrencesResponse(od);
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

  unittest.group('obj-schema-BuildNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BuildNote.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuildNote(od);
    });
  });

  unittest.group('obj-schema-BuildOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildOccurrence(od);
    });
  });

  unittest.group('obj-schema-BuildProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildProvenance(od);
    });
  });

  unittest.group('obj-schema-BuilderConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuilderConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuilderConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuilderConfig(od);
    });
  });

  unittest.group('obj-schema-CVSS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CVSS.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCVSS(od);
    });
  });

  unittest.group('obj-schema-CVSSv3', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSSv3();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CVSSv3.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCVSSv3(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Category.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-CisBenchmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCisBenchmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CisBenchmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCisBenchmark(od);
    });
  });

  unittest.group('obj-schema-CloudRepoSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRepoSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRepoSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRepoSourceContext(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Command.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-Completeness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Completeness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteness(od);
    });
  });

  unittest.group('obj-schema-ComplianceNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceNote(od);
    });
  });

  unittest.group('obj-schema-ComplianceOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceOccurrence(od);
    });
  });

  unittest.group('obj-schema-ComplianceVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceVersion(od);
    });
  });

  unittest.group('obj-schema-DSSEAttestationNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEAttestationNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEAttestationNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDSSEAttestationNote(od);
    });
  });

  unittest.group('obj-schema-DSSEAttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEAttestationOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDSSEAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-DSSEHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DSSEHint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDSSEHint(od);
    });
  });

  unittest.group('obj-schema-DeploymentNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentNote(od);
    });
  });

  unittest.group('obj-schema-DeploymentOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentOccurrence(od);
    });
  });

  unittest.group('obj-schema-Detail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Detail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDetail(od);
    });
  });

  unittest.group('obj-schema-DiscoveryNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryNote(od);
    });
  });

  unittest.group('obj-schema-DiscoveryOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryOccurrence(od);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDistribution(od);
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

  unittest.group('obj-schema-Envelope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvelope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Envelope.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnvelope(od);
    });
  });

  unittest.group('obj-schema-EnvelopeSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvelopeSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvelopeSignature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvelopeSignature(od);
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

  unittest.group('obj-schema-FileHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileHashes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileHashes(od);
    });
  });

  unittest.group('obj-schema-Fingerprint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFingerprint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Fingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFingerprint(od);
    });
  });

  unittest.group('obj-schema-FixableTotalByDigest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixableTotalByDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixableTotalByDigest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFixableTotalByDigest(od);
    });
  });

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGerritSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GerritSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGerritSourceContext(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GitSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitSourceContext(od);
    });
  });

  unittest.group('obj-schema-Hash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hash.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHash(od);
    });
  });

  unittest.group('obj-schema-Hint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHint(od);
    });
  });

  unittest.group('obj-schema-Identity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Identity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIdentity(od);
    });
  });

  unittest.group('obj-schema-ImageNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImageNote.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImageNote(od);
    });
  });

  unittest.group('obj-schema-ImageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageOccurrence(od);
    });
  });

  unittest.group('obj-schema-InTotoProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInTotoProvenance(od);
    });
  });

  unittest.group('obj-schema-InTotoStatement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoStatement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoStatement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInTotoStatement(od);
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

  unittest.group('obj-schema-KnowledgeBase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKnowledgeBase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KnowledgeBase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKnowledgeBase(od);
    });
  });

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Layer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLayer(od);
    });
  });

  unittest.group('obj-schema-ListNoteOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNoteOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNoteOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNoteOccurrencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOccurrencesResponse(od);
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

  unittest.group('obj-schema-Material', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Material.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMaterial(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-NonCompliantFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonCompliantFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonCompliantFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonCompliantFile(od);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od);
    });
  });

  unittest.group('obj-schema-Occurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Occurrence.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOccurrence(od);
    });
  });

  unittest.group('obj-schema-PackageIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageIssue(od);
    });
  });

  unittest.group('obj-schema-PackageNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageNote(od);
    });
  });

  unittest.group('obj-schema-PackageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageOccurrence(od);
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

  unittest.group('obj-schema-ProjectRepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectRepoId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectRepoId(od);
    });
  });

  unittest.group('obj-schema-Recipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Recipe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecipe(od);
    });
  });

  unittest.group('obj-schema-RelatedUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RelatedUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelatedUrl(od);
    });
  });

  unittest.group('obj-schema-RepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RepoId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepoId(od);
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

  unittest.group('obj-schema-SlsaBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaBuilder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaBuilder(od);
    });
  });

  unittest.group('obj-schema-SlsaCompleteness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaCompleteness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaCompleteness(od);
    });
  });

  unittest.group('obj-schema-SlsaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaMetadata(od);
    });
  });

  unittest.group('obj-schema-SlsaProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaProvenance(od);
    });
  });

  unittest.group('obj-schema-SlsaRecipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SlsaRecipe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSlsaRecipe(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od);
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

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Subject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubject(od);
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

  unittest.group('obj-schema-UpgradeDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeDistribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeDistribution(od);
    });
  });

  unittest.group('obj-schema-UpgradeNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeNote(od);
    });
  });

  unittest.group('obj-schema-UpgradeOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeOccurrence(od);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Version.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVersion(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityNote(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityOccurrence(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrencesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrencesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrencesSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityOccurrencesSummary(od);
    });
  });

  unittest.group('obj-schema-WindowsDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsDetail(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsUpdate(od);
    });
  });

  unittest.group('resource-ProjectsNotesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildBatchCreateNotesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateNotesRequest(obj);

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
        final resp = convert.json.encode(buildBatchCreateNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateNotesResponse(response as api.BatchCreateNotesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_parent = 'foo';
      final arg_noteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj);

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
          queryMap['noteId']!.first,
          unittest.equals(arg_noteId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          noteId: arg_noteId, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
        final resp = convert.json.encode(buildListNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNotesResponse(response as api.ListNotesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj);

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
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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

  unittest.group('resource-ProjectsNotesOccurrencesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes.occurrences;
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
        final resp = convert.json.encode(buildListNoteOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNoteOccurrencesResponse(
          response as api.ListNoteOccurrencesResponse);
    });
  });

  unittest.group('resource-ProjectsOccurrencesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildBatchCreateOccurrencesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateOccurrencesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateOccurrencesRequest(obj);

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
        final resp = convert.json.encode(buildBatchCreateOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateOccurrencesResponse(
          response as api.BatchCreateOccurrencesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOccurrence(obj);

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
        final resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
        final resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getNotes', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getNotes(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getVulnerabilitySummary', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildVulnerabilityOccurrencesSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getVulnerabilitySummary(arg_parent,
          filter: arg_filter, $fields: arg_$fields);
      checkVulnerabilityOccurrencesSummary(
          response as api.VulnerabilityOccurrencesSummary);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
        final resp = convert.json.encode(buildListOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOccurrencesResponse(response as api.ListOccurrencesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOccurrence(obj);

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
        final resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
}
