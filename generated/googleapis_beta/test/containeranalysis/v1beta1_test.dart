library googleapis_beta.containeranalysis.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/containeranalysis/v1beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAliasContext = 0;
buildAliasContext() {
  var o = new api.AliasContext();
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterAliasContext--;
  return o;
}

checkAliasContext(api.AliasContext o) {
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAliasContext--;
}

buildUnnamed4454() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4454(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArtifact = 0;
buildArtifact() {
  var o = new api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.checksum = "foo";
    o.id = "foo";
    o.names = buildUnnamed4454();
  }
  buildCounterArtifact--;
  return o;
}

checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(o.checksum, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4454(o.names);
  }
  buildCounterArtifact--;
}

core.int buildCounterAttestation = 0;
buildAttestation() {
  var o = new api.Attestation();
  buildCounterAttestation++;
  if (buildCounterAttestation < 3) {
    o.pgpSignedAttestation = buildPgpSignedAttestation();
  }
  buildCounterAttestation--;
  return o;
}

checkAttestation(api.Attestation o) {
  buildCounterAttestation++;
  if (buildCounterAttestation < 3) {
    checkPgpSignedAttestation(o.pgpSignedAttestation);
  }
  buildCounterAttestation--;
}

buildUnnamed4455() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed4455(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed4455();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed4455(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed4456() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4456(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4456();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4456(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthority = 0;
buildAuthority() {
  var o = new api.Authority();
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    o.hint = buildHint();
  }
  buildCounterAuthority--;
  return o;
}

checkAuthority(api.Authority o) {
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    checkHint(o.hint);
  }
  buildCounterAuthority--;
}

core.int buildCounterBasis = 0;
buildBasis() {
  var o = new api.Basis();
  buildCounterBasis++;
  if (buildCounterBasis < 3) {
    o.fingerprint = buildFingerprint();
    o.resourceUrl = "foo";
  }
  buildCounterBasis--;
  return o;
}

checkBasis(api.Basis o) {
  buildCounterBasis++;
  if (buildCounterBasis < 3) {
    checkFingerprint(o.fingerprint);
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
  }
  buildCounterBasis--;
}

buildUnnamed4457() {
  var o = new core.Map<core.String, api.Note>();
  o["x"] = buildNote();
  o["y"] = buildNote();
  return o;
}

checkUnnamed4457(core.Map<core.String, api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o["x"]);
  checkNote(o["y"]);
}

core.int buildCounterBatchCreateNotesRequest = 0;
buildBatchCreateNotesRequest() {
  var o = new api.BatchCreateNotesRequest();
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    o.notes = buildUnnamed4457();
  }
  buildCounterBatchCreateNotesRequest--;
  return o;
}

checkBatchCreateNotesRequest(api.BatchCreateNotesRequest o) {
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    checkUnnamed4457(o.notes);
  }
  buildCounterBatchCreateNotesRequest--;
}

buildUnnamed4458() {
  var o = new core.List<api.Note>();
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

checkUnnamed4458(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterBatchCreateNotesResponse = 0;
buildBatchCreateNotesResponse() {
  var o = new api.BatchCreateNotesResponse();
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    o.notes = buildUnnamed4458();
  }
  buildCounterBatchCreateNotesResponse--;
  return o;
}

checkBatchCreateNotesResponse(api.BatchCreateNotesResponse o) {
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    checkUnnamed4458(o.notes);
  }
  buildCounterBatchCreateNotesResponse--;
}

buildUnnamed4459() {
  var o = new core.List<api.Occurrence>();
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

checkUnnamed4459(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesRequest = 0;
buildBatchCreateOccurrencesRequest() {
  var o = new api.BatchCreateOccurrencesRequest();
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    o.occurrences = buildUnnamed4459();
  }
  buildCounterBatchCreateOccurrencesRequest--;
  return o;
}

checkBatchCreateOccurrencesRequest(api.BatchCreateOccurrencesRequest o) {
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    checkUnnamed4459(o.occurrences);
  }
  buildCounterBatchCreateOccurrencesRequest--;
}

buildUnnamed4460() {
  var o = new core.List<api.Occurrence>();
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

checkUnnamed4460(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesResponse = 0;
buildBatchCreateOccurrencesResponse() {
  var o = new api.BatchCreateOccurrencesResponse();
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    o.occurrences = buildUnnamed4460();
  }
  buildCounterBatchCreateOccurrencesResponse--;
  return o;
}

checkBatchCreateOccurrencesResponse(api.BatchCreateOccurrencesResponse o) {
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    checkUnnamed4460(o.occurrences);
  }
  buildCounterBatchCreateOccurrencesResponse--;
}

buildUnnamed4461() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4461(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed4461();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed4461(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBuild = 0;
buildBuild() {
  var o = new api.Build();
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    o.builderVersion = "foo";
    o.signature = buildBuildSignature();
  }
  buildCounterBuild--;
  return o;
}

checkBuild(api.Build o) {
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    unittest.expect(o.builderVersion, unittest.equals('foo'));
    checkBuildSignature(o.signature);
  }
  buildCounterBuild--;
}

