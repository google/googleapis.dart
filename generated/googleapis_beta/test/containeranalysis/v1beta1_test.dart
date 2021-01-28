// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/containeranalysis/v1beta1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAliasContext = 0;
api.AliasContext buildAliasContext() {
  var o = api.AliasContext();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAliasContext--;
}

core.List<core.String> buildUnnamed6429() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6429(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  var o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.checksum = 'foo';
    o.id = 'foo';
    o.names = buildUnnamed6429();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(o.checksum, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6429(o.names);
  }
  buildCounterArtifact--;
}

core.int buildCounterArtifactHashes = 0;
api.ArtifactHashes buildArtifactHashes() {
  var o = api.ArtifactHashes();
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
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterArtifactHashes--;
}

core.List<core.String> buildUnnamed6430() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6430(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArtifactRule = 0;
api.ArtifactRule buildArtifactRule() {
  var o = api.ArtifactRule();
  buildCounterArtifactRule++;
  if (buildCounterArtifactRule < 3) {
    o.artifactRule = buildUnnamed6430();
  }
  buildCounterArtifactRule--;
  return o;
}

void checkArtifactRule(api.ArtifactRule o) {
  buildCounterArtifactRule++;
  if (buildCounterArtifactRule < 3) {
    checkUnnamed6430(o.artifactRule);
  }
  buildCounterArtifactRule--;
}

core.int buildCounterAttestation = 0;
api.Attestation buildAttestation() {
  var o = api.Attestation();
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
    checkGenericSignedAttestation(
        o.genericSignedAttestation as api.GenericSignedAttestation);
    checkPgpSignedAttestation(
        o.pgpSignedAttestation as api.PgpSignedAttestation);
  }
  buildCounterAttestation--;
}

core.int buildCounterAuthority = 0;
api.Authority buildAuthority() {
  var o = api.Authority();
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
    checkHint(o.hint as api.Hint);
  }
  buildCounterAuthority--;
}

core.int buildCounterBasis = 0;
api.Basis buildBasis() {
  var o = api.Basis();
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
    checkFingerprint(o.fingerprint as api.Fingerprint);
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
  }
  buildCounterBasis--;
}

core.Map<core.String, api.Note> buildUnnamed6431() {
  var o = <core.String, api.Note>{};
  o['x'] = buildNote();
  o['y'] = buildNote();
  return o;
}

void checkUnnamed6431(core.Map<core.String, api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o['x'] as api.Note);
  checkNote(o['y'] as api.Note);
}

core.int buildCounterBatchCreateNotesRequest = 0;
api.BatchCreateNotesRequest buildBatchCreateNotesRequest() {
  var o = api.BatchCreateNotesRequest();
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    o.notes = buildUnnamed6431();
  }
  buildCounterBatchCreateNotesRequest--;
  return o;
}

void checkBatchCreateNotesRequest(api.BatchCreateNotesRequest o) {
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    checkUnnamed6431(o.notes);
  }
  buildCounterBatchCreateNotesRequest--;
}

core.List<api.Note> buildUnnamed6432() {
  var o = <api.Note>[];
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

void checkUnnamed6432(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0] as api.Note);
  checkNote(o[1] as api.Note);
}

core.int buildCounterBatchCreateNotesResponse = 0;
api.BatchCreateNotesResponse buildBatchCreateNotesResponse() {
  var o = api.BatchCreateNotesResponse();
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    o.notes = buildUnnamed6432();
  }
  buildCounterBatchCreateNotesResponse--;
  return o;
}

void checkBatchCreateNotesResponse(api.BatchCreateNotesResponse o) {
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    checkUnnamed6432(o.notes);
  }
  buildCounterBatchCreateNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed6433() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed6433(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0] as api.Occurrence);
  checkOccurrence(o[1] as api.Occurrence);
}

core.int buildCounterBatchCreateOccurrencesRequest = 0;
api.BatchCreateOccurrencesRequest buildBatchCreateOccurrencesRequest() {
  var o = api.BatchCreateOccurrencesRequest();
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    o.occurrences = buildUnnamed6433();
  }
  buildCounterBatchCreateOccurrencesRequest--;
  return o;
}

void checkBatchCreateOccurrencesRequest(api.BatchCreateOccurrencesRequest o) {
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    checkUnnamed6433(o.occurrences);
  }
  buildCounterBatchCreateOccurrencesRequest--;
}

core.List<api.Occurrence> buildUnnamed6434() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed6434(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0] as api.Occurrence);
  checkOccurrence(o[1] as api.Occurrence);
}

core.int buildCounterBatchCreateOccurrencesResponse = 0;
api.BatchCreateOccurrencesResponse buildBatchCreateOccurrencesResponse() {
  var o = api.BatchCreateOccurrencesResponse();
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    o.occurrences = buildUnnamed6434();
  }
  buildCounterBatchCreateOccurrencesResponse--;
  return o;
}

void checkBatchCreateOccurrencesResponse(api.BatchCreateOccurrencesResponse o) {
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    checkUnnamed6434(o.occurrences);
  }
  buildCounterBatchCreateOccurrencesResponse--;
}

core.List<core.String> buildUnnamed6435() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6435(core.List<core.String> o) {
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
    o.members = buildUnnamed6435();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition as api.Expr);
    checkUnnamed6435(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBuild = 0;
api.Build buildBuild() {
  var o = api.Build();
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
    unittest.expect(o.builderVersion, unittest.equals('foo'));
    checkBuildSignature(o.signature as api.BuildSignature);
  }
  buildCounterBuild--;
}

core.Map<core.String, core.String> buildUnnamed6436() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6436(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.Artifact> buildUnnamed6437() {
  var o = <api.Artifact>[];
  o.add(buildArtifact());
  o.add(buildArtifact());
  return o;
}

void checkUnnamed6437(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0] as api.Artifact);
  checkArtifact(o[1] as api.Artifact);
}

core.List<api.Command> buildUnnamed6438() {
  var o = <api.Command>[];
  o.add(buildCommand());
  o.add(buildCommand());
  return o;
}

void checkUnnamed6438(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0] as api.Command);
  checkCommand(o[1] as api.Command);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  var o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed6436();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed6437();
    o.commands = buildUnnamed6438();
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
    checkUnnamed6436(o.buildOptions);
    unittest.expect(o.builderVersion, unittest.equals('foo'));
    checkUnnamed6437(o.builtArtifacts);
    checkUnnamed6438(o.commands);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.creator, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.logsUri, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkSource(o.sourceProvenance as api.Source);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterBuildProvenance--;
}

core.int buildCounterBuildSignature = 0;
api.BuildSignature buildBuildSignature() {
  var o = api.BuildSignature();
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
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.keyType, unittest.equals('foo'));
    unittest.expect(o.publicKey, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterBuildSignature--;
}

