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

import 'package:googleapis/containeranalysis/v1beta1.dart' as api;
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
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAliasContext--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAnalysisCompleted = 0;
api.AnalysisCompleted buildAnalysisCompleted() {
  final o = api.AnalysisCompleted();
  buildCounterAnalysisCompleted++;
  if (buildCounterAnalysisCompleted < 3) {
    o.analysisType = buildUnnamed0();
  }
  buildCounterAnalysisCompleted--;
  return o;
}

void checkAnalysisCompleted(api.AnalysisCompleted o) {
  buildCounterAnalysisCompleted++;
  if (buildCounterAnalysisCompleted < 3) {
    checkUnnamed0(o.analysisType!);
  }
  buildCounterAnalysisCompleted--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  final o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.checksum = 'foo';
    o.id = 'foo';
    o.names = buildUnnamed1();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(o.checksum!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed1(o.names!);
  }
  buildCounterArtifact--;
}

core.int buildCounterArtifactHashes = 0;
api.ArtifactHashes buildArtifactHashes() {
  final o = api.ArtifactHashes();
  buildCounterArtifactHashes++;
  if (buildCounterArtifactHashes < 3) {
    o.sha256 = 'foo';
  }
  buildCounterArtifactHashes--;
  return o;
}

void checkArtifactHashes(api.ArtifactHashes o) {
  buildCounterArtifactHashes++;
  if (buildCounterArtifactHashes < 3) {
    unittest.expect(o.sha256!, unittest.equals('foo'));
  }
  buildCounterArtifactHashes--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArtifactRule = 0;
api.ArtifactRule buildArtifactRule() {
  final o = api.ArtifactRule();
  buildCounterArtifactRule++;
  if (buildCounterArtifactRule < 3) {
    o.artifactRule = buildUnnamed2();
  }
  buildCounterArtifactRule--;
  return o;
}

void checkArtifactRule(api.ArtifactRule o) {
  buildCounterArtifactRule++;
  if (buildCounterArtifactRule < 3) {
    checkUnnamed2(o.artifactRule!);
  }
  buildCounterArtifactRule--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RelatedUrl> buildUnnamed4() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed4(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.List<api.Remediation> buildUnnamed5() => [
  buildRemediation(),
  buildRemediation(),
];

void checkUnnamed5(core.List<api.Remediation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemediation(o[0]);
  checkRemediation(o[1]);
}

core.int buildCounterAssessment = 0;
api.Assessment buildAssessment() {
  final o = api.Assessment();
  buildCounterAssessment++;
  if (buildCounterAssessment < 3) {
    o.cve = 'foo';
    o.impacts = buildUnnamed3();
    o.justification = buildJustification();
    o.longDescription = 'foo';
    o.relatedUris = buildUnnamed4();
    o.remediations = buildUnnamed5();
    o.shortDescription = 'foo';
    o.state = 'foo';
    o.vulnerabilityId = 'foo';
  }
  buildCounterAssessment--;
  return o;
}

void checkAssessment(api.Assessment o) {
  buildCounterAssessment++;
  if (buildCounterAssessment < 3) {
    unittest.expect(o.cve!, unittest.equals('foo'));
    checkUnnamed3(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    checkUnnamed4(o.relatedUris!);
    checkUnnamed5(o.remediations!);
    unittest.expect(o.shortDescription!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.vulnerabilityId!, unittest.equals('foo'));
  }
  buildCounterAssessment--;
}

core.int buildCounterAttestation = 0;
api.Attestation buildAttestation() {
  final o = api.Attestation();
  buildCounterAttestation++;
  if (buildCounterAttestation < 3) {
    o.genericSignedAttestation = buildGenericSignedAttestation();
    o.pgpSignedAttestation = buildPgpSignedAttestation();
  }
  buildCounterAttestation--;
  return o;
}

void checkAttestation(api.Attestation o) {
  buildCounterAttestation++;
  if (buildCounterAttestation < 3) {
    checkGenericSignedAttestation(o.genericSignedAttestation!);
    checkPgpSignedAttestation(o.pgpSignedAttestation!);
  }
  buildCounterAttestation--;
}

core.int buildCounterAuthority = 0;
api.Authority buildAuthority() {
  final o = api.Authority();
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    o.hint = buildHint();
  }
  buildCounterAuthority--;
  return o;
}

void checkAuthority(api.Authority o) {
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    checkHint(o.hint!);
  }
  buildCounterAuthority--;
}

core.int buildCounterBasis = 0;
api.Basis buildBasis() {
  final o = api.Basis();
  buildCounterBasis++;
  if (buildCounterBasis < 3) {
    o.fingerprint = buildFingerprint();
    o.resourceUrl = 'foo';
  }
  buildCounterBasis--;
  return o;
}

void checkBasis(api.Basis o) {
  buildCounterBasis++;
  if (buildCounterBasis < 3) {
    checkFingerprint(o.fingerprint!);
    unittest.expect(o.resourceUrl!, unittest.equals('foo'));
  }
  buildCounterBasis--;
}

core.Map<core.String, api.Note> buildUnnamed6() => {
  'x': buildNote(),
  'y': buildNote(),
};

void checkUnnamed6(core.Map<core.String, api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o['x']!);
  checkNote(o['y']!);
}

core.int buildCounterBatchCreateNotesRequest = 0;
api.BatchCreateNotesRequest buildBatchCreateNotesRequest() {
  final o = api.BatchCreateNotesRequest();
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    o.notes = buildUnnamed6();
  }
  buildCounterBatchCreateNotesRequest--;
  return o;
}

void checkBatchCreateNotesRequest(api.BatchCreateNotesRequest o) {
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    checkUnnamed6(o.notes!);
  }
  buildCounterBatchCreateNotesRequest--;
}

core.List<api.Note> buildUnnamed7() => [buildNote(), buildNote()];

void checkUnnamed7(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterBatchCreateNotesResponse = 0;
api.BatchCreateNotesResponse buildBatchCreateNotesResponse() {
  final o = api.BatchCreateNotesResponse();
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    o.notes = buildUnnamed7();
  }
  buildCounterBatchCreateNotesResponse--;
  return o;
}

void checkBatchCreateNotesResponse(api.BatchCreateNotesResponse o) {
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    checkUnnamed7(o.notes!);
  }
  buildCounterBatchCreateNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed8() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed8(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesRequest = 0;
api.BatchCreateOccurrencesRequest buildBatchCreateOccurrencesRequest() {
  final o = api.BatchCreateOccurrencesRequest();
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    o.occurrences = buildUnnamed8();
  }
  buildCounterBatchCreateOccurrencesRequest--;
  return o;
}