buildUnnamed4462() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4462(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4463() {
  var o = new core.List<api.Artifact>();
  o.add(buildArtifact());
  o.add(buildArtifact());
  return o;
}

checkUnnamed4463(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

buildUnnamed4464() {
  var o = new core.List<api.Command>();
  o.add(buildCommand());
  o.add(buildCommand());
  return o;
}

checkUnnamed4464(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterBuildProvenance = 0;
buildBuildProvenance() {
  var o = new api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed4462();
    o.builderVersion = "foo";
    o.builtArtifacts = buildUnnamed4463();
    o.commands = buildUnnamed4464();
    o.createTime = "foo";
    o.creator = "foo";
    o.endTime = "foo";
    o.id = "foo";
    o.logsUri = "foo";
    o.projectId = "foo";
    o.sourceProvenance = buildSource();
    o.startTime = "foo";
    o.triggerId = "foo";
  }
  buildCounterBuildProvenance--;
  return o;
}

checkBuildProvenance(api.BuildProvenance o) {
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    checkUnnamed4462(o.buildOptions);
    unittest.expect(o.builderVersion, unittest.equals('foo'));
    checkUnnamed4463(o.builtArtifacts);
    checkUnnamed4464(o.commands);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.creator, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.logsUri, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkSource(o.sourceProvenance);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterBuildProvenance--;
}

core.int buildCounterBuildSignature = 0;
buildBuildSignature() {
  var o = new api.BuildSignature();
  buildCounterBuildSignature++;
  if (buildCounterBuildSignature < 3) {
    o.keyId = "foo";
    o.keyType = "foo";
    o.publicKey = "foo";
    o.signature = "foo";
  }
  buildCounterBuildSignature--;
  return o;
}

checkBuildSignature(api.BuildSignature o) {
  buildCounterBuildSignature++;
  if (buildCounterBuildSignature < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.keyType, unittest.equals('foo'));
    unittest.expect(o.publicKey, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterBuildSignature--;
}

core.int buildCounterCloudRepoSourceContext = 0;
buildCloudRepoSourceContext() {
  var o = new api.CloudRepoSourceContext();
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.repoId = buildRepoId();
    o.revisionId = "foo";
  }
  buildCounterCloudRepoSourceContext--;
  return o;
}

checkCloudRepoSourceContext(api.CloudRepoSourceContext o) {
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    checkAliasContext(o.aliasContext);
    checkRepoId(o.repoId);
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterCloudRepoSourceContext--;
}

buildUnnamed4465() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4466() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4466(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4467() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4467(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
buildCommand() {
  var o = new api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed4465();
    o.dir = "foo";
    o.env = buildUnnamed4466();
    o.id = "foo";
    o.name = "foo";
    o.waitFor = buildUnnamed4467();
  }
  buildCounterCommand--;
  return o;
}

checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed4465(o.args);
    unittest.expect(o.dir, unittest.equals('foo'));
    checkUnnamed4466(o.env);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4467(o.waitFor);
  }
  buildCounterCommand--;
}

buildUnnamed4468() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4468(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployable = 0;
buildDeployable() {
  var o = new api.Deployable();
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    o.resourceUri = buildUnnamed4468();
  }
  buildCounterDeployable--;
  return o;
}

checkDeployable(api.Deployable o) {
  buildCounterDeployable++;
  if (buildCounterDeployable < 3) {
    checkUnnamed4468(o.resourceUri);
  }
  buildCounterDeployable--;
}

buildUnnamed4469() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4469(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.address = "foo";
    o.config = "foo";
    o.deployTime = "foo";
    o.platform = "foo";
    o.resourceUri = buildUnnamed4469();
    o.undeployTime = "foo";
    o.userEmail = "foo";
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.config, unittest.equals('foo'));
    unittest.expect(o.deployTime, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
    checkUnnamed4469(o.resourceUri);
    unittest.expect(o.undeployTime, unittest.equals('foo'));
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

buildUnnamed4470() {
  var o = new core.List<api.Layer>();
  o.add(buildLayer());
  o.add(buildLayer());
  return o;
}

checkUnnamed4470(core.List<api.Layer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayer(o[0]);
  checkLayer(o[1]);
}

core.int buildCounterDerived = 0;
buildDerived() {
  var o = new api.Derived();
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    o.baseResourceUrl = "foo";
    o.distance = 42;
    o.fingerprint = buildFingerprint();
    o.layerInfo = buildUnnamed4470();
  }
  buildCounterDerived--;
  return o;
}

checkDerived(api.Derived o) {
  buildCounterDerived++;
  if (buildCounterDerived < 3) {
    unittest.expect(o.baseResourceUrl, unittest.equals('foo'));
    unittest.expect(o.distance, unittest.equals(42));
    checkFingerprint(o.fingerprint);
    checkUnnamed4470(o.layerInfo);
  }
  buildCounterDerived--;
}

core.int buildCounterDetail = 0;
buildDetail() {
  var o = new api.Detail();
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    o.cpeUri = "foo";
    o.description = "foo";
    o.fixedLocation = buildVulnerabilityLocation();
    o.isObsolete = true;
    o.maxAffectedVersion = buildVersion();
    o.minAffectedVersion = buildVersion();
    o.package = "foo";
    o.packageType = "foo";
    o.severityName = "foo";
  }
  buildCounterDetail--;
  return o;
}

checkDetail(api.Detail o) {
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkVulnerabilityLocation(o.fixedLocation);
    unittest.expect(o.isObsolete, unittest.isTrue);
    checkVersion(o.maxAffectedVersion);
    checkVersion(o.minAffectedVersion);
    unittest.expect(o.package, unittest.equals('foo'));
    unittest.expect(o.packageType, unittest.equals('foo'));
    unittest.expect(o.severityName, unittest.equals('foo'));
  }
  buildCounterDetail--;
}

core.int buildCounterDetails = 0;
buildDetails() {
  var o = new api.Details();
  buildCounterDetails++;
  if (buildCounterDetails < 3) {
    o.attestation = buildAttestation();
  }
  buildCounterDetails--;
  return o;
}

checkDetails(api.Details o) {
  buildCounterDetails++;
  if (buildCounterDetails < 3) {
    checkAttestation(o.attestation);
  }
  buildCounterDetails--;
}

core.int buildCounterDiscovered = 0;
buildDiscovered() {
  var o = new api.Discovered();
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    o.analysisStatus = "foo";
    o.analysisStatusError = buildStatus();
    o.continuousAnalysis = "foo";
    o.lastAnalysisTime = "foo";
  }
  buildCounterDiscovered--;
  return o;
}

checkDiscovered(api.Discovered o) {
  buildCounterDiscovered++;
  if (buildCounterDiscovered < 3) {
    unittest.expect(o.analysisStatus, unittest.equals('foo'));
    checkStatus(o.analysisStatusError);
    unittest.expect(o.continuousAnalysis, unittest.equals('foo'));
    unittest.expect(o.lastAnalysisTime, unittest.equals('foo'));
  }
  buildCounterDiscovered--;
}

core.int buildCounterDiscovery = 0;
buildDiscovery() {
  var o = new api.Discovery();
  buildCounterDiscovery++;
  if (buildCounterDiscovery < 3) {
    o.analysisKind = "foo";
  }
  buildCounterDiscovery--;
  return o;
}

checkDiscovery(api.Discovery o) {
  buildCounterDiscovery++;
  if (buildCounterDiscovery < 3) {
    unittest.expect(o.analysisKind, unittest.equals('foo'));
  }
  buildCounterDiscovery--;
}

core.int buildCounterDistribution = 0;
buildDistribution() {
  var o = new api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.architecture = "foo";
    o.cpeUri = "foo";
    o.description = "foo";
    o.latestVersion = buildVersion();
    o.maintainer = "foo";
    o.url = "foo";
  }
  buildCounterDistribution--;
  return o;
}

checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkVersion(o.latestVersion);
    unittest.expect(o.maintainer, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterDistribution--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed4471() {
  var o = new core.List<api.Hash>();
  o.add(buildHash());
  o.add(buildHash());
  return o;
}

checkUnnamed4471(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
buildFileHashes() {
  var o = new api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed4471();
  }
  buildCounterFileHashes--;
  return o;
}

checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed4471(o.fileHash);
  }
  buildCounterFileHashes--;
}

buildUnnamed4472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFingerprint = 0;
buildFingerprint() {
  var o = new api.Fingerprint();
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    o.v1Name = "foo";
    o.v2Blob = buildUnnamed4472();
    o.v2Name = "foo";
  }
  buildCounterFingerprint--;
  return o;
}

checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(o.v1Name, unittest.equals('foo'));
    checkUnnamed4472(o.v2Blob);
    unittest.expect(o.v2Name, unittest.equals('foo'));
  }
  buildCounterFingerprint--;
}

core.int buildCounterFixableTotalByDigest = 0;
buildFixableTotalByDigest() {
  var o = new api.FixableTotalByDigest();
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    o.fixableCount = "foo";
    o.resource = buildResource();
    o.severity = "foo";
    o.totalCount = "foo";
  }
  buildCounterFixableTotalByDigest--;
  return o;
}

checkFixableTotalByDigest(api.FixableTotalByDigest o) {
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    unittest.expect(o.fixableCount, unittest.equals('foo'));
    checkResource(o.resource);
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.totalCount, unittest.equals('foo'));
  }
  buildCounterFixableTotalByDigest--;
}

core.int buildCounterGerritSourceContext = 0;
buildGerritSourceContext() {
  var o = new api.GerritSourceContext();
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.gerritProject = "foo";
    o.hostUri = "foo";
    o.revisionId = "foo";
  }
  buildCounterGerritSourceContext--;
  return o;
}