core.Map<core.String, core.String> buildUnnamed6439() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6439(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterByProducts = 0;
api.ByProducts buildByProducts() {
  var o = api.ByProducts();
  buildCounterByProducts++;
  if (buildCounterByProducts < 3) {
    o.customValues = buildUnnamed6439();
  }
  buildCounterByProducts--;
  return o;
}

void checkByProducts(api.ByProducts o) {
  buildCounterByProducts++;
  if (buildCounterByProducts < 3) {
    checkUnnamed6439(o.customValues);
  }
  buildCounterByProducts--;
}

core.int buildCounterCVSSv3 = 0;
api.CVSSv3 buildCVSSv3() {
  var o = api.CVSSv3();
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
    unittest.expect(o.attackComplexity, unittest.equals('foo'));
    unittest.expect(o.attackVector, unittest.equals('foo'));
    unittest.expect(o.availabilityImpact, unittest.equals('foo'));
    unittest.expect(o.baseScore, unittest.equals(42.0));
    unittest.expect(o.confidentialityImpact, unittest.equals('foo'));
    unittest.expect(o.exploitabilityScore, unittest.equals(42.0));
    unittest.expect(o.impactScore, unittest.equals(42.0));
    unittest.expect(o.integrityImpact, unittest.equals('foo'));
    unittest.expect(o.privilegesRequired, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
    unittest.expect(o.userInteraction, unittest.equals('foo'));
  }
  buildCounterCVSSv3--;
}

core.int buildCounterCloudRepoSourceContext = 0;
api.CloudRepoSourceContext buildCloudRepoSourceContext() {
  var o = api.CloudRepoSourceContext();
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
    checkAliasContext(o.aliasContext as api.AliasContext);
    checkRepoId(o.repoId as api.RepoId);
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterCloudRepoSourceContext--;
}

core.List<core.String> buildUnnamed6440() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6440(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6441() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6441(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6442() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6442(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  var o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed6440();
    o.dir = 'foo';
    o.env = buildUnnamed6441();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed6442();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed6440(o.args);
    unittest.expect(o.dir, unittest.equals('foo'));
    checkUnnamed6441(o.env);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6442(o.waitFor);
  }
  buildCounterCommand--;
}

core.List<core.String> buildUnnamed6443() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6443(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployable = 0;
api.Deployable buildDeployable() {
  var o = api.Deployable();
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    o.resourceUri = buildUnnamed6443();
  }
  buildCounterDeployable--;
  return o;
}

void checkDeployable(api.Deployable o) {
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    checkUnnamed6443(o.resourceUri);
  }
  buildCounterDeployable--;
}

core.List<core.String> buildUnnamed6444() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6444(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  var o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.address = 'foo';
    o.config = 'foo';
    o.deployTime = 'foo';
    o.platform = 'foo';
    o.resourceUri = buildUnnamed6444();
    o.undeployTime = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.config, unittest.equals('foo'));
    unittest.expect(o.deployTime, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
    checkUnnamed6444(o.resourceUri);
    unittest.expect(o.undeployTime, unittest.equals('foo'));
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

core.List<api.Layer> buildUnnamed6445() {
  var o = <api.Layer>[];
  o.add(buildLayer());
  o.add(buildLayer());
  return o;
}

void checkUnnamed6445(core.List<api.Layer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayer(o[0] as api.Layer);
  checkLayer(o[1] as api.Layer);
}

core.int buildCounterDerived = 0;
api.Derived buildDerived() {
  var o = api.Derived();
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    o.baseResourceUrl = 'foo';
    o.distance = 42;
    o.fingerprint = buildFingerprint();
    o.layerInfo = buildUnnamed6445();
  }
  buildCounterDerived--;
  return o;
}

void checkDerived(api.Derived o) {
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    unittest.expect(o.baseResourceUrl, unittest.equals('foo'));
    unittest.expect(o.distance, unittest.equals(42));
    checkFingerprint(o.fingerprint as api.Fingerprint);
    checkUnnamed6445(o.layerInfo);
  }
  buildCounterDerived--;
}

core.int buildCounterDetail = 0;
api.Detail buildDetail() {
  var o = api.Detail();
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
    o.sourceUpdateTime = 'foo';
  }
  buildCounterDetail--;
  return o;
}

void checkDetail(api.Detail o) {
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkVulnerabilityLocation(o.fixedLocation as api.VulnerabilityLocation);
    unittest.expect(o.isObsolete, unittest.isTrue);
    checkVersion(o.maxAffectedVersion as api.Version);
    checkVersion(o.minAffectedVersion as api.Version);
    unittest.expect(o.package, unittest.equals('foo'));
    unittest.expect(o.packageType, unittest.equals('foo'));
    unittest.expect(o.severityName, unittest.equals('foo'));
    unittest.expect(o.sourceUpdateTime, unittest.equals('foo'));
  }
  buildCounterDetail--;
}

core.int buildCounterDetails = 0;
api.Details buildDetails() {
  var o = api.Details();
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
    checkAttestation(o.attestation as api.Attestation);
  }
  buildCounterDetails--;
}

core.int buildCounterDiscovered = 0;
api.Discovered buildDiscovered() {
  var o = api.Discovered();
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
    o.continuousAnalysis = 'foo';
    o.lastAnalysisTime = 'foo';
  }
  buildCounterDiscovered--;
  return o;
}

void checkDiscovered(api.Discovered o) {
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    unittest.expect(o.analysisStatus, unittest.equals('foo'));
    checkStatus(o.analysisStatusError as api.Status);
    unittest.expect(o.continuousAnalysis, unittest.equals('foo'));
    unittest.expect(o.lastAnalysisTime, unittest.equals('foo'));
  }
  buildCounterDiscovered--;
}

core.int buildCounterDiscovery = 0;
api.Discovery buildDiscovery() {
  var o = api.Discovery();
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
    unittest.expect(o.analysisKind, unittest.equals('foo'));
  }
  buildCounterDiscovery--;
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  var o = api.Distribution();
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
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkVersion(o.latestVersion as api.Version);
    unittest.expect(o.maintainer, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterDistribution--;
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

core.Map<core.String, core.String> buildUnnamed6446() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6446(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.customValues = buildUnnamed6446();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkUnnamed6446(o.customValues);
  }
  buildCounterEnvironment--;
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

core.List<api.Hash> buildUnnamed6447() {
  var o = <api.Hash>[];
  o.add(buildHash());
  o.add(buildHash());
  return o;
}

void checkUnnamed6447(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0] as api.Hash);
  checkHash(o[1] as api.Hash);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  var o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed6447();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed6447(o.fileHash);
  }
  buildCounterFileHashes--;
}

core.List<core.String> buildUnnamed6448() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6448(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFingerprint = 0;
api.Fingerprint buildFingerprint() {
  var o = api.Fingerprint();
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    o.v1Name = 'foo';
    o.v2Blob = buildUnnamed6448();
    o.v2Name = 'foo';
  }
  buildCounterFingerprint--;
  return o;
}

void checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(o.v1Name, unittest.equals('foo'));
    checkUnnamed6448(o.v2Blob);
    unittest.expect(o.v2Name, unittest.equals('foo'));
  }
  buildCounterFingerprint--;
}

core.int buildCounterFixableTotalByDigest = 0;
api.FixableTotalByDigest buildFixableTotalByDigest() {
  var o = api.FixableTotalByDigest();
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
    unittest.expect(o.fixableCount, unittest.equals('foo'));
    checkResource(o.resource as api.Resource);
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.totalCount, unittest.equals('foo'));
  }
  buildCounterFixableTotalByDigest--;
}

core.List<api.Signature> buildUnnamed6449() {
  var o = <api.Signature>[];
  o.add(buildSignature());
  o.add(buildSignature());
  return o;
}

void checkUnnamed6449(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0] as api.Signature);
  checkSignature(o[1] as api.Signature);
}

core.int buildCounterGenericSignedAttestation = 0;
api.GenericSignedAttestation buildGenericSignedAttestation() {
  var o = api.GenericSignedAttestation();
  buildCounterGenericSignedAttestation++;
  if (buildCounterGenericSignedAttestation < 3) {
    o.contentType = 'foo';
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed6449();
  }
  buildCounterGenericSignedAttestation--;
  return o;
}

