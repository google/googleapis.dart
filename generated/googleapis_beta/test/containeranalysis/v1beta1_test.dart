// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
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

core.List<core.String> buildUnnamed7567() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7567(core.List<core.String> o) {
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
  var o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.checksum = 'foo';
    o.id = 'foo';
    o.names = buildUnnamed7567();
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
    checkUnnamed7567(o.names!);
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
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterArtifactHashes--;
}

core.List<core.String> buildUnnamed7568() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7568(core.List<core.String> o) {
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

core.int buildCounterArtifactRule = 0;
api.ArtifactRule buildArtifactRule() {
  var o = api.ArtifactRule();
  buildCounterArtifactRule++;
  if (buildCounterArtifactRule < 3) {
    o.artifactRule = buildUnnamed7568();
  }
  buildCounterArtifactRule--;
  return o;
}

void checkArtifactRule(api.ArtifactRule o) {
  buildCounterArtifactRule++;
  if (buildCounterArtifactRule < 3) {
    checkUnnamed7568(o.artifactRule!);
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
        o.genericSignedAttestation! as api.GenericSignedAttestation);
    checkPgpSignedAttestation(
        o.pgpSignedAttestation! as api.PgpSignedAttestation);
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
    checkHint(o.hint! as api.Hint);
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
    checkFingerprint(o.fingerprint! as api.Fingerprint);
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterBasis--;
}

core.Map<core.String, api.Note> buildUnnamed7569() {
  var o = <core.String, api.Note>{};
  o['x'] = buildNote();
  o['y'] = buildNote();
  return o;
}

void checkUnnamed7569(core.Map<core.String, api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o['x']! as api.Note);
  checkNote(o['y']! as api.Note);
}

core.int buildCounterBatchCreateNotesRequest = 0;
api.BatchCreateNotesRequest buildBatchCreateNotesRequest() {
  var o = api.BatchCreateNotesRequest();
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    o.notes = buildUnnamed7569();
  }
  buildCounterBatchCreateNotesRequest--;
  return o;
}

void checkBatchCreateNotesRequest(api.BatchCreateNotesRequest o) {
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    checkUnnamed7569(o.notes!);
  }
  buildCounterBatchCreateNotesRequest--;
}

core.List<api.Note> buildUnnamed7570() {
  var o = <api.Note>[];
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

void checkUnnamed7570(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0] as api.Note);
  checkNote(o[1] as api.Note);
}

core.int buildCounterBatchCreateNotesResponse = 0;
api.BatchCreateNotesResponse buildBatchCreateNotesResponse() {
  var o = api.BatchCreateNotesResponse();
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    o.notes = buildUnnamed7570();
  }
  buildCounterBatchCreateNotesResponse--;
  return o;
}

void checkBatchCreateNotesResponse(api.BatchCreateNotesResponse o) {
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    checkUnnamed7570(o.notes!);
  }
  buildCounterBatchCreateNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed7571() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed7571(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0] as api.Occurrence);
  checkOccurrence(o[1] as api.Occurrence);
}

core.int buildCounterBatchCreateOccurrencesRequest = 0;
api.BatchCreateOccurrencesRequest buildBatchCreateOccurrencesRequest() {
  var o = api.BatchCreateOccurrencesRequest();
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    o.occurrences = buildUnnamed7571();
  }
  buildCounterBatchCreateOccurrencesRequest--;
  return o;
}

void checkBatchCreateOccurrencesRequest(api.BatchCreateOccurrencesRequest o) {
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    checkUnnamed7571(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesRequest--;
}

core.List<api.Occurrence> buildUnnamed7572() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed7572(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0] as api.Occurrence);
  checkOccurrence(o[1] as api.Occurrence);
}

core.int buildCounterBatchCreateOccurrencesResponse = 0;
api.BatchCreateOccurrencesResponse buildBatchCreateOccurrencesResponse() {
  var o = api.BatchCreateOccurrencesResponse();
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    o.occurrences = buildUnnamed7572();
  }
  buildCounterBatchCreateOccurrencesResponse--;
  return o;
}

void checkBatchCreateOccurrencesResponse(api.BatchCreateOccurrencesResponse o) {
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    checkUnnamed7572(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesResponse--;
}

core.List<core.String> buildUnnamed7573() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7573(core.List<core.String> o) {
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
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7573();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed7573(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
    checkBuildSignature(o.signature! as api.BuildSignature);
  }
  buildCounterBuild--;
}

core.Map<core.String, core.String> buildUnnamed7574() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7574(core.Map<core.String, core.String> o) {
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

core.List<api.Artifact> buildUnnamed7575() {
  var o = <api.Artifact>[];
  o.add(buildArtifact());
  o.add(buildArtifact());
  return o;
}

void checkUnnamed7575(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0] as api.Artifact);
  checkArtifact(o[1] as api.Artifact);
}