checkGerritSourceContext(api.GerritSourceContext o) {
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    checkAliasContext(o.aliasContext);
    unittest.expect(o.gerritProject, unittest.equals('foo'));
    unittest.expect(o.hostUri, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterGerritSourceContext--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGitSourceContext = 0;
buildGitSourceContext() {
  var o = new api.GitSourceContext();
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    o.revisionId = "foo";
    o.url = "foo";
  }
  buildCounterGitSourceContext--;
  return o;
}

checkGitSourceContext(api.GitSourceContext o) {
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    unittest.expect(o.revisionId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGitSourceContext--;
}

core.int buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata =
    0;
buildGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata() {
  var o = new api.GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata++;
  if (buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata <
      3) {
    o.createTime = "foo";
    o.endTime = "foo";
  }
  buildCounterGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata--;
  return o;
}

checkGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata(
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
buildGrafeasV1beta1BuildDetails() {
  var o = new api.GrafeasV1beta1BuildDetails();
  buildCounterGrafeasV1beta1BuildDetails++;
  if (buildCounterGrafeasV1beta1BuildDetails < 3) {
    o.provenance = buildBuildProvenance();
    o.provenanceBytes = "foo";
  }
  buildCounterGrafeasV1beta1BuildDetails--;
  return o;
}

checkGrafeasV1beta1BuildDetails(api.GrafeasV1beta1BuildDetails o) {
  buildCounterGrafeasV1beta1BuildDetails++;
  if (buildCounterGrafeasV1beta1BuildDetails < 3) {
    checkBuildProvenance(o.provenance);
    unittest.expect(o.provenanceBytes, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1BuildDetails--;
}

core.int buildCounterGrafeasV1beta1DeploymentDetails = 0;
buildGrafeasV1beta1DeploymentDetails() {
  var o = new api.GrafeasV1beta1DeploymentDetails();
  buildCounterGrafeasV1beta1DeploymentDetails++;
  if (buildCounterGrafeasV1beta1DeploymentDetails < 3) {
    o.deployment = buildDeployment();
  }
  buildCounterGrafeasV1beta1DeploymentDetails--;
  return o;
}

checkGrafeasV1beta1DeploymentDetails(api.GrafeasV1beta1DeploymentDetails o) {
  buildCounterGrafeasV1beta1DeploymentDetails++;
  if (buildCounterGrafeasV1beta1DeploymentDetails < 3) {
    checkDeployment(o.deployment);
  }
  buildCounterGrafeasV1beta1DeploymentDetails--;
}

core.int buildCounterGrafeasV1beta1DiscoveryDetails = 0;
buildGrafeasV1beta1DiscoveryDetails() {
  var o = new api.GrafeasV1beta1DiscoveryDetails();
  buildCounterGrafeasV1beta1DiscoveryDetails++;
  if (buildCounterGrafeasV1beta1DiscoveryDetails < 3) {
    o.discovered = buildDiscovered();
  }
  buildCounterGrafeasV1beta1DiscoveryDetails--;
  return o;
}

checkGrafeasV1beta1DiscoveryDetails(api.GrafeasV1beta1DiscoveryDetails o) {
  buildCounterGrafeasV1beta1DiscoveryDetails++;
  if (buildCounterGrafeasV1beta1DiscoveryDetails < 3) {
    checkDiscovered(o.discovered);
  }
  buildCounterGrafeasV1beta1DiscoveryDetails--;
}

core.int buildCounterGrafeasV1beta1ImageDetails = 0;
buildGrafeasV1beta1ImageDetails() {
  var o = new api.GrafeasV1beta1ImageDetails();
  buildCounterGrafeasV1beta1ImageDetails++;
  if (buildCounterGrafeasV1beta1ImageDetails < 3) {
    o.derivedImage = buildDerived();
  }
  buildCounterGrafeasV1beta1ImageDetails--;
  return o;
}

checkGrafeasV1beta1ImageDetails(api.GrafeasV1beta1ImageDetails o) {
  buildCounterGrafeasV1beta1ImageDetails++;
  if (buildCounterGrafeasV1beta1ImageDetails < 3) {
    checkDerived(o.derivedImage);
  }
  buildCounterGrafeasV1beta1ImageDetails--;
}

core.int buildCounterGrafeasV1beta1PackageDetails = 0;
buildGrafeasV1beta1PackageDetails() {
  var o = new api.GrafeasV1beta1PackageDetails();
  buildCounterGrafeasV1beta1PackageDetails++;
  if (buildCounterGrafeasV1beta1PackageDetails < 3) {
    o.installation = buildInstallation();
  }
  buildCounterGrafeasV1beta1PackageDetails--;
  return o;
}

checkGrafeasV1beta1PackageDetails(api.GrafeasV1beta1PackageDetails o) {
  buildCounterGrafeasV1beta1PackageDetails++;
  if (buildCounterGrafeasV1beta1PackageDetails < 3) {
    checkInstallation(o.installation);
  }
  buildCounterGrafeasV1beta1PackageDetails--;
}

buildUnnamed4473() {
  var o = new core.List<api.PackageIssue>();
  o.add(buildPackageIssue());
  o.add(buildPackageIssue());
  return o;
}

checkUnnamed4473(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

buildUnnamed4474() {
  var o = new core.List<api.RelatedUrl>();
  o.add(buildRelatedUrl());
  o.add(buildRelatedUrl());
  return o;
}

checkUnnamed4474(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterGrafeasV1beta1VulnerabilityDetails = 0;
buildGrafeasV1beta1VulnerabilityDetails() {
  var o = new api.GrafeasV1beta1VulnerabilityDetails();
  buildCounterGrafeasV1beta1VulnerabilityDetails++;
  if (buildCounterGrafeasV1beta1VulnerabilityDetails < 3) {
    o.cvssScore = 42.0;
    o.longDescription = "foo";
    o.packageIssue = buildUnnamed4473();
    o.relatedUrls = buildUnnamed4474();
    o.severity = "foo";
    o.shortDescription = "foo";
    o.type = "foo";
  }
  buildCounterGrafeasV1beta1VulnerabilityDetails--;
  return o;
}

checkGrafeasV1beta1VulnerabilityDetails(
    api.GrafeasV1beta1VulnerabilityDetails o) {
  buildCounterGrafeasV1beta1VulnerabilityDetails++;
  if (buildCounterGrafeasV1beta1VulnerabilityDetails < 3) {
    unittest.expect(o.cvssScore, unittest.equals(42.0));
    unittest.expect(o.longDescription, unittest.equals('foo'));
    checkUnnamed4473(o.packageIssue);
    checkUnnamed4474(o.relatedUrls);
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.shortDescription, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGrafeasV1beta1VulnerabilityDetails--;
}

core.int buildCounterHash = 0;
buildHash() {
  var o = new api.Hash();
  buildCounterHash++;
  if (buildCounterHash < 3) {
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterHash--;
  return o;
}

checkHash(api.Hash o) {
  buildCounterHash++;
  if (buildCounterHash < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterHash--;
}

core.int buildCounterHint = 0;
buildHint() {
  var o = new api.Hint();
  buildCounterHint++;
  if (buildCounterHint < 3) {
    o.humanReadableName = "foo";
  }
  buildCounterHint--;
  return o;
}

checkHint(api.Hint o) {
  buildCounterHint++;
  if (buildCounterHint < 3) {
    unittest.expect(o.humanReadableName, unittest.equals('foo'));
  }
  buildCounterHint--;
}

buildUnnamed4475() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed4475(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterInstallation = 0;
buildInstallation() {
  var o = new api.Installation();
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    o.location = buildUnnamed4475();
    o.name = "foo";
  }
  buildCounterInstallation--;
  return o;
}

checkInstallation(api.Installation o) {
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    checkUnnamed4475(o.location);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInstallation--;
}

core.int buildCounterKnowledgeBase = 0;
buildKnowledgeBase() {
  var o = new api.KnowledgeBase();
  buildCounterKnowledgeBase++;
  if (buildCounterKnowledgeBase < 3) {
    o.name = "foo";
    o.url = "foo";
  }
  buildCounterKnowledgeBase--;
  return o;
}

checkKnowledgeBase(api.KnowledgeBase o) {
  buildCounterKnowledgeBase++;
  if (buildCounterKnowledgeBase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterKnowledgeBase--;
}

core.int buildCounterLayer = 0;
buildLayer() {
  var o = new api.Layer();
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    o.arguments = "foo";
    o.directive = "foo";
  }
  buildCounterLayer--;
  return o;
}

checkLayer(api.Layer o) {
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    unittest.expect(o.arguments, unittest.equals('foo'));
    unittest.expect(o.directive, unittest.equals('foo'));
  }
  buildCounterLayer--;
}

buildUnnamed4476() {
  var o = new core.List<api.Occurrence>();
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

checkUnnamed4476(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListNoteOccurrencesResponse = 0;
buildListNoteOccurrencesResponse() {
  var o = new api.ListNoteOccurrencesResponse();
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    o.nextPageToken = "foo";
    o.occurrences = buildUnnamed4476();
  }
  buildCounterListNoteOccurrencesResponse--;
  return o;
}

checkListNoteOccurrencesResponse(api.ListNoteOccurrencesResponse o) {
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4476(o.occurrences);
  }
  buildCounterListNoteOccurrencesResponse--;
}

buildUnnamed4477() {
  var o = new core.List<api.Note>();
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

checkUnnamed4477(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterListNotesResponse = 0;
buildListNotesResponse() {
  var o = new api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = "foo";
    o.notes = buildUnnamed4477();
  }
  buildCounterListNotesResponse--;
  return o;
}

checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4477(o.notes);
  }
  buildCounterListNotesResponse--;
}

buildUnnamed4478() {
  var o = new core.List<api.Occurrence>();
  o.add(buildOccurrence());
  o.add(buildOccurrence());
  return o;
}

checkUnnamed4478(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListOccurrencesResponse = 0;
buildListOccurrencesResponse() {
  var o = new api.ListOccurrencesResponse();
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    o.nextPageToken = "foo";
    o.occurrences = buildUnnamed4478();
  }
  buildCounterListOccurrencesResponse--;
  return o;
}

checkListOccurrencesResponse(api.ListOccurrencesResponse o) {
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4478(o.occurrences);
  }
  buildCounterListOccurrencesResponse--;
}

buildUnnamed4479() {
  var o = new core.List<api.ScanConfig>();
  o.add(buildScanConfig());
  o.add(buildScanConfig());
  return o;
}

checkUnnamed4479(core.List<api.ScanConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanConfig(o[0]);
  checkScanConfig(o[1]);
}

core.int buildCounterListScanConfigsResponse = 0;
buildListScanConfigsResponse() {
  var o = new api.ListScanConfigsResponse();
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    o.nextPageToken = "foo";
    o.scanConfigs = buildUnnamed4479();
  }
  buildCounterListScanConfigsResponse--;
  return o;
}

checkListScanConfigsResponse(api.ListScanConfigsResponse o) {
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4479(o.scanConfigs);
  }
  buildCounterListScanConfigsResponse--;
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.cpeUri = "foo";
    o.path = "foo";
    o.version = buildVersion();
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    checkVersion(o.version);
  }
  buildCounterLocation--;
}

buildUnnamed4480() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4480(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4481() {
  var o = new core.List<api.RelatedUrl>();
  o.add(buildRelatedUrl());
  o.add(buildRelatedUrl());
  return o;
}

checkUnnamed4481(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterNote = 0;
buildNote() {
  var o = new api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attestationAuthority = buildAuthority();
    o.baseImage = buildBasis();
    o.build = buildBuild();
    o.createTime = "foo";
    o.deployable = buildDeployable();
    o.discovery = buildDiscovery();
    o.expirationTime = "foo";
    o.kind = "foo";
    o.longDescription = "foo";
    o.name = "foo";
    o.package = buildPackage();
    o.relatedNoteNames = buildUnnamed4480();
    o.relatedUrl = buildUnnamed4481();
    o.shortDescription = "foo";
    o.updateTime = "foo";
    o.vulnerability = buildVulnerability();
  }
  buildCounterNote--;
  return o;
}

checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkAuthority(o.attestationAuthority);
    checkBasis(o.baseImage);
    checkBuild(o.build);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkDeployable(o.deployable);
    checkDiscovery(o.discovery);
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.longDescription, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPackage(o.package);
    checkUnnamed4480(o.relatedNoteNames);
    checkUnnamed4481(o.relatedUrl);
    unittest.expect(o.shortDescription, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkVulnerability(o.vulnerability);
  }
  buildCounterNote--;
}

core.int buildCounterOccurrence = 0;
buildOccurrence() {
  var o = new api.Occurrence();
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    o.attestation = buildDetails();
    o.build = buildGrafeasV1beta1BuildDetails();
    o.createTime = "foo";
    o.deployment = buildGrafeasV1beta1DeploymentDetails();
    o.derivedImage = buildGrafeasV1beta1ImageDetails();
    o.discovered = buildGrafeasV1beta1DiscoveryDetails();
    o.installation = buildGrafeasV1beta1PackageDetails();
    o.kind = "foo";
    o.name = "foo";
    o.noteName = "foo";
    o.remediation = "foo";
    o.resource = buildResource();
    o.updateTime = "foo";
    o.vulnerability = buildGrafeasV1beta1VulnerabilityDetails();
  }
  buildCounterOccurrence--;
  return o;
}

checkOccurrence(api.Occurrence o) {
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    checkDetails(o.attestation);
    checkGrafeasV1beta1BuildDetails(o.build);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGrafeasV1beta1DeploymentDetails(o.deployment);
    checkGrafeasV1beta1ImageDetails(o.derivedImage);
    checkGrafeasV1beta1DiscoveryDetails(o.discovered);
    checkGrafeasV1beta1PackageDetails(o.installation);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.noteName, unittest.equals('foo'));
    unittest.expect(o.remediation, unittest.equals('foo'));
    checkResource(o.resource);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkGrafeasV1beta1VulnerabilityDetails(o.vulnerability);
  }
  buildCounterOccurrence--;
}

buildUnnamed4482() {
  var o = new core.List<api.Distribution>();
  o.add(buildDistribution());
  o.add(buildDistribution());
  return o;
}

checkUnnamed4482(core.List<api.Distribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistribution(o[0]);
  checkDistribution(o[1]);
}

core.int buildCounterPackage = 0;
buildPackage() {
  var o = new api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.distribution = buildUnnamed4482();
    o.name = "foo";
  }
  buildCounterPackage--;
  return o;
}

checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    checkUnnamed4482(o.distribution);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPackage--;
}

core.int buildCounterPackageIssue = 0;
buildPackageIssue() {
  var o = new api.PackageIssue();
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    o.affectedLocation = buildVulnerabilityLocation();
    o.fixedLocation = buildVulnerabilityLocation();
    o.severityName = "foo";
  }
  buildCounterPackageIssue--;
  return o;
}

checkPackageIssue(api.PackageIssue o) {
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    checkVulnerabilityLocation(o.affectedLocation);
    checkVulnerabilityLocation(o.fixedLocation);
    unittest.expect(o.severityName, unittest.equals('foo'));
  }
  buildCounterPackageIssue--;
}

core.int buildCounterPgpSignedAttestation = 0;
buildPgpSignedAttestation() {
  var o = new api.PgpSignedAttestation();
  buildCounterPgpSignedAttestation++;
  if (buildCounterPgpSignedAttestation < 3) {
    o.contentType = "foo";
    o.pgpKeyId = "foo";
    o.signature = "foo";
  }
  buildCounterPgpSignedAttestation--;
  return o;
}

checkPgpSignedAttestation(api.PgpSignedAttestation o) {
  buildCounterPgpSignedAttestation++;
  if (buildCounterPgpSignedAttestation < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.pgpKeyId, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterPgpSignedAttestation--;
}

buildUnnamed4483() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed4483(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed4484() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed4484(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed4483();
    o.bindings = buildUnnamed4484();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4483(o.auditConfigs);
    checkUnnamed4484(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProjectRepoId = 0;
buildProjectRepoId() {
  var o = new api.ProjectRepoId();
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    o.projectId = "foo";
    o.repoName = "foo";
  }
  buildCounterProjectRepoId--;
  return o;
}

checkProjectRepoId(api.ProjectRepoId o) {
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.repoName, unittest.equals('foo'));
  }
  buildCounterProjectRepoId--;
}

core.int buildCounterRelatedUrl = 0;
buildRelatedUrl() {
  var o = new api.RelatedUrl();
  buildCounterRelatedUrl++;
  if (buildCounterRelatedUrl < 3) {
    o.label = "foo";
    o.url = "foo";
  }
  buildCounterRelatedUrl--;
  return o;
}

checkRelatedUrl(api.RelatedUrl o) {
  buildCounterRelatedUrl++;
  if (buildCounterRelatedUrl < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterRelatedUrl--;
}

core.int buildCounterRepoId = 0;
buildRepoId() {
  var o = new api.RepoId();
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    o.projectRepoId = buildProjectRepoId();
    o.uid = "foo";
  }
  buildCounterRepoId--;
  return o;
}

checkRepoId(api.RepoId o) {
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    checkProjectRepoId(o.projectRepoId);
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterRepoId--;
}

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.contentHash = buildHash();
    o.name = "foo";
    o.uri = "foo";
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkHash(o.contentHash);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterScanConfig = 0;
buildScanConfig() {
  var o = new api.ScanConfig();
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.enabled = true;
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterScanConfig--;
  return o;
}

checkScanConfig(api.ScanConfig o) {
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
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed4485() {
  var o = new core.List<api.SourceContext>();
  o.add(buildSourceContext());
  o.add(buildSourceContext());
  return o;
}

checkUnnamed4485(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

buildUnnamed4486() {
  var o = new core.Map<core.String, api.FileHashes>();
  o["x"] = buildFileHashes();
  o["y"] = buildFileHashes();
  return o;
}

checkUnnamed4486(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o["x"]);
  checkFileHashes(o["y"]);
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed4485();
    o.artifactStorageSourceUri = "foo";
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed4486();
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed4485(o.additionalContexts);
    unittest.expect(o.artifactStorageSourceUri, unittest.equals('foo'));
    checkSourceContext(o.context);
    checkUnnamed4486(o.fileHashes);
  }
  buildCounterSource--;
}

buildUnnamed4487() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4487(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSourceContext = 0;
buildSourceContext() {
  var o = new api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
    o.labels = buildUnnamed4487();
  }
  buildCounterSourceContext--;
  return o;
}

checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo);
    checkGerritSourceContext(o.gerrit);
    checkGitSourceContext(o.git);
    checkUnnamed4487(o.labels);
  }
  buildCounterSourceContext--;
}