void checkGenericSignedAttestation(api.GenericSignedAttestation o) {
  buildCounterGenericSignedAttestation++;
  if (buildCounterGenericSignedAttestation < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.serializedPayload, unittest.equals('foo'));
    checkUnnamed6449(o.signatures);
  }
  buildCounterGenericSignedAttestation--;
}

core.int buildCounterGerritSourceContext = 0;
api.GerritSourceContext buildGerritSourceContext() {
  var o = api.GerritSourceContext();
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
    checkAliasContext(o.aliasContext as api.AliasContext);
    unittest.expect(o.gerritProject, unittest.equals('foo'));
    unittest.expect(o.hostUri, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterGerritSourceContext--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  var o = api.GetIamPolicyRequest();
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
    checkGetPolicyOptions(o.options as api.GetPolicyOptions);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  var o = api.GetPolicyOptions();
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
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGitSourceContext = 0;
api.GitSourceContext buildGitSourceContext() {
  var o = api.GitSourceContext();
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
    unittest.expect(o.revisionId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGitSourceContext--;
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata =
    0;
api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    buildGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata() {
  var o = api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata <
      3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata--;
  return o;
}

void checkGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata(
    api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata o) {
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata--;
}

core.int buildCounterGrafeasV1beta1BuildDetails = 0;
api.GrafeasV1beta1BuildDetails buildGrafeasV1beta1BuildDetails() {
  var o = api.GrafeasV1beta1BuildDetails();
  buildCounterGrafeasV1beta1BuildDetails++;
  if (buildCounterGrafeasV1beta1BuildDetails < 3) {
    o.provenance = buildBuildProvenance();
    o.provenanceBytes = 'foo';
  }
  buildCounterGrafeasV1beta1BuildDetails--;
  return o;
}

void checkGrafeasV1beta1BuildDetails(api.GrafeasV1beta1BuildDetails o) {
  buildCounterGrafeasV1beta1BuildDetails++;
  if (buildCounterGrafeasV1beta1BuildDetails < 3) {
    checkBuildProvenance(o.provenance as api.BuildProvenance);
    unittest.expect(o.provenanceBytes, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1BuildDetails--;
}

core.int buildCounterGrafeasV1beta1DeploymentDetails = 0;
api.GrafeasV1beta1DeploymentDetails buildGrafeasV1beta1DeploymentDetails() {
  var o = api.GrafeasV1beta1DeploymentDetails();
  buildCounterGrafeasV1beta1DeploymentDetails++;
  if (buildCounterGrafeasV1beta1DeploymentDetails < 3) {
    o.deployment = buildDeployment();
  }
  buildCounterGrafeasV1beta1DeploymentDetails--;
  return o;
}

void checkGrafeasV1beta1DeploymentDetails(
    api.GrafeasV1beta1DeploymentDetails o) {
  buildCounterGrafeasV1beta1DeploymentDetails++;
  if (buildCounterGrafeasV1beta1DeploymentDetails < 3) {
    checkDeployment(o.deployment as api.Deployment);
  }
  buildCounterGrafeasV1beta1DeploymentDetails--;
}

core.int buildCounterGrafeasV1beta1DiscoveryDetails = 0;
api.GrafeasV1beta1DiscoveryDetails buildGrafeasV1beta1DiscoveryDetails() {
  var o = api.GrafeasV1beta1DiscoveryDetails();
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
    checkDiscovered(o.discovered as api.Discovered);
  }
  buildCounterGrafeasV1beta1DiscoveryDetails--;
}

core.int buildCounterGrafeasV1beta1ImageDetails = 0;
api.GrafeasV1beta1ImageDetails buildGrafeasV1beta1ImageDetails() {
  var o = api.GrafeasV1beta1ImageDetails();
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
    checkDerived(o.derivedImage as api.Derived);
  }
  buildCounterGrafeasV1beta1ImageDetails--;
}

core.int buildCounterGrafeasV1beta1IntotoArtifact = 0;
api.GrafeasV1beta1IntotoArtifact buildGrafeasV1beta1IntotoArtifact() {
  var o = api.GrafeasV1beta1IntotoArtifact();
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
    checkArtifactHashes(o.hashes as api.ArtifactHashes);
    unittest.expect(o.resourceUri, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1IntotoArtifact--;
}

core.List<api.GrafeasV1beta1IntotoSignature> buildUnnamed6450() {
  var o = <api.GrafeasV1beta1IntotoSignature>[];
  o.add(buildGrafeasV1beta1IntotoSignature());
  o.add(buildGrafeasV1beta1IntotoSignature());
  return o;
}

void checkUnnamed6450(core.List<api.GrafeasV1beta1IntotoSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoSignature(o[0] as api.GrafeasV1beta1IntotoSignature);
  checkGrafeasV1beta1IntotoSignature(o[1] as api.GrafeasV1beta1IntotoSignature);
}

core.int buildCounterGrafeasV1beta1IntotoDetails = 0;
api.GrafeasV1beta1IntotoDetails buildGrafeasV1beta1IntotoDetails() {
  var o = api.GrafeasV1beta1IntotoDetails();
  buildCounterGrafeasV1beta1IntotoDetails++;
  if (buildCounterGrafeasV1beta1IntotoDetails < 3) {
    o.signatures = buildUnnamed6450();
    o.signed = buildLink();
  }
  buildCounterGrafeasV1beta1IntotoDetails--;
  return o;
}

void checkGrafeasV1beta1IntotoDetails(api.GrafeasV1beta1IntotoDetails o) {
  buildCounterGrafeasV1beta1IntotoDetails++;
  if (buildCounterGrafeasV1beta1IntotoDetails < 3) {
    checkUnnamed6450(o.signatures);
    checkLink(o.signed as api.Link);
  }
  buildCounterGrafeasV1beta1IntotoDetails--;
}

core.int buildCounterGrafeasV1beta1IntotoSignature = 0;
api.GrafeasV1beta1IntotoSignature buildGrafeasV1beta1IntotoSignature() {
  var o = api.GrafeasV1beta1IntotoSignature();
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
    unittest.expect(o.keyid, unittest.equals('foo'));
    unittest.expect(o.sig, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1IntotoSignature--;
}

core.int buildCounterGrafeasV1beta1PackageDetails = 0;
api.GrafeasV1beta1PackageDetails buildGrafeasV1beta1PackageDetails() {
  var o = api.GrafeasV1beta1PackageDetails();
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
    checkInstallation(o.installation as api.Installation);
  }
  buildCounterGrafeasV1beta1PackageDetails--;
}

core.List<api.PackageIssue> buildUnnamed6451() {
  var o = <api.PackageIssue>[];
  o.add(buildPackageIssue());
  o.add(buildPackageIssue());
  return o;
}

void checkUnnamed6451(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0] as api.PackageIssue);
  checkPackageIssue(o[1] as api.PackageIssue);
}

core.List<api.RelatedUrl> buildUnnamed6452() {
  var o = <api.RelatedUrl>[];
  o.add(buildRelatedUrl());
  o.add(buildRelatedUrl());
  return o;
}

void checkUnnamed6452(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0] as api.RelatedUrl);
  checkRelatedUrl(o[1] as api.RelatedUrl);
}

core.int buildCounterGrafeasV1beta1VulnerabilityDetails = 0;
api.GrafeasV1beta1VulnerabilityDetails
    buildGrafeasV1beta1VulnerabilityDetails() {
  var o = api.GrafeasV1beta1VulnerabilityDetails();
  buildCounterGrafeasV1beta1VulnerabilityDetails++;
  if (buildCounterGrafeasV1beta1VulnerabilityDetails < 3) {
    o.cvssScore = 42.0;
    o.effectiveSeverity = 'foo';
    o.longDescription = 'foo';
    o.packageIssue = buildUnnamed6451();
    o.relatedUrls = buildUnnamed6452();
    o.severity = 'foo';
    o.shortDescription = 'foo';
    o.type = 'foo';
  }
  buildCounterGrafeasV1beta1VulnerabilityDetails--;
  return o;
}

void checkGrafeasV1beta1VulnerabilityDetails(
    api.GrafeasV1beta1VulnerabilityDetails o) {
  buildCounterGrafeasV1beta1VulnerabilityDetails++;
  if (buildCounterGrafeasV1beta1VulnerabilityDetails < 3) {
    unittest.expect(o.cvssScore, unittest.equals(42.0));
    unittest.expect(o.effectiveSeverity, unittest.equals('foo'));
    unittest.expect(o.longDescription, unittest.equals('foo'));
    checkUnnamed6451(o.packageIssue);
    checkUnnamed6452(o.relatedUrls);
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.shortDescription, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1VulnerabilityDetails--;
}

core.int buildCounterHash = 0;
api.Hash buildHash() {
  var o = api.Hash();
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
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterHash--;
}

core.int buildCounterHint = 0;
api.Hint buildHint() {
  var o = api.Hint();
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
    unittest.expect(o.humanReadableName, unittest.equals('foo'));
  }
  buildCounterHint--;
}

core.List<core.String> buildUnnamed6453() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6453(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ArtifactRule> buildUnnamed6454() {
  var o = <api.ArtifactRule>[];
  o.add(buildArtifactRule());
  o.add(buildArtifactRule());
  return o;
}

void checkUnnamed6454(core.List<api.ArtifactRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactRule(o[0] as api.ArtifactRule);
  checkArtifactRule(o[1] as api.ArtifactRule);
}

core.List<api.ArtifactRule> buildUnnamed6455() {
  var o = <api.ArtifactRule>[];
  o.add(buildArtifactRule());
  o.add(buildArtifactRule());
  return o;
}

void checkUnnamed6455(core.List<api.ArtifactRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactRule(o[0] as api.ArtifactRule);
  checkArtifactRule(o[1] as api.ArtifactRule);
}

core.List<api.SigningKey> buildUnnamed6456() {
  var o = <api.SigningKey>[];
  o.add(buildSigningKey());
  o.add(buildSigningKey());
  return o;
}

void checkUnnamed6456(core.List<api.SigningKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigningKey(o[0] as api.SigningKey);
  checkSigningKey(o[1] as api.SigningKey);
}

core.int buildCounterInToto = 0;
api.InToto buildInToto() {
  var o = api.InToto();
  buildCounterInToto++;
  if (buildCounterInToto < 3) {
    o.expectedCommand = buildUnnamed6453();
    o.expectedMaterials = buildUnnamed6454();
    o.expectedProducts = buildUnnamed6455();
    o.signingKeys = buildUnnamed6456();
    o.stepName = 'foo';
    o.threshold = 'foo';
  }
  buildCounterInToto--;
  return o;
}

void checkInToto(api.InToto o) {
  buildCounterInToto++;
  if (buildCounterInToto < 3) {
    checkUnnamed6453(o.expectedCommand);
    checkUnnamed6454(o.expectedMaterials);
    checkUnnamed6455(o.expectedProducts);
    checkUnnamed6456(o.signingKeys);
    unittest.expect(o.stepName, unittest.equals('foo'));
    unittest.expect(o.threshold, unittest.equals('foo'));
  }
  buildCounterInToto--;
}

core.List<api.Location> buildUnnamed6457() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6457(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterInstallation = 0;
api.Installation buildInstallation() {
  var o = api.Installation();
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    o.location = buildUnnamed6457();
    o.name = 'foo';
  }
  buildCounterInstallation--;
  return o;
}

void checkInstallation(api.Installation o) {
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    checkUnnamed6457(o.location);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInstallation--;
}

core.int buildCounterKnowledgeBase = 0;
api.KnowledgeBase buildKnowledgeBase() {
  var o = api.KnowledgeBase();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterKnowledgeBase--;
}

core.int buildCounterLayer = 0;
api.Layer buildLayer() {
  var o = api.Layer();
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
    unittest.expect(o.arguments, unittest.equals('foo'));
    unittest.expect(o.directive, unittest.equals('foo'));
  }
  buildCounterLayer--;
}

core.List<core.String> buildUnnamed6458() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6458(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GrafeasV1beta1IntotoArtifact> buildUnnamed6459() {
  var o = <api.GrafeasV1beta1IntotoArtifact>[];
  o.add(buildGrafeasV1beta1IntotoArtifact());
  o.add(buildGrafeasV1beta1IntotoArtifact());
  return o;
}

void checkUnnamed6459(core.List<api.GrafeasV1beta1IntotoArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoArtifact(o[0] as api.GrafeasV1beta1IntotoArtifact);
  checkGrafeasV1beta1IntotoArtifact(o[1] as api.GrafeasV1beta1IntotoArtifact);
}

core.List<api.GrafeasV1beta1IntotoArtifact> buildUnnamed6460() {
  var o = <api.GrafeasV1beta1IntotoArtifact>[];
  o.add(buildGrafeasV1beta1IntotoArtifact());
  o.add(buildGrafeasV1beta1IntotoArtifact());
  return o;
}

void checkUnnamed6460(core.List<api.GrafeasV1beta1IntotoArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoArtifact(o[0] as api.GrafeasV1beta1IntotoArtifact);
  checkGrafeasV1beta1IntotoArtifact(o[1] as api.GrafeasV1beta1IntotoArtifact);
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  var o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.byproducts = buildByProducts();
    o.command = buildUnnamed6458();
    o.environment = buildEnvironment();
    o.materials = buildUnnamed6459();
    o.products = buildUnnamed6460();
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    checkByProducts(o.byproducts as api.ByProducts);
    checkUnnamed6458(o.command);
    checkEnvironment(o.environment as api.Environment);
    checkUnnamed6459(o.materials);
    checkUnnamed6460(o.products);
  }
  buildCounterLink--;
}

core.List<api.Occurrence> buildUnnamed6461() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed6461(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0] as api.Occurrence);
  checkOccurrence(o[1] as api.Occurrence);
}

