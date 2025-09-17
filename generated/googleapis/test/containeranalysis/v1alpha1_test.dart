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

import 'package:googleapis/containeranalysis/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
    o.name = 'foo';
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
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.names!);
  }
  buildCounterArtifact--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.URI> buildUnnamed3() => [buildURI(), buildURI()];

void checkUnnamed3(core.List<api.URI> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkURI(o[0]);
  checkURI(o[1]);
}

core.List<api.Remediation> buildUnnamed4() => [
  buildRemediation(),
  buildRemediation(),
];

void checkUnnamed4(core.List<api.Remediation> o) {
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
    o.impacts = buildUnnamed2();
    o.justification = buildJustification();
    o.longDescription = 'foo';
    o.relatedUris = buildUnnamed3();
    o.remediations = buildUnnamed4();
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
    checkUnnamed2(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    checkUnnamed3(o.relatedUris!);
    checkUnnamed4(o.remediations!);
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
    o.pgpSignedAttestation = buildPgpSignedAttestation();
  }
  buildCounterAttestation--;
  return o;
}

void checkAttestation(api.Attestation o) {
  buildCounterAttestation++;
  if (buildCounterAttestation < 3) {
    checkPgpSignedAttestation(o.pgpSignedAttestation!);
  }
  buildCounterAttestation--;
}

core.int buildCounterAttestationAuthority = 0;
api.AttestationAuthority buildAttestationAuthority() {
  final o = api.AttestationAuthority();
  buildCounterAttestationAuthority++;
  if (buildCounterAttestationAuthority < 3) {
    o.hint = buildAttestationAuthorityHint();
  }
  buildCounterAttestationAuthority--;
  return o;
}

void checkAttestationAuthority(api.AttestationAuthority o) {
  buildCounterAttestationAuthority++;
  if (buildCounterAttestationAuthority < 3) {
    checkAttestationAuthorityHint(o.hint!);
  }
  buildCounterAttestationAuthority--;
}

core.int buildCounterAttestationAuthorityHint = 0;
api.AttestationAuthorityHint buildAttestationAuthorityHint() {
  final o = api.AttestationAuthorityHint();
  buildCounterAttestationAuthorityHint++;
  if (buildCounterAttestationAuthorityHint < 3) {
    o.humanReadableName = 'foo';
  }
  buildCounterAttestationAuthorityHint--;
  return o;
}

void checkAttestationAuthorityHint(api.AttestationAuthorityHint o) {
  buildCounterAttestationAuthorityHint++;
  if (buildCounterAttestationAuthorityHint < 3) {
    unittest.expect(o.humanReadableName!, unittest.equals('foo'));
  }
  buildCounterAttestationAuthorityHint--;
}

core.int buildCounterBaseImage = 0;
api.BaseImage buildBaseImage() {
  final o = api.BaseImage();
  buildCounterBaseImage++;
  if (buildCounterBaseImage < 3) {
    o.layerCount = 42;
    o.name = 'foo';
    o.repository = 'foo';
  }
  buildCounterBaseImage--;
  return o;
}

