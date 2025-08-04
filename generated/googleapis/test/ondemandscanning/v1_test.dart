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

import 'package:googleapis/ondemandscanning/v1.dart' as api;
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

core.List<api.PackageData> buildUnnamed1() => [
  buildPackageData(),
  buildPackageData(),
];

void checkUnnamed1(core.List<api.PackageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageData(o[0]);
  checkPackageData(o[1]);
}

core.int buildCounterAnalyzePackagesRequestV1 = 0;
api.AnalyzePackagesRequestV1 buildAnalyzePackagesRequestV1() {
  final o = api.AnalyzePackagesRequestV1();
  buildCounterAnalyzePackagesRequestV1++;
  if (buildCounterAnalyzePackagesRequestV1 < 3) {
    o.includeOsvData = true;
    o.packages = buildUnnamed1();
    o.resourceUri = 'foo';
  }
  buildCounterAnalyzePackagesRequestV1--;
  return o;
}

void checkAnalyzePackagesRequestV1(api.AnalyzePackagesRequestV1 o) {
  buildCounterAnalyzePackagesRequestV1++;
  if (buildCounterAnalyzePackagesRequestV1 < 3) {
    unittest.expect(o.includeOsvData!, unittest.isTrue);
    checkUnnamed1(o.packages!);
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
  }
  buildCounterAnalyzePackagesRequestV1--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
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
    o.names = buildUnnamed2();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(o.checksum!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed2(o.names!);
  }
  buildCounterArtifact--;
}

core.List<api.Jwt> buildUnnamed3() => [buildJwt(), buildJwt()];

void checkUnnamed3(core.List<api.Jwt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwt(o[0]);
  checkJwt(o[1]);
}

core.List<api.Signature> buildUnnamed4() => [
  buildSignature(),
  buildSignature(),
];

void checkUnnamed4(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0]);
  checkSignature(o[1]);
}

core.int buildCounterAttestationOccurrence = 0;
api.AttestationOccurrence buildAttestationOccurrence() {
  final o = api.AttestationOccurrence();
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    o.jwts = buildUnnamed3();
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed4();
  }
  buildCounterAttestationOccurrence--;
  return o;
}

void checkAttestationOccurrence(api.AttestationOccurrence o) {
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    checkUnnamed3(o.jwts!);
    unittest.expect(o.serializedPayload!, unittest.equals('foo'));
    checkUnnamed4(o.signatures!);
  }
  buildCounterAttestationOccurrence--;
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

core.int buildCounterBinarySourceInfo = 0;
api.BinarySourceInfo buildBinarySourceInfo() {
  final o = api.BinarySourceInfo();
  buildCounterBinarySourceInfo++;
  if (buildCounterBinarySourceInfo < 3) {
    o.binaryVersion = buildPackageVersion();
    o.sourceVersion = buildPackageVersion();
  }
  buildCounterBinarySourceInfo--;
  return o;
}

void checkBinarySourceInfo(api.BinarySourceInfo o) {
  buildCounterBinarySourceInfo++;
  if (buildCounterBinarySourceInfo < 3) {
    checkPackageVersion(o.binaryVersion!);
    checkPackageVersion(o.sourceVersion!);
  }
  buildCounterBinarySourceInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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

core.List<api.ResourceDescriptor> buildUnnamed7() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed7(core.List<api.ResourceDescriptor> o) {
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
    o.externalParameters = buildUnnamed5();
    o.internalParameters = buildUnnamed6();
    o.resolvedDependencies = buildUnnamed7();
  }
  buildCounterBuildDefinition--;
  return o;
}