core.int buildCounterListNoteOccurrencesResponse = 0;
api.ListNoteOccurrencesResponse buildListNoteOccurrencesResponse() {
  var o = api.ListNoteOccurrencesResponse();
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed6461();
  }
  buildCounterListNoteOccurrencesResponse--;
  return o;
}

void checkListNoteOccurrencesResponse(api.ListNoteOccurrencesResponse o) {
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6461(o.occurrences);
  }
  buildCounterListNoteOccurrencesResponse--;
}

core.List<api.Note> buildUnnamed6462() {
  var o = <api.Note>[];
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

void checkUnnamed6462(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0] as api.Note);
  checkNote(o[1] as api.Note);
}

core.int buildCounterListNotesResponse = 0;
api.ListNotesResponse buildListNotesResponse() {
  var o = api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed6462();
  }
  buildCounterListNotesResponse--;
  return o;
}

void checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6462(o.notes);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed6463() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed6463(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0] as api.Occurrence);
  checkOccurrence(o[1] as api.Occurrence);
}

core.int buildCounterListOccurrencesResponse = 0;
api.ListOccurrencesResponse buildListOccurrencesResponse() {
  var o = api.ListOccurrencesResponse();
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed6463();
  }
  buildCounterListOccurrencesResponse--;
  return o;
}