void checkBaseImage(api.BaseImage o) {
  buildCounterBaseImage++;
  if (buildCounterBaseImage < 3) {
    unittest.expect(o.layerCount!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.repository!, unittest.equals('foo'));
  }
  buildCounterBaseImage--;
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

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
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
    o.members = buildUnnamed5();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed5(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.List<api.ResourceDescriptor> buildUnnamed8() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed8(core.List<api.ResourceDescriptor> o) {
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
    o.externalParameters = buildUnnamed6();
    o.internalParameters = buildUnnamed7();
    o.resolvedDependencies = buildUnnamed8();
  }
  buildCounterBuildDefinition--;
  return o;
}

void checkBuildDefinition(api.BuildDefinition o) {
  buildCounterBuildDefinition++;
  if (buildCounterBuildDefinition < 3) {
    unittest.expect(o.buildType!, unittest.equals('foo'));
    checkUnnamed6(o.externalParameters!);
    checkUnnamed7(o.internalParameters!);
    checkUnnamed8(o.resolvedDependencies!);
  }
  buildCounterBuildDefinition--;
}

core.int buildCounterBuildDetails = 0;
api.BuildDetails buildBuildDetails() {
  final o = api.BuildDetails();
  buildCounterBuildDetails++;
  if (buildCounterBuildDetails < 3) {
    o.inTotoSlsaProvenanceV1 = buildInTotoSlsaProvenanceV1();
    o.intotoProvenance = buildInTotoProvenance();
    o.intotoStatement = buildInTotoStatement();
    o.provenance = buildBuildProvenance();
    o.provenanceBytes = 'foo';
  }
  buildCounterBuildDetails--;
  return o;
}

void checkBuildDetails(api.BuildDetails o) {
  buildCounterBuildDetails++;
  if (buildCounterBuildDetails < 3) {
    checkInTotoSlsaProvenanceV1(o.inTotoSlsaProvenanceV1!);
    checkInTotoProvenance(o.intotoProvenance!);
    checkInTotoStatement(o.intotoStatement!);
    checkBuildProvenance(o.provenance!);
    unittest.expect(o.provenanceBytes!, unittest.equals('foo'));
  }
  buildCounterBuildDetails--;
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

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Artifact> buildUnnamed10() => [buildArtifact(), buildArtifact()];

void checkUnnamed10(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Command> buildUnnamed11() => [buildCommand(), buildCommand()];

void checkUnnamed11(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  final o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed9();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed10();
    o.commands = buildUnnamed11();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.finishTime = 'foo';
    o.id = 'foo';
    o.logsBucket = 'foo';
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
    checkUnnamed9(o.buildOptions!);
    unittest.expect(o.builderVersion!, unittest.equals('foo'));
    checkUnnamed10(o.builtArtifacts!);
    checkUnnamed11(o.commands!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    unittest.expect(o.finishTime!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.logsBucket!, unittest.equals('foo'));
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

core.int buildCounterBuildType = 0;
api.BuildType buildBuildType() {
  final o = api.BuildType();
  buildCounterBuildType++;
  if (buildCounterBuildType < 3) {
    o.builderVersion = 'foo';
    o.signature = buildBuildSignature();
  }
  buildCounterBuildType--;
  return o;
}

void checkBuildType(api.BuildType o) {
  buildCounterBuildType++;
  if (buildCounterBuildType < 3) {
    unittest.expect(o.builderVersion!, unittest.equals('foo'));
    checkBuildSignature(o.signature!);
  }
  buildCounterBuildType--;
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
    unittest.expect(o.id!, unittest.equals('foo'));
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
    unittest.expect(o.profileLevel!, unittest.equals(42));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterCisBenchmark--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed12();
    o.dir = 'foo';
    o.env = buildUnnamed13();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed14();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed12(o.args!);
    unittest.expect(o.dir!, unittest.equals('foo'));
    checkUnnamed13(o.env!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed14(o.waitFor!);
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

core.List<api.ComplianceVersion> buildUnnamed15() => [
  buildComplianceVersion(),
  buildComplianceVersion(),
];

void checkUnnamed15(core.List<api.ComplianceVersion> o) {
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
    o.impact = 'foo';
    o.rationale = 'foo';
    o.remediation = 'foo';
    o.scanInstructions = 'foo';
    o.title = 'foo';
    o.version = buildUnnamed15();
  }
  buildCounterComplianceNote--;
  return o;
}

void checkComplianceNote(api.ComplianceNote o) {
  buildCounterComplianceNote++;
  if (buildCounterComplianceNote < 3) {
    checkCisBenchmark(o.cisBenchmark!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.impact!, unittest.equals('foo'));
    unittest.expect(o.rationale!, unittest.equals('foo'));
    unittest.expect(o.remediation!, unittest.equals('foo'));
    unittest.expect(o.scanInstructions!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    checkUnnamed15(o.version!);
  }
  buildCounterComplianceNote--;
}

core.List<api.NonCompliantFile> buildUnnamed16() => [
  buildNonCompliantFile(),
  buildNonCompliantFile(),
];

void checkUnnamed16(core.List<api.NonCompliantFile> o) {
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
    o.nonCompliantFiles = buildUnnamed16();
    o.version = buildComplianceVersion();
  }
  buildCounterComplianceOccurrence--;
  return o;
}

void checkComplianceOccurrence(api.ComplianceOccurrence o) {
  buildCounterComplianceOccurrence++;
  if (buildCounterComplianceOccurrence < 3) {
    unittest.expect(o.nonComplianceReason!, unittest.equals('foo'));
    checkUnnamed16(o.nonCompliantFiles!);
    checkComplianceVersion(o.version!);
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
    unittest.expect(o.benchmarkDocument!, unittest.equals('foo'));
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterComplianceVersion--;
}

core.int buildCounterCreateOperationRequest = 0;
api.CreateOperationRequest buildCreateOperationRequest() {
  final o = api.CreateOperationRequest();
  buildCounterCreateOperationRequest++;
  if (buildCounterCreateOperationRequest < 3) {
    o.operation = buildOperation();
    o.operationId = 'foo';
  }
  buildCounterCreateOperationRequest--;
  return o;
}

void checkCreateOperationRequest(api.CreateOperationRequest o) {
  buildCounterCreateOperationRequest++;
  if (buildCounterCreateOperationRequest < 3) {
    checkOperation(o.operation!);
    unittest.expect(o.operationId!, unittest.equals('foo'));
  }
  buildCounterCreateOperationRequest--;
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
    unittest.expect(o.humanReadableName!, unittest.equals('foo'));
  }
  buildCounterDSSEHint--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployable = 0;
api.Deployable buildDeployable() {
  final o = api.Deployable();
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    o.resourceUri = buildUnnamed17();
  }
  buildCounterDeployable--;
  return o;
}

void checkDeployable(api.Deployable o) {
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    checkUnnamed17(o.resourceUri!);
  }
  buildCounterDeployable--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
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
    o.resourceUri = buildUnnamed18();
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
    checkUnnamed18(o.resourceUri!);
    unittest.expect(o.undeployTime!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

core.List<api.Layer> buildUnnamed19() => [buildLayer(), buildLayer()];

void checkUnnamed19(core.List<api.Layer> o) {
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
    o.layerInfo = buildUnnamed19();
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
    checkUnnamed19(o.layerInfo!);
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
    unittest.expect(o.vendor!, unittest.equals('foo'));
  }
  buildCounterDetail--;
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

core.List<api.Status> buildUnnamed20() => [buildStatus(), buildStatus()];

void checkUnnamed20(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.File> buildUnnamed21() => [buildFile(), buildFile()];

void checkUnnamed21(core.List<api.File> o) {
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
    o.analysisError = buildUnnamed20();
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
    o.archiveTime = 'foo';
    o.continuousAnalysis = 'foo';
    o.cpe = 'foo';
    o.files = buildUnnamed21();
    o.lastScanTime = 'foo';
    o.operation = buildOperation();
    o.sbomStatus = buildSBOMStatus();
    o.vulnerabilityAttestation = buildVulnerabilityAttestation();
  }
  buildCounterDiscovered--;
  return o;
}

void checkDiscovered(api.Discovered o) {
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    checkAnalysisCompleted(o.analysisCompleted!);
    checkUnnamed20(o.analysisError!);
    unittest.expect(o.analysisStatus!, unittest.equals('foo'));
    checkStatus(o.analysisStatusError!);
    unittest.expect(o.archiveTime!, unittest.equals('foo'));
    unittest.expect(o.continuousAnalysis!, unittest.equals('foo'));
    unittest.expect(o.cpe!, unittest.equals('foo'));
    checkUnnamed21(o.files!);
    unittest.expect(o.lastScanTime!, unittest.equals('foo'));
    checkOperation(o.operation!);
    checkSBOMStatus(o.sbomStatus!);
    checkVulnerabilityAttestation(o.vulnerabilityAttestation!);
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

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
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
    o.creators = buildUnnamed22();
    o.documentComment = 'foo';
    o.externalDocumentRefs = buildUnnamed23();
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
    checkUnnamed22(o.creators!);
    unittest.expect(o.documentComment!, unittest.equals('foo'));
    checkUnnamed23(o.externalDocumentRefs!);
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

core.List<api.EnvelopeSignature> buildUnnamed24() => [
  buildEnvelopeSignature(),
  buildEnvelopeSignature(),
];

void checkUnnamed24(core.List<api.EnvelopeSignature> o) {
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
    o.signatures = buildUnnamed24();
  }
  buildCounterEnvelope--;
  return o;
}

void checkEnvelope(api.Envelope o) {
  buildCounterEnvelope++;
  if (buildCounterEnvelope < 3) {
    unittest.expect(o.payload!, unittest.equals('foo'));
    unittest.expect(o.payloadType!, unittest.equals('foo'));
    checkUnnamed24(o.signatures!);
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

core.Map<core.String, core.String> buildUnnamed25() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.digest = buildUnnamed25();
    o.name = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    checkUnnamed25(o.digest!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<api.Hash> buildUnnamed26() => [buildHash(), buildHash()];

void checkUnnamed26(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed26();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed26(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.int buildCounterFileLocation = 0;
api.FileLocation buildFileLocation() {
  final o = api.FileLocation();
  buildCounterFileLocation++;
  if (buildCounterFileLocation < 3) {
    o.filePath = 'foo';
    o.layerDetails = buildLayerDetails();
  }
  buildCounterFileLocation--;
  return o;
}

void checkFileLocation(api.FileLocation o) {
  buildCounterFileLocation++;
  if (buildCounterFileLocation < 3) {
    unittest.expect(o.filePath!, unittest.equals('foo'));
    checkLayerDetails(o.layerDetails!);
  }
  buildCounterFileLocation--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileNote = 0;
api.FileNote buildFileNote() {
  final o = api.FileNote();
  buildCounterFileNote++;
  if (buildCounterFileNote < 3) {
    o.checksum = buildUnnamed27();
    o.fileType = 'foo';
    o.title = 'foo';
  }
  buildCounterFileNote--;
  return o;
}

void checkFileNote(api.FileNote o) {
  buildCounterFileNote++;
  if (buildCounterFileNote < 3) {
    checkUnnamed27(o.checksum!);
    unittest.expect(o.fileType!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterFileNote--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileOccurrence = 0;
api.FileOccurrence buildFileOccurrence() {
  final o = api.FileOccurrence();
  buildCounterFileOccurrence++;
  if (buildCounterFileOccurrence < 3) {
    o.attributions = buildUnnamed28();
    o.comment = 'foo';
    o.contributors = buildUnnamed29();
    o.copyright = 'foo';
    o.filesLicenseInfo = buildUnnamed30();
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
    checkUnnamed28(o.attributions!);
    unittest.expect(o.comment!, unittest.equals('foo'));
    checkUnnamed29(o.contributors!);
    unittest.expect(o.copyright!, unittest.equals('foo'));
    checkUnnamed30(o.filesLicenseInfo!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkLicense(o.licenseConcluded!);
    unittest.expect(o.notice!, unittest.equals('foo'));
  }
  buildCounterFileOccurrence--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
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
    o.v2Blob = buildUnnamed31();
    o.v2Name = 'foo';
  }
  buildCounterFingerprint--;
  return o;
}

void checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(o.v1Name!, unittest.equals('foo'));
    checkUnnamed31(o.v2Blob!);
    unittest.expect(o.v2Name!, unittest.equals('foo'));
  }
  buildCounterFingerprint--;
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

core.List<api.SeverityCount> buildUnnamed32() => [
  buildSeverityCount(),
  buildSeverityCount(),
];

void checkUnnamed32(core.List<api.SeverityCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeverityCount(o[0]);
  checkSeverityCount(o[1]);
}

core.int buildCounterGetVulnzOccurrencesSummaryResponse = 0;
api.GetVulnzOccurrencesSummaryResponse
buildGetVulnzOccurrencesSummaryResponse() {
  final o = api.GetVulnzOccurrencesSummaryResponse();
  buildCounterGetVulnzOccurrencesSummaryResponse++;
  if (buildCounterGetVulnzOccurrencesSummaryResponse < 3) {
    o.counts = buildUnnamed32();
  }
  buildCounterGetVulnzOccurrencesSummaryResponse--;
  return o;
}

void checkGetVulnzOccurrencesSummaryResponse(
  api.GetVulnzOccurrencesSummaryResponse o,
) {
  buildCounterGetVulnzOccurrencesSummaryResponse++;
  if (buildCounterGetVulnzOccurrencesSummaryResponse < 3) {
    checkUnnamed32(o.counts!);
  }
  buildCounterGetVulnzOccurrencesSummaryResponse--;
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext = 0;
api.GoogleDevtoolsContaineranalysisV1alpha1AliasContext
buildGoogleDevtoolsContaineranalysisV1alpha1AliasContext() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1AliasContext();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1AliasContext(
  api.GoogleDevtoolsContaineranalysisV1alpha1AliasContext o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1AliasContext--;
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext = 0;
api.GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext
buildGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext <
      3) {
    o.aliasContext = buildGoogleDevtoolsContaineranalysisV1alpha1AliasContext();
    o.repoId = buildGoogleDevtoolsContaineranalysisV1alpha1RepoId();
    o.revisionId = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext(
  api.GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext <
      3) {
    checkGoogleDevtoolsContaineranalysisV1alpha1AliasContext(o.aliasContext!);
    checkGoogleDevtoolsContaineranalysisV1alpha1RepoId(o.repoId!);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext--;
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext = 0;
api.GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext
buildGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext <
      3) {
    o.aliasContext = buildGoogleDevtoolsContaineranalysisV1alpha1AliasContext();
    o.gerritProject = 'foo';
    o.hostUri = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext(
  api.GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext <
      3) {
    checkGoogleDevtoolsContaineranalysisV1alpha1AliasContext(o.aliasContext!);
    unittest.expect(o.gerritProject!, unittest.equals('foo'));
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext--;
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext
buildGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext < 3) {
    o.revisionId = 'foo';
    o.url = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext(
  api.GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext < 3) {
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext--;
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId = 0;
api.GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId
buildGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId < 3) {
    o.projectId = 'foo';
    o.repoName = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId(
  api.GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId < 3) {
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.repoName!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId--;
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId = 0;
api.GoogleDevtoolsContaineranalysisV1alpha1RepoId
buildGoogleDevtoolsContaineranalysisV1alpha1RepoId() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1RepoId();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId < 3) {
    o.projectRepoId =
        buildGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId();
    o.uid = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1RepoId(
  api.GoogleDevtoolsContaineranalysisV1alpha1RepoId o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId < 3) {
    checkGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId(o.projectRepoId!);
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1RepoId--;
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder
buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder() {
  final o =
      api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder <
      3) {
    o.id = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder--;
  return o;
}

void
checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder(
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder--;
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness
buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness() {
  final o =
      api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness <
      3) {
    o.environment = true;
    o.materials = true;
    o.parameters = true;
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness--;
  return o;
}

void
checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness(
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness
  o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness <
      3) {
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
    unittest.expect(o.parameters!, unittest.isTrue);
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness--;
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource
buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource() {
  final o =
      api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource <
      3) {
    o.digest = buildUnnamed33();
    o.entryPoint = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource--;
  return o;
}

void
checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource(
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource
  o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource <
      3) {
    checkUnnamed33(o.digest!);
    unittest.expect(o.entryPoint!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation
buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation() {
  final o =
      api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation <
      3) {
    o.configSource =
        buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource();
    o.environment = buildUnnamed34();
    o.parameters = buildUnnamed35();
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation--;
  return o;
}

void
checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation(
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation
  o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation <
      3) {
    checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource(
      o.configSource!,
    );
    checkUnnamed34(o.environment!);
    checkUnnamed35(o.parameters!);
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial() {
  final o =
      api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial <
      3) {
    o.digest = buildUnnamed36();
    o.uri = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial--;
  return o;
}

void
checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
  o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial <
      3) {
    checkUnnamed36(o.digest!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial--;
}

core.int
buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata
buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata() {
  final o =
      api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata <
      3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness =
        buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness();
    o.reproducible = true;
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata--;
  return o;
}

void
checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata(
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata
  o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata <
      3) {
    unittest.expect(o.buildFinishedOn!, unittest.equals('foo'));
    unittest.expect(o.buildInvocationId!, unittest.equals('foo'));
    unittest.expect(o.buildStartedOn!, unittest.equals('foo'));
    checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness(
      o.completeness!,
    );
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata--;
}

core.Map<core.String, core.String> buildUnnamed37() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed37(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext = 0;
api.GoogleDevtoolsContaineranalysisV1alpha1SourceContext
buildGoogleDevtoolsContaineranalysisV1alpha1SourceContext() {
  final o = api.GoogleDevtoolsContaineranalysisV1alpha1SourceContext();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext < 3) {
    o.cloudRepo =
        buildGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext();
    o.gerrit =
        buildGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext();
    o.git = buildGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext();
    o.labels = buildUnnamed37();
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1SourceContext(
  api.GoogleDevtoolsContaineranalysisV1alpha1SourceContext o,
) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext < 3) {
    checkGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext(
      o.cloudRepo!,
    );
    checkGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext(o.gerrit!);
    checkGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext(o.git!);
    checkUnnamed37(o.labels!);
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1SourceContext--;
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

core.int buildCounterIdentifierHelper = 0;
api.IdentifierHelper buildIdentifierHelper() {
  final o = api.IdentifierHelper();
  buildCounterIdentifierHelper++;
  if (buildCounterIdentifierHelper < 3) {
    o.field = 'foo';
    o.genericUri = 'foo';
  }
  buildCounterIdentifierHelper--;
  return o;
}

void checkIdentifierHelper(api.IdentifierHelper o) {
  buildCounterIdentifierHelper++;
  if (buildCounterIdentifierHelper < 3) {
    unittest.expect(o.field!, unittest.equals('foo'));
    unittest.expect(o.genericUri!, unittest.equals('foo'));
  }
  buildCounterIdentifierHelper--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInTotoProvenance = 0;
api.InTotoProvenance buildInTotoProvenance() {
  final o = api.InTotoProvenance();
  buildCounterInTotoProvenance++;
  if (buildCounterInTotoProvenance < 3) {
    o.builderConfig = buildBuilderConfig();
    o.materials = buildUnnamed38();
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
    checkUnnamed38(o.materials!);
    checkMetadata(o.metadata!);
    checkRecipe(o.recipe!);
  }
  buildCounterInTotoProvenance--;
}

core.List<api.Subject> buildUnnamed39() => [buildSubject(), buildSubject()];

void checkUnnamed39(core.List<api.Subject> o) {
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
    o.subject = buildUnnamed39();
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
    checkUnnamed39(o.subject!);
  }
  buildCounterInTotoSlsaProvenanceV1--;
}

core.List<api.Subject> buildUnnamed40() => [buildSubject(), buildSubject()];

void checkUnnamed40(core.List<api.Subject> o) {
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
    o.slsaProvenanceZeroTwo = buildSlsaProvenanceZeroTwo();
    o.subject = buildUnnamed40();
  }
  buildCounterInTotoStatement--;
  return o;
}

void checkInTotoStatement(api.InTotoStatement o) {
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    unittest.expect(o.P_type!, unittest.equals('foo'));
    unittest.expect(o.predicateType!, unittest.equals('foo'));
    checkInTotoProvenance(o.provenance!);
    checkSlsaProvenance(o.slsaProvenance!);
    checkSlsaProvenanceZeroTwo(o.slsaProvenanceZeroTwo!);
    checkUnnamed40(o.subject!);
  }
  buildCounterInTotoStatement--;
}

core.List<api.Location> buildUnnamed41() => [buildLocation(), buildLocation()];

void checkUnnamed41(core.List<api.Location> o) {
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
    o.location = buildUnnamed41();
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
    checkUnnamed41(o.location!);
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

core.List<api.BaseImage> buildUnnamed42() => [
  buildBaseImage(),
  buildBaseImage(),
];

void checkUnnamed42(core.List<api.BaseImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBaseImage(o[0]);
  checkBaseImage(o[1]);
}

core.int buildCounterLayerDetails = 0;
api.LayerDetails buildLayerDetails() {
  final o = api.LayerDetails();
  buildCounterLayerDetails++;
  if (buildCounterLayerDetails < 3) {
    o.baseImages = buildUnnamed42();
    o.command = 'foo';
    o.diffId = 'foo';
    o.index = 42;
  }
  buildCounterLayerDetails--;
  return o;
}

void checkLayerDetails(api.LayerDetails o) {
  buildCounterLayerDetails++;
  if (buildCounterLayerDetails < 3) {
    checkUnnamed42(o.baseImages!);
    unittest.expect(o.command!, unittest.equals('foo'));
    unittest.expect(o.diffId!, unittest.equals('foo'));
    unittest.expect(o.index!, unittest.equals(42));
  }
  buildCounterLayerDetails--;
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

core.List<api.Occurrence> buildUnnamed43() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed43(core.List<api.Occurrence> o) {
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
    o.occurrences = buildUnnamed43();
  }
  buildCounterListNoteOccurrencesResponse--;
  return o;
}

void checkListNoteOccurrencesResponse(api.ListNoteOccurrencesResponse o) {
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed43(o.occurrences!);
  }
  buildCounterListNoteOccurrencesResponse--;
}

core.List<api.Note> buildUnnamed44() => [buildNote(), buildNote()];

void checkUnnamed44(core.List<api.Note> o) {
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
    o.notes = buildUnnamed44();
  }
  buildCounterListNotesResponse--;
  return o;
}

void checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed44(o.notes!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed45() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed45(core.List<api.Occurrence> o) {
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
    o.occurrences = buildUnnamed45();
  }
  buildCounterListOccurrencesResponse--;
  return o;
}

void checkListOccurrencesResponse(api.ListOccurrencesResponse o) {
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed45(o.occurrences!);
  }
  buildCounterListOccurrencesResponse--;
}

core.List<api.ScanConfig> buildUnnamed46() => [
  buildScanConfig(),
  buildScanConfig(),
];

void checkUnnamed46(core.List<api.ScanConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanConfig(o[0]);
  checkScanConfig(o[1]);
}

core.int buildCounterListScanConfigsResponse = 0;
api.ListScanConfigsResponse buildListScanConfigsResponse() {
  final o = api.ListScanConfigsResponse();
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.scanConfigs = buildUnnamed46();
  }
  buildCounterListScanConfigsResponse--;
  return o;
}

void checkListScanConfigsResponse(api.ListScanConfigsResponse o) {
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed46(o.scanConfigs!);
  }
  buildCounterListScanConfigsResponse--;
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

core.Map<core.String, core.String> buildUnnamed47() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed47(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMaterial = 0;
api.Material buildMaterial() {
  final o = api.Material();
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    o.digest = buildUnnamed47();
    o.uri = 'foo';
  }
  buildCounterMaterial--;
  return o;
}

void checkMaterial(api.Material o) {
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    checkUnnamed47(o.digest!);
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.buildFinishedOn!, unittest.equals('foo'));
    unittest.expect(o.buildInvocationId!, unittest.equals('foo'));
    unittest.expect(o.buildStartedOn!, unittest.equals('foo'));
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
    unittest.expect(o.displayCommand!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterNonCompliantFile--;
}

core.List<api.RelatedUrl> buildUnnamed48() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed48(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attestationAuthority = buildAttestationAuthority();
    o.baseImage = buildBasis();
    o.buildType = buildBuildType();
    o.compliance = buildComplianceNote();
    o.createTime = 'foo';
    o.deployable = buildDeployable();
    o.discovery = buildDiscovery();
    o.dsseAttestation = buildDSSEAttestationNote();
    o.expirationTime = 'foo';
    o.kind = 'foo';
    o.longDescription = 'foo';
    o.name = 'foo';
    o.package = buildPackage();
    o.relatedUrl = buildUnnamed48();
    o.sbom = buildDocumentNote();
    o.sbomReference = buildSBOMReferenceNote();
    o.secret = buildSecretNote();
    o.shortDescription = 'foo';
    o.spdxFile = buildFileNote();
    o.spdxPackage = buildPackageInfoNote();
    o.spdxRelationship = buildRelationshipNote();
    o.updateTime = 'foo';
    o.upgrade = buildUpgradeNote();
    o.vulnerabilityAssessment = buildVulnerabilityAssessmentNote();
    o.vulnerabilityType = buildVulnerabilityType();
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkAttestationAuthority(o.attestationAuthority!);
    checkBasis(o.baseImage!);
    checkBuildType(o.buildType!);
    checkComplianceNote(o.compliance!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeployable(o.deployable!);
    checkDiscovery(o.discovery!);
    checkDSSEAttestationNote(o.dsseAttestation!);
    unittest.expect(o.expirationTime!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPackage(o.package!);
    checkUnnamed48(o.relatedUrl!);
    checkDocumentNote(o.sbom!);
    checkSBOMReferenceNote(o.sbomReference!);
    checkSecretNote(o.secret!);
    unittest.expect(o.shortDescription!, unittest.equals('foo'));
    checkFileNote(o.spdxFile!);
    checkPackageInfoNote(o.spdxPackage!);
    checkRelationshipNote(o.spdxRelationship!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUpgradeNote(o.upgrade!);
    checkVulnerabilityAssessmentNote(o.vulnerabilityAssessment!);
    checkVulnerabilityType(o.vulnerabilityType!);
  }
  buildCounterNote--;
}

core.int buildCounterOccurrence = 0;
api.Occurrence buildOccurrence() {
  final o = api.Occurrence();
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    o.attestation = buildAttestation();
    o.buildDetails = buildBuildDetails();
    o.compliance = buildComplianceOccurrence();
    o.createTime = 'foo';
    o.deployment = buildDeployment();
    o.derivedImage = buildDerived();
    o.discovered = buildDiscovered();
    o.dsseAttestation = buildDSSEAttestationOccurrence();
    o.envelope = buildEnvelope();
    o.installation = buildInstallation();
    o.kind = 'foo';
    o.name = 'foo';
    o.noteName = 'foo';
    o.remediation = 'foo';
    o.resource = buildResource();
    o.resourceUrl = 'foo';
    o.sbom = buildDocumentOccurrence();
    o.sbomReference = buildSBOMReferenceOccurrence();
    o.secret = buildSecretOccurrence();
    o.spdxFile = buildFileOccurrence();
    o.spdxPackage = buildPackageInfoOccurrence();
    o.spdxRelationship = buildRelationshipOccurrence();
    o.updateTime = 'foo';
    o.upgrade = buildUpgradeOccurrence();
    o.vulnerabilityDetails = buildVulnerabilityDetails();
  }
  buildCounterOccurrence--;
  return o;
}

void checkOccurrence(api.Occurrence o) {
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    checkAttestation(o.attestation!);
    checkBuildDetails(o.buildDetails!);
    checkComplianceOccurrence(o.compliance!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeployment(o.deployment!);
    checkDerived(o.derivedImage!);
    checkDiscovered(o.discovered!);
    checkDSSEAttestationOccurrence(o.dsseAttestation!);
    checkEnvelope(o.envelope!);
    checkInstallation(o.installation!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.noteName!, unittest.equals('foo'));
    unittest.expect(o.remediation!, unittest.equals('foo'));
    checkResource(o.resource!);
    unittest.expect(o.resourceUrl!, unittest.equals('foo'));
    checkDocumentOccurrence(o.sbom!);
    checkSBOMReferenceOccurrence(o.sbomReference!);
    checkSecretOccurrence(o.secret!);
    checkFileOccurrence(o.spdxFile!);
    checkPackageInfoOccurrence(o.spdxPackage!);
    checkRelationshipOccurrence(o.spdxRelationship!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUpgradeOccurrence(o.upgrade!);
    checkVulnerabilityDetails(o.vulnerabilityDetails!);
  }
  buildCounterOccurrence--;
}

core.Map<core.String, core.Object?> buildUnnamed49() => {
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

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed50() => {
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

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed49();
    o.name = 'foo';
    o.response = buildUnnamed50();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed49(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed50(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Digest> buildUnnamed51() => [buildDigest(), buildDigest()];

void checkUnnamed51(core.List<api.Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDigest(o[0]);
  checkDigest(o[1]);
}

core.List<api.Distribution> buildUnnamed52() => [
  buildDistribution(),
  buildDistribution(),
];

void checkUnnamed52(core.List<api.Distribution> o) {
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
    o.digest = buildUnnamed51();
    o.distribution = buildUnnamed52();
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
    checkUnnamed51(o.digest!);
    checkUnnamed52(o.distribution!);
    checkLicense(o.license!);
    unittest.expect(o.maintainer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterPackage--;
}

core.List<api.ExternalRef> buildUnnamed53() => [
  buildExternalRef(),
  buildExternalRef(),
];

void checkUnnamed53(core.List<api.ExternalRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalRef(o[0]);
  checkExternalRef(o[1]);
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
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
    o.externalRefs = buildUnnamed53();
    o.filesLicenseInfo = buildUnnamed54();
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
    checkUnnamed53(o.externalRefs!);
    checkUnnamed54(o.filesLicenseInfo!);
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

core.List<api.Binding> buildUnnamed55() => [buildBinding(), buildBinding()];

void checkUnnamed55(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed55();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed55(o.bindings!);
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
    o.id = 'foo';
    o.identifierHelper = buildIdentifierHelper();
    o.name = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkIdentifierHelper(o.identifierHelper!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

core.List<api.ResourceDescriptor> buildUnnamed56() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed56(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.Map<core.String, core.String> buildUnnamed57() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed57(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterProvenanceBuilder = 0;
api.ProvenanceBuilder buildProvenanceBuilder() {
  final o = api.ProvenanceBuilder();
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    o.builderDependencies = buildUnnamed56();
    o.id = 'foo';
    o.version = buildUnnamed57();
  }
  buildCounterProvenanceBuilder--;
  return o;
}

void checkProvenanceBuilder(api.ProvenanceBuilder o) {
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    checkUnnamed56(o.builderDependencies!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed57(o.version!);
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

core.Map<core.String, core.Object?> buildUnnamed58() => {
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

void checkUnnamed58(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed59() => [
  buildUnnamed58(),
  buildUnnamed58(),
];

void checkUnnamed59(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed58(o[0]);
  checkUnnamed58(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed61() => [
  buildUnnamed60(),
  buildUnnamed60(),
];

void checkUnnamed61(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed60(o[0]);
  checkUnnamed60(o[1]);
}

core.int buildCounterRecipe = 0;
api.Recipe buildRecipe() {
  final o = api.Recipe();
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    o.arguments = buildUnnamed59();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed61();
    o.type = 'foo';
  }
  buildCounterRecipe--;
  return o;
}

void checkRecipe(api.Recipe o) {
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    checkUnnamed59(o.arguments!);
    unittest.expect(o.definedInMaterial!, unittest.equals('foo'));
    unittest.expect(o.entryPoint!, unittest.equals('foo'));
    checkUnnamed61(o.environment!);
    unittest.expect(o.type!, unittest.equals('foo'));
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
    o.remediationUri = buildURI();
  }
  buildCounterRemediation--;
  return o;
}

void checkRemediation(api.Remediation o) {
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.remediationType!, unittest.equals('foo'));
    checkURI(o.remediationUri!);
  }
  buildCounterRemediation--;
}

core.int buildCounterRepoSource = 0;
api.RepoSource buildRepoSource() {
  final o = api.RepoSource();
  buildCounterRepoSource++;
  if (buildCounterRepoSource < 3) {
    o.branchName = 'foo';
    o.commitSha = 'foo';
    o.projectId = 'foo';
    o.repoName = 'foo';
    o.tagName = 'foo';
  }
  buildCounterRepoSource--;
  return o;
}

void checkRepoSource(api.RepoSource o) {
  buildCounterRepoSource++;
  if (buildCounterRepoSource < 3) {
    unittest.expect(o.branchName!, unittest.equals('foo'));
    unittest.expect(o.commitSha!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.repoName!, unittest.equals('foo'));
    unittest.expect(o.tagName!, unittest.equals('foo'));
  }
  buildCounterRepoSource--;
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

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed63() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed63(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterResourceDescriptor = 0;
api.ResourceDescriptor buildResourceDescriptor() {
  final o = api.ResourceDescriptor();
  buildCounterResourceDescriptor++;
  if (buildCounterResourceDescriptor < 3) {
    o.annotations = buildUnnamed62();
    o.content = 'foo';
    o.digest = buildUnnamed63();
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
    checkUnnamed62(o.annotations!);
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed63(o.digest!);
    unittest.expect(o.downloadLocation!, unittest.equals('foo'));
    unittest.expect(o.mediaType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterResourceDescriptor--;
}

core.List<api.ResourceDescriptor> buildUnnamed64() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed64(core.List<api.ResourceDescriptor> o) {
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
    o.byproducts = buildUnnamed64();
    o.metadata = buildBuildMetadata();
  }
  buildCounterRunDetails--;
  return o;
}

void checkRunDetails(api.RunDetails o) {
  buildCounterRunDetails++;
  if (buildCounterRunDetails < 3) {
    checkProvenanceBuilder(o.builder!);
    checkUnnamed64(o.byproducts!);
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

core.List<api.EnvelopeSignature> buildUnnamed65() => [
  buildEnvelopeSignature(),
  buildEnvelopeSignature(),
];

void checkUnnamed65(core.List<api.EnvelopeSignature> o) {
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
    o.signatures = buildUnnamed65();
  }
  buildCounterSBOMReferenceOccurrence--;
  return o;
}

void checkSBOMReferenceOccurrence(api.SBOMReferenceOccurrence o) {
  buildCounterSBOMReferenceOccurrence++;
  if (buildCounterSBOMReferenceOccurrence < 3) {
    checkSbomReferenceIntotoPayload(o.payload!);
    unittest.expect(o.payloadType!, unittest.equals('foo'));
    checkUnnamed65(o.signatures!);
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

core.List<api.Subject> buildUnnamed66() => [buildSubject(), buildSubject()];

void checkUnnamed66(core.List<api.Subject> o) {
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
    o.subject = buildUnnamed66();
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
    checkUnnamed66(o.subject!);
  }
  buildCounterSbomReferenceIntotoPayload--;
}

core.Map<core.String, core.String> buildUnnamed67() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed67(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSbomReferenceIntotoPredicate = 0;
api.SbomReferenceIntotoPredicate buildSbomReferenceIntotoPredicate() {
  final o = api.SbomReferenceIntotoPredicate();
  buildCounterSbomReferenceIntotoPredicate++;
  if (buildCounterSbomReferenceIntotoPredicate < 3) {
    o.digest = buildUnnamed67();
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
    checkUnnamed67(o.digest!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.referrerId!, unittest.equals('foo'));
  }
  buildCounterSbomReferenceIntotoPredicate--;
}

core.int buildCounterScanConfig = 0;
api.ScanConfig buildScanConfig() {
  final o = api.ScanConfig();
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.enabled = true;
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterScanConfig--;
  return o;
}

void checkScanConfig(api.ScanConfig o) {
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterScanConfig--;
}

core.int buildCounterSecretLocation = 0;
api.SecretLocation buildSecretLocation() {
  final o = api.SecretLocation();
  buildCounterSecretLocation++;
  if (buildCounterSecretLocation < 3) {
    o.fileLocation = buildFileLocation();
  }
  buildCounterSecretLocation--;
  return o;
}

void checkSecretLocation(api.SecretLocation o) {
  buildCounterSecretLocation++;
  if (buildCounterSecretLocation < 3) {
    checkFileLocation(o.fileLocation!);
  }
  buildCounterSecretLocation--;
}

core.int buildCounterSecretNote = 0;
api.SecretNote buildSecretNote() {
  final o = api.SecretNote();
  buildCounterSecretNote++;
  if (buildCounterSecretNote < 3) {}
  buildCounterSecretNote--;
  return o;
}

void checkSecretNote(api.SecretNote o) {
  buildCounterSecretNote++;
  if (buildCounterSecretNote < 3) {}
  buildCounterSecretNote--;
}

core.List<api.SecretLocation> buildUnnamed68() => [
  buildSecretLocation(),
  buildSecretLocation(),
];

void checkUnnamed68(core.List<api.SecretLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretLocation(o[0]);
  checkSecretLocation(o[1]);
}

core.List<api.SecretStatus> buildUnnamed69() => [
  buildSecretStatus(),
  buildSecretStatus(),
];

void checkUnnamed69(core.List<api.SecretStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretStatus(o[0]);
  checkSecretStatus(o[1]);
}

core.int buildCounterSecretOccurrence = 0;
api.SecretOccurrence buildSecretOccurrence() {
  final o = api.SecretOccurrence();
  buildCounterSecretOccurrence++;
  if (buildCounterSecretOccurrence < 3) {
    o.kind = 'foo';
    o.locations = buildUnnamed68();
    o.statuses = buildUnnamed69();
  }
  buildCounterSecretOccurrence--;
  return o;
}

void checkSecretOccurrence(api.SecretOccurrence o) {
  buildCounterSecretOccurrence++;
  if (buildCounterSecretOccurrence < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed68(o.locations!);
    checkUnnamed69(o.statuses!);
  }
  buildCounterSecretOccurrence--;
}

core.int buildCounterSecretStatus = 0;
api.SecretStatus buildSecretStatus() {
  final o = api.SecretStatus();
  buildCounterSecretStatus++;
  if (buildCounterSecretStatus < 3) {
    o.message = 'foo';
    o.status = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSecretStatus--;
  return o;
}

void checkSecretStatus(api.SecretStatus o) {
  buildCounterSecretStatus++;
  if (buildCounterSecretStatus < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSecretStatus--;
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

core.int buildCounterSeverityCount = 0;
api.SeverityCount buildSeverityCount() {
  final o = api.SeverityCount();
  buildCounterSeverityCount++;
  if (buildCounterSeverityCount < 3) {
    o.count = 'foo';
    o.severity = 'foo';
  }
  buildCounterSeverityCount--;
  return o;
}

void checkSeverityCount(api.SeverityCount o) {
  buildCounterSeverityCount++;
  if (buildCounterSeverityCount < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterSeverityCount--;
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
    unittest.expect(o.id!, unittest.equals('foo'));
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
    unittest.expect(o.buildFinishedOn!, unittest.equals('foo'));
    unittest.expect(o.buildInvocationId!, unittest.equals('foo'));
    unittest.expect(o.buildStartedOn!, unittest.equals('foo'));
    checkSlsaCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterSlsaMetadata--;
}

core.List<api.Material> buildUnnamed70() => [buildMaterial(), buildMaterial()];

void checkUnnamed70(core.List<api.Material> o) {
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
    o.materials = buildUnnamed70();
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
    checkUnnamed70(o.materials!);
    checkSlsaMetadata(o.metadata!);
    checkSlsaRecipe(o.recipe!);
  }
  buildCounterSlsaProvenance--;
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

core.Map<core.String, core.Object?> buildUnnamed71() => {
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

void checkUnnamed71(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.List<
  api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
>
buildUnnamed72() => [
  buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(),
  buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(),
];

void checkUnnamed72(
  core.List<
    api.GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(
    o[0],
  );
  checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(
    o[1],
  );
}

core.int buildCounterSlsaProvenanceZeroTwo = 0;
api.SlsaProvenanceZeroTwo buildSlsaProvenanceZeroTwo() {
  final o = api.SlsaProvenanceZeroTwo();
  buildCounterSlsaProvenanceZeroTwo++;
  if (buildCounterSlsaProvenanceZeroTwo < 3) {
    o.buildConfig = buildUnnamed71();
    o.buildType = 'foo';
    o.builder =
        buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder();
    o.invocation =
        buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation();
    o.materials = buildUnnamed72();
    o.metadata =
        buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata();
  }
  buildCounterSlsaProvenanceZeroTwo--;
  return o;
}

void checkSlsaProvenanceZeroTwo(api.SlsaProvenanceZeroTwo o) {
  buildCounterSlsaProvenanceZeroTwo++;
  if (buildCounterSlsaProvenanceZeroTwo < 3) {
    checkUnnamed71(o.buildConfig!);
    unittest.expect(o.buildType!, unittest.equals('foo'));
    checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder(
      o.builder!,
    );
    checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation(
      o.invocation!,
    );
    checkUnnamed72(o.materials!);
    checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata(
      o.metadata!,
    );
  }
  buildCounterSlsaProvenanceZeroTwo--;
}

core.Map<core.String, core.Object?> buildUnnamed73() => {
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

void checkUnnamed73(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
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
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.int buildCounterSlsaRecipe = 0;
api.SlsaRecipe buildSlsaRecipe() {
  final o = api.SlsaRecipe();
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    o.arguments = buildUnnamed73();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed74();
    o.type = 'foo';
  }
  buildCounterSlsaRecipe--;
  return o;
}

void checkSlsaRecipe(api.SlsaRecipe o) {
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    checkUnnamed73(o.arguments!);
    unittest.expect(o.definedInMaterial!, unittest.equals('foo'));
    unittest.expect(o.entryPoint!, unittest.equals('foo'));
    checkUnnamed74(o.environment!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSlsaRecipe--;
}

core.List<api.GoogleDevtoolsContaineranalysisV1alpha1SourceContext>
buildUnnamed75() => [
  buildGoogleDevtoolsContaineranalysisV1alpha1SourceContext(),
  buildGoogleDevtoolsContaineranalysisV1alpha1SourceContext(),
];

void checkUnnamed75(
  core.List<api.GoogleDevtoolsContaineranalysisV1alpha1SourceContext> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsContaineranalysisV1alpha1SourceContext(o[0]);
  checkGoogleDevtoolsContaineranalysisV1alpha1SourceContext(o[1]);
}

core.Map<core.String, api.FileHashes> buildUnnamed76() => {
  'x': buildFileHashes(),
  'y': buildFileHashes(),
};

void checkUnnamed76(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed75();
    o.artifactStorageSource = buildStorageSource();
    o.context = buildGoogleDevtoolsContaineranalysisV1alpha1SourceContext();
    o.fileHashes = buildUnnamed76();
    o.repoSource = buildRepoSource();
    o.storageSource = buildStorageSource();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed75(o.additionalContexts!);
    checkStorageSource(o.artifactStorageSource!);
    checkGoogleDevtoolsContaineranalysisV1alpha1SourceContext(o.context!);
    checkUnnamed76(o.fileHashes!);
    checkRepoSource(o.repoSource!);
    checkStorageSource(o.storageSource!);
  }
  buildCounterSource--;
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
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed78() => [
  buildUnnamed77(),
  buildUnnamed77(),
];

void checkUnnamed78(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed77(o[0]);
  checkUnnamed77(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed78();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed78(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStorageSource = 0;
api.StorageSource buildStorageSource() {
  final o = api.StorageSource();
  buildCounterStorageSource++;
  if (buildCounterStorageSource < 3) {
    o.bucket = 'foo';
    o.generation = 'foo';
    o.object = 'foo';
  }
  buildCounterStorageSource--;
  return o;
}

void checkStorageSource(api.StorageSource o) {
  buildCounterStorageSource++;
  if (buildCounterStorageSource < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.generation!, unittest.equals('foo'));
    unittest.expect(o.object!, unittest.equals('foo'));
  }
  buildCounterStorageSource--;
}

core.Map<core.String, core.String> buildUnnamed79() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed79(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.digest = buildUnnamed79();
    o.name = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    checkUnnamed79(o.digest!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed80();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed80(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed81();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed81(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterURI = 0;
api.URI buildURI() {
  final o = api.URI();
  buildCounterURI++;
  if (buildCounterURI < 3) {
    o.label = 'foo';
    o.uri = 'foo';
  }
  buildCounterURI--;
  return o;
}

void checkURI(api.URI o) {
  buildCounterURI++;
  if (buildCounterURI < 3) {
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterURI--;
}

core.int buildCounterUpdateOperationRequest = 0;
api.UpdateOperationRequest buildUpdateOperationRequest() {
  final o = api.UpdateOperationRequest();
  buildCounterUpdateOperationRequest++;
  if (buildCounterUpdateOperationRequest < 3) {
    o.operation = buildOperation();
    o.updateMask = 'foo';
  }
  buildCounterUpdateOperationRequest--;
  return o;
}

void checkUpdateOperationRequest(api.UpdateOperationRequest o) {
  buildCounterUpdateOperationRequest++;
  if (buildCounterUpdateOperationRequest < 3) {
    checkOperation(o.operation!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterUpdateOperationRequest--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpgradeDistribution = 0;
api.UpgradeDistribution buildUpgradeDistribution() {
  final o = api.UpgradeDistribution();
  buildCounterUpgradeDistribution++;
  if (buildCounterUpgradeDistribution < 3) {
    o.classification = 'foo';
    o.cpeUri = 'foo';
    o.cve = buildUnnamed82();
    o.severity = 'foo';
  }
  buildCounterUpgradeDistribution--;
  return o;
}

void checkUpgradeDistribution(api.UpgradeDistribution o) {
  buildCounterUpgradeDistribution++;
  if (buildCounterUpgradeDistribution < 3) {
    unittest.expect(o.classification!, unittest.equals('foo'));
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    checkUnnamed82(o.cve!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterUpgradeDistribution--;
}

core.List<api.UpgradeDistribution> buildUnnamed83() => [
  buildUpgradeDistribution(),
  buildUpgradeDistribution(),
];

void checkUnnamed83(core.List<api.UpgradeDistribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeDistribution(o[0]);
  checkUpgradeDistribution(o[1]);
}

core.int buildCounterUpgradeNote = 0;
api.UpgradeNote buildUpgradeNote() {
  final o = api.UpgradeNote();
  buildCounterUpgradeNote++;
  if (buildCounterUpgradeNote < 3) {
    o.distributions = buildUnnamed83();
    o.package = 'foo';
    o.version = buildVersion();
  }
  buildCounterUpgradeNote--;
  return o;
}

void checkUpgradeNote(api.UpgradeNote o) {
  buildCounterUpgradeNote++;
  if (buildCounterUpgradeNote < 3) {
    checkUnnamed83(o.distributions!);
    unittest.expect(o.package!, unittest.equals('foo'));
    checkVersion(o.version!);
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
  }
  buildCounterUpgradeOccurrence--;
  return o;
}

void checkUpgradeOccurrence(api.UpgradeOccurrence o) {
  buildCounterUpgradeOccurrence++;
  if (buildCounterUpgradeOccurrence < 3) {
    checkUpgradeDistribution(o.distribution!);
    unittest.expect(o.package!, unittest.equals('foo'));
    checkVersion(o.parsedVersion!);
  }
  buildCounterUpgradeOccurrence--;
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

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.URI> buildUnnamed85() => [buildURI(), buildURI()];

void checkUnnamed85(core.List<api.URI> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkURI(o[0]);
  checkURI(o[1]);
}

core.List<api.Remediation> buildUnnamed86() => [
  buildRemediation(),
  buildRemediation(),
];

void checkUnnamed86(core.List<api.Remediation> o) {
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
    o.impacts = buildUnnamed84();
    o.justification = buildJustification();
    o.noteName = 'foo';
    o.relatedUris = buildUnnamed85();
    o.remediations = buildUnnamed86();
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
    checkUnnamed84(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(o.noteName!, unittest.equals('foo'));
    checkUnnamed85(o.relatedUris!);
    checkUnnamed86(o.remediations!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.vulnerabilityId!, unittest.equals('foo'));
  }
  buildCounterVexAssessment--;
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

core.int buildCounterVulnerabilityAttestation = 0;
api.VulnerabilityAttestation buildVulnerabilityAttestation() {
  final o = api.VulnerabilityAttestation();
  buildCounterVulnerabilityAttestation++;
  if (buildCounterVulnerabilityAttestation < 3) {
    o.error = 'foo';
    o.lastAttemptTime = 'foo';
    o.state = 'foo';
  }
  buildCounterVulnerabilityAttestation--;
  return o;
}

void checkVulnerabilityAttestation(api.VulnerabilityAttestation o) {
  buildCounterVulnerabilityAttestation++;
  if (buildCounterVulnerabilityAttestation < 3) {
    unittest.expect(o.error!, unittest.equals('foo'));
    unittest.expect(o.lastAttemptTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterVulnerabilityAttestation--;
}

core.List<api.PackageIssue> buildUnnamed87() => [
  buildPackageIssue(),
  buildPackageIssue(),
];

void checkUnnamed87(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

core.int buildCounterVulnerabilityDetails = 0;
api.VulnerabilityDetails buildVulnerabilityDetails() {
  final o = api.VulnerabilityDetails();
  buildCounterVulnerabilityDetails++;
  if (buildCounterVulnerabilityDetails < 3) {
    o.cvssScore = 42.0;
    o.cvssV2 = buildCVSS();
    o.cvssV3 = buildCVSS();
    o.cvssVersion = 'foo';
    o.effectiveSeverity = 'foo';
    o.extraDetails = 'foo';
    o.packageIssue = buildUnnamed87();
    o.severity = 'foo';
    o.type = 'foo';
    o.vexAssessment = buildVexAssessment();
  }
  buildCounterVulnerabilityDetails--;
  return o;
}

void checkVulnerabilityDetails(api.VulnerabilityDetails o) {
  buildCounterVulnerabilityDetails++;
  if (buildCounterVulnerabilityDetails < 3) {
    unittest.expect(o.cvssScore!, unittest.equals(42.0));
    checkCVSS(o.cvssV2!);
    checkCVSS(o.cvssV3!);
    unittest.expect(o.cvssVersion!, unittest.equals('foo'));
    unittest.expect(o.effectiveSeverity!, unittest.equals('foo'));
    unittest.expect(o.extraDetails!, unittest.equals('foo'));
    checkUnnamed87(o.packageIssue!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkVexAssessment(o.vexAssessment!);
  }
  buildCounterVulnerabilityDetails--;
}

core.List<api.FileLocation> buildUnnamed88() => [
  buildFileLocation(),
  buildFileLocation(),
];

void checkUnnamed88(core.List<api.FileLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileLocation(o[0]);
  checkFileLocation(o[1]);
}

core.int buildCounterVulnerabilityLocation = 0;
api.VulnerabilityLocation buildVulnerabilityLocation() {
  final o = api.VulnerabilityLocation();
  buildCounterVulnerabilityLocation++;
  if (buildCounterVulnerabilityLocation < 3) {
    o.cpeUri = 'foo';
    o.fileLocation = buildUnnamed88();
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
    checkUnnamed88(o.fileLocation!);
    unittest.expect(o.package!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterVulnerabilityLocation--;
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Detail> buildUnnamed90() => [buildDetail(), buildDetail()];

void checkUnnamed90(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0]);
  checkDetail(o[1]);
}

core.int buildCounterVulnerabilityType = 0;
api.VulnerabilityType buildVulnerabilityType() {
  final o = api.VulnerabilityType();
  buildCounterVulnerabilityType++;
  if (buildCounterVulnerabilityType < 3) {
    o.cvssScore = 42.0;
    o.cvssV2 = buildCVSS();
    o.cvssVersion = 'foo';
    o.cwe = buildUnnamed89();
    o.details = buildUnnamed90();
    o.severity = 'foo';
  }
  buildCounterVulnerabilityType--;
  return o;
}

void checkVulnerabilityType(api.VulnerabilityType o) {
  buildCounterVulnerabilityType++;
  if (buildCounterVulnerabilityType < 3) {
    unittest.expect(o.cvssScore!, unittest.equals(42.0));
    checkCVSS(o.cvssV2!);
    unittest.expect(o.cvssVersion!, unittest.equals('foo'));
    checkUnnamed89(o.cwe!);
    checkUnnamed90(o.details!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterVulnerabilityType--;
}

void main() {
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

  unittest.group('obj-schema-AttestationAuthority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationAuthority.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestationAuthority(od);
    });
  });

  unittest.group('obj-schema-AttestationAuthorityHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationAuthorityHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationAuthorityHint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttestationAuthorityHint(od);
    });
  });

  unittest.group('obj-schema-BaseImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBaseImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BaseImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBaseImage(od);
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

  unittest.group('obj-schema-BuildDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildDetails(od);
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

  unittest.group('obj-schema-BuildType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildType(od);
    });
  });

  unittest.group('obj-schema-BuilderConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuilderConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuilderConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuilderConfig(od);
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

  unittest.group('obj-schema-CisBenchmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCisBenchmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CisBenchmark.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCisBenchmark(od);
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

  unittest.group('obj-schema-Completeness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Completeness.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompleteness(od);
    });
  });

  unittest.group('obj-schema-ComplianceNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceNote(od);
    });
  });

  unittest.group('obj-schema-ComplianceOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceOccurrence(od);
    });
  });

  unittest.group('obj-schema-ComplianceVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceVersion(od);
    });
  });

  unittest.group('obj-schema-CreateOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateOperationRequest(od);
    });
  });

  unittest.group('obj-schema-DSSEAttestationNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEAttestationNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEAttestationNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDSSEAttestationNote(od);
    });
  });

  unittest.group('obj-schema-DSSEAttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEAttestationOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDSSEAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-DSSEHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEHint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDSSEHint(od);
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

  unittest.group('obj-schema-FileLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileLocation(od);
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

  unittest.group('obj-schema-GetVulnzOccurrencesSummaryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetVulnzOccurrencesSummaryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetVulnzOccurrencesSummaryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetVulnzOccurrencesSummaryResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1AliasContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleDevtoolsContaineranalysisV1alpha1AliasContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1AliasContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1GitSourceContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1RepoId',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleDevtoolsContaineranalysisV1alpha1RepoId();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1RepoId(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1SourceContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleDevtoolsContaineranalysisV1alpha1SourceContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDevtoolsContaineranalysisV1alpha1SourceContext(od);
      });
    },
  );

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

  unittest.group('obj-schema-IdentifierHelper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentifierHelper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentifierHelper.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentifierHelper(od);
    });
  });

  unittest.group('obj-schema-InTotoProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoProvenance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInTotoProvenance(od);
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

  unittest.group('obj-schema-InTotoStatement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoStatement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoStatement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInTotoStatement(od);
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

  unittest.group('obj-schema-LayerDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayerDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LayerDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLayerDetails(od);
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

  unittest.group('obj-schema-ListScanConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScanConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScanConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListScanConfigsResponse(od);
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

  unittest.group('obj-schema-Material', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Material.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaterial(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Metadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-NonCompliantFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonCompliantFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonCompliantFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNonCompliantFile(od);
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

  unittest.group('obj-schema-Recipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Recipe.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRecipe(od);
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

  unittest.group('obj-schema-RepoSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepoSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepoSource(od);
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

  unittest.group('obj-schema-ScanConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScanConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScanConfig(od);
    });
  });

  unittest.group('obj-schema-SecretLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecretLocation(od);
    });
  });

  unittest.group('obj-schema-SecretNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecretNote(od);
    });
  });

  unittest.group('obj-schema-SecretOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecretOccurrence(od);
    });
  });

  unittest.group('obj-schema-SecretStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecretStatus(od);
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

  unittest.group('obj-schema-SeverityCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeverityCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeverityCount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSeverityCount(od);
    });
  });

  unittest.group('obj-schema-SlsaBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaBuilder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaBuilder(od);
    });
  });

  unittest.group('obj-schema-SlsaCompleteness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaCompleteness.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaCompleteness(od);
    });
  });

  unittest.group('obj-schema-SlsaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaMetadata(od);
    });
  });

  unittest.group('obj-schema-SlsaProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaProvenance(od);
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

  unittest.group('obj-schema-SlsaProvenanceZeroTwo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenanceZeroTwo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenanceZeroTwo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaProvenanceZeroTwo(od);
    });
  });

  unittest.group('obj-schema-SlsaRecipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaRecipe.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlsaRecipe(od);
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

  unittest.group('obj-schema-StorageSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageSource(od);
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

  unittest.group('obj-schema-URI', () {
    unittest.test('to-json--from-json', () async {
      final o = buildURI();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.URI.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkURI(od);
    });
  });

  unittest.group('obj-schema-UpdateOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateOperationRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeDistribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeDistribution(od);
    });
  });

  unittest.group('obj-schema-UpgradeNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeNote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeNote(od);
    });
  });

  unittest.group('obj-schema-UpgradeOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeOccurrence(od);
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

  unittest.group('obj-schema-VulnerabilityAttestation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityAttestation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityAttestation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityAttestation(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityDetails(od);
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

  unittest.group('obj-schema-VulnerabilityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityType(od);
    });
  });

  unittest.group('resource-ProjectsNotesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_parent = 'foo';
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(queryMap['name']!.first, unittest.equals(arg_name));
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
        name: arg_name,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          unittest.expect(queryMap['name']!.first, unittest.equals(arg_name));
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
          final resp = convert.json.encode(buildListNotesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        name: arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_parent = 'foo';
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(queryMap['name']!.first, unittest.equals(arg_name));
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
        name: arg_name,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGetVulnzOccurrencesSummaryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getVulnerabilitySummary(
        arg_parent,
        filter: arg_filter,
        $fields: arg_$fields,
      );
      checkGetVulnzOccurrencesSummaryResponse(
        response as api.GetVulnzOccurrencesSummaryResponse,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_kind = 'foo';
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          unittest.expect(queryMap['kind']!.first, unittest.equals(arg_kind));
          unittest.expect(queryMap['name']!.first, unittest.equals(arg_name));
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
          final resp = convert.json.encode(buildListOccurrencesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        kind: arg_kind,
        name: arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.operations;
      final arg_request = buildCreateOperationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateOperationRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.operations;
      final arg_request = buildUpdateOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateOperationRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsScanConfigsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.scanConfigs;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildScanConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkScanConfig(response as api.ScanConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.scanConfigs;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListScanConfigsResponse());
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
      checkListScanConfigsResponse(response as api.ListScanConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.scanConfigs;
      final arg_request = buildScanConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ScanConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkScanConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildScanConfig());
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
      checkScanConfig(response as api.ScanConfig);
    });
  });

  unittest.group('resource-ProvidersNotesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).providers.notes;
      final arg_request = buildNote();
      final arg_name = 'foo';
      final arg_noteId = 'foo';
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
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
        arg_name,
        noteId: arg_noteId,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).providers.notes;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final res = api.ContainerAnalysisApi(mock).providers.notes;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final res = api.ContainerAnalysisApi(mock).providers.notes;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final res = api.ContainerAnalysisApi(mock).providers.notes;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
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
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkListNotesResponse(response as api.ListNotesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).providers.notes;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.ContainerAnalysisApi(mock).providers.notes;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final res = api.ContainerAnalysisApi(mock).providers.notes;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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

  unittest.group('resource-ProvidersNotesOccurrencesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).providers.notes.occurrences;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
}