buildUnnamed4488() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4488(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed4489() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4488());
  o.add(buildUnnamed4488());
  return o;
}

checkUnnamed4489(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4488(o[0]);
  checkUnnamed4488(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4489();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4489(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed4490() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4490(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed4490();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed4490(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed4491() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4491(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed4491();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed4491(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVersion = 0;
buildVersion() {
  var o = new api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.epoch = 42;
    o.kind = "foo";
    o.name = "foo";
    o.revision = "foo";
  }
  buildCounterVersion--;
  return o;
}

checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(o.epoch, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals('foo'));
  }
  buildCounterVersion--;
}

buildUnnamed4492() {
  var o = new core.List<api.Detail>();
  o.add(buildDetail());
  o.add(buildDetail());
  return o;
}

checkUnnamed4492(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0]);
  checkDetail(o[1]);
}

buildUnnamed4493() {
  var o = new core.List<api.WindowsDetail>();
  o.add(buildWindowsDetail());
  o.add(buildWindowsDetail());
  return o;
}

checkUnnamed4493(core.List<api.WindowsDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsDetail(o[0]);
  checkWindowsDetail(o[1]);
}

core.int buildCounterVulnerability = 0;
buildVulnerability() {
  var o = new api.Vulnerability();
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    o.cvssScore = 42.0;
    o.details = buildUnnamed4492();
    o.severity = "foo";
    o.windowsDetails = buildUnnamed4493();
  }
  buildCounterVulnerability--;
  return o;
}

checkVulnerability(api.Vulnerability o) {
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    unittest.expect(o.cvssScore, unittest.equals(42.0));
    checkUnnamed4492(o.details);
    unittest.expect(o.severity, unittest.equals('foo'));
    checkUnnamed4493(o.windowsDetails);
  }
  buildCounterVulnerability--;
}

core.int buildCounterVulnerabilityLocation = 0;
buildVulnerabilityLocation() {
  var o = new api.VulnerabilityLocation();
  buildCounterVulnerabilityLocation++;
  if (buildCounterVulnerabilityLocation < 3) {
    o.cpeUri = "foo";
    o.package = "foo";
    o.version = buildVersion();
  }
  buildCounterVulnerabilityLocation--;
  return o;
}

checkVulnerabilityLocation(api.VulnerabilityLocation o) {
  buildCounterVulnerabilityLocation++;
  if (buildCounterVulnerabilityLocation < 3) {
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.package, unittest.equals('foo'));
    checkVersion(o.version);
  }
  buildCounterVulnerabilityLocation--;
}

buildUnnamed4494() {
  var o = new core.List<api.FixableTotalByDigest>();
  o.add(buildFixableTotalByDigest());
  o.add(buildFixableTotalByDigest());
  return o;
}

checkUnnamed4494(core.List<api.FixableTotalByDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixableTotalByDigest(o[0]);
  checkFixableTotalByDigest(o[1]);
}

core.int buildCounterVulnerabilityOccurrencesSummary = 0;
buildVulnerabilityOccurrencesSummary() {
  var o = new api.VulnerabilityOccurrencesSummary();
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    o.counts = buildUnnamed4494();
  }
  buildCounterVulnerabilityOccurrencesSummary--;
  return o;
}

checkVulnerabilityOccurrencesSummary(api.VulnerabilityOccurrencesSummary o) {
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    checkUnnamed4494(o.counts);
  }
  buildCounterVulnerabilityOccurrencesSummary--;
}

buildUnnamed4495() {
  var o = new core.List<api.KnowledgeBase>();
  o.add(buildKnowledgeBase());
  o.add(buildKnowledgeBase());
  return o;
}

checkUnnamed4495(core.List<api.KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKnowledgeBase(o[0]);
  checkKnowledgeBase(o[1]);
}

core.int buildCounterWindowsDetail = 0;
buildWindowsDetail() {
  var o = new api.WindowsDetail();
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    o.cpeUri = "foo";
    o.description = "foo";
    o.fixingKbs = buildUnnamed4495();
    o.name = "foo";
  }
  buildCounterWindowsDetail--;
  return o;
}