void checkListOccurrencesResponse(api.ListOccurrencesResponse o) {
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6463(o.occurrences);
  }
  buildCounterListOccurrencesResponse--;
}

core.List<api.ScanConfig> buildUnnamed6464() {
  var o = <api.ScanConfig>[];
  o.add(buildScanConfig());
  o.add(buildScanConfig());
  return o;
}

void checkUnnamed6464(core.List<api.ScanConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanConfig(o[0] as api.ScanConfig);
  checkScanConfig(o[1] as api.ScanConfig);
}

core.int buildCounterListScanConfigsResponse = 0;
api.ListScanConfigsResponse buildListScanConfigsResponse() {
  var o = api.ListScanConfigsResponse();
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.scanConfigs = buildUnnamed6464();
  }
  buildCounterListScanConfigsResponse--;
  return o;
}

void checkListScanConfigsResponse(api.ListScanConfigsResponse o) {
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6464(o.scanConfigs);
  }
  buildCounterListScanConfigsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
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
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    checkVersion(o.version as api.Version);
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed6465() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RelatedUrl> buildUnnamed6466() {
  var o = <api.RelatedUrl>[];
  o.add(buildRelatedUrl());
  o.add(buildRelatedUrl());
  return o;
}

void checkUnnamed6466(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0] as api.RelatedUrl);
  checkRelatedUrl(o[1] as api.RelatedUrl);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  var o = api.Note();
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
    o.relatedNoteNames = buildUnnamed6465();
    o.relatedUrl = buildUnnamed6466();
    o.shortDescription = 'foo';
    o.updateTime = 'foo';
    o.vulnerability = buildVulnerability();
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkAuthority(o.attestationAuthority as api.Authority);
    checkBasis(o.baseImage as api.Basis);
    checkBuild(o.build as api.Build);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkDeployable(o.deployable as api.Deployable);
    checkDiscovery(o.discovery as api.Discovery);
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    checkInToto(o.intoto as api.InToto);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.longDescription, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPackage(o.package as api.Package);
    checkUnnamed6465(o.relatedNoteNames);
    checkUnnamed6466(o.relatedUrl);
    unittest.expect(o.shortDescription, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkVulnerability(o.vulnerability as api.Vulnerability);
  }
  buildCounterNote--;
}

core.int buildCounterOccurrence = 0;
api.Occurrence buildOccurrence() {
  var o = api.Occurrence();
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    o.attestation = buildDetails();
    o.build = buildGrafeasV1beta1BuildDetails();
    o.createTime = 'foo';
    o.deployment = buildGrafeasV1beta1DeploymentDetails();
    o.derivedImage = buildGrafeasV1beta1ImageDetails();
    o.discovered = buildGrafeasV1beta1DiscoveryDetails();
    o.installation = buildGrafeasV1beta1PackageDetails();
    o.intoto = buildGrafeasV1beta1IntotoDetails();
    o.kind = 'foo';
    o.name = 'foo';
    o.noteName = 'foo';
    o.remediation = 'foo';
    o.resource = buildResource();
    o.updateTime = 'foo';
    o.vulnerability = buildGrafeasV1beta1VulnerabilityDetails();
  }
  buildCounterOccurrence--;
  return o;
}

void checkOccurrence(api.Occurrence o) {
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    checkDetails(o.attestation as api.Details);
    checkGrafeasV1beta1BuildDetails(o.build as api.GrafeasV1beta1BuildDetails);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGrafeasV1beta1DeploymentDetails(
        o.deployment as api.GrafeasV1beta1DeploymentDetails);
    checkGrafeasV1beta1ImageDetails(
        o.derivedImage as api.GrafeasV1beta1ImageDetails);
    checkGrafeasV1beta1DiscoveryDetails(
        o.discovered as api.GrafeasV1beta1DiscoveryDetails);
    checkGrafeasV1beta1PackageDetails(
        o.installation as api.GrafeasV1beta1PackageDetails);
    checkGrafeasV1beta1IntotoDetails(
        o.intoto as api.GrafeasV1beta1IntotoDetails);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.noteName, unittest.equals('foo'));
    unittest.expect(o.remediation, unittest.equals('foo'));
    checkResource(o.resource as api.Resource);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkGrafeasV1beta1VulnerabilityDetails(
        o.vulnerability as api.GrafeasV1beta1VulnerabilityDetails);
  }
  buildCounterOccurrence--;
}

core.List<api.Distribution> buildUnnamed6467() {
  var o = <api.Distribution>[];
  o.add(buildDistribution());
  o.add(buildDistribution());
  return o;
}

void checkUnnamed6467(core.List<api.Distribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistribution(o[0] as api.Distribution);
  checkDistribution(o[1] as api.Distribution);
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  var o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.distribution = buildUnnamed6467();
    o.name = 'foo';
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    checkUnnamed6467(o.distribution);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPackage--;
}

core.int buildCounterPackageIssue = 0;
api.PackageIssue buildPackageIssue() {
  var o = api.PackageIssue();
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    o.affectedLocation = buildVulnerabilityLocation();
    o.fixedLocation = buildVulnerabilityLocation();
    o.severityName = 'foo';
  }
  buildCounterPackageIssue--;
  return o;
}

void checkPackageIssue(api.PackageIssue o) {
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    checkVulnerabilityLocation(o.affectedLocation as api.VulnerabilityLocation);
    checkVulnerabilityLocation(o.fixedLocation as api.VulnerabilityLocation);
    unittest.expect(o.severityName, unittest.equals('foo'));
  }
  buildCounterPackageIssue--;
}

core.int buildCounterPgpSignedAttestation = 0;
api.PgpSignedAttestation buildPgpSignedAttestation() {
  var o = api.PgpSignedAttestation();
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
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.pgpKeyId, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterPgpSignedAttestation--;
}

core.List<api.Binding> buildUnnamed6468() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed6468(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed6468();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6468(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProjectRepoId = 0;
api.ProjectRepoId buildProjectRepoId() {
  var o = api.ProjectRepoId();
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
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.repoName, unittest.equals('foo'));
  }
  buildCounterProjectRepoId--;
}

core.int buildCounterRelatedUrl = 0;
api.RelatedUrl buildRelatedUrl() {
  var o = api.RelatedUrl();
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
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterRelatedUrl--;
}

core.int buildCounterRepoId = 0;
api.RepoId buildRepoId() {
  var o = api.RepoId();
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
    checkProjectRepoId(o.projectRepoId as api.ProjectRepoId);
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterRepoId--;
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  var o = api.Resource();
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
    checkHash(o.contentHash as api.Hash);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterScanConfig = 0;
api.ScanConfig buildScanConfig() {
  var o = api.ScanConfig();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterScanConfig--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy as api.Policy);
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

core.int buildCounterSigningKey = 0;
api.SigningKey buildSigningKey() {
  var o = api.SigningKey();
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
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.keyScheme, unittest.equals('foo'));
    unittest.expect(o.keyType, unittest.equals('foo'));
    unittest.expect(o.publicKeyValue, unittest.equals('foo'));
  }
  buildCounterSigningKey--;
}