core.List<api.Command> buildUnnamed7576() {
  var o = <api.Command>[];
  o.add(buildCommand());
  o.add(buildCommand());
  return o;
}

void checkUnnamed7576(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0] as api.Command);
  checkCommand(o[1] as api.Command);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  var o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed7574();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed7575();
    o.commands = buildUnnamed7576();
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
    checkUnnamed7574(o.buildOptions!);
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed7575(o.builtArtifacts!);
    checkUnnamed7576(o.commands!);
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
    checkSource(o.sourceProvenance! as api.Source);
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
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildSignature--;
}

core.Map<core.String, core.String> buildUnnamed7577() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7577(core.Map<core.String, core.String> o) {
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

core.int buildCounterByProducts = 0;
api.ByProducts buildByProducts() {
  var o = api.ByProducts();
  buildCounterByProducts++;
  if (buildCounterByProducts < 3) {
    o.customValues = buildUnnamed7577();
  }
  buildCounterByProducts--;
  return o;
}

void checkByProducts(api.ByProducts o) {
  buildCounterByProducts++;
  if (buildCounterByProducts < 3) {
    checkUnnamed7577(o.customValues!);
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
    checkAliasContext(o.aliasContext! as api.AliasContext);
    checkRepoId(o.repoId! as api.RepoId);
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRepoSourceContext--;
}

core.List<core.String> buildUnnamed7578() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7578(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7579() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7579(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7580() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7580(core.List<core.String> o) {
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
  var o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed7578();
    o.dir = 'foo';
    o.env = buildUnnamed7579();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed7580();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed7578(o.args!);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    checkUnnamed7579(o.env!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7580(o.waitFor!);
  }
  buildCounterCommand--;
}

core.List<core.String> buildUnnamed7581() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7581(core.List<core.String> o) {
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

core.int buildCounterDeployable = 0;
api.Deployable buildDeployable() {
  var o = api.Deployable();
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    o.resourceUri = buildUnnamed7581();
  }
  buildCounterDeployable--;
  return o;
}

void checkDeployable(api.Deployable o) {
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    checkUnnamed7581(o.resourceUri!);
  }
  buildCounterDeployable--;
}

core.List<core.String> buildUnnamed7582() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7582(core.List<core.String> o) {
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

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  var o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.address = 'foo';
    o.config = 'foo';
    o.deployTime = 'foo';
    o.platform = 'foo';
    o.resourceUri = buildUnnamed7582();
    o.undeployTime = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
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
    checkUnnamed7582(o.resourceUri!);
    unittest.expect(
      o.undeployTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeployment--;
}

core.List<api.Layer> buildUnnamed7583() {
  var o = <api.Layer>[];
  o.add(buildLayer());
  o.add(buildLayer());
  return o;
}

void checkUnnamed7583(core.List<api.Layer> o) {
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
    o.layerInfo = buildUnnamed7583();
  }
  buildCounterDerived--;
  return o;
}

void checkDerived(api.Derived o) {
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    unittest.expect(
      o.baseResourceUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distance!,
      unittest.equals(42),
    );
    checkFingerprint(o.fingerprint! as api.Fingerprint);
    checkUnnamed7583(o.layerInfo!);
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
    o.source = 'foo';
    o.sourceUpdateTime = 'foo';
  }
  buildCounterDetail--;
  return o;
}

void checkDetail(api.Detail o) {
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkVulnerabilityLocation(o.fixedLocation! as api.VulnerabilityLocation);
    unittest.expect(o.isObsolete!, unittest.isTrue);
    checkVersion(o.maxAffectedVersion! as api.Version);
    checkVersion(o.minAffectedVersion! as api.Version);
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
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
    checkAttestation(o.attestation! as api.Attestation);
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
    unittest.expect(
      o.analysisStatus!,
      unittest.equals('foo'),
    );
    checkStatus(o.analysisStatusError! as api.Status);
    unittest.expect(
      o.continuousAnalysis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastAnalysisTime!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.analysisKind!,
      unittest.equals('foo'),
    );
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
    checkVersion(o.latestVersion! as api.Version);
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

core.Map<core.String, core.String> buildUnnamed7584() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7584(core.Map<core.String, core.String> o) {
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

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.customValues = buildUnnamed7584();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkUnnamed7584(o.customValues!);
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

core.List<api.Hash> buildUnnamed7585() {
  var o = <api.Hash>[];
  o.add(buildHash());
  o.add(buildHash());
  return o;
}

void checkUnnamed7585(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0] as api.Hash);
  checkHash(o[1] as api.Hash);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  var o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed7585();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed7585(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.List<core.String> buildUnnamed7586() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7586(core.List<core.String> o) {
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
  var o = api.Fingerprint();
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    o.v1Name = 'foo';
    o.v2Blob = buildUnnamed7586();
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
    checkUnnamed7586(o.v2Blob!);
    unittest.expect(
      o.v2Name!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.fixableCount!,
      unittest.equals('foo'),
    );
    checkResource(o.resource! as api.Resource);
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

core.List<api.Signature> buildUnnamed7587() {
  var o = <api.Signature>[];
  o.add(buildSignature());
  o.add(buildSignature());
  return o;
}

void checkUnnamed7587(core.List<api.Signature> o) {
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
    o.signatures = buildUnnamed7587();
  }
  buildCounterGenericSignedAttestation--;
  return o;
}

void checkGenericSignedAttestation(api.GenericSignedAttestation o) {
  buildCounterGenericSignedAttestation++;
  if (buildCounterGenericSignedAttestation < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serializedPayload!,
      unittest.equals('foo'),
    );
    checkUnnamed7587(o.signatures!);
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
    checkAliasContext(o.aliasContext! as api.AliasContext);
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
    checkGetPolicyOptions(o.options! as api.GetPolicyOptions);
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
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
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
    checkBuildProvenance(o.provenance! as api.BuildProvenance);
    unittest.expect(
      o.provenanceBytes!,
      unittest.equals('foo'),
    );
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
    checkDeployment(o.deployment! as api.Deployment);
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
    checkDiscovered(o.discovered! as api.Discovered);
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
    checkDerived(o.derivedImage! as api.Derived);
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
    checkArtifactHashes(o.hashes! as api.ArtifactHashes);
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrafeasV1beta1IntotoArtifact--;
}

core.List<api.GrafeasV1beta1IntotoSignature> buildUnnamed7588() {
  var o = <api.GrafeasV1beta1IntotoSignature>[];
  o.add(buildGrafeasV1beta1IntotoSignature());
  o.add(buildGrafeasV1beta1IntotoSignature());
  return o;
}

void checkUnnamed7588(core.List<api.GrafeasV1beta1IntotoSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoSignature(o[0] as api.GrafeasV1beta1IntotoSignature);
  checkGrafeasV1beta1IntotoSignature(o[1] as api.GrafeasV1beta1IntotoSignature);
}

core.int buildCounterGrafeasV1beta1IntotoDetails = 0;
api.GrafeasV1beta1IntotoDetails buildGrafeasV1beta1IntotoDetails() {
  var o = api.GrafeasV1beta1IntotoDetails();
  buildCounterGrafeasV1beta1IntotoDetails++;
  if (buildCounterGrafeasV1beta1IntotoDetails < 3) {
    o.signatures = buildUnnamed7588();
    o.signed = buildLink();
  }
  buildCounterGrafeasV1beta1IntotoDetails--;
  return o;
}

void checkGrafeasV1beta1IntotoDetails(api.GrafeasV1beta1IntotoDetails o) {
  buildCounterGrafeasV1beta1IntotoDetails++;
  if (buildCounterGrafeasV1beta1IntotoDetails < 3) {
    checkUnnamed7588(o.signatures!);
    checkLink(o.signed! as api.Link);
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
    unittest.expect(
      o.keyid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sig!,
      unittest.equals('foo'),
    );
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
    checkInstallation(o.installation! as api.Installation);
  }
  buildCounterGrafeasV1beta1PackageDetails--;
}

core.List<api.PackageIssue> buildUnnamed7589() {
  var o = <api.PackageIssue>[];
  o.add(buildPackageIssue());
  o.add(buildPackageIssue());
  return o;
}

void checkUnnamed7589(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0] as api.PackageIssue);
  checkPackageIssue(o[1] as api.PackageIssue);
}

core.List<api.RelatedUrl> buildUnnamed7590() {
  var o = <api.RelatedUrl>[];
  o.add(buildRelatedUrl());
  o.add(buildRelatedUrl());
  return o;
}

void checkUnnamed7590(core.List<api.RelatedUrl> o) {
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
    o.packageIssue = buildUnnamed7589();
    o.relatedUrls = buildUnnamed7590();
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
    unittest.expect(
      o.cvssScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.effectiveSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed7589(o.packageIssue!);
    checkUnnamed7590(o.relatedUrls!);
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
    unittest.expect(
      o.humanReadableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterHint--;
}

core.List<core.String> buildUnnamed7591() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7591(core.List<core.String> o) {
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

core.List<api.ArtifactRule> buildUnnamed7592() {
  var o = <api.ArtifactRule>[];
  o.add(buildArtifactRule());
  o.add(buildArtifactRule());
  return o;
}

void checkUnnamed7592(core.List<api.ArtifactRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactRule(o[0] as api.ArtifactRule);
  checkArtifactRule(o[1] as api.ArtifactRule);
}

core.List<api.ArtifactRule> buildUnnamed7593() {
  var o = <api.ArtifactRule>[];
  o.add(buildArtifactRule());
  o.add(buildArtifactRule());
  return o;
}

void checkUnnamed7593(core.List<api.ArtifactRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactRule(o[0] as api.ArtifactRule);
  checkArtifactRule(o[1] as api.ArtifactRule);
}

core.List<api.SigningKey> buildUnnamed7594() {
  var o = <api.SigningKey>[];
  o.add(buildSigningKey());
  o.add(buildSigningKey());
  return o;
}

void checkUnnamed7594(core.List<api.SigningKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigningKey(o[0] as api.SigningKey);
  checkSigningKey(o[1] as api.SigningKey);
}

core.int buildCounterInToto = 0;
api.InToto buildInToto() {
  var o = api.InToto();
  buildCounterInToto++;
  if (buildCounterInToto < 3) {
    o.expectedCommand = buildUnnamed7591();
    o.expectedMaterials = buildUnnamed7592();
    o.expectedProducts = buildUnnamed7593();
    o.signingKeys = buildUnnamed7594();
    o.stepName = 'foo';
    o.threshold = 'foo';
  }
  buildCounterInToto--;
  return o;
}

void checkInToto(api.InToto o) {
  buildCounterInToto++;
  if (buildCounterInToto < 3) {
    checkUnnamed7591(o.expectedCommand!);
    checkUnnamed7592(o.expectedMaterials!);
    checkUnnamed7593(o.expectedProducts!);
    checkUnnamed7594(o.signingKeys!);
    unittest.expect(
      o.stepName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threshold!,
      unittest.equals('foo'),
    );
  }
  buildCounterInToto--;
}

core.List<api.Location> buildUnnamed7595() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed7595(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterInstallation = 0;
api.Installation buildInstallation() {
  var o = api.Installation();
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    o.location = buildUnnamed7595();
    o.name = 'foo';
  }
  buildCounterInstallation--;
  return o;
}

void checkInstallation(api.Installation o) {
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    checkUnnamed7595(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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

core.List<core.String> buildUnnamed7596() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7596(core.List<core.String> o) {
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

core.List<api.GrafeasV1beta1IntotoArtifact> buildUnnamed7597() {
  var o = <api.GrafeasV1beta1IntotoArtifact>[];
  o.add(buildGrafeasV1beta1IntotoArtifact());
  o.add(buildGrafeasV1beta1IntotoArtifact());
  return o;
}

void checkUnnamed7597(core.List<api.GrafeasV1beta1IntotoArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1beta1IntotoArtifact(o[0] as api.GrafeasV1beta1IntotoArtifact);
  checkGrafeasV1beta1IntotoArtifact(o[1] as api.GrafeasV1beta1IntotoArtifact);
}

core.List<api.GrafeasV1beta1IntotoArtifact> buildUnnamed7598() {
  var o = <api.GrafeasV1beta1IntotoArtifact>[];
  o.add(buildGrafeasV1beta1IntotoArtifact());
  o.add(buildGrafeasV1beta1IntotoArtifact());
  return o;
}

void checkUnnamed7598(core.List<api.GrafeasV1beta1IntotoArtifact> o) {
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
    o.command = buildUnnamed7596();
    o.environment = buildEnvironment();
    o.materials = buildUnnamed7597();
    o.products = buildUnnamed7598();
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    checkByProducts(o.byproducts! as api.ByProducts);
    checkUnnamed7596(o.command!);
    checkEnvironment(o.environment! as api.Environment);
    checkUnnamed7597(o.materials!);
    checkUnnamed7598(o.products!);
  }
  buildCounterLink--;
}

core.List<api.Occurrence> buildUnnamed7599() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed7599(core.List<api.Occurrence> o) {
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
    o.occurrences = buildUnnamed7599();
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
    checkUnnamed7599(o.occurrences!);
  }
  buildCounterListNoteOccurrencesResponse--;
}

core.List<api.Note> buildUnnamed7600() {
  var o = <api.Note>[];
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

void checkUnnamed7600(core.List<api.Note> o) {
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
    o.notes = buildUnnamed7600();
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
    checkUnnamed7600(o.notes!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed7601() {
  var o = <api.Occurrence>[];
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

void checkUnnamed7601(core.List<api.Occurrence> o) {
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
    o.occurrences = buildUnnamed7601();
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
    checkUnnamed7601(o.occurrences!);
  }
  buildCounterListOccurrencesResponse--;
}

core.List<api.ScanConfig> buildUnnamed7602() {
  var o = <api.ScanConfig>[];
  o.add(buildScanConfig());
  o.add(buildScanConfig());
  return o;
}

void checkUnnamed7602(core.List<api.ScanConfig> o) {
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
    o.scanConfigs = buildUnnamed7602();
  }
  buildCounterListScanConfigsResponse--;
  return o;
}

void checkListScanConfigsResponse(api.ListScanConfigsResponse o) {
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7602(o.scanConfigs!);
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
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkVersion(o.version! as api.Version);
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed7603() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7603(core.List<core.String> o) {
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

core.List<api.RelatedUrl> buildUnnamed7604() {
  var o = <api.RelatedUrl>[];
  o.add(buildRelatedUrl());
  o.add(buildRelatedUrl());
  return o;
}

void checkUnnamed7604(core.List<api.RelatedUrl> o) {
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
    o.relatedNoteNames = buildUnnamed7603();
    o.relatedUrl = buildUnnamed7604();
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
    checkAuthority(o.attestationAuthority! as api.Authority);
    checkBasis(o.baseImage! as api.Basis);
    checkBuild(o.build! as api.Build);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeployable(o.deployable! as api.Deployable);
    checkDiscovery(o.discovery! as api.Discovery);
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkInToto(o.intoto! as api.InToto);
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
    checkPackage(o.package! as api.Package);
    checkUnnamed7603(o.relatedNoteNames!);
    checkUnnamed7604(o.relatedUrl!);
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVulnerability(o.vulnerability! as api.Vulnerability);
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
    checkDetails(o.attestation! as api.Details);
    checkGrafeasV1beta1BuildDetails(o.build! as api.GrafeasV1beta1BuildDetails);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGrafeasV1beta1DeploymentDetails(
        o.deployment! as api.GrafeasV1beta1DeploymentDetails);
    checkGrafeasV1beta1ImageDetails(
        o.derivedImage! as api.GrafeasV1beta1ImageDetails);
    checkGrafeasV1beta1DiscoveryDetails(
        o.discovered! as api.GrafeasV1beta1DiscoveryDetails);
    checkGrafeasV1beta1PackageDetails(
        o.installation! as api.GrafeasV1beta1PackageDetails);
    checkGrafeasV1beta1IntotoDetails(
        o.intoto! as api.GrafeasV1beta1IntotoDetails);
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
    unittest.expect(
      o.remediation!,
      unittest.equals('foo'),
    );
    checkResource(o.resource! as api.Resource);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGrafeasV1beta1VulnerabilityDetails(
        o.vulnerability! as api.GrafeasV1beta1VulnerabilityDetails);
  }
  buildCounterOccurrence--;
}

core.List<api.Distribution> buildUnnamed7605() {
  var o = <api.Distribution>[];
  o.add(buildDistribution());
  o.add(buildDistribution());
  return o;
}

void checkUnnamed7605(core.List<api.Distribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistribution(o[0] as api.Distribution);
  checkDistribution(o[1] as api.Distribution);
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  var o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.distribution = buildUnnamed7605();
    o.name = 'foo';
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    checkUnnamed7605(o.distribution!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    checkVulnerabilityLocation(
        o.affectedLocation! as api.VulnerabilityLocation);
    checkVulnerabilityLocation(o.fixedLocation! as api.VulnerabilityLocation);
    unittest.expect(
      o.severityName!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pgpKeyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterPgpSignedAttestation--;
}

core.List<api.Binding> buildUnnamed7606() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7606(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed7606();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7606(o.bindings!);
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
    checkProjectRepoId(o.projectRepoId! as api.ProjectRepoId);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
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
    checkHash(o.contentHash! as api.Hash);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    checkPolicy(o.policy! as api.Policy);
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
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyScheme!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKeyValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterSigningKey--;
}

core.List<api.SourceContext> buildUnnamed7607() {
  var o = <api.SourceContext>[];
  o.add(buildSourceContext());
  o.add(buildSourceContext());
  return o;
}

void checkUnnamed7607(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0] as api.SourceContext);
  checkSourceContext(o[1] as api.SourceContext);
}

core.Map<core.String, api.FileHashes> buildUnnamed7608() {
  var o = <core.String, api.FileHashes>{};
  o['x'] = buildFileHashes();
  o['y'] = buildFileHashes();
  return o;
}

void checkUnnamed7608(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']! as api.FileHashes);
  checkFileHashes(o['y']! as api.FileHashes);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  var o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed7607();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed7608();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed7607(o.additionalContexts!);
    unittest.expect(
      o.artifactStorageSourceUri!,
      unittest.equals('foo'),
    );
    checkSourceContext(o.context! as api.SourceContext);
    checkUnnamed7608(o.fileHashes!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed7609() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7609(core.Map<core.String, core.String> o) {
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
  var o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
    o.labels = buildUnnamed7609();
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo! as api.CloudRepoSourceContext);
    checkGerritSourceContext(o.gerrit! as api.GerritSourceContext);
    checkGitSourceContext(o.git! as api.GitSourceContext);
    checkUnnamed7609(o.labels!);
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object> buildUnnamed7610() {
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

void checkUnnamed7610(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7611() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7610());
  o.add(buildUnnamed7610());
  return o;
}

void checkUnnamed7611(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7610(o[0]);
  checkUnnamed7610(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7611();
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
    checkUnnamed7611(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed7612() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7612(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7612();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7612(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7613() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7613(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7613();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7613(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  var o = api.Version();
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
    unittest.expect(
      o.epoch!,
      unittest.equals(42),
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

core.List<api.Detail> buildUnnamed7614() {
  var o = <api.Detail>[];
  o.add(buildDetail());
  o.add(buildDetail());
  return o;
}

void checkUnnamed7614(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0] as api.Detail);
  checkDetail(o[1] as api.Detail);
}

core.List<api.WindowsDetail> buildUnnamed7615() {
  var o = <api.WindowsDetail>[];
  o.add(buildWindowsDetail());
  o.add(buildWindowsDetail());
  return o;
}

void checkUnnamed7615(core.List<api.WindowsDetail> o) {
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
    o.details = buildUnnamed7614();
    o.severity = 'foo';
    o.sourceUpdateTime = 'foo';
    o.windowsDetails = buildUnnamed7615();
  }
  buildCounterVulnerability--;
  return o;
}

void checkVulnerability(api.Vulnerability o) {
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    unittest.expect(
      o.cvssScore!,
      unittest.equals(42.0),
    );
    checkCVSSv3(o.cvssV3! as api.CVSSv3);
    checkUnnamed7614(o.details!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7615(o.windowsDetails!);
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
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    checkVersion(o.version! as api.Version);
  }
  buildCounterVulnerabilityLocation--;
}

core.List<api.FixableTotalByDigest> buildUnnamed7616() {
  var o = <api.FixableTotalByDigest>[];
  o.add(buildFixableTotalByDigest());
  o.add(buildFixableTotalByDigest());
  return o;
}

void checkUnnamed7616(core.List<api.FixableTotalByDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixableTotalByDigest(o[0] as api.FixableTotalByDigest);
  checkFixableTotalByDigest(o[1] as api.FixableTotalByDigest);
}

core.int buildCounterVulnerabilityOccurrencesSummary = 0;
api.VulnerabilityOccurrencesSummary buildVulnerabilityOccurrencesSummary() {
  var o = api.VulnerabilityOccurrencesSummary();
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    o.counts = buildUnnamed7616();
  }
  buildCounterVulnerabilityOccurrencesSummary--;
  return o;
}

void checkVulnerabilityOccurrencesSummary(
    api.VulnerabilityOccurrencesSummary o) {
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    checkUnnamed7616(o.counts!);
  }
  buildCounterVulnerabilityOccurrencesSummary--;
}

core.List<api.KnowledgeBase> buildUnnamed7617() {
  var o = <api.KnowledgeBase>[];
  o.add(buildKnowledgeBase());
  o.add(buildKnowledgeBase());
  return o;
}

void checkUnnamed7617(core.List<api.KnowledgeBase> o) {
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
    o.fixingKbs = buildUnnamed7617();
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
    checkUnnamed7617(o.fixingKbs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsDetail--;
}

void main() {
  unittest.group('obj-schema-AliasContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAliasContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AliasContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAliasContext(od as api.AliasContext);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () async {
      var o = buildArtifact();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Artifact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArtifact(od as api.Artifact);
    });
  });

  unittest.group('obj-schema-ArtifactHashes', () {
    unittest.test('to-json--from-json', () async {
      var o = buildArtifactHashes();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ArtifactHashes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArtifactHashes(od as api.ArtifactHashes);
    });
  });

  unittest.group('obj-schema-ArtifactRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildArtifactRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ArtifactRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArtifactRule(od as api.ArtifactRule);
    });
  });

  unittest.group('obj-schema-Attestation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAttestation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Attestation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestation(od as api.Attestation);
    });
  });

  unittest.group('obj-schema-Authority', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthority();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Authority.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthority(od as api.Authority);
    });
  });

  unittest.group('obj-schema-Basis', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBasis();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Basis.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBasis(od as api.Basis);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateNotesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateNotesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateNotesRequest(od as api.BatchCreateNotesRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateNotesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateNotesResponse(od as api.BatchCreateNotesResponse);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateOccurrencesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateOccurrencesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateOccurrencesRequest(
          od as api.BatchCreateOccurrencesRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateOccurrencesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateOccurrencesResponse(
          od as api.BatchCreateOccurrencesResponse);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBinding();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-Build', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBuild();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Build.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuild(od as api.Build);
    });
  });

  unittest.group('obj-schema-BuildProvenance', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBuildProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BuildProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildProvenance(od as api.BuildProvenance);
    });
  });

  unittest.group('obj-schema-BuildSignature', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBuildSignature();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BuildSignature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildSignature(od as api.BuildSignature);
    });
  });

  unittest.group('obj-schema-ByProducts', () {
    unittest.test('to-json--from-json', () async {
      var o = buildByProducts();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ByProducts.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkByProducts(od as api.ByProducts);
    });
  });

  unittest.group('obj-schema-CVSSv3', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCVSSv3();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CVSSv3.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCVSSv3(od as api.CVSSv3);
    });
  });

  unittest.group('obj-schema-CloudRepoSourceContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCloudRepoSourceContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CloudRepoSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRepoSourceContext(od as api.CloudRepoSourceContext);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommand();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Command.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCommand(od as api.Command);
    });
  });

  unittest.group('obj-schema-Deployable', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeployable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Deployable.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeployable(od as api.Deployable);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeployment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Deployment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeployment(od as api.Deployment);
    });
  });

  unittest.group('obj-schema-Derived', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDerived();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Derived.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDerived(od as api.Derived);
    });
  });

  unittest.group('obj-schema-Detail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Detail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDetail(od as api.Detail);
    });
  });

  unittest.group('obj-schema-Details', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Details.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDetails(od as api.Details);
    });
  });

  unittest.group('obj-schema-Discovered', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDiscovered();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Discovered.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDiscovered(od as api.Discovered);
    });
  });

  unittest.group('obj-schema-Discovery', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDiscovery();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Discovery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDiscovery(od as api.Discovery);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDistribution();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Distribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDistribution(od as api.Distribution);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnvironment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od as api.Environment);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExpr();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-FileHashes', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFileHashes();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.FileHashes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileHashes(od as api.FileHashes);
    });
  });

  unittest.group('obj-schema-Fingerprint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFingerprint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Fingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFingerprint(od as api.Fingerprint);
    });
  });

  unittest.group('obj-schema-FixableTotalByDigest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFixableTotalByDigest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FixableTotalByDigest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFixableTotalByDigest(od as api.FixableTotalByDigest);
    });
  });

  unittest.group('obj-schema-GenericSignedAttestation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGenericSignedAttestation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GenericSignedAttestation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenericSignedAttestation(od as api.GenericSignedAttestation);
    });
  });

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGerritSourceContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GerritSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGerritSourceContext(od as api.GerritSourceContext);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od as api.GetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGetPolicyOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od as api.GetPolicyOptions);
    });
  });

  unittest.group('obj-schema-GitSourceContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGitSourceContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GitSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitSourceContext(od as api.GitSourceContext);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata(
          od as api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1BuildDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1BuildDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1BuildDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1BuildDetails(od as api.GrafeasV1beta1BuildDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1DeploymentDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1DeploymentDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1DeploymentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1DeploymentDetails(
          od as api.GrafeasV1beta1DeploymentDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1DiscoveryDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1DiscoveryDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1DiscoveryDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1DiscoveryDetails(
          od as api.GrafeasV1beta1DiscoveryDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1ImageDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1ImageDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1ImageDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1ImageDetails(od as api.GrafeasV1beta1ImageDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoArtifact', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1IntotoArtifact();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1IntotoArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1IntotoArtifact(od as api.GrafeasV1beta1IntotoArtifact);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1IntotoDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1IntotoDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1IntotoDetails(od as api.GrafeasV1beta1IntotoDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1IntotoSignature', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1IntotoSignature();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1IntotoSignature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1IntotoSignature(
          od as api.GrafeasV1beta1IntotoSignature);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1PackageDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1PackageDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1PackageDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1PackageDetails(od as api.GrafeasV1beta1PackageDetails);
    });
  });

  unittest.group('obj-schema-GrafeasV1beta1VulnerabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGrafeasV1beta1VulnerabilityDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GrafeasV1beta1VulnerabilityDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1beta1VulnerabilityDetails(
          od as api.GrafeasV1beta1VulnerabilityDetails);
    });
  });

  unittest.group('obj-schema-Hash', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHash();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Hash.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHash(od as api.Hash);
    });
  });

  unittest.group('obj-schema-Hint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Hint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHint(od as api.Hint);
    });
  });

  unittest.group('obj-schema-InToto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInToto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.InToto.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInToto(od as api.InToto);
    });
  });

  unittest.group('obj-schema-Installation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstallation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Installation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallation(od as api.Installation);
    });
  });

  unittest.group('obj-schema-KnowledgeBase', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKnowledgeBase();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KnowledgeBase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKnowledgeBase(od as api.KnowledgeBase);
    });
  });

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLayer();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Layer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLayer(od as api.Layer);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLink();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od as api.Link);
    });
  });

  unittest.group('obj-schema-ListNoteOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListNoteOccurrencesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListNoteOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNoteOccurrencesResponse(od as api.ListNoteOccurrencesResponse);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListNotesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotesResponse(od as api.ListNotesResponse);
    });
  });

  unittest.group('obj-schema-ListOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOccurrencesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOccurrencesResponse(od as api.ListOccurrencesResponse);
    });
  });

  unittest.group('obj-schema-ListScanConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListScanConfigsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListScanConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScanConfigsResponse(od as api.ListScanConfigsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNote();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od as api.Note);
    });
  });

  unittest.group('obj-schema-Occurrence', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOccurrence();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Occurrence.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOccurrence(od as api.Occurrence);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPackage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Package.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPackage(od as api.Package);
    });
  });

  unittest.group('obj-schema-PackageIssue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPackageIssue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PackageIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageIssue(od as api.PackageIssue);
    });
  });

  unittest.group('obj-schema-PgpSignedAttestation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPgpSignedAttestation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PgpSignedAttestation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPgpSignedAttestation(od as api.PgpSignedAttestation);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-ProjectRepoId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProjectRepoId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProjectRepoId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectRepoId(od as api.ProjectRepoId);
    });
  });

  unittest.group('obj-schema-RelatedUrl', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRelatedUrl();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.RelatedUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelatedUrl(od as api.RelatedUrl);
    });
  });

  unittest.group('obj-schema-RepoId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRepoId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.RepoId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepoId(od as api.RepoId);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Resource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResource(od as api.Resource);
    });
  });

  unittest.group('obj-schema-ScanConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildScanConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ScanConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScanConfig(od as api.ScanConfig);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSignature();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Signature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignature(od as api.Signature);
    });
  });

  unittest.group('obj-schema-SigningKey', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSigningKey();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.SigningKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSigningKey(od as api.SigningKey);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSourceContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od as api.SourceContext);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVersion();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Version.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVersion(od as api.Version);
    });
  });

  unittest.group('obj-schema-Vulnerability', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVulnerability();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Vulnerability.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerability(od as api.Vulnerability);
    });
  });

  unittest.group('obj-schema-VulnerabilityLocation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVulnerabilityLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VulnerabilityLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityLocation(od as api.VulnerabilityLocation);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrencesSummary', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVulnerabilityOccurrencesSummary();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VulnerabilityOccurrencesSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityOccurrencesSummary(
          od as api.VulnerabilityOccurrencesSummary);
    });
  });

  unittest.group('obj-schema-WindowsDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWindowsDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WindowsDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsDetail(od as api.WindowsDetail);
    });
  });

  unittest.group('resource-ProjectsNotesResource', () {
    unittest.test('method--batchCreate', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchCreateNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateNotesResponse(response as api.BatchCreateNotesResponse);
    });

    unittest.test('method--create', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["noteId"]!.first,
          unittest.equals(arg_noteId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          noteId: arg_noteId, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getIamPolicy', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNotesResponse());
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--setIamPolicy', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNoteOccurrencesResponse());
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchCreateOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateOccurrencesResponse(
          response as api.BatchCreateOccurrencesResponse);
    });

    unittest.test('method--create', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--delete', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--getIamPolicy', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getNotes', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getNotes(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getVulnerabilitySummary', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVulnerabilityOccurrencesSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getVulnerabilitySummary(arg_parent,
          filter: arg_filter, $fields: arg_$fields);
      checkVulnerabilityOccurrencesSummary(
          response as api.VulnerabilityOccurrencesSummary);
    });

    unittest.test('method--list', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOccurrencesResponse());
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--setIamPolicy', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsScanConfigsResource', () {
    unittest.test('method--get', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkScanConfig(response as api.ScanConfig);
    });

    unittest.test('method--list', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListScanConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListScanConfigsResponse(response as api.ListScanConfigsResponse);
    });

    unittest.test('method--update', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkScanConfig(response as api.ScanConfig);
    });
  });
}