void checkBuildDefinition(api.BuildDefinition o) {
  buildCounterBuildDefinition++;
  if (buildCounterBuildDefinition < 3) {
    unittest.expect(o.buildType!, unittest.equals('foo'));
    checkUnnamed5(o.externalParameters!);
    checkUnnamed6(o.internalParameters!);
    checkUnnamed7(o.resolvedDependencies!);
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

core.int buildCounterBuildOccurrence = 0;
api.BuildOccurrence buildBuildOccurrence() {
  final o = api.BuildOccurrence();
  buildCounterBuildOccurrence++;
  if (buildCounterBuildOccurrence < 3) {
    o.inTotoSlsaProvenanceV1 = buildInTotoSlsaProvenanceV1();
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
    checkInTotoSlsaProvenanceV1(o.inTotoSlsaProvenanceV1!);
    checkInTotoProvenance(o.intotoProvenance!);
    checkInTotoStatement(o.intotoStatement!);
    checkBuildProvenance(o.provenance!);
    unittest.expect(o.provenanceBytes!, unittest.equals('foo'));
  }
  buildCounterBuildOccurrence--;
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Artifact> buildUnnamed9() => [buildArtifact(), buildArtifact()];

void checkUnnamed9(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Command> buildUnnamed10() => [buildCommand(), buildCommand()];

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
    unittest.expect(o.builderVersion!, unittest.equals('foo'));
    checkUnnamed9(o.builtArtifacts!);
    checkUnnamed10(o.commands!);
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
    unittest.expect(o.categoryId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCategory--;
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

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.dir!, unittest.equals('foo'));
    checkUnnamed12(o.env!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
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

core.List<api.NonCompliantFile> buildUnnamed14() => [
  buildNonCompliantFile(),
  buildNonCompliantFile(),
];

void checkUnnamed14(core.List<api.NonCompliantFile> o) {
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
    o.nonCompliantFiles = buildUnnamed14();
    o.version = buildComplianceVersion();
  }
  buildCounterComplianceOccurrence--;
  return o;
}

void checkComplianceOccurrence(api.ComplianceOccurrence o) {
  buildCounterComplianceOccurrence++;
  if (buildCounterComplianceOccurrence < 3) {
    unittest.expect(o.nonComplianceReason!, unittest.equals('foo'));
    checkUnnamed14(o.nonCompliantFiles!);
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

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.resourceUri = buildUnnamed15();
    o.undeployTime = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeploymentOccurrence--;
  return o;
}

void checkDeploymentOccurrence(api.DeploymentOccurrence o) {
  buildCounterDeploymentOccurrence++;
  if (buildCounterDeploymentOccurrence < 3) {
    unittest.expect(o.address!, unittest.equals('foo'));
    unittest.expect(o.config!, unittest.equals('foo'));
    unittest.expect(o.deployTime!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    checkUnnamed15(o.resourceUri!);
    unittest.expect(o.undeployTime!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterDeploymentOccurrence--;
}

core.List<api.Status> buildUnnamed16() => [buildStatus(), buildStatus()];

void checkUnnamed16(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.File> buildUnnamed17() => [buildFile(), buildFile()];

void checkUnnamed17(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterDiscoveryOccurrence = 0;
api.DiscoveryOccurrence buildDiscoveryOccurrence() {
  final o = api.DiscoveryOccurrence();
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    o.analysisCompleted = buildAnalysisCompleted();
    o.analysisError = buildUnnamed16();
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
    o.archiveTime = 'foo';
    o.continuousAnalysis = 'foo';
    o.cpe = 'foo';
    o.files = buildUnnamed17();
    o.lastScanTime = 'foo';
    o.sbomStatus = buildSBOMStatus();
  }
  buildCounterDiscoveryOccurrence--;
  return o;
}

void checkDiscoveryOccurrence(api.DiscoveryOccurrence o) {
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    checkAnalysisCompleted(o.analysisCompleted!);
    checkUnnamed16(o.analysisError!);
    unittest.expect(o.analysisStatus!, unittest.equals('foo'));
    checkStatus(o.analysisStatusError!);
    unittest.expect(o.archiveTime!, unittest.equals('foo'));
    unittest.expect(o.continuousAnalysis!, unittest.equals('foo'));
    unittest.expect(o.cpe!, unittest.equals('foo'));
    checkUnnamed17(o.files!);
    unittest.expect(o.lastScanTime!, unittest.equals('foo'));
    checkSBOMStatus(o.sbomStatus!);
  }
  buildCounterDiscoveryOccurrence--;
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
    unittest.expect(o.payload!, unittest.equals('foo'));
    unittest.expect(o.payloadType!, unittest.equals('foo'));
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
    unittest.expect(o.keyid!, unittest.equals('foo'));
    unittest.expect(o.sig!, unittest.equals('foo'));
  }
  buildCounterEnvelopeSignature--;
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.digest = buildUnnamed19();
    o.name = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    checkUnnamed19(o.digest!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<api.Hash> buildUnnamed20() => [buildHash(), buildHash()];

void checkUnnamed20(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed20();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed20(o.fileHash!);
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

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
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
    o.v2Blob = buildUnnamed21();
    o.v2Name = 'foo';
  }
  buildCounterFingerprint--;
  return o;
}

void checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(o.v1Name!, unittest.equals('foo'));
    checkUnnamed21(o.v2Blob!);
    unittest.expect(o.v2Name!, unittest.equals('foo'));
  }
  buildCounterFingerprint--;
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

core.int buildCounterGrafeasV1BaseImage = 0;
api.GrafeasV1BaseImage buildGrafeasV1BaseImage() {
  final o = api.GrafeasV1BaseImage();
  buildCounterGrafeasV1BaseImage++;
  if (buildCounterGrafeasV1BaseImage < 3) {
    o.layerCount = 42;
    o.name = 'foo';
    o.repository = 'foo';
  }
  buildCounterGrafeasV1BaseImage--;
  return o;
}

void checkGrafeasV1BaseImage(api.GrafeasV1BaseImage o) {
  buildCounterGrafeasV1BaseImage++;
  if (buildCounterGrafeasV1BaseImage < 3) {
    unittest.expect(o.layerCount!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.repository!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1BaseImage--;
}

core.int buildCounterGrafeasV1FileLocation = 0;
api.GrafeasV1FileLocation buildGrafeasV1FileLocation() {
  final o = api.GrafeasV1FileLocation();
  buildCounterGrafeasV1FileLocation++;
  if (buildCounterGrafeasV1FileLocation < 3) {
    o.filePath = 'foo';
    o.layerDetails = buildGrafeasV1LayerDetails();
  }
  buildCounterGrafeasV1FileLocation--;
  return o;
}

void checkGrafeasV1FileLocation(api.GrafeasV1FileLocation o) {
  buildCounterGrafeasV1FileLocation++;
  if (buildCounterGrafeasV1FileLocation < 3) {
    unittest.expect(o.filePath!, unittest.equals('foo'));
    checkGrafeasV1LayerDetails(o.layerDetails!);
  }
  buildCounterGrafeasV1FileLocation--;
}

core.List<api.GrafeasV1BaseImage> buildUnnamed22() => [
  buildGrafeasV1BaseImage(),
  buildGrafeasV1BaseImage(),
];

void checkUnnamed22(core.List<api.GrafeasV1BaseImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1BaseImage(o[0]);
  checkGrafeasV1BaseImage(o[1]);
}

core.int buildCounterGrafeasV1LayerDetails = 0;
api.GrafeasV1LayerDetails buildGrafeasV1LayerDetails() {
  final o = api.GrafeasV1LayerDetails();
  buildCounterGrafeasV1LayerDetails++;
  if (buildCounterGrafeasV1LayerDetails < 3) {
    o.baseImages = buildUnnamed22();
    o.chainId = 'foo';
    o.command = 'foo';
    o.diffId = 'foo';
    o.index = 42;
  }
  buildCounterGrafeasV1LayerDetails--;
  return o;
}

void checkGrafeasV1LayerDetails(api.GrafeasV1LayerDetails o) {
  buildCounterGrafeasV1LayerDetails++;
  if (buildCounterGrafeasV1LayerDetails < 3) {
    checkUnnamed22(o.baseImages!);
    unittest.expect(o.chainId!, unittest.equals('foo'));
    unittest.expect(o.command!, unittest.equals('foo'));
    unittest.expect(o.diffId!, unittest.equals('foo'));
    unittest.expect(o.index!, unittest.equals(42));
  }
  buildCounterGrafeasV1LayerDetails--;
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
buildGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder < 3) {
    o.id = 'foo';
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(
  api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder o,
) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder--;
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
buildGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness < 3) {
    o.environment = true;
    o.materials = true;
    o.parameters = true;
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(
  api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness o,
) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness < 3) {
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
    unittest.expect(o.parameters!, unittest.isTrue);
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness--;
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
buildGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource < 3) {
    o.digest = buildUnnamed23();
    o.entryPoint = 'foo';
    o.uri = 'foo';
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(
  api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource o,
) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource < 3) {
    checkUnnamed23(o.digest!);
    unittest.expect(o.entryPoint!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource--;
}

core.Map<core.String, core.Object?> buildUnnamed24() => {
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

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
buildGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation < 3) {
    o.configSource = buildGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource();
    o.environment = buildUnnamed24();
    o.parameters = buildUnnamed25();
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(
  api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation o,
) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation < 3) {
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(o.configSource!);
    checkUnnamed24(o.environment!);
    checkUnnamed25(o.parameters!);
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial < 3) {
    o.digest = buildUnnamed26();
    o.uri = 'foo';
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(
  api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial o,
) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial < 3) {
    checkUnnamed26(o.digest!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial--;
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
buildGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata < 3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness = buildGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness();
    o.reproducible = true;
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(
  api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata o,
) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata < 3) {
    unittest.expect(o.buildFinishedOn!, unittest.equals('foo'));
    unittest.expect(o.buildInvocationId!, unittest.equals('foo'));
    unittest.expect(o.buildStartedOn!, unittest.equals('foo'));
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata--;
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
    unittest.expect(o.revision!, unittest.equals(42));
    unittest.expect(o.updateId!, unittest.equals('foo'));
  }
  buildCounterIdentity--;
}

core.List<api.Layer> buildUnnamed27() => [buildLayer(), buildLayer()];

void checkUnnamed27(core.List<api.Layer> o) {
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
    o.layerInfo = buildUnnamed27();
  }
  buildCounterImageOccurrence--;
  return o;
}

void checkImageOccurrence(api.ImageOccurrence o) {
  buildCounterImageOccurrence++;
  if (buildCounterImageOccurrence < 3) {
    unittest.expect(o.baseResourceUrl!, unittest.equals('foo'));
    unittest.expect(o.distance!, unittest.equals(42));
    checkFingerprint(o.fingerprint!);
    checkUnnamed27(o.layerInfo!);
  }
  buildCounterImageOccurrence--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
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
    o.materials = buildUnnamed28();
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
    checkUnnamed28(o.materials!);
    checkMetadata(o.metadata!);
    checkRecipe(o.recipe!);
  }
  buildCounterInTotoProvenance--;
}

core.List<api.Subject> buildUnnamed29() => [buildSubject(), buildSubject()];

void checkUnnamed29(core.List<api.Subject> o) {
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
    o.subject = buildUnnamed29();
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
    checkUnnamed29(o.subject!);
  }
  buildCounterInTotoSlsaProvenanceV1--;
}

core.List<api.Subject> buildUnnamed30() => [buildSubject(), buildSubject()];

void checkUnnamed30(core.List<api.Subject> o) {
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
    o.subject = buildUnnamed30();
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
    checkUnnamed30(o.subject!);
  }
  buildCounterInTotoStatement--;
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

core.int buildCounterLanguagePackageDependency = 0;
api.LanguagePackageDependency buildLanguagePackageDependency() {
  final o = api.LanguagePackageDependency();
  buildCounterLanguagePackageDependency++;
  if (buildCounterLanguagePackageDependency < 3) {
    o.package = 'foo';
    o.version = 'foo';
  }
  buildCounterLanguagePackageDependency--;
  return o;
}

void checkLanguagePackageDependency(api.LanguagePackageDependency o) {
  buildCounterLanguagePackageDependency++;
  if (buildCounterLanguagePackageDependency < 3) {
    unittest.expect(o.package!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterLanguagePackageDependency--;
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

core.List<api.BaseImage> buildUnnamed31() => [
  buildBaseImage(),
  buildBaseImage(),
];

void checkUnnamed31(core.List<api.BaseImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBaseImage(o[0]);
  checkBaseImage(o[1]);
}

core.int buildCounterLayerDetails = 0;
api.LayerDetails buildLayerDetails() {
  final o = api.LayerDetails();
  buildCounterLayerDetails++;
  if (buildCounterLayerDetails < 3) {
    o.baseImages = buildUnnamed31();
    o.chainId = 'foo';
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
    checkUnnamed31(o.baseImages!);
    unittest.expect(o.chainId!, unittest.equals('foo'));
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

core.List<api.Operation> buildUnnamed32() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed32(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed32();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Occurrence> buildUnnamed33() => [
  buildOccurrence(),
  buildOccurrence(),
];

void checkUnnamed33(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListVulnerabilitiesResponseV1 = 0;
api.ListVulnerabilitiesResponseV1 buildListVulnerabilitiesResponseV1() {
  final o = api.ListVulnerabilitiesResponseV1();
  buildCounterListVulnerabilitiesResponseV1++;
  if (buildCounterListVulnerabilitiesResponseV1 < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed33();
  }
  buildCounterListVulnerabilitiesResponseV1--;
  return o;
}

void checkListVulnerabilitiesResponseV1(api.ListVulnerabilitiesResponseV1 o) {
  buildCounterListVulnerabilitiesResponseV1++;
  if (buildCounterListVulnerabilitiesResponseV1 < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed33(o.occurrences!);
  }
  buildCounterListVulnerabilitiesResponseV1--;
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

core.int buildCounterMaintainer = 0;
api.Maintainer buildMaintainer() {
  final o = api.Maintainer();
  buildCounterMaintainer++;
  if (buildCounterMaintainer < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterMaintainer--;
  return o;
}

void checkMaintainer(api.Maintainer o) {
  buildCounterMaintainer++;
  if (buildCounterMaintainer < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterMaintainer--;
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMaterial = 0;
api.Material buildMaterial() {
  final o = api.Material();
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    o.digest = buildUnnamed34();
    o.uri = 'foo';
  }
  buildCounterMaterial--;
  return o;
}

void checkMaterial(api.Material o) {
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    checkUnnamed34(o.digest!);
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
    o.sbomReference = buildSBOMReferenceOccurrence();
    o.secret = buildSecretOccurrence();
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
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeploymentOccurrence(o.deployment!);
    checkDiscoveryOccurrence(o.discovery!);
    checkDSSEAttestationOccurrence(o.dsseAttestation!);
    checkEnvelope(o.envelope!);
    checkImageOccurrence(o.image!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.noteName!, unittest.equals('foo'));
    checkPackageOccurrence(o.package!);
    unittest.expect(o.remediation!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    checkSBOMReferenceOccurrence(o.sbomReference!);
    checkSecretOccurrence(o.secret!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUpgradeOccurrence(o.upgrade!);
    checkVulnerabilityOccurrence(o.vulnerability!);
  }
  buildCounterOccurrence--;
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

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed35();
    o.name = 'foo';
    o.response = buildUnnamed36();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed35(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed36(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.BinarySourceInfo> buildUnnamed37() => [
  buildBinarySourceInfo(),
  buildBinarySourceInfo(),
];

void checkUnnamed37(core.List<api.BinarySourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinarySourceInfo(o[0]);
  checkBinarySourceInfo(o[1]);
}

core.List<api.LanguagePackageDependency> buildUnnamed38() => [
  buildLanguagePackageDependency(),
  buildLanguagePackageDependency(),
];

void checkUnnamed38(core.List<api.LanguagePackageDependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguagePackageDependency(o[0]);
  checkLanguagePackageDependency(o[1]);
}

core.List<api.FileLocation> buildUnnamed39() => [
  buildFileLocation(),
  buildFileLocation(),
];

void checkUnnamed39(core.List<api.FileLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileLocation(o[0]);
  checkFileLocation(o[1]);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageData = 0;
api.PackageData buildPackageData() {
  final o = api.PackageData();
  buildCounterPackageData++;
  if (buildCounterPackageData < 3) {
    o.architecture = 'foo';
    o.binarySourceInfo = buildUnnamed37();
    o.binaryVersion = buildPackageVersion();
    o.cpeUri = 'foo';
    o.dependencyChain = buildUnnamed38();
    o.fileLocation = buildUnnamed39();
    o.hashDigest = 'foo';
    o.layerDetails = buildLayerDetails();
    o.licenses = buildUnnamed40();
    o.maintainer = buildMaintainer();
    o.os = 'foo';
    o.osVersion = 'foo';
    o.package = 'foo';
    o.packageType = 'foo';
    o.patchedCve = buildUnnamed41();
    o.sourceVersion = buildPackageVersion();
    o.unused = 'foo';
    o.version = 'foo';
  }
  buildCounterPackageData--;
  return o;
}

void checkPackageData(api.PackageData o) {
  buildCounterPackageData++;
  if (buildCounterPackageData < 3) {
    unittest.expect(o.architecture!, unittest.equals('foo'));
    checkUnnamed37(o.binarySourceInfo!);
    checkPackageVersion(o.binaryVersion!);
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    checkUnnamed38(o.dependencyChain!);
    checkUnnamed39(o.fileLocation!);
    unittest.expect(o.hashDigest!, unittest.equals('foo'));
    checkLayerDetails(o.layerDetails!);
    checkUnnamed40(o.licenses!);
    checkMaintainer(o.maintainer!);
    unittest.expect(o.os!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
    unittest.expect(o.package!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    checkUnnamed41(o.patchedCve!);
    checkPackageVersion(o.sourceVersion!);
    unittest.expect(o.unused!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterPackageData--;
}

core.List<api.GrafeasV1FileLocation> buildUnnamed42() => [
  buildGrafeasV1FileLocation(),
  buildGrafeasV1FileLocation(),
];

void checkUnnamed42(core.List<api.GrafeasV1FileLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1FileLocation(o[0]);
  checkGrafeasV1FileLocation(o[1]);
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
    o.fileLocation = buildUnnamed42();
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
    unittest.expect(o.affectedCpeUri!, unittest.equals('foo'));
    unittest.expect(o.affectedPackage!, unittest.equals('foo'));
    checkVersion(o.affectedVersion!);
    unittest.expect(o.effectiveSeverity!, unittest.equals('foo'));
    checkUnnamed42(o.fileLocation!);
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(o.fixedCpeUri!, unittest.equals('foo'));
    unittest.expect(o.fixedPackage!, unittest.equals('foo'));
    checkVersion(o.fixedVersion!);
    unittest.expect(o.packageType!, unittest.equals('foo'));
  }
  buildCounterPackageIssue--;
}

core.List<api.Location> buildUnnamed43() => [buildLocation(), buildLocation()];

void checkUnnamed43(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterPackageOccurrence = 0;
api.PackageOccurrence buildPackageOccurrence() {
  final o = api.PackageOccurrence();
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.license = buildLicense();
    o.location = buildUnnamed43();
    o.name = 'foo';
    o.packageType = 'foo';
    o.version = buildVersion();
  }
  buildCounterPackageOccurrence--;
  return o;
}

void checkPackageOccurrence(api.PackageOccurrence o) {
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    unittest.expect(o.architecture!, unittest.equals('foo'));
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    checkLicense(o.license!);
    checkUnnamed43(o.location!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    checkVersion(o.version!);
  }
  buildCounterPackageOccurrence--;
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageVersion = 0;
api.PackageVersion buildPackageVersion() {
  final o = api.PackageVersion();
  buildCounterPackageVersion++;
  if (buildCounterPackageVersion < 3) {
    o.licenses = buildUnnamed44();
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterPackageVersion--;
  return o;
}

void checkPackageVersion(api.PackageVersion o) {
  buildCounterPackageVersion++;
  if (buildCounterPackageVersion < 3) {
    checkUnnamed44(o.licenses!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterPackageVersion--;
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

core.List<api.ResourceDescriptor> buildUnnamed45() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed45(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterProvenanceBuilder = 0;
api.ProvenanceBuilder buildProvenanceBuilder() {
  final o = api.ProvenanceBuilder();
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    o.builderDependencies = buildUnnamed45();
    o.id = 'foo';
    o.version = buildUnnamed46();
  }
  buildCounterProvenanceBuilder--;
  return o;
}

void checkProvenanceBuilder(api.ProvenanceBuilder o) {
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    checkUnnamed45(o.builderDependencies!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed46(o.version!);
  }
  buildCounterProvenanceBuilder--;
}

core.Map<core.String, core.Object?> buildUnnamed47() => {
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

void checkUnnamed47(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed48() => [
  buildUnnamed47(),
  buildUnnamed47(),
];

void checkUnnamed48(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed47(o[0]);
  checkUnnamed47(o[1]);
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed50() => [
  buildUnnamed49(),
  buildUnnamed49(),
];

void checkUnnamed50(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed49(o[0]);
  checkUnnamed49(o[1]);
}

core.int buildCounterRecipe = 0;
api.Recipe buildRecipe() {
  final o = api.Recipe();
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    o.arguments = buildUnnamed48();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed50();
    o.type = 'foo';
  }
  buildCounterRecipe--;
  return o;
}

void checkRecipe(api.Recipe o) {
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    checkUnnamed48(o.arguments!);
    unittest.expect(o.definedInMaterial!, unittest.equals('foo'));
    unittest.expect(o.entryPoint!, unittest.equals('foo'));
    checkUnnamed50(o.environment!);
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

core.Map<core.String, core.Object?> buildUnnamed51() => {
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

void checkUnnamed51(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.String> buildUnnamed52() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed52(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterResourceDescriptor = 0;
api.ResourceDescriptor buildResourceDescriptor() {
  final o = api.ResourceDescriptor();
  buildCounterResourceDescriptor++;
  if (buildCounterResourceDescriptor < 3) {
    o.annotations = buildUnnamed51();
    o.content = 'foo';
    o.digest = buildUnnamed52();
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
    checkUnnamed51(o.annotations!);
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed52(o.digest!);
    unittest.expect(o.downloadLocation!, unittest.equals('foo'));
    unittest.expect(o.mediaType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterResourceDescriptor--;
}

core.List<api.ResourceDescriptor> buildUnnamed53() => [
  buildResourceDescriptor(),
  buildResourceDescriptor(),
];

void checkUnnamed53(core.List<api.ResourceDescriptor> o) {
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
    o.byproducts = buildUnnamed53();
    o.metadata = buildBuildMetadata();
  }
  buildCounterRunDetails--;
  return o;
}

void checkRunDetails(api.RunDetails o) {
  buildCounterRunDetails++;
  if (buildCounterRunDetails < 3) {
    checkProvenanceBuilder(o.builder!);
    checkUnnamed53(o.byproducts!);
    checkBuildMetadata(o.metadata!);
  }
  buildCounterRunDetails--;
}

core.List<api.EnvelopeSignature> buildUnnamed54() => [
  buildEnvelopeSignature(),
  buildEnvelopeSignature(),
];

void checkUnnamed54(core.List<api.EnvelopeSignature> o) {
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
    o.signatures = buildUnnamed54();
  }
  buildCounterSBOMReferenceOccurrence--;
  return o;
}

void checkSBOMReferenceOccurrence(api.SBOMReferenceOccurrence o) {
  buildCounterSBOMReferenceOccurrence++;
  if (buildCounterSBOMReferenceOccurrence < 3) {
    checkSbomReferenceIntotoPayload(o.payload!);
    unittest.expect(o.payloadType!, unittest.equals('foo'));
    checkUnnamed54(o.signatures!);
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

core.List<api.Subject> buildUnnamed55() => [buildSubject(), buildSubject()];

void checkUnnamed55(core.List<api.Subject> o) {
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
    o.subject = buildUnnamed55();
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
    checkUnnamed55(o.subject!);
  }
  buildCounterSbomReferenceIntotoPayload--;
}

core.Map<core.String, core.String> buildUnnamed56() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed56(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSbomReferenceIntotoPredicate = 0;
api.SbomReferenceIntotoPredicate buildSbomReferenceIntotoPredicate() {
  final o = api.SbomReferenceIntotoPredicate();
  buildCounterSbomReferenceIntotoPredicate++;
  if (buildCounterSbomReferenceIntotoPredicate < 3) {
    o.digest = buildUnnamed56();
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
    checkUnnamed56(o.digest!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.referrerId!, unittest.equals('foo'));
  }
  buildCounterSbomReferenceIntotoPredicate--;
}

core.int buildCounterSecretLocation = 0;
api.SecretLocation buildSecretLocation() {
  final o = api.SecretLocation();
  buildCounterSecretLocation++;
  if (buildCounterSecretLocation < 3) {
    o.fileLocation = buildGrafeasV1FileLocation();
  }
  buildCounterSecretLocation--;
  return o;
}

void checkSecretLocation(api.SecretLocation o) {
  buildCounterSecretLocation++;
  if (buildCounterSecretLocation < 3) {
    checkGrafeasV1FileLocation(o.fileLocation!);
  }
  buildCounterSecretLocation--;
}

core.List<api.SecretLocation> buildUnnamed57() => [
  buildSecretLocation(),
  buildSecretLocation(),
];

void checkUnnamed57(core.List<api.SecretLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretLocation(o[0]);
  checkSecretLocation(o[1]);
}

core.List<api.SecretStatus> buildUnnamed58() => [
  buildSecretStatus(),
  buildSecretStatus(),
];

void checkUnnamed58(core.List<api.SecretStatus> o) {
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
    o.locations = buildUnnamed57();
    o.statuses = buildUnnamed58();
  }
  buildCounterSecretOccurrence--;
  return o;
}

void checkSecretOccurrence(api.SecretOccurrence o) {
  buildCounterSecretOccurrence++;
  if (buildCounterSecretOccurrence < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed57(o.locations!);
    checkUnnamed58(o.statuses!);
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

core.List<api.Material> buildUnnamed59() => [buildMaterial(), buildMaterial()];

void checkUnnamed59(core.List<api.Material> o) {
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
    o.materials = buildUnnamed59();
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
    checkUnnamed59(o.materials!);
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

core.List<api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial> buildUnnamed61() => [
  buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(),
  buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(),
];

void checkUnnamed61(
  core.List<api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(o[0]);
  checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(o[1]);
}

core.int buildCounterSlsaProvenanceZeroTwo = 0;
api.SlsaProvenanceZeroTwo buildSlsaProvenanceZeroTwo() {
  final o = api.SlsaProvenanceZeroTwo();
  buildCounterSlsaProvenanceZeroTwo++;
  if (buildCounterSlsaProvenanceZeroTwo < 3) {
    o.buildConfig = buildUnnamed60();
    o.buildType = 'foo';
    o.builder = buildGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder();
    o.invocation = buildGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation();
    o.materials = buildUnnamed61();
    o.metadata = buildGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata();
  }
  buildCounterSlsaProvenanceZeroTwo--;
  return o;
}

void checkSlsaProvenanceZeroTwo(api.SlsaProvenanceZeroTwo o) {
  buildCounterSlsaProvenanceZeroTwo++;
  if (buildCounterSlsaProvenanceZeroTwo < 3) {
    checkUnnamed60(o.buildConfig!);
    unittest.expect(o.buildType!, unittest.equals('foo'));
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(o.builder!);
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(o.invocation!);
    checkUnnamed61(o.materials!);
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(o.metadata!);
  }
  buildCounterSlsaProvenanceZeroTwo--;
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

core.Map<core.String, core.Object?> buildUnnamed63() => {
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

void checkUnnamed63(core.Map<core.String, core.Object?> o) {
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
    o.arguments = buildUnnamed62();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed63();
    o.type = 'foo';
  }
  buildCounterSlsaRecipe--;
  return o;
}

void checkSlsaRecipe(api.SlsaRecipe o) {
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    checkUnnamed62(o.arguments!);
    unittest.expect(o.definedInMaterial!, unittest.equals('foo'));
    unittest.expect(o.entryPoint!, unittest.equals('foo'));
    checkUnnamed63(o.environment!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSlsaRecipe--;
}

core.List<api.SourceContext> buildUnnamed64() => [
  buildSourceContext(),
  buildSourceContext(),
];

void checkUnnamed64(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.Map<core.String, api.FileHashes> buildUnnamed65() => {
  'x': buildFileHashes(),
  'y': buildFileHashes(),
};

void checkUnnamed65(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed64();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed65();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed64(o.additionalContexts!);
    unittest.expect(o.artifactStorageSourceUri!, unittest.equals('foo'));
    checkSourceContext(o.context!);
    checkUnnamed65(o.fileHashes!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed66() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed66(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed66();
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
    checkUnnamed66(o.labels!);
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed68() => [
  buildUnnamed67(),
  buildUnnamed67(),
];

void checkUnnamed68(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed67(o[0]);
  checkUnnamed67(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed68();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed68(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, core.String> buildUnnamed69() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed69(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.digest = buildUnnamed69();
    o.name = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    checkUnnamed69(o.digest!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
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
    o.cve = buildUnnamed70();
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
    checkUnnamed70(o.cve!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterUpgradeDistribution--;
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
    unittest.expect(o.package!, unittest.equals('foo'));
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
    unittest.expect(o.epoch!, unittest.equals(42));
    unittest.expect(o.fullName!, unittest.equals('foo'));
    unittest.expect(o.inclusive!, unittest.isTrue);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals('foo'));
  }
  buildCounterVersion--;
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RelatedUrl> buildUnnamed72() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed72(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.List<api.Remediation> buildUnnamed73() => [
  buildRemediation(),
  buildRemediation(),
];

void checkUnnamed73(core.List<api.Remediation> o) {
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
    o.impacts = buildUnnamed71();
    o.justification = buildJustification();
    o.noteName = 'foo';
    o.relatedUris = buildUnnamed72();
    o.remediations = buildUnnamed73();
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
    checkUnnamed71(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(o.noteName!, unittest.equals('foo'));
    checkUnnamed72(o.relatedUris!);
    checkUnnamed73(o.remediations!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.vulnerabilityId!, unittest.equals('foo'));
  }
  buildCounterVexAssessment--;
}

core.List<api.PackageIssue> buildUnnamed74() => [
  buildPackageIssue(),
  buildPackageIssue(),
];

void checkUnnamed74(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

core.List<api.RelatedUrl> buildUnnamed75() => [
  buildRelatedUrl(),
  buildRelatedUrl(),
];

void checkUnnamed75(core.List<api.RelatedUrl> o) {
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
    o.cvssV2 = buildCVSS();
    o.cvssVersion = 'foo';
    o.cvssv3 = buildCVSS();
    o.effectiveSeverity = 'foo';
    o.extraDetails = 'foo';
    o.fixAvailable = true;
    o.longDescription = 'foo';
    o.packageIssue = buildUnnamed74();
    o.relatedUrls = buildUnnamed75();
    o.severity = 'foo';
    o.shortDescription = 'foo';
    o.type = 'foo';
    o.vexAssessment = buildVexAssessment();
  }
  buildCounterVulnerabilityOccurrence--;
  return o;
}

void checkVulnerabilityOccurrence(api.VulnerabilityOccurrence o) {
  buildCounterVulnerabilityOccurrence++;
  if (buildCounterVulnerabilityOccurrence < 3) {
    unittest.expect(o.cvssScore!, unittest.equals(42.0));
    checkCVSS(o.cvssV2!);
    unittest.expect(o.cvssVersion!, unittest.equals('foo'));
    checkCVSS(o.cvssv3!);
    unittest.expect(o.effectiveSeverity!, unittest.equals('foo'));
    unittest.expect(o.extraDetails!, unittest.equals('foo'));
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(o.longDescription!, unittest.equals('foo'));
    checkUnnamed74(o.packageIssue!);
    checkUnnamed75(o.relatedUrls!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.shortDescription!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkVexAssessment(o.vexAssessment!);
  }
  buildCounterVulnerabilityOccurrence--;
}

core.List<api.Category> buildUnnamed76() => [buildCategory(), buildCategory()];

void checkUnnamed76(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWindowsUpdate = 0;
api.WindowsUpdate buildWindowsUpdate() {
  final o = api.WindowsUpdate();
  buildCounterWindowsUpdate++;
  if (buildCounterWindowsUpdate < 3) {
    o.categories = buildUnnamed76();
    o.description = 'foo';
    o.identity = buildIdentity();
    o.kbArticleIds = buildUnnamed77();
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
    checkUnnamed76(o.categories!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkIdentity(o.identity!);
    checkUnnamed77(o.kbArticleIds!);
    unittest.expect(o.lastPublishedTimestamp!, unittest.equals('foo'));
    unittest.expect(o.supportUrl!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterWindowsUpdate--;
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

  unittest.group('obj-schema-AnalyzePackagesRequestV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzePackagesRequestV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzePackagesRequestV1.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzePackagesRequestV1(od);
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

  unittest.group('obj-schema-BinarySourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinarySourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinarySourceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinarySourceInfo(od);
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

  unittest.group('obj-schema-BuildOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildOccurrence(od);
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

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Category.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCategory(od);
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

  unittest.group('obj-schema-DeploymentOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentOccurrence(od);
    });
  });

  unittest.group('obj-schema-DiscoveryOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscoveryOccurrence(od);
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

  unittest.group('obj-schema-GrafeasV1BaseImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1BaseImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1BaseImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1BaseImage(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1FileLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1FileLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1FileLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1FileLocation(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1LayerDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1LayerDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1LayerDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1LayerDetails(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(od);
    });
  });

  unittest.group(
    'obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(od);
      });
    },
  );

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(od);
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

  unittest.group('obj-schema-Identity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Identity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentity(od);
    });
  });

  unittest.group('obj-schema-ImageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageOccurrence(od);
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

  unittest.group('obj-schema-Jwt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Jwt.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJwt(od);
    });
  });

  unittest.group('obj-schema-LanguagePackageDependency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguagePackageDependency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguagePackageDependency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLanguagePackageDependency(od);
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

  unittest.group('obj-schema-ListVulnerabilitiesResponseV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVulnerabilitiesResponseV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVulnerabilitiesResponseV1.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListVulnerabilitiesResponseV1(od);
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

  unittest.group('obj-schema-Maintainer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Maintainer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaintainer(od);
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

  unittest.group('obj-schema-PackageData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageData(od);
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

  unittest.group('obj-schema-PackageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageOccurrence(od);
    });
  });

  unittest.group('obj-schema-PackageVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageVersion(od);
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

  unittest.group('obj-schema-VulnerabilityOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerabilityOccurrence(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWindowsUpdate(od);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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

    unittest.test('method--wait', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_timeout = 'foo';
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
            queryMap['timeout']!.first,
            unittest.equals(arg_timeout),
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
      final response = await res.wait(
        arg_name,
        timeout: arg_timeout,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsScansResource', () {
    unittest.test('method--analyzePackages', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.scans;
      final arg_request = buildAnalyzePackagesRequestV1();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnalyzePackagesRequestV1.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnalyzePackagesRequestV1(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.analyzePackages(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsScansVulnerabilitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.OnDemandScanningApi(
            mock,
          ).projects.locations.scans.vulnerabilities;
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
          final resp = convert.json.encode(
            buildListVulnerabilitiesResponseV1(),
          );
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
      checkListVulnerabilitiesResponseV1(
        response as api.ListVulnerabilitiesResponseV1,
      );
    });
  });
}
