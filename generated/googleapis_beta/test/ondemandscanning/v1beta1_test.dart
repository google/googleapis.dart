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

import 'package:googleapis_beta/ondemandscanning/v1beta1.dart' as api;
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

core.int buildCounterAnalyzePackagesMetadata = 0;
api.AnalyzePackagesMetadata buildAnalyzePackagesMetadata() {
  final o = api.AnalyzePackagesMetadata();
  buildCounterAnalyzePackagesMetadata++;
  if (buildCounterAnalyzePackagesMetadata < 3) {
    o.createTime = 'foo';
    o.resourceUri = 'foo';
  }
  buildCounterAnalyzePackagesMetadata--;
  return o;
}

void checkAnalyzePackagesMetadata(api.AnalyzePackagesMetadata o) {
  buildCounterAnalyzePackagesMetadata++;
  if (buildCounterAnalyzePackagesMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzePackagesMetadata--;
}

core.int buildCounterAnalyzePackagesMetadataV1 = 0;
api.AnalyzePackagesMetadataV1 buildAnalyzePackagesMetadataV1() {
  final o = api.AnalyzePackagesMetadataV1();
  buildCounterAnalyzePackagesMetadataV1++;
  if (buildCounterAnalyzePackagesMetadataV1 < 3) {
    o.createTime = 'foo';
    o.resourceUri = 'foo';
  }
  buildCounterAnalyzePackagesMetadataV1--;
  return o;
}

void checkAnalyzePackagesMetadataV1(api.AnalyzePackagesMetadataV1 o) {
  buildCounterAnalyzePackagesMetadataV1++;
  if (buildCounterAnalyzePackagesMetadataV1 < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzePackagesMetadataV1--;
}

core.List<api.PackageData> buildUnnamed9007() => [
      buildPackageData(),
      buildPackageData(),
    ];

void checkUnnamed9007(core.List<api.PackageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageData(o[0]);
  checkPackageData(o[1]);
}

core.int buildCounterAnalyzePackagesRequest = 0;
api.AnalyzePackagesRequest buildAnalyzePackagesRequest() {
  final o = api.AnalyzePackagesRequest();
  buildCounterAnalyzePackagesRequest++;
  if (buildCounterAnalyzePackagesRequest < 3) {
    o.packages = buildUnnamed9007();
    o.resourceUri = 'foo';
  }
  buildCounterAnalyzePackagesRequest--;
  return o;
}

void checkAnalyzePackagesRequest(api.AnalyzePackagesRequest o) {
  buildCounterAnalyzePackagesRequest++;
  if (buildCounterAnalyzePackagesRequest < 3) {
    checkUnnamed9007(o.packages!);
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzePackagesRequest--;
}

core.int buildCounterAnalyzePackagesResponse = 0;
api.AnalyzePackagesResponse buildAnalyzePackagesResponse() {
  final o = api.AnalyzePackagesResponse();
  buildCounterAnalyzePackagesResponse++;
  if (buildCounterAnalyzePackagesResponse < 3) {
    o.scan = 'foo';
  }
  buildCounterAnalyzePackagesResponse--;
  return o;
}

void checkAnalyzePackagesResponse(api.AnalyzePackagesResponse o) {
  buildCounterAnalyzePackagesResponse++;
  if (buildCounterAnalyzePackagesResponse < 3) {
    unittest.expect(
      o.scan!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzePackagesResponse--;
}

core.int buildCounterAnalyzePackagesResponseV1 = 0;
api.AnalyzePackagesResponseV1 buildAnalyzePackagesResponseV1() {
  final o = api.AnalyzePackagesResponseV1();
  buildCounterAnalyzePackagesResponseV1++;
  if (buildCounterAnalyzePackagesResponseV1 < 3) {
    o.scan = 'foo';
  }
  buildCounterAnalyzePackagesResponseV1--;
  return o;
}

void checkAnalyzePackagesResponseV1(api.AnalyzePackagesResponseV1 o) {
  buildCounterAnalyzePackagesResponseV1++;
  if (buildCounterAnalyzePackagesResponseV1 < 3) {
    unittest.expect(
      o.scan!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzePackagesResponseV1--;
}

core.List<core.String> buildUnnamed9008() => [
      'foo',
      'foo',
    ];

void checkUnnamed9008(core.List<core.String> o) {
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
    o.names = buildUnnamed9008();
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
    checkUnnamed9008(o.names!);
  }
  buildCounterArtifact--;
}

core.List<api.Jwt> buildUnnamed9009() => [
      buildJwt(),
      buildJwt(),
    ];

void checkUnnamed9009(core.List<api.Jwt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwt(o[0]);
  checkJwt(o[1]);
}

core.List<api.Signature> buildUnnamed9010() => [
      buildSignature(),
      buildSignature(),
    ];

void checkUnnamed9010(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0]);
  checkSignature(o[1]);
}

core.int buildCounterAttestationOccurrence = 0;
api.AttestationOccurrence buildAttestationOccurrence() {
  final o = api.AttestationOccurrence();
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    o.jwts = buildUnnamed9009();
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed9010();
  }
  buildCounterAttestationOccurrence--;
  return o;
}

void checkAttestationOccurrence(api.AttestationOccurrence o) {
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    checkUnnamed9009(o.jwts!);
    unittest.expect(
      o.serializedPayload!,
      unittest.equals('foo'),
    );
    checkUnnamed9010(o.signatures!);
  }
  buildCounterAttestationOccurrence--;
}

core.int buildCounterBuildOccurrence = 0;
api.BuildOccurrence buildBuildOccurrence() {
  final o = api.BuildOccurrence();
  buildCounterBuildOccurrence++;
  if (buildCounterBuildOccurrence < 3) {
    o.intotoProvenance = buildInTotoProvenance();
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
    checkBuildProvenance(o.provenance!);
    unittest.expect(
      o.provenanceBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildOccurrence--;
}

core.Map<core.String, core.String> buildUnnamed9011() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9011(core.Map<core.String, core.String> o) {
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

core.List<api.Artifact> buildUnnamed9012() => [
      buildArtifact(),
      buildArtifact(),
    ];

void checkUnnamed9012(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Command> buildUnnamed9013() => [
      buildCommand(),
      buildCommand(),
    ];

void checkUnnamed9013(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  final o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed9011();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed9012();
    o.commands = buildUnnamed9013();
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
    checkUnnamed9011(o.buildOptions!);
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed9012(o.builtArtifacts!);
    checkUnnamed9013(o.commands!);
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

core.List<core.String> buildUnnamed9014() => [
      'foo',
      'foo',
    ];

void checkUnnamed9014(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9015() => [
      'foo',
      'foo',
    ];

void checkUnnamed9015(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9016() => [
      'foo',
      'foo',
    ];

void checkUnnamed9016(core.List<core.String> o) {
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
    o.args = buildUnnamed9014();
    o.dir = 'foo';
    o.env = buildUnnamed9015();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed9016();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed9014(o.args!);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    checkUnnamed9015(o.env!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed9016(o.waitFor!);
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

core.List<api.NonCompliantFile> buildUnnamed9017() => [
      buildNonCompliantFile(),
      buildNonCompliantFile(),
    ];

void checkUnnamed9017(core.List<api.NonCompliantFile> o) {
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
    o.nonCompliantFiles = buildUnnamed9017();
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
    checkUnnamed9017(o.nonCompliantFiles!);
  }
  buildCounterComplianceOccurrence--;
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

core.List<core.String> buildUnnamed9018() => [
      'foo',
      'foo',
    ];

void checkUnnamed9018(core.List<core.String> o) {
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
    o.resourceUri = buildUnnamed9018();
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
    checkUnnamed9018(o.resourceUri!);
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

core.int buildCounterDiscoveryOccurrence = 0;
api.DiscoveryOccurrence buildDiscoveryOccurrence() {
  final o = api.DiscoveryOccurrence();
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
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

core.List<api.EnvelopeSignature> buildUnnamed9019() => [
      buildEnvelopeSignature(),
      buildEnvelopeSignature(),
    ];

void checkUnnamed9019(core.List<api.EnvelopeSignature> o) {
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
    o.signatures = buildUnnamed9019();
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
    checkUnnamed9019(o.signatures!);
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

core.List<api.Hash> buildUnnamed9020() => [
      buildHash(),
      buildHash(),
    ];

void checkUnnamed9020(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed9020();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed9020(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.List<core.String> buildUnnamed9021() => [
      'foo',
      'foo',
    ];

void checkUnnamed9021(core.List<core.String> o) {
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
    o.v2Blob = buildUnnamed9021();
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
    checkUnnamed9021(o.v2Blob!);
    unittest.expect(
      o.v2Name!,
      unittest.equals('foo'),
    );
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

core.List<api.Layer> buildUnnamed9022() => [
      buildLayer(),
      buildLayer(),
    ];

void checkUnnamed9022(core.List<api.Layer> o) {
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
    o.layerInfo = buildUnnamed9022();
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
    checkUnnamed9022(o.layerInfo!);
  }
  buildCounterImageOccurrence--;
}

core.List<core.String> buildUnnamed9023() => [
      'foo',
      'foo',
    ];

void checkUnnamed9023(core.List<core.String> o) {
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
    o.materials = buildUnnamed9023();
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
    checkUnnamed9023(o.materials!);
    checkMetadata(o.metadata!);
    checkRecipe(o.recipe!);
  }
  buildCounterInTotoProvenance--;
}

core.List<api.Subject> buildUnnamed9024() => [
      buildSubject(),
      buildSubject(),
    ];

void checkUnnamed9024(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterInTotoStatement = 0;
api.InTotoStatement buildInTotoStatement() {
  final o = api.InTotoStatement();
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    o.predicateType = 'foo';
    o.provenance = buildInTotoProvenance();
    o.subject = buildUnnamed9024();
    o.type = 'foo';
  }
  buildCounterInTotoStatement--;
  return o;
}

void checkInTotoStatement(api.InTotoStatement o) {
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    unittest.expect(
      o.predicateType!,
      unittest.equals('foo'),
    );
    checkInTotoProvenance(o.provenance!);
    checkUnnamed9024(o.subject!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
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

core.List<api.Operation> buildUnnamed9025() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed9025(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed9025();
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
    checkUnnamed9025(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Occurrence> buildUnnamed9026() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed9026(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListVulnerabilitiesResponse = 0;
api.ListVulnerabilitiesResponse buildListVulnerabilitiesResponse() {
  final o = api.ListVulnerabilitiesResponse();
  buildCounterListVulnerabilitiesResponse++;
  if (buildCounterListVulnerabilitiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed9026();
  }
  buildCounterListVulnerabilitiesResponse--;
  return o;
}

void checkListVulnerabilitiesResponse(api.ListVulnerabilitiesResponse o) {
  buildCounterListVulnerabilitiesResponse++;
  if (buildCounterListVulnerabilitiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9026(o.occurrences!);
  }
  buildCounterListVulnerabilitiesResponse--;
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

core.Map<core.String, core.Object> buildUnnamed9027() => {
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

void checkUnnamed9027(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed9028() => {
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

void checkUnnamed9028(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed9027();
    o.name = 'foo';
    o.response = buildUnnamed9028();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed9027(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed9028(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPackageData = 0;
api.PackageData buildPackageData() {
  final o = api.PackageData();
  buildCounterPackageData++;
  if (buildCounterPackageData < 3) {
    o.cpeUri = 'foo';
    o.os = 'foo';
    o.osVersion = 'foo';
    o.package = 'foo';
    o.packageType = 'foo';
    o.unused = 'foo';
    o.version = 'foo';
  }
  buildCounterPackageData--;
  return o;
}

void checkPackageData(api.PackageData o) {
  buildCounterPackageData++;
  if (buildCounterPackageData < 3) {
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.os!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unused!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageData--;
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

core.List<api.Location> buildUnnamed9029() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed9029(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterPackageOccurrence = 0;
api.PackageOccurrence buildPackageOccurrence() {
  final o = api.PackageOccurrence();
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    o.location = buildUnnamed9029();
    o.name = 'foo';
  }
  buildCounterPackageOccurrence--;
  return o;
}

void checkPackageOccurrence(api.PackageOccurrence o) {
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    checkUnnamed9029(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageOccurrence--;
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

core.Map<core.String, core.Object> buildUnnamed9030() => {
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

void checkUnnamed9030(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed9031() => [
      buildUnnamed9030(),
      buildUnnamed9030(),
    ];

void checkUnnamed9031(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9030(o[0]);
  checkUnnamed9030(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed9032() => {
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

void checkUnnamed9032(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed9033() => [
      buildUnnamed9032(),
      buildUnnamed9032(),
    ];

void checkUnnamed9033(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9032(o[0]);
  checkUnnamed9032(o[1]);
}

core.int buildCounterRecipe = 0;
api.Recipe buildRecipe() {
  final o = api.Recipe();
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    o.arguments = buildUnnamed9031();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed9033();
    o.type = 'foo';
  }
  buildCounterRecipe--;
  return o;
}

void checkRecipe(api.Recipe o) {
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    checkUnnamed9031(o.arguments!);
    unittest.expect(
      o.definedInMaterial!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    checkUnnamed9033(o.environment!);
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

core.List<api.SourceContext> buildUnnamed9034() => [
      buildSourceContext(),
      buildSourceContext(),
    ];

void checkUnnamed9034(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.Map<core.String, api.FileHashes> buildUnnamed9035() => {
      'x': buildFileHashes(),
      'y': buildFileHashes(),
    };

void checkUnnamed9035(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed9034();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed9035();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed9034(o.additionalContexts!);
    unittest.expect(
      o.artifactStorageSourceUri!,
      unittest.equals('foo'),
    );
    checkSourceContext(o.context!);
    checkUnnamed9035(o.fileHashes!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed9036() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9036(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed9036();
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
    checkUnnamed9036(o.labels!);
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object> buildUnnamed9037() => {
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

void checkUnnamed9037(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed9038() => [
      buildUnnamed9037(),
      buildUnnamed9037(),
    ];

void checkUnnamed9038(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9037(o[0]);
  checkUnnamed9037(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed9038();
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
    checkUnnamed9038(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.Map<core.String, core.String> buildUnnamed9039() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9039(core.Map<core.String, core.String> o) {
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
    o.digest = buildUnnamed9039();
    o.name = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    checkUnnamed9039(o.digest!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed9040() => [
      'foo',
      'foo',
    ];

void checkUnnamed9040(core.List<core.String> o) {
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
    o.cve = buildUnnamed9040();
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
    checkUnnamed9040(o.cve!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
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

core.List<api.PackageIssue> buildUnnamed9041() => [
      buildPackageIssue(),
      buildPackageIssue(),
    ];

void checkUnnamed9041(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

core.List<api.RelatedUrl> buildUnnamed9042() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed9042(core.List<api.RelatedUrl> o) {
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
    o.effectiveSeverity = 'foo';
    o.fixAvailable = true;
    o.longDescription = 'foo';
    o.packageIssue = buildUnnamed9041();
    o.relatedUrls = buildUnnamed9042();
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
    unittest.expect(
      o.effectiveSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed9041(o.packageIssue!);
    checkUnnamed9042(o.relatedUrls!);
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

core.List<api.Category> buildUnnamed9043() => [
      buildCategory(),
      buildCategory(),
    ];

void checkUnnamed9043(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.List<core.String> buildUnnamed9044() => [
      'foo',
      'foo',
    ];

void checkUnnamed9044(core.List<core.String> o) {
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
    o.categories = buildUnnamed9043();
    o.description = 'foo';
    o.identity = buildIdentity();
    o.kbArticleIds = buildUnnamed9044();
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
    checkUnnamed9043(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkIdentity(o.identity!);
    checkUnnamed9044(o.kbArticleIds!);
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

  unittest.group('obj-schema-AnalyzePackagesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzePackagesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzePackagesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzePackagesMetadata(od);
    });
  });

  unittest.group('obj-schema-AnalyzePackagesMetadataV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzePackagesMetadataV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzePackagesMetadataV1.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzePackagesMetadataV1(od);
    });
  });

  unittest.group('obj-schema-AnalyzePackagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzePackagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzePackagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzePackagesRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzePackagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzePackagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzePackagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzePackagesResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzePackagesResponseV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzePackagesResponseV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzePackagesResponseV1.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzePackagesResponseV1(od);
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

  unittest.group('obj-schema-AttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationOccurrence(od);
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

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Category.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategory(od);
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

  unittest.group('obj-schema-ComplianceOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceOccurrence(od);
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

  unittest.group('obj-schema-DeploymentOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentOccurrence(od);
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

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGerritSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GerritSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGerritSourceContext(od);
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

  unittest.group('obj-schema-Identity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Identity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIdentity(od);
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

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Layer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLayer(od);
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

  unittest.group('obj-schema-ListVulnerabilitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVulnerabilitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVulnerabilitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVulnerabilitiesResponse(od);
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

  unittest.group('obj-schema-Occurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Occurrence.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOccurrence(od);
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

  unittest.group('obj-schema-PackageData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageData(od);
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

  unittest.group('obj-schema-PackageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageOccurrence(od);
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

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Signature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignature(od);
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

  unittest.group('obj-schema-UpgradeDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeDistribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeDistribution(od);
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

  unittest.group('obj-schema-VulnerabilityOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityOccurrence(od);
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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

    unittest.test('method--wait', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_timeout = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['timeout']!.first,
          unittest.equals(arg_timeout),
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
      final response =
          await res.wait(arg_name, timeout: arg_timeout, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsScansResource', () {
    unittest.test('method--analyzePackages', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock).projects.locations.scans;
      final arg_request = buildAnalyzePackagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzePackagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzePackagesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final response = await res.analyzePackages(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsScansVulnerabilitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OnDemandScanningApi(mock)
          .projects
          .locations
          .scans
          .vulnerabilities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListVulnerabilitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVulnerabilitiesResponse(
          response as api.ListVulnerabilitiesResponse);
    });
  });
}