core.List<api.SourceContext> buildUnnamed6469() {
  var o = <api.SourceContext>[];
  o.add(buildSourceContext());
  o.add(buildSourceContext());
  return o;
}

void checkUnnamed6469(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0] as api.SourceContext);
  checkSourceContext(o[1] as api.SourceContext);
}

core.Map<core.String, api.FileHashes> buildUnnamed6470() {
  var o = <core.String, api.FileHashes>{};
  o['x'] = buildFileHashes();
  o['y'] = buildFileHashes();
  return o;
}

void checkUnnamed6470(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x'] as api.FileHashes);
  checkFileHashes(o['y'] as api.FileHashes);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  var o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed6469();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed6470();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed6469(o.additionalContexts);
    unittest.expect(o.artifactStorageSourceUri, unittest.equals('foo'));
    checkSourceContext(o.context as api.SourceContext);
    checkUnnamed6470(o.fileHashes);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed6471() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6471(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  var o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
    o.labels = buildUnnamed6471();
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo as api.CloudRepoSourceContext);
    checkGerritSourceContext(o.gerrit as api.GerritSourceContext);
    checkGitSourceContext(o.git as api.GitSourceContext);
    checkUnnamed6471(o.labels);
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object> buildUnnamed6472() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6472(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6473() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6472());
  o.add(buildUnnamed6472());
  return o;
}

void checkUnnamed6473(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6472(o[0]);
  checkUnnamed6472(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6473();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6473(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed6474() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6474(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed6474();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6474(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed6475() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed6475();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed6475(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  var o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.epoch = 42;
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
    unittest.expect(o.epoch, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals('foo'));
  }
  buildCounterVersion--;
}

core.List<api.Detail> buildUnnamed6476() {
  var o = <api.Detail>[];
  o.add(buildDetail());
  o.add(buildDetail());
  return o;
}

void checkUnnamed6476(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0] as api.Detail);
  checkDetail(o[1] as api.Detail);
}

core.List<api.WindowsDetail> buildUnnamed6477() {
  var o = <api.WindowsDetail>[];
  o.add(buildWindowsDetail());
  o.add(buildWindowsDetail());
  return o;
}

void checkUnnamed6477(core.List<api.WindowsDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsDetail(o[0] as api.WindowsDetail);
  checkWindowsDetail(o[1] as api.WindowsDetail);
}

core.int buildCounterVulnerability = 0;
api.Vulnerability buildVulnerability() {
  var o = api.Vulnerability();
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    o.cvssScore = 42.0;
    o.cvssV3 = buildCVSSv3();
    o.details = buildUnnamed6476();
    o.severity = 'foo';
    o.sourceUpdateTime = 'foo';
    o.windowsDetails = buildUnnamed6477();
  }
  buildCounterVulnerability--;
  return o;
}

void checkVulnerability(api.Vulnerability o) {
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    unittest.expect(o.cvssScore, unittest.equals(42.0));
    checkCVSSv3(o.cvssV3 as api.CVSSv3);
    checkUnnamed6476(o.details);
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.sourceUpdateTime, unittest.equals('foo'));
    checkUnnamed6477(o.windowsDetails);
  }
  buildCounterVulnerability--;
}

core.int buildCounterVulnerabilityLocation = 0;
api.VulnerabilityLocation buildVulnerabilityLocation() {
  var o = api.VulnerabilityLocation();
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
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.package, unittest.equals('foo'));
    checkVersion(o.version as api.Version);
  }
  buildCounterVulnerabilityLocation--;
}

core.List<api.FixableTotalByDigest> buildUnnamed6478() {
  var o = <api.FixableTotalByDigest>[];
  o.add(buildFixableTotalByDigest());
  o.add(buildFixableTotalByDigest());
  return o;
}

void checkUnnamed6478(core.List<api.FixableTotalByDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixableTotalByDigest(o[0] as api.FixableTotalByDigest);
  checkFixableTotalByDigest(o[1] as api.FixableTotalByDigest);
}

core.int buildCounterVulnerabilityOccurrencesSummary = 0;
api.VulnerabilityOccurrencesSummary buildVulnerabilityOccurrencesSummary() {
  var o = api.VulnerabilityOccurrencesSummary();
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    o.counts = buildUnnamed6478();
  }
  buildCounterVulnerabilityOccurrencesSummary--;
  return o;
}

void checkVulnerabilityOccurrencesSummary(
    api.VulnerabilityOccurrencesSummary o) {
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    checkUnnamed6478(o.counts);
  }
  buildCounterVulnerabilityOccurrencesSummary--;
}

core.List<api.KnowledgeBase> buildUnnamed6479() {
  var o = <api.KnowledgeBase>[];
  o.add(buildKnowledgeBase());
  o.add(buildKnowledgeBase());
  return o;
}

void checkUnnamed6479(core.List<api.KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKnowledgeBase(o[0] as api.KnowledgeBase);
  checkKnowledgeBase(o[1] as api.KnowledgeBase);
}

core.int buildCounterWindowsDetail = 0;
api.WindowsDetail buildWindowsDetail() {
  var o = api.WindowsDetail();
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.fixingKbs = buildUnnamed6479();
    o.name = 'foo';
  }
  buildCounterWindowsDetail--;
  return o;
}

void checkWindowsDetail(api.WindowsDetail o) {
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed6479(o.fixingKbs);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterWindowsDetail--;
}