void checkBatchCreateOccurrencesRequest(api.BatchCreateOccurrencesRequest o) {
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    checkUnnamed8(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesRequest--;
}

core.List<api.Occurrence> buildUnnamed9() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed9(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesResponse = 0;
api.BatchCreateOccurrencesResponse buildBatchCreateOccurrencesResponse() {
  final o = api.BatchCreateOccurrencesResponse();
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    o.occurrences = buildUnnamed9();
  }
  buildCounterBatchCreateOccurrencesResponse--;
  return o;
}

void checkBatchCreateOccurrencesResponse(api.BatchCreateOccurrencesResponse o) {
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    checkUnnamed9(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesResponse--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
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
    o.members = buildUnnamed10();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed10(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBuild = 0;
api.Build buildBuild() {
  final o = api.Build();
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    o.builderVersion = 'foo';
    o.signature = buildBuildSignature();
  }
  buildCounterBuild--;
  return o;
}

void checkBuild(api.Build o) {
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    unittest.expect(o.builderVersion!, unittest.equals('foo'));
    checkBuildSignature(o.signature!);
  }
  buildCounterBuild--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.List<api.ResourceDescriptor> buildUnnamed13() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed13(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.int buildCounterBuildDefinition = 0;
api.BuildDefinition buildBuildDefinition() {
  final o = api.BuildDefinition();
  buildCounterBuildDefinition++;
  if (buildCounterBuildDefinition < 3) {
    o.buildType = 'foo';
    o.externalParameters = buildUnnamed11();
    o.internalParameters = buildUnnamed12();
    o.resolvedDependencies = buildUnnamed13();
  }
  buildCounterBuildDefinition--;
  return o;
}

void checkBuildDefinition(api.BuildDefinition o) {
  buildCounterBuildDefinition++;
  if (buildCounterBuildDefinition < 3) {
    unittest.expect(o.buildType!, unittest.equals('foo'));
    checkUnnamed11(o.externalParameters!);
    checkUnnamed12(o.internalParameters!);
    checkUnnamed13(o.resolvedDependencies!);
  }
  buildCounterBuildDefinition--;
}

core.int buildCounterBuildMetadata = 0;
api.BuildMetadata buildBuildMetadata() {
  final o = api.BuildMetadata();
  buildCounterBuildMetadata++;
  if (buildCounterBuildMetadata < 3) {
    o.finishedOn = 'foo';
    o.invocationId = 'foo';
    o.startedOn = 'foo';
  }
  buildCounterBuildMetadata--;
  return o;
}

void checkBuildMetadata(api.BuildMetadata o) {
  buildCounterBuildMetadata++;
  if (buildCounterBuildMetadata < 3) {
    unittest.expect(o.finishedOn!, unittest.equals('foo'));
    unittest.expect(o.invocationId!, unittest.equals('foo'));
    unittest.expect(o.startedOn!, unittest.equals('foo'));
  }
  buildCounterBuildMetadata--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Artifact> buildUnnamed15() => [buildArtifact(), buildArtifact()];

void checkUnnamed15(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Command> buildUnnamed16() => [buildCommand(), buildCommand()];

void checkUnnamed16(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  final o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed14();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed15();
    o.commands = buildUnnamed16();
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
    checkUnnamed14(o.buildOptions!);
    unittest.expect(o.builderVersion!, unittest.equals('foo'));
    checkUnnamed15(o.builtArtifacts!);
    checkUnnamed16(o.commands!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.logsUri!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkSource(o.sourceProvenance!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.triggerId!, unittest.equals('foo'));
  }
  buildCounterBuildProvenance--;
}

core.int buildCounterBuildSignature = 0;
api.BuildSignature buildBuildSignature() {
  final o = api.BuildSignature();
  buildCounterBuildSignature++;
  if (buildCounterBuildSignature < 3) {
    o.keyId = 'foo';
    o.keyType = 'foo';
    o.publicKey = 'foo';
    o.signature = 'foo';
  }
  buildCounterBuildSignature--;
  return o;
}

void checkBuildSignature(api.BuildSignature o) {
  buildCounterBuildSignature++;
  if (buildCounterBuildSignature < 3) {
    unittest.expect(o.keyId!, unittest.equals('foo'));
    unittest.expect(o.keyType!, unittest.equals('foo'));
    unittest.expect(o.publicKey!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
  }
  buildCounterBuildSignature--;
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterByProducts = 0;
api.ByProducts buildByProducts() {
  final o = api.ByProducts();
  buildCounterByProducts++;
  if (buildCounterByProducts < 3) {
    o.customValues = buildUnnamed17();
  }
  buildCounterByProducts--;
  return o;
}

void checkByProducts(api.ByProducts o) {
  buildCounterByProducts++;
  if (buildCounterByProducts < 3) {
    checkUnnamed17(o.customValues!);
  }
  buildCounterByProducts--;
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
    unittest.expect(o.attackComplexity!, unittest.equals('foo'));
    unittest.expect(o.attackVector!, unittest.equals('foo'));
    unittest.expect(o.authentication!, unittest.equals('foo'));
    unittest.expect(o.availabilityImpact!, unittest.equals('foo'));
    unittest.expect(o.baseScore!, unittest.equals(42.0));
    unittest.expect(o.confidentialityImpact!, unittest.equals('foo'));
    unittest.expect(o.exploitabilityScore!, unittest.equals(42.0));
    unittest.expect(o.impactScore!, unittest.equals(42.0));
    unittest.expect(o.integrityImpact!, unittest.equals('foo'));
    unittest.expect(o.privilegesRequired!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.userInteraction!, unittest.equals('foo'));
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
    unittest.expect(o.attackComplexity!, unittest.equals('foo'));
    unittest.expect(o.attackVector!, unittest.equals('foo'));
    unittest.expect(o.availabilityImpact!, unittest.equals('foo'));
    unittest.expect(o.baseScore!, unittest.equals(42.0));
    unittest.expect(o.confidentialityImpact!, unittest.equals('foo'));
    unittest.expect(o.exploitabilityScore!, unittest.equals(42.0));
    unittest.expect(o.impactScore!, unittest.equals(42.0));
    unittest.expect(o.integrityImpact!, unittest.equals('foo'));
    unittest.expect(o.privilegesRequired!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.userInteraction!, unittest.equals('foo'));
  }
  buildCounterCVSSv3--;
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
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterCloudRepoSourceContext--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed18();
    o.dir = 'foo';
    o.env = buildUnnamed19();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed20();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed18(o.args!);
    unittest.expect(o.dir!, unittest.equals('foo'));
    checkUnnamed19(o.env!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed20(o.waitFor!);
  }
  buildCounterCommand--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployable = 0;
api.Deployable buildDeployable() {
  final o = api.Deployable();
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    o.resourceUri = buildUnnamed21();
  }
  buildCounterDeployable--;
  return o;
}

void checkDeployable(api.Deployable o) {
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    checkUnnamed21(o.resourceUri!);
  }
  buildCounterDeployable--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  final o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.address = 'foo';
    o.config = 'foo';
    o.deployTime = 'foo';
    o.platform = 'foo';
    o.resourceUri = buildUnnamed22();
    o.undeployTime = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(o.address!, unittest.equals('foo'));
    unittest.expect(o.config!, unittest.equals('foo'));
    unittest.expect(o.deployTime!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    checkUnnamed22(o.resourceUri!);
    unittest.expect(o.undeployTime!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

core.List<api.Layer> buildUnnamed23() => [buildLayer(), buildLayer()];

void checkUnnamed23(core.List<api.Layer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayer(o[0]);
  checkLayer(o[1]);
}

core.int buildCounterDerived = 0;
api.Derived buildDerived() {
  final o = api.Derived();
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    o.baseResourceUrl = 'foo';
    o.distance = 42;
    o.fingerprint = buildFingerprint();
    o.layerInfo = buildUnnamed23();
  }
  buildCounterDerived--;
  return o;
}

void checkDerived(api.Derived o) {
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    unittest.expect(o.baseResourceUrl!, unittest.equals('foo'));
    unittest.expect(o.distance!, unittest.equals(42));
    checkFingerprint(o.fingerprint!);
    checkUnnamed23(o.layerInfo!);
  }
  buildCounterDerived--;
}

core.int buildCounterDetail = 0;
api.Detail buildDetail() {
  final o = api.Detail();
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.fixedLocation = buildVulnerabilityLocation();
    o.isObsolete = true;
    o.maxAffectedVersion = buildVersion();
    o.minAffectedVersion = buildVersion();
    o.package = 'foo';
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
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkVulnerabilityLocation(o.fixedLocation!);
    unittest.expect(o.isObsolete!, unittest.isTrue);
    checkVersion(o.maxAffectedVersion!);
    checkVersion(o.minAffectedVersion!);
    unittest.expect(o.package!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.severityName!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.sourceUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.vendor!, unittest.equals('foo'));
  }
  buildCounterDetail--;
}

core.int buildCounterDetails = 0;
api.Details buildDetails() {
  final o = api.Details();
  buildCounterDetails++;
  if (buildCounterDetails < 3) {
    o.attestation = buildAttestation();
  }
  buildCounterDetails--;
  return o;
}

void checkDetails(api.Details o) {
  buildCounterDetails++;
  if (buildCounterDetails < 3) {
    checkAttestation(o.attestation!);
  }
  buildCounterDetails--;
}

core.int buildCounterDigest = 0;
api.Digest buildDigest() {
  final o = api.Digest();
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    o.algo = 'foo';
    o.digestBytes = 'foo';
  }
  buildCounterDigest--;
  return o;
}

void checkDigest(api.Digest o) {
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    unittest.expect(o.algo!, unittest.equals('foo'));
    unittest.expect(o.digestBytes!, unittest.equals('foo'));
  }
  buildCounterDigest--;
}

core.List<api.Status> buildUnnamed24() => [buildStatus(), buildStatus()];

void checkUnnamed24(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.File> buildUnnamed25() => [buildFile(), buildFile()];

void checkUnnamed25(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterDiscovered = 0;
api.Discovered buildDiscovered() {
  final o = api.Discovered();
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    o.analysisCompleted = buildAnalysisCompleted();
    o.analysisError = buildUnnamed24();
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
    o.continuousAnalysis = 'foo';
    o.files = buildUnnamed25();
    o.lastAnalysisTime = 'foo';
    o.lastScanTime = 'foo';
    o.sbomStatus = buildSBOMStatus();
  }
  buildCounterDiscovered--;
  return o;
}

void checkDiscovered(api.Discovered o) {
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    checkAnalysisCompleted(o.analysisCompleted!);
    checkUnnamed24(o.analysisError!);
    unittest.expect(o.analysisStatus!, unittest.equals('foo'));
    checkStatus(o.analysisStatusError!);
    unittest.expect(o.continuousAnalysis!, unittest.equals('foo'));
    checkUnnamed25(o.files!);
    unittest.expect(o.lastAnalysisTime!, unittest.equals('foo'));
    unittest.expect(o.lastScanTime!, unittest.equals('foo'));
    checkSBOMStatus(o.sbomStatus!);
  }
  buildCounterDiscovered--;
}

core.int buildCounterDiscovery = 0;
api.Discovery buildDiscovery() {
  final o = api.Discovery();
  buildCounterDiscovery++;
  if (buildCounterDiscovery < 3) {
    o.analysisKind = 'foo';
  }
  buildCounterDiscovery--;
  return o;
}

void checkDiscovery(api.Discovery o) {
  buildCounterDiscovery++;
  if (buildCounterDiscovery < 3) {
    unittest.expect(o.analysisKind!, unittest.equals('foo'));
  }
  buildCounterDiscovery--;
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
    unittest.expect(o.architecture!, unittest.equals('foo'));
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkVersion(o.latestVersion!);
    unittest.expect(o.maintainer!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterDistribution--;
}

core.int buildCounterDocumentNote = 0;
api.DocumentNote buildDocumentNote() {
  final o = api.DocumentNote();
  buildCounterDocumentNote++;
  if (buildCounterDocumentNote < 3) {
    o.dataLicence = 'foo';
    o.spdxVersion = 'foo';
  }
  buildCounterDocumentNote--;
  return o;
}

void checkDocumentNote(api.DocumentNote o) {
  buildCounterDocumentNote++;
  if (buildCounterDocumentNote < 3) {
    unittest.expect(o.dataLicence!, unittest.equals('foo'));
    unittest.expect(o.spdxVersion!, unittest.equals('foo'));
  }
  buildCounterDocumentNote--;
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

core.int buildCounterDocumentOccurrence = 0;
api.DocumentOccurrence buildDocumentOccurrence() {
  final o = api.DocumentOccurrence();
  buildCounterDocumentOccurrence++;
  if (buildCounterDocumentOccurrence < 3) {
    o.createTime = 'foo';
    o.creatorComment = 'foo';
    o.creators = buildUnnamed26();
    o.documentComment = 'foo';
    o.externalDocumentRefs = buildUnnamed27();
    o.id = 'foo';
    o.licenseListVersion = 'foo';
    o.namespace = 'foo';
    o.title = 'foo';
  }
  buildCounterDocumentOccurrence--;
  return o;
}

void checkDocumentOccurrence(api.DocumentOccurrence o) {
  buildCounterDocumentOccurrence++;
  if (buildCounterDocumentOccurrence < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creatorComment!, unittest.equals('foo'));
    checkUnnamed26(o.creators!);
    unittest.expect(o.documentComment!, unittest.equals('foo'));
    checkUnnamed27(o.externalDocumentRefs!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.licenseListVersion!, unittest.equals('foo'));
    unittest.expect(o.namespace!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterDocumentOccurrence--;
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

core.List<api.EnvelopeSignature> buildUnnamed28() => [
  buildEnvelopeSignature(),
  buildEnvelopeSignature(),
];

void checkUnnamed28(core.List<api.EnvelopeSignature> o) {
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
    o.signatures = buildUnnamed28();
  }
  buildCounterEnvelope--;
  return o;
}

void checkEnvelope(api.Envelope o) {
  buildCounterEnvelope++;
  if (buildCounterEnvelope < 3) {
    unittest.expect(o.payload!, unittest.equals('foo'));
    unittest.expect(o.payloadType!, unittest.equals('foo'));
    checkUnnamed28(o.signatures!);
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
    unittest.expect(o.keyid!, unittest.equals('foo'));
    unittest.expect(o.sig!, unittest.equals('foo'));
  }
  buildCounterEnvelopeSignature--;
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.customValues = buildUnnamed29();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkUnnamed29(o.customValues!);
  }
  buildCounterEnvironment--;
}

core.int buildCounterExportSBOMRequest = 0;
api.ExportSBOMRequest buildExportSBOMRequest() {
  final o = api.ExportSBOMRequest();
  buildCounterExportSBOMRequest++;
  if (buildCounterExportSBOMRequest < 3) {}
  buildCounterExportSBOMRequest--;
  return o;
}

void checkExportSBOMRequest(api.ExportSBOMRequest o) {
  buildCounterExportSBOMRequest++;
  if (buildCounterExportSBOMRequest < 3) {}
  buildCounterExportSBOMRequest--;
}

core.int buildCounterExportSBOMResponse = 0;
api.ExportSBOMResponse buildExportSBOMResponse() {
  final o = api.ExportSBOMResponse();
  buildCounterExportSBOMResponse++;
  if (buildCounterExportSBOMResponse < 3) {
    o.discoveryOccurrenceId = 'foo';
  }
  buildCounterExportSBOMResponse--;
  return o;
}

void checkExportSBOMResponse(api.ExportSBOMResponse o) {
  buildCounterExportSBOMResponse++;
  if (buildCounterExportSBOMResponse < 3) {
    unittest.expect(o.discoveryOccurrenceId!, unittest.equals('foo'));
  }
  buildCounterExportSBOMResponse--;
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

core.int buildCounterExternalRef = 0;
api.ExternalRef buildExternalRef() {
  final o = api.ExternalRef();
  buildCounterExternalRef++;
  if (buildCounterExternalRef < 3) {
    o.category = 'foo';
    o.comment = 'foo';
    o.locator = 'foo';
    o.type = 'foo';
  }
  buildCounterExternalRef--;
  return o;
}

void checkExternalRef(api.ExternalRef o) {
  buildCounterExternalRef++;
  if (buildCounterExternalRef < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.locator!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterExternalRef--;
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.digest = buildUnnamed30();
    o.name = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    checkUnnamed30(o.digest!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<api.Hash> buildUnnamed31() => [buildHash(), buildHash()];

void checkUnnamed31(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed31();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed31(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileNote = 0;
api.FileNote buildFileNote() {
  final o = api.FileNote();
  buildCounterFileNote++;
  if (buildCounterFileNote < 3) {
    o.checksum = buildUnnamed32();
    o.fileType = 'foo';
    o.title = 'foo';
  }
  buildCounterFileNote--;
  return o;
}

void checkFileNote(api.FileNote o) {
  buildCounterFileNote++;
  if (buildCounterFileNote < 3) {
    checkUnnamed32(o.checksum!);
    unittest.expect(o.fileType!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterFileNote--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileOccurrence = 0;
api.FileOccurrence buildFileOccurrence() {
  final o = api.FileOccurrence();
  buildCounterFileOccurrence++;
  if (buildCounterFileOccurrence < 3) {
    o.attributions = buildUnnamed33();
    o.comment = 'foo';
    o.contributors = buildUnnamed34();
    o.copyright = 'foo';
    o.filesLicenseInfo = buildUnnamed35();
    o.id = 'foo';
    o.licenseConcluded = buildLicense();
    o.notice = 'foo';
  }
  buildCounterFileOccurrence--;
  return o;
}

void checkFileOccurrence(api.FileOccurrence o) {
  buildCounterFileOccurrence++;
  if (buildCounterFileOccurrence < 3) {
    checkUnnamed33(o.attributions!);
    unittest.expect(o.comment!, unittest.equals('foo'));
    checkUnnamed34(o.contributors!);
    unittest.expect(o.copyright!, unittest.equals('foo'));
    checkUnnamed35(o.filesLicenseInfo!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkLicense(o.licenseConcluded!);
    unittest.expect(o.notice!, unittest.equals('foo'));
  }
  buildCounterFileOccurrence--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFingerprint = 0;
api.Fingerprint buildFingerprint() {
  final o = api.Fingerprint();
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    o.v1Name = 'foo';
    o.v2Blob = buildUnnamed36();
    o.v2Name = 'foo';
  }
  buildCounterFingerprint--;
  return o;
}

void checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(o.v1Name!, unittest.equals('foo'));
    checkUnnamed36(o.v2Blob!);
    unittest.expect(o.v2Name!, unittest.equals('foo'));
  }
  buildCounterFingerprint--;
}

core.int buildCounterFixableTotalByDigest = 0;
api.FixableTotalByDigest buildFixableTotalByDigest() {
  final o = api.FixableTotalByDigest();
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    o.fixableCount = 'foo';
    o.resource = buildResource();
    o.severity = 'foo';
    o.totalCount = 'foo';
  }
  buildCounterFixableTotalByDigest--;
  return o;
}

void checkFixableTotalByDigest(api.FixableTotalByDigest o) {
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    unittest.expect(o.fixableCount!, unittest.equals('foo'));
    checkResource(o.resource!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.totalCount!, unittest.equals('foo'));
  }
  buildCounterFixableTotalByDigest--;
}

core.int buildCounterGeneratePackagesSummaryRequest = 0;
api.GeneratePackagesSummaryRequest buildGeneratePackagesSummaryRequest() {
  final o = api.GeneratePackagesSummaryRequest();
  buildCounterGeneratePackagesSummaryRequest++;
  if (buildCounterGeneratePackagesSummaryRequest < 3) {}
  buildCounterGeneratePackagesSummaryRequest--;
  return o;
}

void checkGeneratePackagesSummaryRequest(api.GeneratePackagesSummaryRequest o) {
  buildCounterGeneratePackagesSummaryRequest++;
  if (buildCounterGeneratePackagesSummaryRequest < 3) {}
  buildCounterGeneratePackagesSummaryRequest--;
}

core.List<api.Signature> buildUnnamed37() => [
  buildSignature(),
  buildSignature(),
];

void checkUnnamed37(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0]);
  checkSignature(o[1]);
}

core.int buildCounterGenericSignedAttestation = 0;
api.GenericSignedAttestation buildGenericSignedAttestation() {
  final o = api.GenericSignedAttestation();
  buildCounterGenericSignedAttestation++;
  if (buildCounterGenericSignedAttestation < 3) {
    o.contentType = 'foo';
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed37();
  }
  buildCounterGenericSignedAttestation--;
  return o;
}

void checkGenericSignedAttestation(api.GenericSignedAttestation o) {
  buildCounterGenericSignedAttestation++;
  if (buildCounterGenericSignedAttestation < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.serializedPayload!, unittest.equals('foo'));
    checkUnnamed37(o.signatures!);
  }
  buildCounterGenericSignedAttestation--;
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
    unittest.expect(o.gerritProject!, unittest.equals('foo'));
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
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
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
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
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGitSourceContext--;
}

core.int buildCounterGrafeasV1beta1BuildDetails = 0;
api.GrafeasV1beta1BuildDetails buildGrafeasV1beta1BuildDetails() {
  final o = api.GrafeasV1beta1BuildDetails();
  buildCounterGrafeasV1beta1BuildDetails++;
  if (buildCounterGrafeasV1beta1BuildDetails < 3) {
    o.inTotoSlsaProvenanceV1 = buildInTotoSlsaProvenanceV1();
    o.provenance = buildBuildProvenance();
    o.provenanceBytes = 'foo';
  }
  buildCounterGrafeasV1beta1BuildDetails--;
  return o;
}

void checkGrafeasV1beta1BuildDetails(api.GrafeasV1beta1BuildDetails o) {
  buildCounterGrafeasV1beta1BuildDetails++;
  if (buildCounterGrafeasV1beta1BuildDetails < 3) {
    checkInTotoSlsaProvenanceV1(o.inTotoSlsaProvenanceV1!);
    checkBuildProvenance(o.provenance!);
    unittest.expect(o.provenanceBytes!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1BuildDetails--;
}

core.int buildCounterGrafeasV1beta1DeploymentDetails = 0;
api.GrafeasV1beta1DeploymentDetails buildGrafeasV1beta1DeploymentDetails() {
  final o = api.GrafeasV1beta1DeploymentDetails();
  buildCounterGrafeasV1beta1DeploymentDetails++;
  if (buildCounterGrafeasV1beta1DeploymentDetails < 3) {
    o.deployment = buildDeployment();
  }
  buildCounterGrafeasV1beta1DeploymentDetails--;
  return o;
}

void checkGrafeasV1beta1DeploymentDetails(
  api.GrafeasV1beta1DeploymentDetails o,
) {
  buildCounterGrafeasV1beta1DeploymentDetails++;
  if (buildCounterGrafeasV1beta1DeploymentDetails < 3) {
    checkDeployment(o.deployment!);
  }
  buildCounterGrafeasV1beta1DeploymentDetails--;
}

core.int buildCounterGrafeasV1beta1DiscoveryDetails = 0;
api.GrafeasV1beta1DiscoveryDetails buildGrafeasV1beta1DiscoveryDetails() {
  final o = api.GrafeasV1beta1DiscoveryDetails();
  buildCounterGrafeasV1beta1DiscoveryDetails++;
  if (buildCounterGrafeasV1beta1DiscoveryDetails < 3) {
    o.discovered = buildDiscovered();
  }
  buildCounterGrafeasV1beta1DiscoveryDetails--;
  return o;
}

void checkGrafeasV1beta1DiscoveryDetails(api.GrafeasV1beta1DiscoveryDetails o) {
  buildCounterGrafeasV1beta1DiscoveryDetails++;
  if (buildCounterGrafeasV1beta1DiscoveryDetails < 3) {
    checkDiscovered(o.discovered!);
  }
  buildCounterGrafeasV1beta1DiscoveryDetails--;
}

core.int buildCounterGrafeasV1beta1ImageDetails = 0;
api.GrafeasV1beta1ImageDetails buildGrafeasV1beta1ImageDetails() {
  final o = api.GrafeasV1beta1ImageDetails();
  buildCounterGrafeasV1beta1ImageDetails++;
  if (buildCounterGrafeasV1beta1ImageDetails < 3) {
    o.derivedImage = buildDerived();
  }
  buildCounterGrafeasV1beta1ImageDetails--;
  return o;
}

void checkGrafeasV1beta1ImageDetails(api.GrafeasV1beta1ImageDetails o) {
  buildCounterGrafeasV1beta1ImageDetails++;
  if (buildCounterGrafeasV1beta1ImageDetails < 3) {
    checkDerived(o.derivedImage!);
  }
  buildCounterGrafeasV1beta1ImageDetails--;
}

core.int buildCounterGrafeasV1beta1IntotoArtifact = 0;
api.GrafeasV1beta1IntotoArtifact buildGrafeasV1beta1IntotoArtifact() {
  final o = api.GrafeasV1beta1IntotoArtifact();
  buildCounterGrafeasV1beta1IntotoArtifact++;
  if (buildCounterGrafeasV1beta1IntotoArtifact < 3) {
    o.hashes = buildArtifactHashes();
    o.resourceUri = 'foo';
  }
  buildCounterGrafeasV1beta1IntotoArtifact--;
  return o;
}

void checkGrafeasV1beta1IntotoArtifact(api.GrafeasV1beta1IntotoArtifact o) {
  buildCounterGrafeasV1beta1IntotoArtifact++;
  if (buildCounterGrafeasV1beta1IntotoArtifact < 3) {
    checkArtifactHashes(o.hashes!);
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1IntotoArtifact--;
}

core.List<api.GrafeasV1beta1IntotoSignature> buildUnnamed38() => [
  buildGrafeasV1beta1IntotoSignature(),
  buildGrafeasV1beta1IntotoSignature(),
];

void checkUnnamed38(core.List<api.GrafeasV1beta1IntotoSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoSignature(o[0]);
  checkGrafeasV1beta1IntotoSignature(o[1]);
}

core.int buildCounterGrafeasV1beta1IntotoDetails = 0;
api.GrafeasV1beta1IntotoDetails buildGrafeasV1beta1IntotoDetails() {
  final o = api.GrafeasV1beta1IntotoDetails();
  buildCounterGrafeasV1beta1IntotoDetails++;
  if (buildCounterGrafeasV1beta1IntotoDetails < 3) {
    o.signatures = buildUnnamed38();
    o.signed = buildLink();
  }
  buildCounterGrafeasV1beta1IntotoDetails--;
  return o;
}

void checkGrafeasV1beta1IntotoDetails(api.GrafeasV1beta1IntotoDetails o) {
  buildCounterGrafeasV1beta1IntotoDetails++;
  if (buildCounterGrafeasV1beta1IntotoDetails < 3) {
    checkUnnamed38(o.signatures!);
    checkLink(o.signed!);
  }
  buildCounterGrafeasV1beta1IntotoDetails--;
}

core.int buildCounterGrafeasV1beta1IntotoSignature = 0;
api.GrafeasV1beta1IntotoSignature buildGrafeasV1beta1IntotoSignature() {
  final o = api.GrafeasV1beta1IntotoSignature();
  buildCounterGrafeasV1beta1IntotoSignature++;
  if (buildCounterGrafeasV1beta1IntotoSignature < 3) {
    o.keyid = 'foo';
    o.sig = 'foo';
  }
  buildCounterGrafeasV1beta1IntotoSignature--;
  return o;
}

void checkGrafeasV1beta1IntotoSignature(api.GrafeasV1beta1IntotoSignature o) {
  buildCounterGrafeasV1beta1IntotoSignature++;
  if (buildCounterGrafeasV1beta1IntotoSignature < 3) {
    unittest.expect(o.keyid!, unittest.equals('foo'));
    unittest.expect(o.sig!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1IntotoSignature--;
}

core.int buildCounterGrafeasV1beta1PackageDetails = 0;
api.GrafeasV1beta1PackageDetails buildGrafeasV1beta1PackageDetails() {
  final o = api.GrafeasV1beta1PackageDetails();
  buildCounterGrafeasV1beta1PackageDetails++;
  if (buildCounterGrafeasV1beta1PackageDetails < 3) {
    o.installation = buildInstallation();
  }
  buildCounterGrafeasV1beta1PackageDetails--;
  return o;
}

void checkGrafeasV1beta1PackageDetails(api.GrafeasV1beta1PackageDetails o) {
  buildCounterGrafeasV1beta1PackageDetails++;
  if (buildCounterGrafeasV1beta1PackageDetails < 3) {
    checkInstallation(o.installation!);
  }
  buildCounterGrafeasV1beta1PackageDetails--;
}

core.List<api.PackageIssue> buildUnnamed39() => [
  buildPackageIssue(),
  buildPackageIssue(),
];

void checkUnnamed39(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

core.List<api.RelatedUrl> buildUnnamed40() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed40(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterGrafeasV1beta1VulnerabilityDetails = 0;
api.GrafeasV1beta1VulnerabilityDetails
buildGrafeasV1beta1VulnerabilityDetails() {
  final o = api.GrafeasV1beta1VulnerabilityDetails();
  buildCounterGrafeasV1beta1VulnerabilityDetails++;
  if (buildCounterGrafeasV1beta1VulnerabilityDetails < 3) {
    o.cvssScore = 42.0;
    o.cvssV2 = buildCVSS();
    o.cvssV3 = buildCVSS();
    o.cvssVersion = 'foo';
    o.effectiveSeverity = 'foo';
    o.extraDetails = 'foo';
    o.longDescription = 'foo';
    o.packageIssue = buildUnnamed39();
    o.relatedUrls = buildUnnamed40();
    o.severity = 'foo';
    o.shortDescription = 'foo';
    o.type = 'foo';
    o.vexAssessment = buildVexAssessment();
  }
  buildCounterGrafeasV1beta1VulnerabilityDetails--;
  return o;
}

void checkGrafeasV1beta1VulnerabilityDetails(
  api.GrafeasV1beta1VulnerabilityDetails o,
) {
  buildCounterGrafeasV1beta1VulnerabilityDetails++;
  if (buildCounterGrafeasV1beta1VulnerabilityDetails < 3) {
    unittest.expect(o.cvssScore!, unittest.equals(42.0));
    checkCVSS(o.cvssV2!);
    checkCVSS(o.cvssV3!);
    unittest.expect(o.cvssVersion!, unittest.equals('foo'));
    unittest.expect(o.effectiveSeverity!, unittest.equals('foo'));
    unittest.expect(o.extraDetails!, unittest.equals('foo'));
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    checkUnnamed39(o.packageIssue!);
    checkUnnamed40(o.relatedUrls!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.shortDescription!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkVexAssessment(o.vexAssessment!);
  }
  buildCounterGrafeasV1beta1VulnerabilityDetails--;
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
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
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
    unittest.expect(o.humanReadableName!, unittest.equals('foo'));
  }
  buildCounterHint--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ArtifactRule> buildUnnamed42() => [
  buildArtifactRule(),
  buildArtifactRule(),
];

void checkUnnamed42(core.List<api.ArtifactRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactRule(o[0]);
  checkArtifactRule(o[1]);
}

core.List<api.ArtifactRule> buildUnnamed43() => [
  buildArtifactRule(),
  buildArtifactRule(),
];

void checkUnnamed43(core.List<api.ArtifactRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactRule(o[0]);
  checkArtifactRule(o[1]);
}

core.List<api.SigningKey> buildUnnamed44() => [
  buildSigningKey(),
  buildSigningKey(),
];

void checkUnnamed44(core.List<api.SigningKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigningKey(o[0]);
  checkSigningKey(o[1]);
}

core.int buildCounterInToto = 0;
api.InToto buildInToto() {
  final o = api.InToto();
  buildCounterInToto++;
  if (buildCounterInToto < 3) {
    o.expectedCommand = buildUnnamed41();
    o.expectedMaterials = buildUnnamed42();
    o.expectedProducts = buildUnnamed43();
    o.signingKeys = buildUnnamed44();
    o.stepName = 'foo';
    o.threshold = 'foo';
  }
  buildCounterInToto--;
  return o;
}

void checkInToto(api.InToto o) {
  buildCounterInToto++;
  if (buildCounterInToto < 3) {
    checkUnnamed41(o.expectedCommand!);
    checkUnnamed42(o.expectedMaterials!);
    checkUnnamed43(o.expectedProducts!);
    checkUnnamed44(o.signingKeys!);
    unittest.expect(o.stepName!, unittest.equals('foo'));
    unittest.expect(o.threshold!, unittest.equals('foo'));
  }
  buildCounterInToto--;
}

core.List<api.Subject> buildUnnamed45() => [buildSubject(), buildSubject()];

void checkUnnamed45(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterInTotoSlsaProvenanceV1 = 0;
api.InTotoSlsaProvenanceV1 buildInTotoSlsaProvenanceV1() {
  final o = api.InTotoSlsaProvenanceV1();
  buildCounterInTotoSlsaProvenanceV1++;
  if (buildCounterInTotoSlsaProvenanceV1 < 3) {
    o.P_type = 'foo';
    o.predicate = buildSlsaProvenanceV1();
    o.predicateType = 'foo';
    o.subject = buildUnnamed45();
  }
  buildCounterInTotoSlsaProvenanceV1--;
  return o;
}

void checkInTotoSlsaProvenanceV1(api.InTotoSlsaProvenanceV1 o) {
  buildCounterInTotoSlsaProvenanceV1++;
  if (buildCounterInTotoSlsaProvenanceV1 < 3) {
    unittest.expect(o.P_type!, unittest.equals('foo'));
    checkSlsaProvenanceV1(o.predicate!);
    unittest.expect(o.predicateType!, unittest.equals('foo'));
    checkUnnamed45(o.subject!);
  }
  buildCounterInTotoSlsaProvenanceV1--;
}

core.List<api.Location> buildUnnamed46() => [buildLocation(), buildLocation()];

void checkUnnamed46(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterInstallation = 0;
api.Installation buildInstallation() {
  final o = api.Installation();
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.license = buildLicense();
    o.location = buildUnnamed46();
    o.name = 'foo';
    o.packageType = 'foo';
    o.version = buildVersion();
  }
  buildCounterInstallation--;
  return o;
}

void checkInstallation(api.Installation o) {
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    unittest.expect(o.architecture!, unittest.equals('foo'));
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    checkLicense(o.license!);
    checkUnnamed46(o.location!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterInstallation--;
}

core.int buildCounterJustification = 0;
api.Justification buildJustification() {
  final o = api.Justification();
  buildCounterJustification++;
  if (buildCounterJustification < 3) {
    o.details = 'foo';
    o.justificationType = 'foo';
  }
  buildCounterJustification--;
  return o;
}

void checkJustification(api.Justification o) {
  buildCounterJustification++;
  if (buildCounterJustification < 3) {
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.justificationType!, unittest.equals('foo'));
  }
  buildCounterJustification--;
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
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
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
    unittest.expect(o.arguments!, unittest.equals('foo'));
    unittest.expect(o.directive!, unittest.equals('foo'));
  }
  buildCounterLayer--;
}

core.int buildCounterLicense = 0;
api.License buildLicense() {
  final o = api.License();
  buildCounterLicense++;
  if (buildCounterLicense < 3) {
    o.comments = 'foo';
    o.expression = 'foo';
  }
  buildCounterLicense--;
  return o;
}

void checkLicense(api.License o) {
  buildCounterLicense++;
  if (buildCounterLicense < 3) {
    unittest.expect(o.comments!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
  }
  buildCounterLicense--;
}

core.int buildCounterLicensesSummary = 0;
api.LicensesSummary buildLicensesSummary() {
  final o = api.LicensesSummary();
  buildCounterLicensesSummary++;
  if (buildCounterLicensesSummary < 3) {
    o.count = 'foo';
    o.license = 'foo';
  }
  buildCounterLicensesSummary--;
  return o;
}

void checkLicensesSummary(api.LicensesSummary o) {
  buildCounterLicensesSummary++;
  if (buildCounterLicensesSummary < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.license!, unittest.equals('foo'));
  }
  buildCounterLicensesSummary--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GrafeasV1beta1IntotoArtifact> buildUnnamed48() => [
  buildGrafeasV1beta1IntotoArtifact(),
  buildGrafeasV1beta1IntotoArtifact(),
];

void checkUnnamed48(core.List<api.GrafeasV1beta1IntotoArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoArtifact(o[0]);
  checkGrafeasV1beta1IntotoArtifact(o[1]);
}

core.List<api.GrafeasV1beta1IntotoArtifact> buildUnnamed49() => [
  buildGrafeasV1beta1IntotoArtifact(),
  buildGrafeasV1beta1IntotoArtifact(),
];

void checkUnnamed49(core.List<api.GrafeasV1beta1IntotoArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoArtifact(o[0]);
  checkGrafeasV1beta1IntotoArtifact(o[1]);
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.byproducts = buildByProducts();
    o.command = buildUnnamed47();
    o.environment = buildEnvironment();
    o.materials = buildUnnamed48();
    o.products = buildUnnamed49();
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    checkByProducts(o.byproducts!);
    checkUnnamed47(o.command!);
    checkEnvironment(o.environment!);
    checkUnnamed48(o.materials!);
    checkUnnamed49(o.products!);
  }
  buildCounterLink--;
}

core.List<api.Occurrence> buildUnnamed50() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed50(core.List<api.Occurrence> o) {
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
    o.occurrences = buildUnnamed50();
  }
  buildCounterListNoteOccurrencesResponse--;
  return o;
}

void checkListNoteOccurrencesResponse(api.ListNoteOccurrencesResponse o) {
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed50(o.occurrences!);
  }
  buildCounterListNoteOccurrencesResponse--;
}

core.List<api.Note> buildUnnamed51() => [buildNote(), buildNote()];

void checkUnnamed51(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListNotesResponse = 0;
api.ListNotesResponse buildListNotesResponse() {
  final o = api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed51();
    o.unreachable = buildUnnamed52();
  }
  buildCounterListNotesResponse--;
  return o;
}

void checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed51(o.notes!);
    checkUnnamed52(o.unreachable!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed53() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed53(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOccurrencesResponse = 0;
api.ListOccurrencesResponse buildListOccurrencesResponse() {
  final o = api.ListOccurrencesResponse();
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed53();
    o.unreachable = buildUnnamed54();
  }
  buildCounterListOccurrencesResponse--;
  return o;
}

void checkListOccurrencesResponse(api.ListOccurrencesResponse o) {
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.occurrences!);
    checkUnnamed54(o.unreachable!);
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
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RelatedUrl> buildUnnamed56() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed56(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attestationAuthority = buildAuthority();
    o.baseImage = buildBasis();
    o.build = buildBuild();
    o.createTime = 'foo';
    o.deployable = buildDeployable();
    o.discovery = buildDiscovery();
    o.expirationTime = 'foo';
    o.intoto = buildInToto();
    o.kind = 'foo';
    o.longDescription = 'foo';
    o.name = 'foo';
    o.package = buildPackage();
    o.relatedNoteNames = buildUnnamed55();
    o.relatedUrl = buildUnnamed56();
    o.sbom = buildDocumentNote();
    o.sbomReference = buildSBOMReferenceNote();
    o.shortDescription = 'foo';
    o.spdxFile = buildFileNote();
    o.spdxPackage = buildPackageInfoNote();
    o.spdxRelationship = buildRelationshipNote();
    o.updateTime = 'foo';
    o.vulnerability = buildVulnerability();
    o.vulnerabilityAssessment = buildVulnerabilityAssessmentNote();
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkAuthority(o.attestationAuthority!);
    checkBasis(o.baseImage!);
    checkBuild(o.build!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeployable(o.deployable!);
    checkDiscovery(o.discovery!);
    unittest.expect(o.expirationTime!, unittest.equals('foo'));
    checkInToto(o.intoto!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPackage(o.package!);
    checkUnnamed55(o.relatedNoteNames!);
    checkUnnamed56(o.relatedUrl!);
    checkDocumentNote(o.sbom!);
    checkSBOMReferenceNote(o.sbomReference!);
    unittest.expect(o.shortDescription!, unittest.equals('foo'));
    checkFileNote(o.spdxFile!);
    checkPackageInfoNote(o.spdxPackage!);
    checkRelationshipNote(o.spdxRelationship!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkVulnerability(o.vulnerability!);
    checkVulnerabilityAssessmentNote(o.vulnerabilityAssessment!);
  }
  buildCounterNote--;
}

core.int buildCounterOccurrence = 0;
api.Occurrence buildOccurrence() {
  final o = api.Occurrence();
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    o.attestation = buildDetails();
    o.build = buildGrafeasV1beta1BuildDetails();
    o.createTime = 'foo';
    o.deployment = buildGrafeasV1beta1DeploymentDetails();
    o.derivedImage = buildGrafeasV1beta1ImageDetails();
    o.discovered = buildGrafeasV1beta1DiscoveryDetails();
    o.envelope = buildEnvelope();
    o.installation = buildGrafeasV1beta1PackageDetails();
    o.intoto = buildGrafeasV1beta1IntotoDetails();
    o.kind = 'foo';
    o.name = 'foo';
    o.noteName = 'foo';
    o.remediation = 'foo';
    o.resource = buildResource();
    o.sbom = buildDocumentOccurrence();
    o.sbomReference = buildSBOMReferenceOccurrence();
    o.spdxFile = buildFileOccurrence();
    o.spdxPackage = buildPackageInfoOccurrence();
    o.spdxRelationship = buildRelationshipOccurrence();
    o.updateTime = 'foo';
    o.vulnerability = buildGrafeasV1beta1VulnerabilityDetails();
  }
  buildCounterOccurrence--;
  return o;
}

void checkOccurrence(api.Occurrence o) {
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    checkDetails(o.attestation!);
    checkGrafeasV1beta1BuildDetails(o.build!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGrafeasV1beta1DeploymentDetails(o.deployment!);
    checkGrafeasV1beta1ImageDetails(o.derivedImage!);
    checkGrafeasV1beta1DiscoveryDetails(o.discovered!);
    checkEnvelope(o.envelope!);
    checkGrafeasV1beta1PackageDetails(o.installation!);
    checkGrafeasV1beta1IntotoDetails(o.intoto!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.noteName!, unittest.equals('foo'));
    unittest.expect(o.remediation!, unittest.equals('foo'));
    checkResource(o.resource!);
    checkDocumentOccurrence(o.sbom!);
    checkSBOMReferenceOccurrence(o.sbomReference!);
    checkFileOccurrence(o.spdxFile!);
    checkPackageInfoOccurrence(o.spdxPackage!);
    checkRelationshipOccurrence(o.spdxRelationship!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkGrafeasV1beta1VulnerabilityDetails(o.vulnerability!);
  }
  buildCounterOccurrence--;
}

core.List<api.Digest> buildUnnamed57() => [buildDigest(), buildDigest()];

void checkUnnamed57(core.List<api.Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDigest(o[0]);
  checkDigest(o[1]);
}

core.List<api.Distribution> buildUnnamed58() => [
  buildDistribution(),
  buildDistribution(),
];

void checkUnnamed58(core.List<api.Distribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistribution(o[0]);
  checkDistribution(o[1]);
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  final o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.digest = buildUnnamed57();
    o.distribution = buildUnnamed58();
    o.license = buildLicense();
    o.maintainer = 'foo';
    o.name = 'foo';
    o.packageType = 'foo';
    o.url = 'foo';
    o.version = buildVersion();
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    unittest.expect(o.architecture!, unittest.equals('foo'));
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed57(o.digest!);
    checkUnnamed58(o.distribution!);
    checkLicense(o.license!);
    unittest.expect(o.maintainer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterPackage--;
}

core.List<api.ExternalRef> buildUnnamed59() => [
  buildExternalRef(),
  buildExternalRef(),
];

void checkUnnamed59(core.List<api.ExternalRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalRef(o[0]);
  checkExternalRef(o[1]);
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageInfoNote = 0;
api.PackageInfoNote buildPackageInfoNote() {
  final o = api.PackageInfoNote();
  buildCounterPackageInfoNote++;
  if (buildCounterPackageInfoNote < 3) {
    o.analyzed = true;
    o.attribution = 'foo';
    o.checksum = 'foo';
    o.copyright = 'foo';
    o.detailedDescription = 'foo';
    o.downloadLocation = 'foo';
    o.externalRefs = buildUnnamed59();
    o.filesLicenseInfo = buildUnnamed60();
    o.homePage = 'foo';
    o.licenseDeclared = buildLicense();
    o.originator = 'foo';
    o.packageType = 'foo';
    o.summaryDescription = 'foo';
    o.supplier = 'foo';
    o.title = 'foo';
    o.verificationCode = 'foo';
    o.version = 'foo';
  }
  buildCounterPackageInfoNote--;
  return o;
}

void checkPackageInfoNote(api.PackageInfoNote o) {
  buildCounterPackageInfoNote++;
  if (buildCounterPackageInfoNote < 3) {
    unittest.expect(o.analyzed!, unittest.isTrue);
    unittest.expect(o.attribution!, unittest.equals('foo'));
    unittest.expect(o.checksum!, unittest.equals('foo'));
    unittest.expect(o.copyright!, unittest.equals('foo'));
    unittest.expect(o.detailedDescription!, unittest.equals('foo'));
    unittest.expect(o.downloadLocation!, unittest.equals('foo'));
    checkUnnamed59(o.externalRefs!);
    checkUnnamed60(o.filesLicenseInfo!);
    unittest.expect(o.homePage!, unittest.equals('foo'));
    checkLicense(o.licenseDeclared!);
    unittest.expect(o.originator!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.summaryDescription!, unittest.equals('foo'));
    unittest.expect(o.supplier!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.verificationCode!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterPackageInfoNote--;
}

core.int buildCounterPackageInfoOccurrence = 0;
api.PackageInfoOccurrence buildPackageInfoOccurrence() {
  final o = api.PackageInfoOccurrence();
  buildCounterPackageInfoOccurrence++;
  if (buildCounterPackageInfoOccurrence < 3) {
    o.comment = 'foo';
    o.filename = 'foo';
    o.homePage = 'foo';
    o.id = 'foo';
    o.licenseConcluded = buildLicense();
    o.packageType = 'foo';
    o.sourceInfo = 'foo';
    o.summaryDescription = 'foo';
    o.title = 'foo';
    o.version = 'foo';
  }
  buildCounterPackageInfoOccurrence--;
  return o;
}

void checkPackageInfoOccurrence(api.PackageInfoOccurrence o) {
  buildCounterPackageInfoOccurrence++;
  if (buildCounterPackageInfoOccurrence < 3) {
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.filename!, unittest.equals('foo'));
    unittest.expect(o.homePage!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkLicense(o.licenseConcluded!);
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.sourceInfo!, unittest.equals('foo'));
    unittest.expect(o.summaryDescription!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterPackageInfoOccurrence--;
}

core.int buildCounterPackageIssue = 0;
api.PackageIssue buildPackageIssue() {
  final o = api.PackageIssue();
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    o.affectedLocation = buildVulnerabilityLocation();
    o.effectiveSeverity = 'foo';
    o.fixedLocation = buildVulnerabilityLocation();
    o.packageType = 'foo';
    o.severityName = 'foo';
  }
  buildCounterPackageIssue--;
  return o;
}

void checkPackageIssue(api.PackageIssue o) {
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    checkVulnerabilityLocation(o.affectedLocation!);
    unittest.expect(o.effectiveSeverity!, unittest.equals('foo'));
    checkVulnerabilityLocation(o.fixedLocation!);
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.severityName!, unittest.equals('foo'));
  }
  buildCounterPackageIssue--;
}

core.List<api.LicensesSummary> buildUnnamed61() => [
  buildLicensesSummary(),
  buildLicensesSummary(),
];

void checkUnnamed61(core.List<api.LicensesSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLicensesSummary(o[0]);
  checkLicensesSummary(o[1]);
}

core.int buildCounterPackagesSummaryResponse = 0;
api.PackagesSummaryResponse buildPackagesSummaryResponse() {
  final o = api.PackagesSummaryResponse();
  buildCounterPackagesSummaryResponse++;
  if (buildCounterPackagesSummaryResponse < 3) {
    o.licensesSummary = buildUnnamed61();
    o.resourceUrl = 'foo';
  }
  buildCounterPackagesSummaryResponse--;
  return o;
}

void checkPackagesSummaryResponse(api.PackagesSummaryResponse o) {
  buildCounterPackagesSummaryResponse++;
  if (buildCounterPackagesSummaryResponse < 3) {
    checkUnnamed61(o.licensesSummary!);
    unittest.expect(o.resourceUrl!, unittest.equals('foo'));
  }
  buildCounterPackagesSummaryResponse--;
}

core.int buildCounterPgpSignedAttestation = 0;
api.PgpSignedAttestation buildPgpSignedAttestation() {
  final o = api.PgpSignedAttestation();
  buildCounterPgpSignedAttestation++;
  if (buildCounterPgpSignedAttestation < 3) {
    o.contentType = 'foo';
    o.pgpKeyId = 'foo';
    o.signature = 'foo';
  }
  buildCounterPgpSignedAttestation--;
  return o;
}

void checkPgpSignedAttestation(api.PgpSignedAttestation o) {
  buildCounterPgpSignedAttestation++;
  if (buildCounterPgpSignedAttestation < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.pgpKeyId!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
  }
  buildCounterPgpSignedAttestation--;
}

core.List<api.Binding> buildUnnamed62() => [buildBinding(), buildBinding()];

void checkUnnamed62(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed62();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed62(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.genericUri = 'foo';
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.genericUri!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterProduct--;
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
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.repoName!, unittest.equals('foo'));
  }
  buildCounterProjectRepoId--;
}

core.List<api.ResourceDescriptor> buildUnnamed63() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed63(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.Map<core.String, core.String> buildUnnamed64() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed64(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterProvenanceBuilder = 0;
api.ProvenanceBuilder buildProvenanceBuilder() {
  final o = api.ProvenanceBuilder();
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    o.builderDependencies = buildUnnamed63();
    o.id = 'foo';
    o.version = buildUnnamed64();
  }
  buildCounterProvenanceBuilder--;
  return o;
}

void checkProvenanceBuilder(api.ProvenanceBuilder o) {
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    checkUnnamed63(o.builderDependencies!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed64(o.version!);
  }
  buildCounterProvenanceBuilder--;
}

core.int buildCounterPublisher = 0;
api.Publisher buildPublisher() {
  final o = api.Publisher();
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    o.issuingAuthority = 'foo';
    o.name = 'foo';
    o.publisherNamespace = 'foo';
  }
  buildCounterPublisher--;
  return o;
}

void checkPublisher(api.Publisher o) {
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    unittest.expect(o.issuingAuthority!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisherNamespace!, unittest.equals('foo'));
  }
  buildCounterPublisher--;
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
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterRelatedUrl--;
}

core.int buildCounterRelationshipNote = 0;
api.RelationshipNote buildRelationshipNote() {
  final o = api.RelationshipNote();
  buildCounterRelationshipNote++;
  if (buildCounterRelationshipNote < 3) {
    o.type = 'foo';
  }
  buildCounterRelationshipNote--;
  return o;
}

void checkRelationshipNote(api.RelationshipNote o) {
  buildCounterRelationshipNote++;
  if (buildCounterRelationshipNote < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterRelationshipNote--;
}

core.int buildCounterRelationshipOccurrence = 0;
api.RelationshipOccurrence buildRelationshipOccurrence() {
  final o = api.RelationshipOccurrence();
  buildCounterRelationshipOccurrence++;
  if (buildCounterRelationshipOccurrence < 3) {
    o.comment = 'foo';
    o.source = 'foo';
    o.target = 'foo';
    o.type = 'foo';
  }
  buildCounterRelationshipOccurrence--;
  return o;
}

void checkRelationshipOccurrence(api.RelationshipOccurrence o) {
  buildCounterRelationshipOccurrence++;
  if (buildCounterRelationshipOccurrence < 3) {
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.target!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterRelationshipOccurrence--;
}

core.int buildCounterRemediation = 0;
api.Remediation buildRemediation() {
  final o = api.Remediation();
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    o.details = 'foo';
    o.remediationType = 'foo';
    o.remediationUri = buildRelatedUrl();
  }
  buildCounterRemediation--;
  return o;
}

void checkRemediation(api.Remediation o) {
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.remediationType!, unittest.equals('foo'));
    checkRelatedUrl(o.remediationUri!);
  }
  buildCounterRemediation--;
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
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterRepoId--;
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.contentHash = buildHash();
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkHash(o.contentHash!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.Map<core.String, core.Object?> buildUnnamed65() => {
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

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.String> buildUnnamed66() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed66(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterResourceDescriptor = 0;
api.ResourceDescriptor buildResourceDescriptor() {
  final o = api.ResourceDescriptor();
  buildCounterResourceDescriptor++;
  if (buildCounterResourceDescriptor < 3) {
    o.annotations = buildUnnamed65();
    o.content = 'foo';
    o.digest = buildUnnamed66();
    o.downloadLocation = 'foo';
    o.mediaType = 'foo';
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterResourceDescriptor--;
  return o;
}

void checkResourceDescriptor(api.ResourceDescriptor o) {
  buildCounterResourceDescriptor++;
  if (buildCounterResourceDescriptor < 3) {
    checkUnnamed65(o.annotations!);
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed66(o.digest!);
    unittest.expect(o.downloadLocation!, unittest.equals('foo'));
    unittest.expect(o.mediaType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterResourceDescriptor--;
}

core.List<api.ResourceDescriptor> buildUnnamed67() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed67(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.int buildCounterRunDetails = 0;
api.RunDetails buildRunDetails() {
  final o = api.RunDetails();
  buildCounterRunDetails++;
  if (buildCounterRunDetails < 3) {
    o.builder = buildProvenanceBuilder();
    o.byproducts = buildUnnamed67();
    o.metadata = buildBuildMetadata();
  }
  buildCounterRunDetails--;
  return o;
}

void checkRunDetails(api.RunDetails o) {
  buildCounterRunDetails++;
  if (buildCounterRunDetails < 3) {
    checkProvenanceBuilder(o.builder!);
    checkUnnamed67(o.byproducts!);
    checkBuildMetadata(o.metadata!);
  }
  buildCounterRunDetails--;
}

core.int buildCounterSBOMReferenceNote = 0;
api.SBOMReferenceNote buildSBOMReferenceNote() {
  final o = api.SBOMReferenceNote();
  buildCounterSBOMReferenceNote++;
  if (buildCounterSBOMReferenceNote < 3) {
    o.format = 'foo';
    o.version = 'foo';
  }
  buildCounterSBOMReferenceNote--;
  return o;
}

void checkSBOMReferenceNote(api.SBOMReferenceNote o) {
  buildCounterSBOMReferenceNote++;
  if (buildCounterSBOMReferenceNote < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSBOMReferenceNote--;
}

core.List<api.EnvelopeSignature> buildUnnamed68() => [
  buildEnvelopeSignature(),
  buildEnvelopeSignature(),
];

void checkUnnamed68(core.List<api.EnvelopeSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvelopeSignature(o[0]);
  checkEnvelopeSignature(o[1]);
}

core.int buildCounterSBOMReferenceOccurrence = 0;
api.SBOMReferenceOccurrence buildSBOMReferenceOccurrence() {
  final o = api.SBOMReferenceOccurrence();
  buildCounterSBOMReferenceOccurrence++;
  if (buildCounterSBOMReferenceOccurrence < 3) {
    o.payload = buildSbomReferenceIntotoPayload();
    o.payloadType = 'foo';
    o.signatures = buildUnnamed68();
  }
  buildCounterSBOMReferenceOccurrence--;
  return o;
}

void checkSBOMReferenceOccurrence(api.SBOMReferenceOccurrence o) {
  buildCounterSBOMReferenceOccurrence++;
  if (buildCounterSBOMReferenceOccurrence < 3) {
    checkSbomReferenceIntotoPayload(o.payload!);
    unittest.expect(o.payloadType!, unittest.equals('foo'));
    checkUnnamed68(o.signatures!);
  }
  buildCounterSBOMReferenceOccurrence--;
}

core.int buildCounterSBOMStatus = 0;
api.SBOMStatus buildSBOMStatus() {
  final o = api.SBOMStatus();
  buildCounterSBOMStatus++;
  if (buildCounterSBOMStatus < 3) {
    o.error = 'foo';
    o.sbomState = 'foo';
  }
  buildCounterSBOMStatus--;
  return o;
}

void checkSBOMStatus(api.SBOMStatus o) {
  buildCounterSBOMStatus++;
  if (buildCounterSBOMStatus < 3) {
    unittest.expect(o.error!, unittest.equals('foo'));
    unittest.expect(o.sbomState!, unittest.equals('foo'));
  }
  buildCounterSBOMStatus--;
}

core.List<api.Subject> buildUnnamed69() => [buildSubject(), buildSubject()];

void checkUnnamed69(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterSbomReferenceIntotoPayload = 0;
api.SbomReferenceIntotoPayload buildSbomReferenceIntotoPayload() {
  final o = api.SbomReferenceIntotoPayload();
  buildCounterSbomReferenceIntotoPayload++;
  if (buildCounterSbomReferenceIntotoPayload < 3) {
    o.P_type = 'foo';
    o.predicate = buildSbomReferenceIntotoPredicate();
    o.predicateType = 'foo';
    o.subject = buildUnnamed69();
  }
  buildCounterSbomReferenceIntotoPayload--;
  return o;
}

void checkSbomReferenceIntotoPayload(api.SbomReferenceIntotoPayload o) {
  buildCounterSbomReferenceIntotoPayload++;
  if (buildCounterSbomReferenceIntotoPayload < 3) {
    unittest.expect(o.P_type!, unittest.equals('foo'));
    checkSbomReferenceIntotoPredicate(o.predicate!);
    unittest.expect(o.predicateType!, unittest.equals('foo'));
    checkUnnamed69(o.subject!);
  }
  buildCounterSbomReferenceIntotoPayload--;
}

core.Map<core.String, core.String> buildUnnamed70() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed70(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSbomReferenceIntotoPredicate = 0;
api.SbomReferenceIntotoPredicate buildSbomReferenceIntotoPredicate() {
  final o = api.SbomReferenceIntotoPredicate();
  buildCounterSbomReferenceIntotoPredicate++;
  if (buildCounterSbomReferenceIntotoPredicate < 3) {
    o.digest = buildUnnamed70();
    o.location = 'foo';
    o.mimeType = 'foo';
    o.referrerId = 'foo';
  }
  buildCounterSbomReferenceIntotoPredicate--;
  return o;
}

void checkSbomReferenceIntotoPredicate(api.SbomReferenceIntotoPredicate o) {
  buildCounterSbomReferenceIntotoPredicate++;
  if (buildCounterSbomReferenceIntotoPredicate < 3) {
    checkUnnamed70(o.digest!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.referrerId!, unittest.equals('foo'));
  }
  buildCounterSbomReferenceIntotoPredicate--;
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
    unittest.expect(o.publicKeyId!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
  }
  buildCounterSignature--;
}

core.int buildCounterSigningKey = 0;
api.SigningKey buildSigningKey() {
  final o = api.SigningKey();
  buildCounterSigningKey++;
  if (buildCounterSigningKey < 3) {
    o.keyId = 'foo';
    o.keyScheme = 'foo';
    o.keyType = 'foo';
    o.publicKeyValue = 'foo';
  }
  buildCounterSigningKey--;
  return o;
}

void checkSigningKey(api.SigningKey o) {
  buildCounterSigningKey++;
  if (buildCounterSigningKey < 3) {
    unittest.expect(o.keyId!, unittest.equals('foo'));
    unittest.expect(o.keyScheme!, unittest.equals('foo'));
    unittest.expect(o.keyType!, unittest.equals('foo'));
    unittest.expect(o.publicKeyValue!, unittest.equals('foo'));
  }
  buildCounterSigningKey--;
}

core.int buildCounterSlsaProvenanceV1 = 0;
api.SlsaProvenanceV1 buildSlsaProvenanceV1() {
  final o = api.SlsaProvenanceV1();
  buildCounterSlsaProvenanceV1++;
  if (buildCounterSlsaProvenanceV1 < 3) {
    o.buildDefinition = buildBuildDefinition();
    o.runDetails = buildRunDetails();
  }
  buildCounterSlsaProvenanceV1--;
  return o;
}

void checkSlsaProvenanceV1(api.SlsaProvenanceV1 o) {
  buildCounterSlsaProvenanceV1++;
  if (buildCounterSlsaProvenanceV1 < 3) {
    checkBuildDefinition(o.buildDefinition!);
    checkRunDetails(o.runDetails!);
  }
  buildCounterSlsaProvenanceV1--;
}

core.List<api.SourceContext> buildUnnamed71() => [
  buildSourceContext(),
  buildSourceContext(),
];

void checkUnnamed71(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.Map<core.String, api.FileHashes> buildUnnamed72() => {
  'x': buildFileHashes(),
  'y': buildFileHashes(),
};

void checkUnnamed72(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed71();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed72();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed71(o.additionalContexts!);
    unittest.expect(o.artifactStorageSourceUri!, unittest.equals('foo'));
    checkSourceContext(o.context!);
    checkUnnamed72(o.fileHashes!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed73() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed73(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  final o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
    o.labels = buildUnnamed73();
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
    checkUnnamed73(o.labels!);
  }
  buildCounterSourceContext--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed75() => [
  buildUnnamed74(),
  buildUnnamed74(),
];

void checkUnnamed75(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed74(o[0]);
  checkUnnamed74(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed75();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed75(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, core.String> buildUnnamed76() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed76(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.digest = buildUnnamed76();
    o.name = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    checkUnnamed76(o.digest!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed77();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed77(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed78() => ['foo', 'foo'];

void checkUnnamed78(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed78();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed78(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  final o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.epoch = 42;
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
    unittest.expect(o.epoch!, unittest.equals(42));
    unittest.expect(o.inclusive!, unittest.isTrue);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals('foo'));
  }
  buildCounterVersion--;
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RelatedUrl> buildUnnamed80() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed80(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.List<api.Remediation> buildUnnamed81() => [
  buildRemediation(),
  buildRemediation(),
];

void checkUnnamed81(core.List<api.Remediation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemediation(o[0]);
  checkRemediation(o[1]);
}

core.int buildCounterVexAssessment = 0;
api.VexAssessment buildVexAssessment() {
  final o = api.VexAssessment();
  buildCounterVexAssessment++;
  if (buildCounterVexAssessment < 3) {
    o.cve = 'foo';
    o.impacts = buildUnnamed79();
    o.justification = buildJustification();
    o.noteName = 'foo';
    o.relatedUris = buildUnnamed80();
    o.remediations = buildUnnamed81();
    o.state = 'foo';
    o.vulnerabilityId = 'foo';
  }
  buildCounterVexAssessment--;
  return o;
}

void checkVexAssessment(api.VexAssessment o) {
  buildCounterVexAssessment++;
  if (buildCounterVexAssessment < 3) {
    unittest.expect(o.cve!, unittest.equals('foo'));
    checkUnnamed79(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(o.noteName!, unittest.equals('foo'));
    checkUnnamed80(o.relatedUris!);
    checkUnnamed81(o.remediations!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.vulnerabilityId!, unittest.equals('foo'));
  }
  buildCounterVexAssessment--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Detail> buildUnnamed83() => [buildDetail(), buildDetail()];

void checkUnnamed83(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0]);
  checkDetail(o[1]);
}

core.List<api.WindowsDetail> buildUnnamed84() => [
  buildWindowsDetail(),
  buildWindowsDetail(),
];

void checkUnnamed84(core.List<api.WindowsDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsDetail(o[0]);
  checkWindowsDetail(o[1]);
}

core.int buildCounterVulnerability = 0;
api.Vulnerability buildVulnerability() {
  final o = api.Vulnerability();
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    o.cvssScore = 42.0;
    o.cvssV2 = buildCVSS();
    o.cvssV3 = buildCVSSv3();
    o.cvssVersion = 'foo';
    o.cwe = buildUnnamed82();
    o.details = buildUnnamed83();
    o.severity = 'foo';
    o.sourceUpdateTime = 'foo';
    o.windowsDetails = buildUnnamed84();
  }
  buildCounterVulnerability--;
  return o;
}

void checkVulnerability(api.Vulnerability o) {
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    unittest.expect(o.cvssScore!, unittest.equals(42.0));
    checkCVSS(o.cvssV2!);
    checkCVSSv3(o.cvssV3!);
    unittest.expect(o.cvssVersion!, unittest.equals('foo'));
    checkUnnamed82(o.cwe!);
    checkUnnamed83(o.details!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.sourceUpdateTime!, unittest.equals('foo'));
    checkUnnamed84(o.windowsDetails!);
  }
  buildCounterVulnerability--;
}

core.int buildCounterVulnerabilityAssessmentNote = 0;
api.VulnerabilityAssessmentNote buildVulnerabilityAssessmentNote() {
  final o = api.VulnerabilityAssessmentNote();
  buildCounterVulnerabilityAssessmentNote++;
  if (buildCounterVulnerabilityAssessmentNote < 3) {
    o.assessment = buildAssessment();
    o.languageCode = 'foo';
    o.longDescription = 'foo';
    o.product = buildProduct();
    o.publisher = buildPublisher();
    o.shortDescription = 'foo';
    o.title = 'foo';
  }
  buildCounterVulnerabilityAssessmentNote--;
  return o;
}

void checkVulnerabilityAssessmentNote(api.VulnerabilityAssessmentNote o) {
  buildCounterVulnerabilityAssessmentNote++;
  if (buildCounterVulnerabilityAssessmentNote < 3) {
    checkAssessment(o.assessment!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    checkProduct(o.product!);
    checkPublisher(o.publisher!);
    unittest.expect(o.shortDescription!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterVulnerabilityAssessmentNote--;
}

core.int buildCounterVulnerabilityLocation = 0;
api.VulnerabilityLocation buildVulnerabilityLocation() {
  final o = api.VulnerabilityLocation();
  buildCounterVulnerabilityLocation++;
  if (buildCounterVulnerabilityLocation < 3) {
    o.cpeUri = 'foo';
    o.package = 'foo';
    o.version = buildVersion();
  }
  buildCounterVulnerabilityLocation--;
  return o;
}

void checkVulnerabilityLocation(api.VulnerabilityLocation o) {
  buildCounterVulnerabilityLocation++;
  if (buildCounterVulnerabilityLocation < 3) {
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.package!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterVulnerabilityLocation--;
}

core.List<api.FixableTotalByDigest> buildUnnamed85() => [
  buildFixableTotalByDigest(),
  buildFixableTotalByDigest(),
];

void checkUnnamed85(core.List<api.FixableTotalByDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixableTotalByDigest(o[0]);
  checkFixableTotalByDigest(o[1]);
}

core.List<core.String> buildUnnamed86() => ['foo', 'foo'];

void checkUnnamed86(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVulnerabilityOccurrencesSummary = 0;
api.VulnerabilityOccurrencesSummary buildVulnerabilityOccurrencesSummary() {
  final o = api.VulnerabilityOccurrencesSummary();
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    o.counts = buildUnnamed85();
    o.unreachable = buildUnnamed86();
  }
  buildCounterVulnerabilityOccurrencesSummary--;
  return o;
}

void checkVulnerabilityOccurrencesSummary(
  api.VulnerabilityOccurrencesSummary o,
) {
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    checkUnnamed85(o.counts!);
    checkUnnamed86(o.unreachable!);
  }
  buildCounterVulnerabilityOccurrencesSummary--;
}

core.List<api.KnowledgeBase> buildUnnamed87() => [
  buildKnowledgeBase(),
  buildKnowledgeBase(),
];

void checkUnnamed87(core.List<api.KnowledgeBase> o) {
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
    o.fixingKbs = buildUnnamed87();
    o.name = 'foo';
  }
  buildCounterWindowsDetail--;
  return o;
}

void checkWindowsDetail(api.WindowsDetail o) {
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed87(o.fixingKbs!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterWindowsDetail--;
}

void main() {
  unittest.group('obj-schema-AliasContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAliasContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AliasContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAliasContext(od);
    });
  });

  unittest.group('obj-schema-AnalysisCompleted', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalysisCompleted();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalysisCompleted.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalysisCompleted(od);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Artifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifact(od);
    });
  });

  unittest.group('obj-schema-ArtifactHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactHashes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifactHashes(od);
    });
  });

  unittest.group('obj-schema-ArtifactRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifactRule(od);
    });
  });

  unittest.group('obj-schema-Assessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Assessment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssessment(od);
    });
  });

  unittest.group('obj-schema-Attestation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attestation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestation(od);
    });
  });

  unittest.group('obj-schema-Authority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authority.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthority(od);
    });
  });

  unittest.group('obj-schema-Basis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Basis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBasis(od);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateNotesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateNotesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateNotesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateNotesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateNotesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateOccurrencesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateOccurrencesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateOccurrencesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateOccurrencesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateOccurrencesResponse(od);
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

  unittest.group('obj-schema-Build', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuild();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Build.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuild(od);
    });
  });

  unittest.group('obj-schema-BuildDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildDefinition(od);
    });
  });

  unittest.group('obj-schema-BuildMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildMetadata(od);
    });
  });

  unittest.group('obj-schema-BuildProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildProvenance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildProvenance(od);
    });
  });

  unittest.group('obj-schema-BuildSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildSignature(od);
    });
  });

  unittest.group('obj-schema-ByProducts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildByProducts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ByProducts.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkByProducts(od);
    });
  });

  unittest.group('obj-schema-CVSS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CVSS.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCVSS(od);
    });
  });

  unittest.group('obj-schema-CVSSv3', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSSv3();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CVSSv3.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCVSSv3(od);
    });
  });

  unittest.group('obj-schema-CloudRepoSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRepoSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRepoSourceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRepoSourceContext(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Command.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-Deployable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deployable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployable(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployment(od);
    });
  });

  unittest.group('obj-schema-Derived', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDerived();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Derived.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDerived(od);
    });
  });

  unittest.group('obj-schema-Detail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Detail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetail(od);
    });
  });

  unittest.group('obj-schema-Details', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Details.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetails(od);
    });
  });

  unittest.group('obj-schema-Digest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Digest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDigest(od);
    });
  });

  unittest.group('obj-schema-Discovered', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscovered();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Discovered.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscovered(od);
    });
  });

  unittest.group('obj-schema-Discovery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscovery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Discovery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscovery(od);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDistribution(od);
    });
  });

  unittest.group('obj-schema-DocumentNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentNote(od);
    });
  });

  unittest.group('obj-schema-DocumentOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentOccurrence(od);
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

  unittest.group('obj-schema-Envelope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvelope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Envelope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvelope(od);
    });
  });

  unittest.group('obj-schema-EnvelopeSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvelopeSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvelopeSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvelopeSignature(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-ExportSBOMRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportSBOMRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportSBOMRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportSBOMRequest(od);
    });
  });

  unittest.group('obj-schema-ExportSBOMResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportSBOMResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportSBOMResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportSBOMResponse(od);
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

  unittest.group('obj-schema-ExternalRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalRef.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExternalRef(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.File.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileHashes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileHashes(od);
    });
  });

  unittest.group('obj-schema-FileNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileNote(od);
    });
  });

  unittest.group('obj-schema-FileOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileOccurrence(od);
    });
  });

  unittest.group('obj-schema-Fingerprint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFingerprint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Fingerprint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFingerprint(od);
    });
  });

  unittest.group('obj-schema-FixableTotalByDigest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixableTotalByDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixableTotalByDigest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFixableTotalByDigest(od);
    });
  });

  unittest.group('obj-schema-GeneratePackagesSummaryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratePackagesSummaryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratePackagesSummaryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeneratePackagesSummaryRequest(od);
    });
  });

  unittest.group('obj-schema-GenericSignedAttestation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericSignedAttestation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericSignedAttestation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericSignedAttestation(od);
    });
  });

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGerritSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GerritSourceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGerritSourceContext(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GitSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitSourceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitSourceContext(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1BuildDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1BuildDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1BuildDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1BuildDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1DeploymentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1DeploymentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1DeploymentDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1DeploymentDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1DiscoveryDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1DiscoveryDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1DiscoveryDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1DiscoveryDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1ImageDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1ImageDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1ImageDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1ImageDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1IntotoArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1IntotoArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1IntotoArtifact(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1IntotoDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1IntotoDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1IntotoDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1IntotoSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1IntotoSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1IntotoSignature(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1PackageDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1PackageDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1PackageDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1PackageDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1VulnerabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1beta1VulnerabilityDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1beta1VulnerabilityDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1beta1VulnerabilityDetails(od);
    });
  });

  unittest.group('obj-schema-Hash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hash.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHash(od);
    });
  });

  unittest.group('obj-schema-Hint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHint(od);
    });
  });

  unittest.group('obj-schema-InToto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInToto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InToto.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInToto(od);
    });
  });

  unittest.group('obj-schema-InTotoSlsaProvenanceV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoSlsaProvenanceV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoSlsaProvenanceV1.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInTotoSlsaProvenanceV1(od);
    });
  });

  unittest.group('obj-schema-Installation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Installation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstallation(od);
    });
  });

  unittest.group('obj-schema-Justification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJustification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Justification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJustification(od);
    });
  });

  unittest.group('obj-schema-KnowledgeBase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKnowledgeBase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KnowledgeBase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKnowledgeBase(od);
    });
  });

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Layer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLayer(od);
    });
  });

  unittest.group('obj-schema-License', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.License.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLicense(od);
    });
  });

  unittest.group('obj-schema-LicensesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLicensesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LicensesSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLicensesSummary(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Link.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLink(od);
    });
  });

  unittest.group('obj-schema-ListNoteOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNoteOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNoteOccurrencesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNoteOccurrencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNotesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOccurrencesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOccurrencesResponse(od);
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

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Note.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNote(od);
    });
  });

  unittest.group('obj-schema-Occurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Occurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOccurrence(od);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Package.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackage(od);
    });
  });

  unittest.group('obj-schema-PackageInfoNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageInfoNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageInfoNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageInfoNote(od);
    });
  });

  unittest.group('obj-schema-PackageInfoOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageInfoOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageInfoOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageInfoOccurrence(od);
    });
  });

  unittest.group('obj-schema-PackageIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageIssue(od);
    });
  });

  unittest.group('obj-schema-PackagesSummaryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackagesSummaryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackagesSummaryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackagesSummaryResponse(od);
    });
  });

  unittest.group('obj-schema-PgpSignedAttestation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPgpSignedAttestation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PgpSignedAttestation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPgpSignedAttestation(od);
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

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Product.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProjectRepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectRepoId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProjectRepoId(od);
    });
  });

  unittest.group('obj-schema-ProvenanceBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvenanceBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvenanceBuilder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvenanceBuilder(od);
    });
  });

  unittest.group('obj-schema-Publisher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Publisher.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublisher(od);
    });
  });

  unittest.group('obj-schema-RelatedUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelatedUrl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelatedUrl(od);
    });
  });

  unittest.group('obj-schema-RelationshipNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelationshipNote(od);
    });
  });

  unittest.group('obj-schema-RelationshipOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelationshipOccurrence(od);
    });
  });

  unittest.group('obj-schema-Remediation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemediation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Remediation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemediation(od);
    });
  });

  unittest.group('obj-schema-RepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepoId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepoId(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceDescriptor(od);
    });
  });

  unittest.group('obj-schema-RunDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunDetails(od);
    });
  });

  unittest.group('obj-schema-SBOMReferenceNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSBOMReferenceNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SBOMReferenceNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSBOMReferenceNote(od);
    });
  });

  unittest.group('obj-schema-SBOMReferenceOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSBOMReferenceOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SBOMReferenceOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSBOMReferenceOccurrence(od);
    });
  });

  unittest.group('obj-schema-SBOMStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSBOMStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SBOMStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSBOMStatus(od);
    });
  });

  unittest.group('obj-schema-SbomReferenceIntotoPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSbomReferenceIntotoPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SbomReferenceIntotoPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSbomReferenceIntotoPayload(od);
    });
  });

  unittest.group('obj-schema-SbomReferenceIntotoPredicate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSbomReferenceIntotoPredicate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SbomReferenceIntotoPredicate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSbomReferenceIntotoPredicate(od);
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

  unittest.group('obj-schema-SigningKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigningKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigningKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSigningKey(od);
    });
  });

  unittest.group('obj-schema-SlsaProvenanceV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenanceV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenanceV1.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaProvenanceV1(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Source.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSourceContext(od);
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

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubject(od);
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

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Version.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVersion(od);
    });
  });

  unittest.group('obj-schema-VexAssessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVexAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VexAssessment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVexAssessment(od);
    });
  });

  unittest.group('obj-schema-Vulnerability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vulnerability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerability(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityAssessmentNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityAssessmentNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityAssessmentNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityAssessmentNote(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityLocation(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrencesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrencesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrencesSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityOccurrencesSummary(od);
    });
  });

  unittest.group('obj-schema-WindowsDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWindowsDetail(od);
    });
  });

  unittest.group('resource-ProjectsLocationsNotesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
      final arg_request = buildBatchCreateNotesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateNotesRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildBatchCreateNotesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateNotesResponse(response as api.BatchCreateNotesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
      final arg_request = buildNote();
      final arg_parent = 'foo';
      final arg_noteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Note.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNote(obj);

          final path = req.url.path;
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
            queryMap['noteId']!.first,
            unittest.equals(arg_noteId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildNote());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        noteId: arg_noteId,
        $fields: arg_$fields,
      );
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
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
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
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
          final resp = convert.json.encode(buildNote());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

          final path = req.url.path;
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListNotesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListNotesResponse(response as api.ListNotesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
      final arg_request = buildNote();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Note.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNote(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildNote());
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
      checkNote(response as api.Note);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
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
      final res = api.ContainerAnalysisApi(mock).projects.locations.notes;
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

  unittest.group('resource-ProjectsLocationsNotesOccurrencesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContainerAnalysisApi(mock).projects.locations.notes.occurrences;
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
          final resp = convert.json.encode(buildListNoteOccurrencesResponse());
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
      checkListNoteOccurrencesResponse(
        response as api.ListNoteOccurrencesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOccurrencesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
      final arg_request = buildBatchCreateOccurrencesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateOccurrencesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateOccurrencesRequest(obj);

          final path = req.url.path;
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
            buildBatchCreateOccurrencesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateOccurrencesResponse(
        response as api.BatchCreateOccurrencesResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
      final arg_request = buildOccurrence();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOccurrence(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildOccurrence());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
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
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
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
          final resp = convert.json.encode(buildOccurrence());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

          final path = req.url.path;
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getNotes', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
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
          final resp = convert.json.encode(buildNote());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getNotes(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getVulnerabilitySummary', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildVulnerabilityOccurrencesSummary(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getVulnerabilitySummary(
        arg_parent,
        filter: arg_filter,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkVulnerabilityOccurrencesSummary(
        response as api.VulnerabilityOccurrencesSummary,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOccurrencesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOccurrencesResponse(response as api.ListOccurrencesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
      final arg_request = buildOccurrence();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOccurrence(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildOccurrence());
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
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
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
      final res = api.ContainerAnalysisApi(mock).projects.locations.occurrences;
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

  unittest.group('resource-ProjectsLocationsResourcesResource', () {
    unittest.test('method--exportSBOM', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.resources;
      final arg_request = buildExportSBOMRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportSBOMRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportSBOMRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildExportSBOMResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportSBOM(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExportSBOMResponse(response as api.ExportSBOMResponse);
    });

    unittest.test('method--generatePackagesSummary', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.locations.resources;
      final arg_request = buildGeneratePackagesSummaryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GeneratePackagesSummaryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGeneratePackagesSummaryRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildPackagesSummaryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generatePackagesSummary(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPackagesSummaryResponse(response as api.PackagesSummaryResponse);
    });
  });

  unittest.group('resource-ProjectsNotesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildBatchCreateNotesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateNotesRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildBatchCreateNotesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateNotesResponse(response as api.BatchCreateNotesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_parent = 'foo';
      final arg_noteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Note.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNote(obj);

          final path = req.url.path;
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
            queryMap['noteId']!.first,
            unittest.equals(arg_noteId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildNote());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        noteId: arg_noteId,
        $fields: arg_$fields,
      );
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
          final resp = convert.json.encode(buildNote());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

          final path = req.url.path;
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListNotesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListNotesResponse(response as api.ListNotesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Note.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNote(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildNote());
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
      checkNote(response as api.Note);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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
      final res = api.ContainerAnalysisApi(mock).projects.notes;
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

  unittest.group('resource-ProjectsNotesOccurrencesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes.occurrences;
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
          final resp = convert.json.encode(buildListNoteOccurrencesResponse());
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
      checkListNoteOccurrencesResponse(
        response as api.ListNoteOccurrencesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsOccurrencesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildBatchCreateOccurrencesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateOccurrencesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateOccurrencesRequest(obj);

          final path = req.url.path;
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
            buildBatchCreateOccurrencesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateOccurrencesResponse(
        response as api.BatchCreateOccurrencesResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOccurrence(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildOccurrence());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
          final resp = convert.json.encode(buildOccurrence());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

          final path = req.url.path;
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getNotes', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
          final resp = convert.json.encode(buildNote());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getNotes(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getVulnerabilitySummary', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildVulnerabilityOccurrencesSummary(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getVulnerabilitySummary(
        arg_parent,
        filter: arg_filter,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkVulnerabilityOccurrencesSummary(
        response as api.VulnerabilityOccurrencesSummary,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOccurrencesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOccurrencesResponse(response as api.ListOccurrencesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOccurrence(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildOccurrence());
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
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
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

  unittest.group('resource-ProjectsResourcesResource', () {
    unittest.test('method--exportSBOM', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.resources;
      final arg_request = buildExportSBOMRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportSBOMRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportSBOMRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildExportSBOMResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportSBOM(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExportSBOMResponse(response as api.ExportSBOMResponse);
    });

    unittest.test('method--generatePackagesSummary', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.resources;
      final arg_request = buildGeneratePackagesSummaryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GeneratePackagesSummaryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGeneratePackagesSummaryRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildPackagesSummaryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generatePackagesSummary(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPackagesSummaryResponse(response as api.PackagesSummaryResponse);
    });
  });
}