checkWindowsDetail(api.WindowsDetail o) {
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    unittest.expect(o.cpeUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed4495(o.fixingKbs);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterWindowsDetail--;
}

main() {
  unittest.group("obj-schema-AliasContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildAliasContext();
      var od = new api.AliasContext.fromJson(o.toJson());
      checkAliasContext(od);
    });
  });

  unittest.group("obj-schema-Artifact", () {
    unittest.test("to-json--from-json", () {
      var o = buildArtifact();
      var od = new api.Artifact.fromJson(o.toJson());
      checkArtifact(od);
    });
  });

  unittest.group("obj-schema-Attestation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttestation();
      var od = new api.Attestation.fromJson(o.toJson());
      checkAttestation(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-Authority", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthority();
      var od = new api.Authority.fromJson(o.toJson());
      checkAuthority(od);
    });
  });

  unittest.group("obj-schema-Basis", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasis();
      var od = new api.Basis.fromJson(o.toJson());
      checkBasis(od);
    });
  });

  unittest.group("obj-schema-BatchCreateNotesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateNotesRequest();
      var od = new api.BatchCreateNotesRequest.fromJson(o.toJson());
      checkBatchCreateNotesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchCreateNotesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateNotesResponse();
      var od = new api.BatchCreateNotesResponse.fromJson(o.toJson());
      checkBatchCreateNotesResponse(od);
    });
  });

  unittest.group("obj-schema-BatchCreateOccurrencesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateOccurrencesRequest();
      var od = new api.BatchCreateOccurrencesRequest.fromJson(o.toJson());
      checkBatchCreateOccurrencesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchCreateOccurrencesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateOccurrencesResponse();
      var od = new api.BatchCreateOccurrencesResponse.fromJson(o.toJson());
      checkBatchCreateOccurrencesResponse(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Build", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuild();
      var od = new api.Build.fromJson(o.toJson());
      checkBuild(od);
    });
  });

  unittest.group("obj-schema-BuildProvenance", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildProvenance();
      var od = new api.BuildProvenance.fromJson(o.toJson());
      checkBuildProvenance(od);
    });
  });

  unittest.group("obj-schema-BuildSignature", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildSignature();
      var od = new api.BuildSignature.fromJson(o.toJson());
      checkBuildSignature(od);
    });
  });

  unittest.group("obj-schema-CloudRepoSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudRepoSourceContext();
      var od = new api.CloudRepoSourceContext.fromJson(o.toJson());
      checkCloudRepoSourceContext(od);
    });
  });

  unittest.group("obj-schema-Command", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommand();
      var od = new api.Command.fromJson(o.toJson());
      checkCommand(od);
    });
  });

  unittest.group("obj-schema-Deployable", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployable();
      var od = new api.Deployable.fromJson(o.toJson());
      checkDeployable(od);
    });
  });

  unittest.group("obj-schema-Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployment();
      var od = new api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });

  unittest.group("obj-schema-Derived", () {
    unittest.test("to-json--from-json", () {
      var o = buildDerived();
      var od = new api.Derived.fromJson(o.toJson());
      checkDerived(od);
    });
  });

  unittest.group("obj-schema-Detail", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetail();
      var od = new api.Detail.fromJson(o.toJson());
      checkDetail(od);
    });
  });

  unittest.group("obj-schema-Details", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetails();
      var od = new api.Details.fromJson(o.toJson());
      checkDetails(od);
    });
  });

  unittest.group("obj-schema-Discovered", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiscovered();
      var od = new api.Discovered.fromJson(o.toJson());
      checkDiscovered(od);
    });
  });

  unittest.group("obj-schema-Discovery", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiscovery();
      var od = new api.Discovery.fromJson(o.toJson());
      checkDiscovery(od);
    });
  });

  unittest.group("obj-schema-Distribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildDistribution();
      var od = new api.Distribution.fromJson(o.toJson());
      checkDistribution(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-FileHashes", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileHashes();
      var od = new api.FileHashes.fromJson(o.toJson());
      checkFileHashes(od);
    });
  });

  unittest.group("obj-schema-Fingerprint", () {
    unittest.test("to-json--from-json", () {
      var o = buildFingerprint();
      var od = new api.Fingerprint.fromJson(o.toJson());
      checkFingerprint(od);
    });
  });

  unittest.group("obj-schema-FixableTotalByDigest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFixableTotalByDigest();
      var od = new api.FixableTotalByDigest.fromJson(o.toJson());
      checkFixableTotalByDigest(od);
    });
  });

  unittest.group("obj-schema-GerritSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGerritSourceContext();
      var od = new api.GerritSourceContext.fromJson(o.toJson());
      checkGerritSourceContext(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GitSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGitSourceContext();
      var od = new api.GitSourceContext.fromJson(o.toJson());
      checkGitSourceContext(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();
      var od = new api
              .GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GrafeasV1beta1BuildDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGrafeasV1beta1BuildDetails();
      var od = new api.GrafeasV1beta1BuildDetails.fromJson(o.toJson());
      checkGrafeasV1beta1BuildDetails(od);
    });
  });

  unittest.group("obj-schema-GrafeasV1beta1DeploymentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGrafeasV1beta1DeploymentDetails();
      var od = new api.GrafeasV1beta1DeploymentDetails.fromJson(o.toJson());
      checkGrafeasV1beta1DeploymentDetails(od);
    });
  });

  unittest.group("obj-schema-GrafeasV1beta1DiscoveryDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGrafeasV1beta1DiscoveryDetails();
      var od = new api.GrafeasV1beta1DiscoveryDetails.fromJson(o.toJson());
      checkGrafeasV1beta1DiscoveryDetails(od);
    });
  });

  unittest.group("obj-schema-GrafeasV1beta1ImageDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGrafeasV1beta1ImageDetails();
      var od = new api.GrafeasV1beta1ImageDetails.fromJson(o.toJson());
      checkGrafeasV1beta1ImageDetails(od);
    });
  });

  unittest.group("obj-schema-GrafeasV1beta1PackageDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGrafeasV1beta1PackageDetails();
      var od = new api.GrafeasV1beta1PackageDetails.fromJson(o.toJson());
      checkGrafeasV1beta1PackageDetails(od);
    });
  });

  unittest.group("obj-schema-GrafeasV1beta1VulnerabilityDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGrafeasV1beta1VulnerabilityDetails();
      var od = new api.GrafeasV1beta1VulnerabilityDetails.fromJson(o.toJson());
      checkGrafeasV1beta1VulnerabilityDetails(od);
    });
  });

  unittest.group("obj-schema-Hash", () {
    unittest.test("to-json--from-json", () {
      var o = buildHash();
      var od = new api.Hash.fromJson(o.toJson());
      checkHash(od);
    });
  });

  unittest.group("obj-schema-Hint", () {
    unittest.test("to-json--from-json", () {
      var o = buildHint();
      var od = new api.Hint.fromJson(o.toJson());
      checkHint(od);
    });
  });

  unittest.group("obj-schema-Installation", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstallation();
      var od = new api.Installation.fromJson(o.toJson());
      checkInstallation(od);
    });
  });

  unittest.group("obj-schema-KnowledgeBase", () {
    unittest.test("to-json--from-json", () {
      var o = buildKnowledgeBase();
      var od = new api.KnowledgeBase.fromJson(o.toJson());
      checkKnowledgeBase(od);
    });
  });

  unittest.group("obj-schema-Layer", () {
    unittest.test("to-json--from-json", () {
      var o = buildLayer();
      var od = new api.Layer.fromJson(o.toJson());
      checkLayer(od);
    });
  });

  unittest.group("obj-schema-ListNoteOccurrencesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNoteOccurrencesResponse();
      var od = new api.ListNoteOccurrencesResponse.fromJson(o.toJson());
      checkListNoteOccurrencesResponse(od);
    });
  });

  unittest.group("obj-schema-ListNotesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNotesResponse();
      var od = new api.ListNotesResponse.fromJson(o.toJson());
      checkListNotesResponse(od);
    });
  });

  unittest.group("obj-schema-ListOccurrencesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOccurrencesResponse();
      var od = new api.ListOccurrencesResponse.fromJson(o.toJson());
      checkListOccurrencesResponse(od);
    });
  });

  unittest.group("obj-schema-ListScanConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListScanConfigsResponse();
      var od = new api.ListScanConfigsResponse.fromJson(o.toJson());
      checkListScanConfigsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Note", () {
    unittest.test("to-json--from-json", () {
      var o = buildNote();
      var od = new api.Note.fromJson(o.toJson());
      checkNote(od);
    });
  });

  unittest.group("obj-schema-Occurrence", () {
    unittest.test("to-json--from-json", () {
      var o = buildOccurrence();
      var od = new api.Occurrence.fromJson(o.toJson());
      checkOccurrence(od);
    });
  });

  unittest.group("obj-schema-Package", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackage();
      var od = new api.Package.fromJson(o.toJson());
      checkPackage(od);
    });
  });

  unittest.group("obj-schema-PackageIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackageIssue();
      var od = new api.PackageIssue.fromJson(o.toJson());
      checkPackageIssue(od);
    });
  });

  unittest.group("obj-schema-PgpSignedAttestation", () {
    unittest.test("to-json--from-json", () {
      var o = buildPgpSignedAttestation();
      var od = new api.PgpSignedAttestation.fromJson(o.toJson());
      checkPgpSignedAttestation(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-ProjectRepoId", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectRepoId();
      var od = new api.ProjectRepoId.fromJson(o.toJson());
      checkProjectRepoId(od);
    });
  });

  unittest.group("obj-schema-RelatedUrl", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelatedUrl();
      var od = new api.RelatedUrl.fromJson(o.toJson());
      checkRelatedUrl(od);
    });
  });

  unittest.group("obj-schema-RepoId", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepoId();
      var od = new api.RepoId.fromJson(o.toJson());
      checkRepoId(od);
    });
  });

  unittest.group("obj-schema-Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildResource();
      var od = new api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group("obj-schema-ScanConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildScanConfig();
      var od = new api.ScanConfig.fromJson(o.toJson());
      checkScanConfig(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-SourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceContext();
      var od = new api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersion();
      var od = new api.Version.fromJson(o.toJson());
      checkVersion(od);
    });
  });

  unittest.group("obj-schema-Vulnerability", () {
    unittest.test("to-json--from-json", () {
      var o = buildVulnerability();
      var od = new api.Vulnerability.fromJson(o.toJson());
      checkVulnerability(od);
    });
  });

  unittest.group("obj-schema-VulnerabilityLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildVulnerabilityLocation();
      var od = new api.VulnerabilityLocation.fromJson(o.toJson());
      checkVulnerabilityLocation(od);
    });
  });

  unittest.group("obj-schema-VulnerabilityOccurrencesSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildVulnerabilityOccurrencesSummary();
      var od = new api.VulnerabilityOccurrencesSummary.fromJson(o.toJson());
      checkVulnerabilityOccurrencesSummary(od);
    });
  });

  unittest.group("obj-schema-WindowsDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildWindowsDetail();
      var od = new api.WindowsDetail.fromJson(o.toJson());
      checkWindowsDetail(od);
    });
  });

  unittest.group("resource-ProjectsNotesResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_request = buildBatchCreateNotesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchCreateNotesRequest.fromJson(json);
        checkBatchCreateNotesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchCreateNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreateNotesResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_request = buildNote();
      var arg_parent = "foo";
      var arg_noteId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Note.fromJson(json);
        checkNote(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["noteId"].first, unittest.equals(arg_noteId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNote());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              noteId: arg_noteId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNote());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNotesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_request = buildNote();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Note.fromJson(json);
        checkNote(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNote());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsNotesOccurrencesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsNotesOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.notes.occurrences;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListNoteOccurrencesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNoteOccurrencesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOccurrencesResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_request = buildBatchCreateOccurrencesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchCreateOccurrencesRequest.fromJson(json);
        checkBatchCreateOccurrencesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchCreateOccurrencesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreateOccurrencesResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_request = buildOccurrence();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Occurrence.fromJson(json);
        checkOccurrence(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOccurrence());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOccurrence(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOccurrence());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOccurrence(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--getNotes", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNote());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getNotes(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response);
      })));
    });

    unittest.test("method--getVulnerabilitySummary", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVulnerabilityOccurrencesSummary());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getVulnerabilitySummary(arg_parent,
              filter: arg_filter, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVulnerabilityOccurrencesSummary(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOccurrencesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOccurrencesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_request = buildOccurrence();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Occurrence.fromJson(json);
        checkOccurrence(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOccurrence());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOccurrence(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsOccurrencesResourceApi res =
          new api.ContaineranalysisApi(mock).projects.occurrences;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsScanConfigsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          new api.ContaineranalysisApi(mock).projects.scanConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildScanConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          new api.ContaineranalysisApi(mock).projects.scanConfigs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListScanConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListScanConfigsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          new api.ContaineranalysisApi(mock).projects.scanConfigs;
      var arg_request = buildScanConfig();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ScanConfig.fromJson(json);
        checkScanConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildScanConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response);
      })));
    });
  });
}