void main() {
  unittest.group('obj-schema-AliasContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildAliasContext();
      var od = api.AliasContext.fromJson(o.toJson());
      checkAliasContext(od as api.AliasContext);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () {
      var o = buildArtifact();
      var od = api.Artifact.fromJson(o.toJson());
      checkArtifact(od as api.Artifact);
    });
  });

  unittest.group('obj-schema-ArtifactHashes', () {
    unittest.test('to-json--from-json', () {
      var o = buildArtifactHashes();
      var od = api.ArtifactHashes.fromJson(o.toJson());
      checkArtifactHashes(od as api.ArtifactHashes);
    });
  });

  unittest.group('obj-schema-ArtifactRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildArtifactRule();
      var od = api.ArtifactRule.fromJson(o.toJson());
      checkArtifactRule(od as api.ArtifactRule);
    });
  });

  unittest.group('obj-schema-Attestation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttestation();
      var od = api.Attestation.fromJson(o.toJson());
      checkAttestation(od as api.Attestation);
    });
  });

  unittest.group('obj-schema-Authority', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthority();
      var od = api.Authority.fromJson(o.toJson());
      checkAuthority(od as api.Authority);
    });
  });

  unittest.group('obj-schema-Basis', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasis();
      var od = api.Basis.fromJson(o.toJson());
      checkBasis(od as api.Basis);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchCreateNotesRequest();
      var od = api.BatchCreateNotesRequest.fromJson(o.toJson());
      checkBatchCreateNotesRequest(od as api.BatchCreateNotesRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchCreateNotesResponse();
      var od = api.BatchCreateNotesResponse.fromJson(o.toJson());
      checkBatchCreateNotesResponse(od as api.BatchCreateNotesResponse);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchCreateOccurrencesRequest();
      var od = api.BatchCreateOccurrencesRequest.fromJson(o.toJson());
      checkBatchCreateOccurrencesRequest(
          od as api.BatchCreateOccurrencesRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchCreateOccurrencesResponse();
      var od = api.BatchCreateOccurrencesResponse.fromJson(o.toJson());
      checkBatchCreateOccurrencesResponse(
          od as api.BatchCreateOccurrencesResponse);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-Build', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuild();
      var od = api.Build.fromJson(o.toJson());
      checkBuild(od as api.Build);
    });
  });

  unittest.group('obj-schema-BuildProvenance', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildProvenance();
      var od = api.BuildProvenance.fromJson(o.toJson());
      checkBuildProvenance(od as api.BuildProvenance);
    });
  });

  unittest.group('obj-schema-BuildSignature', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildSignature();
      var od = api.BuildSignature.fromJson(o.toJson());
      checkBuildSignature(od as api.BuildSignature);
    });
  });

  unittest.group('obj-schema-ByProducts', () {
    unittest.test('to-json--from-json', () {
      var o = buildByProducts();
      var od = api.ByProducts.fromJson(o.toJson());
      checkByProducts(od as api.ByProducts);
    });
  });

  unittest.group('obj-schema-CVSSv3', () {
    unittest.test('to-json--from-json', () {
      var o = buildCVSSv3();
      var od = api.CVSSv3.fromJson(o.toJson());
      checkCVSSv3(od as api.CVSSv3);
    });
  });

  unittest.group('obj-schema-CloudRepoSourceContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudRepoSourceContext();
      var od = api.CloudRepoSourceContext.fromJson(o.toJson());
      checkCloudRepoSourceContext(od as api.CloudRepoSourceContext);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommand();
      var od = api.Command.fromJson(o.toJson());
      checkCommand(od as api.Command);
    });
  });

  unittest.group('obj-schema-Deployable', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployable();
      var od = api.Deployable.fromJson(o.toJson());
      checkDeployable(od as api.Deployable);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployment();
      var od = api.Deployment.fromJson(o.toJson());
      checkDeployment(od as api.Deployment);
    });
  });

  unittest.group('obj-schema-Derived', () {
    unittest.test('to-json--from-json', () {
      var o = buildDerived();
      var od = api.Derived.fromJson(o.toJson());
      checkDerived(od as api.Derived);
    });
  });

  unittest.group('obj-schema-Detail', () {
    unittest.test('to-json--from-json', () {
      var o = buildDetail();
      var od = api.Detail.fromJson(o.toJson());
      checkDetail(od as api.Detail);
    });
  });

  unittest.group('obj-schema-Details', () {
    unittest.test('to-json--from-json', () {
      var o = buildDetails();
      var od = api.Details.fromJson(o.toJson());
      checkDetails(od as api.Details);
    });
  });

  unittest.group('obj-schema-Discovered', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiscovered();
      var od = api.Discovered.fromJson(o.toJson());
      checkDiscovered(od as api.Discovered);
    });
  });

  unittest.group('obj-schema-Discovery', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiscovery();
      var od = api.Discovery.fromJson(o.toJson());
      checkDiscovery(od as api.Discovery);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistribution();
      var od = api.Distribution.fromJson(o.toJson());
      checkDistribution(od as api.Distribution);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironment();
      var od = api.Environment.fromJson(o.toJson());
      checkEnvironment(od as api.Environment);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-FileHashes', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileHashes();
      var od = api.FileHashes.fromJson(o.toJson());
      checkFileHashes(od as api.FileHashes);
    });
  });

  unittest.group('obj-schema-Fingerprint', () {
    unittest.test('to-json--from-json', () {
      var o = buildFingerprint();
      var od = api.Fingerprint.fromJson(o.toJson());
      checkFingerprint(od as api.Fingerprint);
    });
  });

  unittest.group('obj-schema-FixableTotalByDigest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFixableTotalByDigest();
      var od = api.FixableTotalByDigest.fromJson(o.toJson());
      checkFixableTotalByDigest(od as api.FixableTotalByDigest);
    });
  });

  unittest.group('obj-schema-GenericSignedAttestation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenericSignedAttestation();
      var od = api.GenericSignedAttestation.fromJson(o.toJson());
      checkGenericSignedAttestation(od as api.GenericSignedAttestation);
    });
  });

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildGerritSourceContext();
      var od = api.GerritSourceContext.fromJson(o.toJson());
      checkGerritSourceContext(od as api.GerritSourceContext);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetIamPolicyRequest();
      var od = api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od as api.GetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetPolicyOptions();
      var od = api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od as api.GetPolicyOptions);
    });
  });

  unittest.group('obj-schema-GitSourceContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildGitSourceContext();
      var od = api.GitSourceContext.fromJson(o.toJson());
      checkGitSourceContext(od as api.GitSourceContext);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();
      var od =
          api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata.fromJson(
              o.toJson());
      checkGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata(
          od as api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1BuildDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1BuildDetails();
      var od = api.GrafeasV1beta1BuildDetails.fromJson(o.toJson());
      checkGrafeasV1beta1BuildDetails(od as api.GrafeasV1beta1BuildDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1DeploymentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1DeploymentDetails();
      var od = api.GrafeasV1beta1DeploymentDetails.fromJson(o.toJson());
      checkGrafeasV1beta1DeploymentDetails(
          od as api.GrafeasV1beta1DeploymentDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1DiscoveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1DiscoveryDetails();
      var od = api.GrafeasV1beta1DiscoveryDetails.fromJson(o.toJson());
      checkGrafeasV1beta1DiscoveryDetails(
          od as api.GrafeasV1beta1DiscoveryDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1ImageDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1ImageDetails();
      var od = api.GrafeasV1beta1ImageDetails.fromJson(o.toJson());
      checkGrafeasV1beta1ImageDetails(od as api.GrafeasV1beta1ImageDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoArtifact', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1IntotoArtifact();
      var od = api.GrafeasV1beta1IntotoArtifact.fromJson(o.toJson());
      checkGrafeasV1beta1IntotoArtifact(od as api.GrafeasV1beta1IntotoArtifact);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1IntotoDetails();
      var od = api.GrafeasV1beta1IntotoDetails.fromJson(o.toJson());
      checkGrafeasV1beta1IntotoDetails(od as api.GrafeasV1beta1IntotoDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoSignature', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1IntotoSignature();
      var od = api.GrafeasV1beta1IntotoSignature.fromJson(o.toJson());
      checkGrafeasV1beta1IntotoSignature(
          od as api.GrafeasV1beta1IntotoSignature);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1PackageDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1PackageDetails();
      var od = api.GrafeasV1beta1PackageDetails.fromJson(o.toJson());
      checkGrafeasV1beta1PackageDetails(od as api.GrafeasV1beta1PackageDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1VulnerabilityDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGrafeasV1beta1VulnerabilityDetails();
      var od = api.GrafeasV1beta1VulnerabilityDetails.fromJson(o.toJson());
      checkGrafeasV1beta1VulnerabilityDetails(
          od as api.GrafeasV1beta1VulnerabilityDetails);
    });
  });

  unittest.group('obj-schema-Hash', () {
    unittest.test('to-json--from-json', () {
      var o = buildHash();
      var od = api.Hash.fromJson(o.toJson());
      checkHash(od as api.Hash);
    });
  });

  unittest.group('obj-schema-Hint', () {
    unittest.test('to-json--from-json', () {
      var o = buildHint();
      var od = api.Hint.fromJson(o.toJson());
      checkHint(od as api.Hint);
    });
  });

  unittest.group('obj-schema-InToto', () {
    unittest.test('to-json--from-json', () {
      var o = buildInToto();
      var od = api.InToto.fromJson(o.toJson());
      checkInToto(od as api.InToto);
    });
  });

  unittest.group('obj-schema-Installation', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstallation();
      var od = api.Installation.fromJson(o.toJson());
      checkInstallation(od as api.Installation);
    });
  });

  unittest.group('obj-schema-KnowledgeBase', () {
    unittest.test('to-json--from-json', () {
      var o = buildKnowledgeBase();
      var od = api.KnowledgeBase.fromJson(o.toJson());
      checkKnowledgeBase(od as api.KnowledgeBase);
    });
  });

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () {
      var o = buildLayer();
      var od = api.Layer.fromJson(o.toJson());
      checkLayer(od as api.Layer);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () {
      var o = buildLink();
      var od = api.Link.fromJson(o.toJson());
      checkLink(od as api.Link);
    });
  });

  unittest.group('obj-schema-ListNoteOccurrencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNoteOccurrencesResponse();
      var od = api.ListNoteOccurrencesResponse.fromJson(o.toJson());
      checkListNoteOccurrencesResponse(od as api.ListNoteOccurrencesResponse);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNotesResponse();
      var od = api.ListNotesResponse.fromJson(o.toJson());
      checkListNotesResponse(od as api.ListNotesResponse);
    });
  });

  unittest.group('obj-schema-ListOccurrencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOccurrencesResponse();
      var od = api.ListOccurrencesResponse.fromJson(o.toJson());
      checkListOccurrencesResponse(od as api.ListOccurrencesResponse);
    });
  });

  unittest.group('obj-schema-ListScanConfigsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListScanConfigsResponse();
      var od = api.ListScanConfigsResponse.fromJson(o.toJson());
      checkListScanConfigsResponse(od as api.ListScanConfigsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () {
      var o = buildNote();
      var od = api.Note.fromJson(o.toJson());
      checkNote(od as api.Note);
    });
  });

  unittest.group('obj-schema-Occurrence', () {
    unittest.test('to-json--from-json', () {
      var o = buildOccurrence();
      var od = api.Occurrence.fromJson(o.toJson());
      checkOccurrence(od as api.Occurrence);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () {
      var o = buildPackage();
      var od = api.Package.fromJson(o.toJson());
      checkPackage(od as api.Package);
    });
  });

  unittest.group('obj-schema-PackageIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildPackageIssue();
      var od = api.PackageIssue.fromJson(o.toJson());
      checkPackageIssue(od as api.PackageIssue);
    });
  });

  unittest.group('obj-schema-PgpSignedAttestation', () {
    unittest.test('to-json--from-json', () {
      var o = buildPgpSignedAttestation();
      var od = api.PgpSignedAttestation.fromJson(o.toJson());
      checkPgpSignedAttestation(od as api.PgpSignedAttestation);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-ProjectRepoId', () {
    unittest.test('to-json--from-json', () {
      var o = buildProjectRepoId();
      var od = api.ProjectRepoId.fromJson(o.toJson());
      checkProjectRepoId(od as api.ProjectRepoId);
    });
  });

  unittest.group('obj-schema-RelatedUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelatedUrl();
      var od = api.RelatedUrl.fromJson(o.toJson());
      checkRelatedUrl(od as api.RelatedUrl);
    });
  });

  unittest.group('obj-schema-RepoId', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepoId();
      var od = api.RepoId.fromJson(o.toJson());
      checkRepoId(od as api.RepoId);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () {
      var o = buildResource();
      var od = api.Resource.fromJson(o.toJson());
      checkResource(od as api.Resource);
    });
  });

  unittest.group('obj-schema-ScanConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildScanConfig();
      var od = api.ScanConfig.fromJson(o.toJson());
      checkScanConfig(od as api.ScanConfig);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignature();
      var od = api.Signature.fromJson(o.toJson());
      checkSignature(od as api.Signature);
    });
  });

  unittest.group('obj-schema-SigningKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildSigningKey();
      var od = api.SigningKey.fromJson(o.toJson());
      checkSigningKey(od as api.SigningKey);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () {
      var o = buildSource();
      var od = api.Source.fromJson(o.toJson());
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceContext();
      var od = api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od as api.SourceContext);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () {
      var o = buildVersion();
      var od = api.Version.fromJson(o.toJson());
      checkVersion(od as api.Version);
    });
  });

  unittest.group('obj-schema-Vulnerability', () {
    unittest.test('to-json--from-json', () {
      var o = buildVulnerability();
      var od = api.Vulnerability.fromJson(o.toJson());
      checkVulnerability(od as api.Vulnerability);
    });
  });

  unittest.group('obj-schema-VulnerabilityLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildVulnerabilityLocation();
      var od = api.VulnerabilityLocation.fromJson(o.toJson());
      checkVulnerabilityLocation(od as api.VulnerabilityLocation);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrencesSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildVulnerabilityOccurrencesSummary();
      var od = api.VulnerabilityOccurrencesSummary.fromJson(o.toJson());
      checkVulnerabilityOccurrencesSummary(
          od as api.VulnerabilityOccurrencesSummary);
    });
  });

  unittest.group('obj-schema-WindowsDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildWindowsDetail();
      var od = api.WindowsDetail.fromJson(o.toJson());
      checkWindowsDetail(od as api.WindowsDetail);
    });
  });

  unittest.group('resource-ProjectsNotesResource', () {
    unittest.test('method--batchCreate', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_request = buildBatchCreateNotesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchCreateNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateNotesRequest(obj as api.BatchCreateNotesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBatchCreateNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreateNotesResponse(response as api.BatchCreateNotesResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_request = buildNote();
      var arg_parent = 'foo';
      var arg_noteId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj as api.Note);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["noteId"].first, unittest.equals(arg_noteId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              noteId: arg_noteId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response as api.Note);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response as api.Note);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNotesResponse(response as api.ListNotesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_request = buildNote();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj as api.Note);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response as api.Note);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsNotesOccurrencesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.notes.occurrences;
      var arg_name = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNoteOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNoteOccurrencesResponse(
            response as api.ListNoteOccurrencesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsOccurrencesResource', () {
    unittest.test('method--batchCreate', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_request = buildBatchCreateOccurrencesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchCreateOccurrencesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateOccurrencesRequest(
            obj as api.BatchCreateOccurrencesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBatchCreateOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreateOccurrencesResponse(
            response as api.BatchCreateOccurrencesResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_request = buildOccurrence();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOccurrence(obj as api.Occurrence);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOccurrence(response as api.Occurrence);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOccurrence(response as api.Occurrence);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--getNotes', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getNotes(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response as api.Note);
      })));
    });

    unittest.test('method--getVulnerabilitySummary', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVulnerabilityOccurrencesSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getVulnerabilitySummary(arg_parent,
              filter: arg_filter, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVulnerabilityOccurrencesSummary(
            response as api.VulnerabilityOccurrencesSummary);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOccurrencesResponse(response as api.ListOccurrencesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_request = buildOccurrence();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOccurrence(obj as api.Occurrence);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOccurrence(response as api.Occurrence);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.occurrences;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsScanConfigsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.scanConfigs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response as api.ScanConfig);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.scanConfigs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListScanConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListScanConfigsResponse(response as api.ListScanConfigsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ContainerAnalysisApi(mock).projects.scanConfigs;
      var arg_request = buildScanConfig();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScanConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScanConfig(obj as api.ScanConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response as api.ScanConfig);
      })));
    });
  });
}
