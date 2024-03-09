// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/cloudbuild/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterApprovalConfig = 0;
api.ApprovalConfig buildApprovalConfig() {
  final o = api.ApprovalConfig();
  buildCounterApprovalConfig++;
  if (buildCounterApprovalConfig < 3) {
    o.approvalRequired = true;
  }
  buildCounterApprovalConfig--;
  return o;
}

void checkApprovalConfig(api.ApprovalConfig o) {
  buildCounterApprovalConfig++;
  if (buildCounterApprovalConfig < 3) {
    unittest.expect(o.approvalRequired!, unittest.isTrue);
  }
  buildCounterApprovalConfig--;
}

core.int buildCounterApprovalResult = 0;
api.ApprovalResult buildApprovalResult() {
  final o = api.ApprovalResult();
  buildCounterApprovalResult++;
  if (buildCounterApprovalResult < 3) {
    o.approvalTime = 'foo';
    o.approverAccount = 'foo';
    o.comment = 'foo';
    o.decision = 'foo';
    o.url = 'foo';
  }
  buildCounterApprovalResult--;
  return o;
}

void checkApprovalResult(api.ApprovalResult o) {
  buildCounterApprovalResult++;
  if (buildCounterApprovalResult < 3) {
    unittest.expect(
      o.approvalTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.approverAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.decision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterApprovalResult--;
}

core.int buildCounterApproveBuildRequest = 0;
api.ApproveBuildRequest buildApproveBuildRequest() {
  final o = api.ApproveBuildRequest();
  buildCounterApproveBuildRequest++;
  if (buildCounterApproveBuildRequest < 3) {
    o.approvalResult = buildApprovalResult();
  }
  buildCounterApproveBuildRequest--;
  return o;
}

void checkApproveBuildRequest(api.ApproveBuildRequest o) {
  buildCounterApproveBuildRequest++;
  if (buildCounterApproveBuildRequest < 3) {
    checkApprovalResult(o.approvalResult!);
  }
  buildCounterApproveBuildRequest--;
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

core.int buildCounterArtifactObjects = 0;
api.ArtifactObjects buildArtifactObjects() {
  final o = api.ArtifactObjects();
  buildCounterArtifactObjects++;
  if (buildCounterArtifactObjects < 3) {
    o.location = 'foo';
    o.paths = buildUnnamed0();
    o.timing = buildTimeSpan();
  }
  buildCounterArtifactObjects--;
  return o;
}

void checkArtifactObjects(api.ArtifactObjects o) {
  buildCounterArtifactObjects++;
  if (buildCounterArtifactObjects < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.paths!);
    checkTimeSpan(o.timing!);
  }
  buildCounterArtifactObjects--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.List<api.MavenArtifact> buildUnnamed2() => [
      buildMavenArtifact(),
      buildMavenArtifact(),
    ];

void checkUnnamed2(core.List<api.MavenArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMavenArtifact(o[0]);
  checkMavenArtifact(o[1]);
}

core.List<api.NpmPackage> buildUnnamed3() => [
      buildNpmPackage(),
      buildNpmPackage(),
    ];

void checkUnnamed3(core.List<api.NpmPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNpmPackage(o[0]);
  checkNpmPackage(o[1]);
}

core.List<api.PythonPackage> buildUnnamed4() => [
      buildPythonPackage(),
      buildPythonPackage(),
    ];

void checkUnnamed4(core.List<api.PythonPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPythonPackage(o[0]);
  checkPythonPackage(o[1]);
}

core.int buildCounterArtifacts = 0;
api.Artifacts buildArtifacts() {
  final o = api.Artifacts();
  buildCounterArtifacts++;
  if (buildCounterArtifacts < 3) {
    o.images = buildUnnamed1();
    o.mavenArtifacts = buildUnnamed2();
    o.npmPackages = buildUnnamed3();
    o.objects = buildArtifactObjects();
    o.pythonPackages = buildUnnamed4();
  }
  buildCounterArtifacts--;
  return o;
}

void checkArtifacts(api.Artifacts o) {
  buildCounterArtifacts++;
  if (buildCounterArtifacts < 3) {
    checkUnnamed1(o.images!);
    checkUnnamed2(o.mavenArtifacts!);
    checkUnnamed3(o.npmPackages!);
    checkArtifactObjects(o.objects!);
    checkUnnamed4(o.pythonPackages!);
  }
  buildCounterArtifacts--;
}

core.List<api.CreateBitbucketServerConnectedRepositoryRequest>
    buildUnnamed5() => [
          buildCreateBitbucketServerConnectedRepositoryRequest(),
          buildCreateBitbucketServerConnectedRepositoryRequest(),
        ];

void checkUnnamed5(
    core.List<api.CreateBitbucketServerConnectedRepositoryRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateBitbucketServerConnectedRepositoryRequest(o[0]);
  checkCreateBitbucketServerConnectedRepositoryRequest(o[1]);
}

core.int buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest = 0;
api.BatchCreateBitbucketServerConnectedRepositoriesRequest
    buildBatchCreateBitbucketServerConnectedRepositoriesRequest() {
  final o = api.BatchCreateBitbucketServerConnectedRepositoriesRequest();
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest++;
  if (buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest < 3) {
    o.requests = buildUnnamed5();
  }
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest--;
  return o;
}

void checkBatchCreateBitbucketServerConnectedRepositoriesRequest(
    api.BatchCreateBitbucketServerConnectedRepositoriesRequest o) {
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest++;
  if (buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest < 3) {
    checkUnnamed5(o.requests!);
  }
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest--;
}

core.List<api.CreateGitLabConnectedRepositoryRequest> buildUnnamed6() => [
      buildCreateGitLabConnectedRepositoryRequest(),
      buildCreateGitLabConnectedRepositoryRequest(),
    ];

void checkUnnamed6(core.List<api.CreateGitLabConnectedRepositoryRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateGitLabConnectedRepositoryRequest(o[0]);
  checkCreateGitLabConnectedRepositoryRequest(o[1]);
}

core.int buildCounterBatchCreateGitLabConnectedRepositoriesRequest = 0;
api.BatchCreateGitLabConnectedRepositoriesRequest
    buildBatchCreateGitLabConnectedRepositoriesRequest() {
  final o = api.BatchCreateGitLabConnectedRepositoriesRequest();
  buildCounterBatchCreateGitLabConnectedRepositoriesRequest++;
  if (buildCounterBatchCreateGitLabConnectedRepositoriesRequest < 3) {
    o.requests = buildUnnamed6();
  }
  buildCounterBatchCreateGitLabConnectedRepositoriesRequest--;
  return o;
}

void checkBatchCreateGitLabConnectedRepositoriesRequest(
    api.BatchCreateGitLabConnectedRepositoriesRequest o) {
  buildCounterBatchCreateGitLabConnectedRepositoriesRequest++;
  if (buildCounterBatchCreateGitLabConnectedRepositoriesRequest < 3) {
    checkUnnamed6(o.requests!);
  }
  buildCounterBatchCreateGitLabConnectedRepositoriesRequest--;
}

core.List<api.BitbucketServerRepositoryId> buildUnnamed7() => [
      buildBitbucketServerRepositoryId(),
      buildBitbucketServerRepositoryId(),
    ];

void checkUnnamed7(core.List<api.BitbucketServerRepositoryId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBitbucketServerRepositoryId(o[0]);
  checkBitbucketServerRepositoryId(o[1]);
}

core.int buildCounterBitbucketServerConfig = 0;
api.BitbucketServerConfig buildBitbucketServerConfig() {
  final o = api.BitbucketServerConfig();
  buildCounterBitbucketServerConfig++;
  if (buildCounterBitbucketServerConfig < 3) {
    o.apiKey = 'foo';
    o.connectedRepositories = buildUnnamed7();
    o.createTime = 'foo';
    o.hostUri = 'foo';
    o.name = 'foo';
    o.peeredNetwork = 'foo';
    o.peeredNetworkIpRange = 'foo';
    o.secrets = buildBitbucketServerSecrets();
    o.sslCa = 'foo';
    o.username = 'foo';
    o.webhookKey = 'foo';
  }
  buildCounterBitbucketServerConfig--;
  return o;
}

void checkBitbucketServerConfig(api.BitbucketServerConfig o) {
  buildCounterBitbucketServerConfig++;
  if (buildCounterBitbucketServerConfig < 3) {
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.connectedRepositories!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeredNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeredNetworkIpRange!,
      unittest.equals('foo'),
    );
    checkBitbucketServerSecrets(o.secrets!);
    unittest.expect(
      o.sslCa!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterBitbucketServerConfig--;
}

core.int buildCounterBitbucketServerConnectedRepository = 0;
api.BitbucketServerConnectedRepository
    buildBitbucketServerConnectedRepository() {
  final o = api.BitbucketServerConnectedRepository();
  buildCounterBitbucketServerConnectedRepository++;
  if (buildCounterBitbucketServerConnectedRepository < 3) {
    o.parent = 'foo';
    o.repo = buildBitbucketServerRepositoryId();
    o.status = buildStatus();
  }
  buildCounterBitbucketServerConnectedRepository--;
  return o;
}

void checkBitbucketServerConnectedRepository(
    api.BitbucketServerConnectedRepository o) {
  buildCounterBitbucketServerConnectedRepository++;
  if (buildCounterBitbucketServerConnectedRepository < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkBitbucketServerRepositoryId(o.repo!);
    checkStatus(o.status!);
  }
  buildCounterBitbucketServerConnectedRepository--;
}

core.int buildCounterBitbucketServerRepository = 0;
api.BitbucketServerRepository buildBitbucketServerRepository() {
  final o = api.BitbucketServerRepository();
  buildCounterBitbucketServerRepository++;
  if (buildCounterBitbucketServerRepository < 3) {
    o.browseUri = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.repoId = buildBitbucketServerRepositoryId();
  }
  buildCounterBitbucketServerRepository--;
  return o;
}

void checkBitbucketServerRepository(api.BitbucketServerRepository o) {
  buildCounterBitbucketServerRepository++;
  if (buildCounterBitbucketServerRepository < 3) {
    unittest.expect(
      o.browseUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkBitbucketServerRepositoryId(o.repoId!);
  }
  buildCounterBitbucketServerRepository--;
}

core.int buildCounterBitbucketServerRepositoryId = 0;
api.BitbucketServerRepositoryId buildBitbucketServerRepositoryId() {
  final o = api.BitbucketServerRepositoryId();
  buildCounterBitbucketServerRepositoryId++;
  if (buildCounterBitbucketServerRepositoryId < 3) {
    o.projectKey = 'foo';
    o.repoSlug = 'foo';
    o.webhookId = 42;
  }
  buildCounterBitbucketServerRepositoryId--;
  return o;
}

void checkBitbucketServerRepositoryId(api.BitbucketServerRepositoryId o) {
  buildCounterBitbucketServerRepositoryId++;
  if (buildCounterBitbucketServerRepositoryId < 3) {
    unittest.expect(
      o.projectKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoSlug!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookId!,
      unittest.equals(42),
    );
  }
  buildCounterBitbucketServerRepositoryId--;
}

core.int buildCounterBitbucketServerSecrets = 0;
api.BitbucketServerSecrets buildBitbucketServerSecrets() {
  final o = api.BitbucketServerSecrets();
  buildCounterBitbucketServerSecrets++;
  if (buildCounterBitbucketServerSecrets < 3) {
    o.adminAccessTokenVersionName = 'foo';
    o.readAccessTokenVersionName = 'foo';
    o.webhookSecretVersionName = 'foo';
  }
  buildCounterBitbucketServerSecrets--;
  return o;
}

void checkBitbucketServerSecrets(api.BitbucketServerSecrets o) {
  buildCounterBitbucketServerSecrets++;
  if (buildCounterBitbucketServerSecrets < 3) {
    unittest.expect(
      o.adminAccessTokenVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readAccessTokenVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretVersionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterBitbucketServerSecrets--;
}

core.int buildCounterBitbucketServerTriggerConfig = 0;
api.BitbucketServerTriggerConfig buildBitbucketServerTriggerConfig() {
  final o = api.BitbucketServerTriggerConfig();
  buildCounterBitbucketServerTriggerConfig++;
  if (buildCounterBitbucketServerTriggerConfig < 3) {
    o.bitbucketServerConfig = buildBitbucketServerConfig();
    o.bitbucketServerConfigResource = 'foo';
    o.projectKey = 'foo';
    o.pullRequest = buildPullRequestFilter();
    o.push = buildPushFilter();
    o.repoSlug = 'foo';
  }
  buildCounterBitbucketServerTriggerConfig--;
  return o;
}

void checkBitbucketServerTriggerConfig(api.BitbucketServerTriggerConfig o) {
  buildCounterBitbucketServerTriggerConfig++;
  if (buildCounterBitbucketServerTriggerConfig < 3) {
    checkBitbucketServerConfig(o.bitbucketServerConfig!);
    unittest.expect(
      o.bitbucketServerConfigResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectKey!,
      unittest.equals('foo'),
    );
    checkPullRequestFilter(o.pullRequest!);
    checkPushFilter(o.push!);
    unittest.expect(
      o.repoSlug!,
      unittest.equals('foo'),
    );
  }
  buildCounterBitbucketServerTriggerConfig--;
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

core.List<api.Secret> buildUnnamed9() => [
      buildSecret(),
      buildSecret(),
    ];

void checkUnnamed9(core.List<api.Secret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecret(o[0]);
  checkSecret(o[1]);
}

core.List<api.BuildStep> buildUnnamed10() => [
      buildBuildStep(),
      buildBuildStep(),
    ];

void checkUnnamed10(core.List<api.BuildStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildStep(o[0]);
  checkBuildStep(o[1]);
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.Map<core.String, api.TimeSpan> buildUnnamed13() => {
      'x': buildTimeSpan(),
      'y': buildTimeSpan(),
    };

void checkUnnamed13(core.Map<core.String, api.TimeSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSpan(o['x']!);
  checkTimeSpan(o['y']!);
}

core.List<api.Warning> buildUnnamed14() => [
      buildWarning(),
      buildWarning(),
    ];

void checkUnnamed14(core.List<api.Warning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarning(o[0]);
  checkWarning(o[1]);
}

core.int buildCounterBuild = 0;
api.Build buildBuild() {
  final o = api.Build();
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    o.approval = buildBuildApproval();
    o.artifacts = buildArtifacts();
    o.availableSecrets = buildSecrets();
    o.buildTriggerId = 'foo';
    o.createTime = 'foo';
    o.failureInfo = buildFailureInfo();
    o.finishTime = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed8();
    o.logUrl = 'foo';
    o.logsBucket = 'foo';
    o.name = 'foo';
    o.options = buildBuildOptions();
    o.projectId = 'foo';
    o.queueTtl = 'foo';
    o.results = buildResults();
    o.secrets = buildUnnamed9();
    o.serviceAccount = 'foo';
    o.source = buildSource();
    o.sourceProvenance = buildSourceProvenance();
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusDetail = 'foo';
    o.steps = buildUnnamed10();
    o.substitutions = buildUnnamed11();
    o.tags = buildUnnamed12();
    o.timeout = 'foo';
    o.timing = buildUnnamed13();
    o.warnings = buildUnnamed14();
  }
  buildCounterBuild--;
  return o;
}

void checkBuild(api.Build o) {
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    checkBuildApproval(o.approval!);
    checkArtifacts(o.artifacts!);
    checkSecrets(o.availableSecrets!);
    unittest.expect(
      o.buildTriggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkFailureInfo(o.failureInfo!);
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.images!);
    unittest.expect(
      o.logUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logsBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkBuildOptions(o.options!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queueTtl!,
      unittest.equals('foo'),
    );
    checkResults(o.results!);
    checkUnnamed9(o.secrets!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
    checkSourceProvenance(o.sourceProvenance!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusDetail!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.steps!);
    checkUnnamed11(o.substitutions!);
    checkUnnamed12(o.tags!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.timing!);
    checkUnnamed14(o.warnings!);
  }
  buildCounterBuild--;
}

core.int buildCounterBuildApproval = 0;
api.BuildApproval buildBuildApproval() {
  final o = api.BuildApproval();
  buildCounterBuildApproval++;
  if (buildCounterBuildApproval < 3) {
    o.config = buildApprovalConfig();
    o.result = buildApprovalResult();
    o.state = 'foo';
  }
  buildCounterBuildApproval--;
  return o;
}

void checkBuildApproval(api.BuildApproval o) {
  buildCounterBuildApproval++;
  if (buildCounterBuildApproval < 3) {
    checkApprovalConfig(o.config!);
    checkApprovalResult(o.result!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildApproval--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.List<api.Volume> buildUnnamed18() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed18(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterBuildOptions = 0;
api.BuildOptions buildBuildOptions() {
  final o = api.BuildOptions();
  buildCounterBuildOptions++;
  if (buildCounterBuildOptions < 3) {
    o.automapSubstitutions = true;
    o.defaultLogsBucketBehavior = 'foo';
    o.diskSizeGb = 'foo';
    o.dynamicSubstitutions = true;
    o.env = buildUnnamed15();
    o.logStreamingOption = 'foo';
    o.logging = 'foo';
    o.machineType = 'foo';
    o.pool = buildPoolOption();
    o.requestedVerifyOption = 'foo';
    o.secretEnv = buildUnnamed16();
    o.sourceProvenanceHash = buildUnnamed17();
    o.substitutionOption = 'foo';
    o.volumes = buildUnnamed18();
    o.workerPool = 'foo';
  }
  buildCounterBuildOptions--;
  return o;
}

void checkBuildOptions(api.BuildOptions o) {
  buildCounterBuildOptions++;
  if (buildCounterBuildOptions < 3) {
    unittest.expect(o.automapSubstitutions!, unittest.isTrue);
    unittest.expect(
      o.defaultLogsBucketBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dynamicSubstitutions!, unittest.isTrue);
    checkUnnamed15(o.env!);
    unittest.expect(
      o.logStreamingOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logging!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkPoolOption(o.pool!);
    unittest.expect(
      o.requestedVerifyOption!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.secretEnv!);
    checkUnnamed17(o.sourceProvenanceHash!);
    unittest.expect(
      o.substitutionOption!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.volumes!);
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildOptions--;
}

core.List<core.int> buildUnnamed19() => [
      42,
      42,
    ];

void checkUnnamed19(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<api.Volume> buildUnnamed23() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed23(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterBuildStep = 0;
api.BuildStep buildBuildStep() {
  final o = api.BuildStep();
  buildCounterBuildStep++;
  if (buildCounterBuildStep < 3) {
    o.allowExitCodes = buildUnnamed19();
    o.allowFailure = true;
    o.args = buildUnnamed20();
    o.automapSubstitutions = true;
    o.dir = 'foo';
    o.entrypoint = 'foo';
    o.env = buildUnnamed21();
    o.exitCode = 42;
    o.id = 'foo';
    o.name = 'foo';
    o.pullTiming = buildTimeSpan();
    o.script = 'foo';
    o.secretEnv = buildUnnamed22();
    o.status = 'foo';
    o.timeout = 'foo';
    o.timing = buildTimeSpan();
    o.volumes = buildUnnamed23();
    o.waitFor = buildUnnamed24();
  }
  buildCounterBuildStep--;
  return o;
}

void checkBuildStep(api.BuildStep o) {
  buildCounterBuildStep++;
  if (buildCounterBuildStep < 3) {
    checkUnnamed19(o.allowExitCodes!);
    unittest.expect(o.allowFailure!, unittest.isTrue);
    checkUnnamed20(o.args!);
    unittest.expect(o.automapSubstitutions!, unittest.isTrue);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entrypoint!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.env!);
    unittest.expect(
      o.exitCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.pullTiming!);
    unittest.expect(
      o.script!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.secretEnv!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.timing!);
    checkUnnamed23(o.volumes!);
    checkUnnamed24(o.waitFor!);
  }
  buildCounterBuildStep--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterBuildTrigger = 0;
api.BuildTrigger buildBuildTrigger() {
  final o = api.BuildTrigger();
  buildCounterBuildTrigger++;
  if (buildCounterBuildTrigger < 3) {
    o.approvalConfig = buildApprovalConfig();
    o.autodetect = true;
    o.bitbucketServerTriggerConfig = buildBitbucketServerTriggerConfig();
    o.build = buildBuild();
    o.createTime = 'foo';
    o.description = 'foo';
    o.disabled = true;
    o.eventType = 'foo';
    o.filename = 'foo';
    o.filter = 'foo';
    o.gitFileSource = buildGitFileSource();
    o.github = buildGitHubEventsConfig();
    o.gitlabEnterpriseEventsConfig = buildGitLabEventsConfig();
    o.id = 'foo';
    o.ignoredFiles = buildUnnamed25();
    o.includeBuildLogs = 'foo';
    o.includedFiles = buildUnnamed26();
    o.name = 'foo';
    o.pubsubConfig = buildPubsubConfig();
    o.repositoryEventConfig = buildRepositoryEventConfig();
    o.resourceName = 'foo';
    o.serviceAccount = 'foo';
    o.sourceToBuild = buildGitRepoSource();
    o.substitutions = buildUnnamed27();
    o.tags = buildUnnamed28();
    o.triggerTemplate = buildRepoSource();
    o.webhookConfig = buildWebhookConfig();
  }
  buildCounterBuildTrigger--;
  return o;
}

void checkBuildTrigger(api.BuildTrigger o) {
  buildCounterBuildTrigger++;
  if (buildCounterBuildTrigger < 3) {
    checkApprovalConfig(o.approvalConfig!);
    unittest.expect(o.autodetect!, unittest.isTrue);
    checkBitbucketServerTriggerConfig(o.bitbucketServerTriggerConfig!);
    checkBuild(o.build!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkGitFileSource(o.gitFileSource!);
    checkGitHubEventsConfig(o.github!);
    checkGitLabEventsConfig(o.gitlabEnterpriseEventsConfig!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.ignoredFiles!);
    unittest.expect(
      o.includeBuildLogs!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.includedFiles!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPubsubConfig(o.pubsubConfig!);
    checkRepositoryEventConfig(o.repositoryEventConfig!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkGitRepoSource(o.sourceToBuild!);
    checkUnnamed27(o.substitutions!);
    checkUnnamed28(o.tags!);
    checkRepoSource(o.triggerTemplate!);
    checkWebhookConfig(o.webhookConfig!);
  }
  buildCounterBuildTrigger--;
}

core.int buildCounterBuiltImage = 0;
api.BuiltImage buildBuiltImage() {
  final o = api.BuiltImage();
  buildCounterBuiltImage++;
  if (buildCounterBuiltImage < 3) {
    o.digest = 'foo';
    o.name = 'foo';
    o.pushTiming = buildTimeSpan();
  }
  buildCounterBuiltImage--;
  return o;
}

void checkBuiltImage(api.BuiltImage o) {
  buildCounterBuiltImage++;
  if (buildCounterBuiltImage < 3) {
    unittest.expect(
      o.digest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.pushTiming!);
  }
  buildCounterBuiltImage--;
}

core.int buildCounterCancelBuildRequest = 0;
api.CancelBuildRequest buildCancelBuildRequest() {
  final o = api.CancelBuildRequest();
  buildCounterCancelBuildRequest++;
  if (buildCounterCancelBuildRequest < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
  }
  buildCounterCancelBuildRequest--;
  return o;
}

void checkCancelBuildRequest(api.CancelBuildRequest o) {
  buildCounterCancelBuildRequest++;
  if (buildCounterCancelBuildRequest < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCancelBuildRequest--;
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

core.int buildCounterConnectedRepository = 0;
api.ConnectedRepository buildConnectedRepository() {
  final o = api.ConnectedRepository();
  buildCounterConnectedRepository++;
  if (buildCounterConnectedRepository < 3) {
    o.dir = 'foo';
    o.repository = 'foo';
    o.revision = 'foo';
  }
  buildCounterConnectedRepository--;
  return o;
}

void checkConnectedRepository(api.ConnectedRepository o) {
  buildCounterConnectedRepository++;
  if (buildCounterConnectedRepository < 3) {
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectedRepository--;
}

core.int buildCounterCreateBitbucketServerConnectedRepositoryRequest = 0;
api.CreateBitbucketServerConnectedRepositoryRequest
    buildCreateBitbucketServerConnectedRepositoryRequest() {
  final o = api.CreateBitbucketServerConnectedRepositoryRequest();
  buildCounterCreateBitbucketServerConnectedRepositoryRequest++;
  if (buildCounterCreateBitbucketServerConnectedRepositoryRequest < 3) {
    o.bitbucketServerConnectedRepository =
        buildBitbucketServerConnectedRepository();
    o.parent = 'foo';
  }
  buildCounterCreateBitbucketServerConnectedRepositoryRequest--;
  return o;
}

void checkCreateBitbucketServerConnectedRepositoryRequest(
    api.CreateBitbucketServerConnectedRepositoryRequest o) {
  buildCounterCreateBitbucketServerConnectedRepositoryRequest++;
  if (buildCounterCreateBitbucketServerConnectedRepositoryRequest < 3) {
    checkBitbucketServerConnectedRepository(
        o.bitbucketServerConnectedRepository!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateBitbucketServerConnectedRepositoryRequest--;
}

core.int buildCounterCreateGitLabConnectedRepositoryRequest = 0;
api.CreateGitLabConnectedRepositoryRequest
    buildCreateGitLabConnectedRepositoryRequest() {
  final o = api.CreateGitLabConnectedRepositoryRequest();
  buildCounterCreateGitLabConnectedRepositoryRequest++;
  if (buildCounterCreateGitLabConnectedRepositoryRequest < 3) {
    o.gitlabConnectedRepository = buildGitLabConnectedRepository();
    o.parent = 'foo';
  }
  buildCounterCreateGitLabConnectedRepositoryRequest--;
  return o;
}

void checkCreateGitLabConnectedRepositoryRequest(
    api.CreateGitLabConnectedRepositoryRequest o) {
  buildCounterCreateGitLabConnectedRepositoryRequest++;
  if (buildCounterCreateGitLabConnectedRepositoryRequest < 3) {
    checkGitLabConnectedRepository(o.gitlabConnectedRepository!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateGitLabConnectedRepositoryRequest--;
}

core.int buildCounterDefaultServiceAccount = 0;
api.DefaultServiceAccount buildDefaultServiceAccount() {
  final o = api.DefaultServiceAccount();
  buildCounterDefaultServiceAccount++;
  if (buildCounterDefaultServiceAccount < 3) {
    o.name = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterDefaultServiceAccount--;
  return o;
}

void checkDefaultServiceAccount(api.DefaultServiceAccount o) {
  buildCounterDefaultServiceAccount++;
  if (buildCounterDefaultServiceAccount < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterDefaultServiceAccount--;
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

core.int buildCounterFailureInfo = 0;
api.FailureInfo buildFailureInfo() {
  final o = api.FailureInfo();
  buildCounterFailureInfo++;
  if (buildCounterFailureInfo < 3) {
    o.detail = 'foo';
    o.type = 'foo';
  }
  buildCounterFailureInfo--;
  return o;
}

void checkFailureInfo(api.FailureInfo o) {
  buildCounterFailureInfo++;
  if (buildCounterFailureInfo < 3) {
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailureInfo--;
}

core.List<api.Hash> buildUnnamed29() => [
      buildHash(),
      buildHash(),
    ];

void checkUnnamed29(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed29();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed29(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.int buildCounterGitFileSource = 0;
api.GitFileSource buildGitFileSource() {
  final o = api.GitFileSource();
  buildCounterGitFileSource++;
  if (buildCounterGitFileSource < 3) {
    o.bitbucketServerConfig = 'foo';
    o.githubEnterpriseConfig = 'foo';
    o.path = 'foo';
    o.repoType = 'foo';
    o.repository = 'foo';
    o.revision = 'foo';
    o.uri = 'foo';
  }
  buildCounterGitFileSource--;
  return o;
}

void checkGitFileSource(api.GitFileSource o) {
  buildCounterGitFileSource++;
  if (buildCounterGitFileSource < 3) {
    unittest.expect(
      o.bitbucketServerConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.githubEnterpriseConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitFileSource--;
}

core.int buildCounterGitHubEnterpriseConfig = 0;
api.GitHubEnterpriseConfig buildGitHubEnterpriseConfig() {
  final o = api.GitHubEnterpriseConfig();
  buildCounterGitHubEnterpriseConfig++;
  if (buildCounterGitHubEnterpriseConfig < 3) {
    o.appId = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.hostUrl = 'foo';
    o.name = 'foo';
    o.peeredNetwork = 'foo';
    o.secrets = buildGitHubEnterpriseSecrets();
    o.sslCa = 'foo';
    o.webhookKey = 'foo';
  }
  buildCounterGitHubEnterpriseConfig--;
  return o;
}

void checkGitHubEnterpriseConfig(api.GitHubEnterpriseConfig o) {
  buildCounterGitHubEnterpriseConfig++;
  if (buildCounterGitHubEnterpriseConfig < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeredNetwork!,
      unittest.equals('foo'),
    );
    checkGitHubEnterpriseSecrets(o.secrets!);
    unittest.expect(
      o.sslCa!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitHubEnterpriseConfig--;
}

core.int buildCounterGitHubEnterpriseSecrets = 0;
api.GitHubEnterpriseSecrets buildGitHubEnterpriseSecrets() {
  final o = api.GitHubEnterpriseSecrets();
  buildCounterGitHubEnterpriseSecrets++;
  if (buildCounterGitHubEnterpriseSecrets < 3) {
    o.oauthClientIdName = 'foo';
    o.oauthClientIdVersionName = 'foo';
    o.oauthSecretName = 'foo';
    o.oauthSecretVersionName = 'foo';
    o.privateKeyName = 'foo';
    o.privateKeyVersionName = 'foo';
    o.webhookSecretName = 'foo';
    o.webhookSecretVersionName = 'foo';
  }
  buildCounterGitHubEnterpriseSecrets--;
  return o;
}

void checkGitHubEnterpriseSecrets(api.GitHubEnterpriseSecrets o) {
  buildCounterGitHubEnterpriseSecrets++;
  if (buildCounterGitHubEnterpriseSecrets < 3) {
    unittest.expect(
      o.oauthClientIdName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthClientIdVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthSecretName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthSecretVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKeyVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretVersionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitHubEnterpriseSecrets--;
}

core.int buildCounterGitHubEventsConfig = 0;
api.GitHubEventsConfig buildGitHubEventsConfig() {
  final o = api.GitHubEventsConfig();
  buildCounterGitHubEventsConfig++;
  if (buildCounterGitHubEventsConfig < 3) {
    o.enterpriseConfigResourceName = 'foo';
    o.installationId = 'foo';
    o.name = 'foo';
    o.owner = 'foo';
    o.pullRequest = buildPullRequestFilter();
    o.push = buildPushFilter();
  }
  buildCounterGitHubEventsConfig--;
  return o;
}

void checkGitHubEventsConfig(api.GitHubEventsConfig o) {
  buildCounterGitHubEventsConfig++;
  if (buildCounterGitHubEventsConfig < 3) {
    unittest.expect(
      o.enterpriseConfigResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.owner!,
      unittest.equals('foo'),
    );
    checkPullRequestFilter(o.pullRequest!);
    checkPushFilter(o.push!);
  }
  buildCounterGitHubEventsConfig--;
}

core.List<api.GitLabRepositoryId> buildUnnamed30() => [
      buildGitLabRepositoryId(),
      buildGitLabRepositoryId(),
    ];

void checkUnnamed30(core.List<api.GitLabRepositoryId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitLabRepositoryId(o[0]);
  checkGitLabRepositoryId(o[1]);
}

core.int buildCounterGitLabConfig = 0;
api.GitLabConfig buildGitLabConfig() {
  final o = api.GitLabConfig();
  buildCounterGitLabConfig++;
  if (buildCounterGitLabConfig < 3) {
    o.connectedRepositories = buildUnnamed30();
    o.createTime = 'foo';
    o.enterpriseConfig = buildGitLabEnterpriseConfig();
    o.name = 'foo';
    o.secrets = buildGitLabSecrets();
    o.username = 'foo';
    o.webhookKey = 'foo';
  }
  buildCounterGitLabConfig--;
  return o;
}

void checkGitLabConfig(api.GitLabConfig o) {
  buildCounterGitLabConfig++;
  if (buildCounterGitLabConfig < 3) {
    checkUnnamed30(o.connectedRepositories!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGitLabEnterpriseConfig(o.enterpriseConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGitLabSecrets(o.secrets!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitLabConfig--;
}

core.int buildCounterGitLabConnectedRepository = 0;
api.GitLabConnectedRepository buildGitLabConnectedRepository() {
  final o = api.GitLabConnectedRepository();
  buildCounterGitLabConnectedRepository++;
  if (buildCounterGitLabConnectedRepository < 3) {
    o.parent = 'foo';
    o.repo = buildGitLabRepositoryId();
    o.status = buildStatus();
  }
  buildCounterGitLabConnectedRepository--;
  return o;
}

void checkGitLabConnectedRepository(api.GitLabConnectedRepository o) {
  buildCounterGitLabConnectedRepository++;
  if (buildCounterGitLabConnectedRepository < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkGitLabRepositoryId(o.repo!);
    checkStatus(o.status!);
  }
  buildCounterGitLabConnectedRepository--;
}

core.int buildCounterGitLabEnterpriseConfig = 0;
api.GitLabEnterpriseConfig buildGitLabEnterpriseConfig() {
  final o = api.GitLabEnterpriseConfig();
  buildCounterGitLabEnterpriseConfig++;
  if (buildCounterGitLabEnterpriseConfig < 3) {
    o.hostUri = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.sslCa = 'foo';
  }
  buildCounterGitLabEnterpriseConfig--;
  return o;
}

void checkGitLabEnterpriseConfig(api.GitLabEnterpriseConfig o) {
  buildCounterGitLabEnterpriseConfig++;
  if (buildCounterGitLabEnterpriseConfig < 3) {
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCa!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitLabEnterpriseConfig--;
}

core.int buildCounterGitLabEventsConfig = 0;
api.GitLabEventsConfig buildGitLabEventsConfig() {
  final o = api.GitLabEventsConfig();
  buildCounterGitLabEventsConfig++;
  if (buildCounterGitLabEventsConfig < 3) {
    o.gitlabConfig = buildGitLabConfig();
    o.gitlabConfigResource = 'foo';
    o.projectNamespace = 'foo';
    o.pullRequest = buildPullRequestFilter();
    o.push = buildPushFilter();
  }
  buildCounterGitLabEventsConfig--;
  return o;
}

void checkGitLabEventsConfig(api.GitLabEventsConfig o) {
  buildCounterGitLabEventsConfig++;
  if (buildCounterGitLabEventsConfig < 3) {
    checkGitLabConfig(o.gitlabConfig!);
    unittest.expect(
      o.gitlabConfigResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectNamespace!,
      unittest.equals('foo'),
    );
    checkPullRequestFilter(o.pullRequest!);
    checkPushFilter(o.push!);
  }
  buildCounterGitLabEventsConfig--;
}

core.int buildCounterGitLabRepository = 0;
api.GitLabRepository buildGitLabRepository() {
  final o = api.GitLabRepository();
  buildCounterGitLabRepository++;
  if (buildCounterGitLabRepository < 3) {
    o.browseUri = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.repositoryId = buildGitLabRepositoryId();
  }
  buildCounterGitLabRepository--;
  return o;
}

void checkGitLabRepository(api.GitLabRepository o) {
  buildCounterGitLabRepository++;
  if (buildCounterGitLabRepository < 3) {
    unittest.expect(
      o.browseUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGitLabRepositoryId(o.repositoryId!);
  }
  buildCounterGitLabRepository--;
}

core.int buildCounterGitLabRepositoryId = 0;
api.GitLabRepositoryId buildGitLabRepositoryId() {
  final o = api.GitLabRepositoryId();
  buildCounterGitLabRepositoryId++;
  if (buildCounterGitLabRepositoryId < 3) {
    o.id = 'foo';
    o.webhookId = 42;
  }
  buildCounterGitLabRepositoryId--;
  return o;
}

void checkGitLabRepositoryId(api.GitLabRepositoryId o) {
  buildCounterGitLabRepositoryId++;
  if (buildCounterGitLabRepositoryId < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookId!,
      unittest.equals(42),
    );
  }
  buildCounterGitLabRepositoryId--;
}

core.int buildCounterGitLabSecrets = 0;
api.GitLabSecrets buildGitLabSecrets() {
  final o = api.GitLabSecrets();
  buildCounterGitLabSecrets++;
  if (buildCounterGitLabSecrets < 3) {
    o.apiAccessTokenVersion = 'foo';
    o.apiKeyVersion = 'foo';
    o.readAccessTokenVersion = 'foo';
    o.webhookSecretVersion = 'foo';
  }
  buildCounterGitLabSecrets--;
  return o;
}

void checkGitLabSecrets(api.GitLabSecrets o) {
  buildCounterGitLabSecrets++;
  if (buildCounterGitLabSecrets < 3) {
    unittest.expect(
      o.apiAccessTokenVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.apiKeyVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readAccessTokenVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitLabSecrets--;
}

core.int buildCounterGitRepoSource = 0;
api.GitRepoSource buildGitRepoSource() {
  final o = api.GitRepoSource();
  buildCounterGitRepoSource++;
  if (buildCounterGitRepoSource < 3) {
    o.bitbucketServerConfig = 'foo';
    o.githubEnterpriseConfig = 'foo';
    o.ref = 'foo';
    o.repoType = 'foo';
    o.repository = 'foo';
    o.uri = 'foo';
  }
  buildCounterGitRepoSource--;
  return o;
}

void checkGitRepoSource(api.GitRepoSource o) {
  buildCounterGitRepoSource++;
  if (buildCounterGitRepoSource < 3) {
    unittest.expect(
      o.bitbucketServerConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.githubEnterpriseConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ref!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitRepoSource--;
}

core.int buildCounterGitSource = 0;
api.GitSource buildGitSource() {
  final o = api.GitSource();
  buildCounterGitSource++;
  if (buildCounterGitSource < 3) {
    o.dir = 'foo';
    o.revision = 'foo';
    o.url = 'foo';
  }
  buildCounterGitSource--;
  return o;
}

void checkGitSource(api.GitSource o) {
  buildCounterGitSource++;
  if (buildCounterGitSource < 3) {
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitSource--;
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

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed32() => [
      buildUnnamed31(),
      buildUnnamed31(),
    ];

void checkUnnamed32(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed31(o[0]);
  checkUnnamed31(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed32();
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
    checkUnnamed32(o.extensions!);
  }
  buildCounterHttpBody--;
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

core.int buildCounterInlineSecret = 0;
api.InlineSecret buildInlineSecret() {
  final o = api.InlineSecret();
  buildCounterInlineSecret++;
  if (buildCounterInlineSecret < 3) {
    o.envMap = buildUnnamed33();
    o.kmsKeyName = 'foo';
  }
  buildCounterInlineSecret--;
  return o;
}

void checkInlineSecret(api.InlineSecret o) {
  buildCounterInlineSecret++;
  if (buildCounterInlineSecret < 3) {
    checkUnnamed33(o.envMap!);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterInlineSecret--;
}

core.List<api.BitbucketServerConfig> buildUnnamed34() => [
      buildBitbucketServerConfig(),
      buildBitbucketServerConfig(),
    ];

void checkUnnamed34(core.List<api.BitbucketServerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBitbucketServerConfig(o[0]);
  checkBitbucketServerConfig(o[1]);
}

core.int buildCounterListBitbucketServerConfigsResponse = 0;
api.ListBitbucketServerConfigsResponse
    buildListBitbucketServerConfigsResponse() {
  final o = api.ListBitbucketServerConfigsResponse();
  buildCounterListBitbucketServerConfigsResponse++;
  if (buildCounterListBitbucketServerConfigsResponse < 3) {
    o.bitbucketServerConfigs = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterListBitbucketServerConfigsResponse--;
  return o;
}

void checkListBitbucketServerConfigsResponse(
    api.ListBitbucketServerConfigsResponse o) {
  buildCounterListBitbucketServerConfigsResponse++;
  if (buildCounterListBitbucketServerConfigsResponse < 3) {
    checkUnnamed34(o.bitbucketServerConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBitbucketServerConfigsResponse--;
}

core.List<api.BitbucketServerRepository> buildUnnamed35() => [
      buildBitbucketServerRepository(),
      buildBitbucketServerRepository(),
    ];

void checkUnnamed35(core.List<api.BitbucketServerRepository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBitbucketServerRepository(o[0]);
  checkBitbucketServerRepository(o[1]);
}

core.int buildCounterListBitbucketServerRepositoriesResponse = 0;
api.ListBitbucketServerRepositoriesResponse
    buildListBitbucketServerRepositoriesResponse() {
  final o = api.ListBitbucketServerRepositoriesResponse();
  buildCounterListBitbucketServerRepositoriesResponse++;
  if (buildCounterListBitbucketServerRepositoriesResponse < 3) {
    o.bitbucketServerRepositories = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListBitbucketServerRepositoriesResponse--;
  return o;
}

void checkListBitbucketServerRepositoriesResponse(
    api.ListBitbucketServerRepositoriesResponse o) {
  buildCounterListBitbucketServerRepositoriesResponse++;
  if (buildCounterListBitbucketServerRepositoriesResponse < 3) {
    checkUnnamed35(o.bitbucketServerRepositories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBitbucketServerRepositoriesResponse--;
}

core.List<api.BuildTrigger> buildUnnamed36() => [
      buildBuildTrigger(),
      buildBuildTrigger(),
    ];

void checkUnnamed36(core.List<api.BuildTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildTrigger(o[0]);
  checkBuildTrigger(o[1]);
}

core.int buildCounterListBuildTriggersResponse = 0;
api.ListBuildTriggersResponse buildListBuildTriggersResponse() {
  final o = api.ListBuildTriggersResponse();
  buildCounterListBuildTriggersResponse++;
  if (buildCounterListBuildTriggersResponse < 3) {
    o.nextPageToken = 'foo';
    o.triggers = buildUnnamed36();
  }
  buildCounterListBuildTriggersResponse--;
  return o;
}

void checkListBuildTriggersResponse(api.ListBuildTriggersResponse o) {
  buildCounterListBuildTriggersResponse++;
  if (buildCounterListBuildTriggersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.triggers!);
  }
  buildCounterListBuildTriggersResponse--;
}

core.List<api.Build> buildUnnamed37() => [
      buildBuild(),
      buildBuild(),
    ];

void checkUnnamed37(core.List<api.Build> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuild(o[0]);
  checkBuild(o[1]);
}

core.int buildCounterListBuildsResponse = 0;
api.ListBuildsResponse buildListBuildsResponse() {
  final o = api.ListBuildsResponse();
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    o.builds = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterListBuildsResponse--;
  return o;
}

void checkListBuildsResponse(api.ListBuildsResponse o) {
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    checkUnnamed37(o.builds!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBuildsResponse--;
}

core.List<api.GitLabConfig> buildUnnamed38() => [
      buildGitLabConfig(),
      buildGitLabConfig(),
    ];

void checkUnnamed38(core.List<api.GitLabConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitLabConfig(o[0]);
  checkGitLabConfig(o[1]);
}

core.int buildCounterListGitLabConfigsResponse = 0;
api.ListGitLabConfigsResponse buildListGitLabConfigsResponse() {
  final o = api.ListGitLabConfigsResponse();
  buildCounterListGitLabConfigsResponse++;
  if (buildCounterListGitLabConfigsResponse < 3) {
    o.gitlabConfigs = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterListGitLabConfigsResponse--;
  return o;
}

void checkListGitLabConfigsResponse(api.ListGitLabConfigsResponse o) {
  buildCounterListGitLabConfigsResponse++;
  if (buildCounterListGitLabConfigsResponse < 3) {
    checkUnnamed38(o.gitlabConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGitLabConfigsResponse--;
}

core.List<api.GitLabRepository> buildUnnamed39() => [
      buildGitLabRepository(),
      buildGitLabRepository(),
    ];

void checkUnnamed39(core.List<api.GitLabRepository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitLabRepository(o[0]);
  checkGitLabRepository(o[1]);
}

core.int buildCounterListGitLabRepositoriesResponse = 0;
api.ListGitLabRepositoriesResponse buildListGitLabRepositoriesResponse() {
  final o = api.ListGitLabRepositoriesResponse();
  buildCounterListGitLabRepositoriesResponse++;
  if (buildCounterListGitLabRepositoriesResponse < 3) {
    o.gitlabRepositories = buildUnnamed39();
    o.nextPageToken = 'foo';
  }
  buildCounterListGitLabRepositoriesResponse--;
  return o;
}

void checkListGitLabRepositoriesResponse(api.ListGitLabRepositoriesResponse o) {
  buildCounterListGitLabRepositoriesResponse++;
  if (buildCounterListGitLabRepositoriesResponse < 3) {
    checkUnnamed39(o.gitlabRepositories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGitLabRepositoriesResponse--;
}

core.List<api.GitHubEnterpriseConfig> buildUnnamed40() => [
      buildGitHubEnterpriseConfig(),
      buildGitHubEnterpriseConfig(),
    ];

void checkUnnamed40(core.List<api.GitHubEnterpriseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitHubEnterpriseConfig(o[0]);
  checkGitHubEnterpriseConfig(o[1]);
}

core.int buildCounterListGithubEnterpriseConfigsResponse = 0;
api.ListGithubEnterpriseConfigsResponse
    buildListGithubEnterpriseConfigsResponse() {
  final o = api.ListGithubEnterpriseConfigsResponse();
  buildCounterListGithubEnterpriseConfigsResponse++;
  if (buildCounterListGithubEnterpriseConfigsResponse < 3) {
    o.configs = buildUnnamed40();
  }
  buildCounterListGithubEnterpriseConfigsResponse--;
  return o;
}

void checkListGithubEnterpriseConfigsResponse(
    api.ListGithubEnterpriseConfigsResponse o) {
  buildCounterListGithubEnterpriseConfigsResponse++;
  if (buildCounterListGithubEnterpriseConfigsResponse < 3) {
    checkUnnamed40(o.configs!);
  }
  buildCounterListGithubEnterpriseConfigsResponse--;
}

core.List<api.WorkerPool> buildUnnamed41() => [
      buildWorkerPool(),
      buildWorkerPool(),
    ];

void checkUnnamed41(core.List<api.WorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerPool(o[0]);
  checkWorkerPool(o[1]);
}

core.int buildCounterListWorkerPoolsResponse = 0;
api.ListWorkerPoolsResponse buildListWorkerPoolsResponse() {
  final o = api.ListWorkerPoolsResponse();
  buildCounterListWorkerPoolsResponse++;
  if (buildCounterListWorkerPoolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workerPools = buildUnnamed41();
  }
  buildCounterListWorkerPoolsResponse--;
  return o;
}

void checkListWorkerPoolsResponse(api.ListWorkerPoolsResponse o) {
  buildCounterListWorkerPoolsResponse++;
  if (buildCounterListWorkerPoolsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.workerPools!);
  }
  buildCounterListWorkerPoolsResponse--;
}

core.int buildCounterMavenArtifact = 0;
api.MavenArtifact buildMavenArtifact() {
  final o = api.MavenArtifact();
  buildCounterMavenArtifact++;
  if (buildCounterMavenArtifact < 3) {
    o.artifactId = 'foo';
    o.groupId = 'foo';
    o.path = 'foo';
    o.repository = 'foo';
    o.version = 'foo';
  }
  buildCounterMavenArtifact--;
  return o;
}

void checkMavenArtifact(api.MavenArtifact o) {
  buildCounterMavenArtifact++;
  if (buildCounterMavenArtifact < 3) {
    unittest.expect(
      o.artifactId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterMavenArtifact--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.egressOption = 'foo';
    o.peeredNetwork = 'foo';
    o.peeredNetworkIpRange = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(
      o.egressOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeredNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeredNetworkIpRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNpmPackage = 0;
api.NpmPackage buildNpmPackage() {
  final o = api.NpmPackage();
  buildCounterNpmPackage++;
  if (buildCounterNpmPackage < 3) {
    o.packagePath = 'foo';
    o.repository = 'foo';
  }
  buildCounterNpmPackage--;
  return o;
}

void checkNpmPackage(api.NpmPackage o) {
  buildCounterNpmPackage++;
  if (buildCounterNpmPackage < 3) {
    unittest.expect(
      o.packagePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
  }
  buildCounterNpmPackage--;
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed42();
    o.name = 'foo';
    o.response = buildUnnamed43();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed42(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPoolOption = 0;
api.PoolOption buildPoolOption() {
  final o = api.PoolOption();
  buildCounterPoolOption++;
  if (buildCounterPoolOption < 3) {
    o.name = 'foo';
  }
  buildCounterPoolOption--;
  return o;
}

void checkPoolOption(api.PoolOption o) {
  buildCounterPoolOption++;
  if (buildCounterPoolOption < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPoolOption--;
}

core.int buildCounterPrivatePoolV1Config = 0;
api.PrivatePoolV1Config buildPrivatePoolV1Config() {
  final o = api.PrivatePoolV1Config();
  buildCounterPrivatePoolV1Config++;
  if (buildCounterPrivatePoolV1Config < 3) {
    o.networkConfig = buildNetworkConfig();
    o.workerConfig = buildWorkerConfig();
  }
  buildCounterPrivatePoolV1Config--;
  return o;
}

void checkPrivatePoolV1Config(api.PrivatePoolV1Config o) {
  buildCounterPrivatePoolV1Config++;
  if (buildCounterPrivatePoolV1Config < 3) {
    checkNetworkConfig(o.networkConfig!);
    checkWorkerConfig(o.workerConfig!);
  }
  buildCounterPrivatePoolV1Config--;
}

core.int buildCounterPubsubConfig = 0;
api.PubsubConfig buildPubsubConfig() {
  final o = api.PubsubConfig();
  buildCounterPubsubConfig++;
  if (buildCounterPubsubConfig < 3) {
    o.serviceAccountEmail = 'foo';
    o.state = 'foo';
    o.subscription = 'foo';
    o.topic = 'foo';
  }
  buildCounterPubsubConfig--;
  return o;
}

void checkPubsubConfig(api.PubsubConfig o) {
  buildCounterPubsubConfig++;
  if (buildCounterPubsubConfig < 3) {
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubsubConfig--;
}

core.int buildCounterPullRequestFilter = 0;
api.PullRequestFilter buildPullRequestFilter() {
  final o = api.PullRequestFilter();
  buildCounterPullRequestFilter++;
  if (buildCounterPullRequestFilter < 3) {
    o.branch = 'foo';
    o.commentControl = 'foo';
    o.invertRegex = true;
  }
  buildCounterPullRequestFilter--;
  return o;
}

void checkPullRequestFilter(api.PullRequestFilter o) {
  buildCounterPullRequestFilter++;
  if (buildCounterPullRequestFilter < 3) {
    unittest.expect(
      o.branch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commentControl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.invertRegex!, unittest.isTrue);
  }
  buildCounterPullRequestFilter--;
}

core.int buildCounterPushFilter = 0;
api.PushFilter buildPushFilter() {
  final o = api.PushFilter();
  buildCounterPushFilter++;
  if (buildCounterPushFilter < 3) {
    o.branch = 'foo';
    o.invertRegex = true;
    o.tag = 'foo';
  }
  buildCounterPushFilter--;
  return o;
}

void checkPushFilter(api.PushFilter o) {
  buildCounterPushFilter++;
  if (buildCounterPushFilter < 3) {
    unittest.expect(
      o.branch!,
      unittest.equals('foo'),
    );
    unittest.expect(o.invertRegex!, unittest.isTrue);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterPushFilter--;
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.int buildCounterPythonPackage = 0;
api.PythonPackage buildPythonPackage() {
  final o = api.PythonPackage();
  buildCounterPythonPackage++;
  if (buildCounterPythonPackage < 3) {
    o.paths = buildUnnamed44();
    o.repository = 'foo';
  }
  buildCounterPythonPackage--;
  return o;
}

void checkPythonPackage(api.PythonPackage o) {
  buildCounterPythonPackage++;
  if (buildCounterPythonPackage < 3) {
    checkUnnamed44(o.paths!);
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
  }
  buildCounterPythonPackage--;
}

core.int buildCounterReceiveTriggerWebhookResponse = 0;
api.ReceiveTriggerWebhookResponse buildReceiveTriggerWebhookResponse() {
  final o = api.ReceiveTriggerWebhookResponse();
  buildCounterReceiveTriggerWebhookResponse++;
  if (buildCounterReceiveTriggerWebhookResponse < 3) {}
  buildCounterReceiveTriggerWebhookResponse--;
  return o;
}

void checkReceiveTriggerWebhookResponse(api.ReceiveTriggerWebhookResponse o) {
  buildCounterReceiveTriggerWebhookResponse++;
  if (buildCounterReceiveTriggerWebhookResponse < 3) {}
  buildCounterReceiveTriggerWebhookResponse--;
}

core.int buildCounterRemoveBitbucketServerConnectedRepositoryRequest = 0;
api.RemoveBitbucketServerConnectedRepositoryRequest
    buildRemoveBitbucketServerConnectedRepositoryRequest() {
  final o = api.RemoveBitbucketServerConnectedRepositoryRequest();
  buildCounterRemoveBitbucketServerConnectedRepositoryRequest++;
  if (buildCounterRemoveBitbucketServerConnectedRepositoryRequest < 3) {
    o.connectedRepository = buildBitbucketServerRepositoryId();
  }
  buildCounterRemoveBitbucketServerConnectedRepositoryRequest--;
  return o;
}

void checkRemoveBitbucketServerConnectedRepositoryRequest(
    api.RemoveBitbucketServerConnectedRepositoryRequest o) {
  buildCounterRemoveBitbucketServerConnectedRepositoryRequest++;
  if (buildCounterRemoveBitbucketServerConnectedRepositoryRequest < 3) {
    checkBitbucketServerRepositoryId(o.connectedRepository!);
  }
  buildCounterRemoveBitbucketServerConnectedRepositoryRequest--;
}

core.int buildCounterRemoveGitLabConnectedRepositoryRequest = 0;
api.RemoveGitLabConnectedRepositoryRequest
    buildRemoveGitLabConnectedRepositoryRequest() {
  final o = api.RemoveGitLabConnectedRepositoryRequest();
  buildCounterRemoveGitLabConnectedRepositoryRequest++;
  if (buildCounterRemoveGitLabConnectedRepositoryRequest < 3) {
    o.connectedRepository = buildGitLabRepositoryId();
  }
  buildCounterRemoveGitLabConnectedRepositoryRequest--;
  return o;
}

void checkRemoveGitLabConnectedRepositoryRequest(
    api.RemoveGitLabConnectedRepositoryRequest o) {
  buildCounterRemoveGitLabConnectedRepositoryRequest++;
  if (buildCounterRemoveGitLabConnectedRepositoryRequest < 3) {
    checkGitLabRepositoryId(o.connectedRepository!);
  }
  buildCounterRemoveGitLabConnectedRepositoryRequest--;
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

core.int buildCounterRepoSource = 0;
api.RepoSource buildRepoSource() {
  final o = api.RepoSource();
  buildCounterRepoSource++;
  if (buildCounterRepoSource < 3) {
    o.branchName = 'foo';
    o.commitSha = 'foo';
    o.dir = 'foo';
    o.invertRegex = true;
    o.projectId = 'foo';
    o.repoName = 'foo';
    o.substitutions = buildUnnamed45();
    o.tagName = 'foo';
  }
  buildCounterRepoSource--;
  return o;
}

void checkRepoSource(api.RepoSource o) {
  buildCounterRepoSource++;
  if (buildCounterRepoSource < 3) {
    unittest.expect(
      o.branchName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commitSha!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    unittest.expect(o.invertRegex!, unittest.isTrue);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoName!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.substitutions!);
    unittest.expect(
      o.tagName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepoSource--;
}

core.int buildCounterRepositoryEventConfig = 0;
api.RepositoryEventConfig buildRepositoryEventConfig() {
  final o = api.RepositoryEventConfig();
  buildCounterRepositoryEventConfig++;
  if (buildCounterRepositoryEventConfig < 3) {
    o.pullRequest = buildPullRequestFilter();
    o.push = buildPushFilter();
    o.repository = 'foo';
    o.repositoryType = 'foo';
  }
  buildCounterRepositoryEventConfig--;
  return o;
}

void checkRepositoryEventConfig(api.RepositoryEventConfig o) {
  buildCounterRepositoryEventConfig++;
  if (buildCounterRepositoryEventConfig < 3) {
    checkPullRequestFilter(o.pullRequest!);
    checkPushFilter(o.push!);
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repositoryType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepositoryEventConfig--;
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

core.List<api.BuiltImage> buildUnnamed48() => [
      buildBuiltImage(),
      buildBuiltImage(),
    ];

void checkUnnamed48(core.List<api.BuiltImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuiltImage(o[0]);
  checkBuiltImage(o[1]);
}

core.List<api.UploadedMavenArtifact> buildUnnamed49() => [
      buildUploadedMavenArtifact(),
      buildUploadedMavenArtifact(),
    ];

void checkUnnamed49(core.List<api.UploadedMavenArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadedMavenArtifact(o[0]);
  checkUploadedMavenArtifact(o[1]);
}

core.List<api.UploadedNpmPackage> buildUnnamed50() => [
      buildUploadedNpmPackage(),
      buildUploadedNpmPackage(),
    ];

void checkUnnamed50(core.List<api.UploadedNpmPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadedNpmPackage(o[0]);
  checkUploadedNpmPackage(o[1]);
}

core.List<api.UploadedPythonPackage> buildUnnamed51() => [
      buildUploadedPythonPackage(),
      buildUploadedPythonPackage(),
    ];

void checkUnnamed51(core.List<api.UploadedPythonPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadedPythonPackage(o[0]);
  checkUploadedPythonPackage(o[1]);
}

core.int buildCounterResults = 0;
api.Results buildResults() {
  final o = api.Results();
  buildCounterResults++;
  if (buildCounterResults < 3) {
    o.artifactManifest = 'foo';
    o.artifactTiming = buildTimeSpan();
    o.buildStepImages = buildUnnamed46();
    o.buildStepOutputs = buildUnnamed47();
    o.images = buildUnnamed48();
    o.mavenArtifacts = buildUnnamed49();
    o.npmPackages = buildUnnamed50();
    o.numArtifacts = 'foo';
    o.pythonPackages = buildUnnamed51();
  }
  buildCounterResults--;
  return o;
}

void checkResults(api.Results o) {
  buildCounterResults++;
  if (buildCounterResults < 3) {
    unittest.expect(
      o.artifactManifest!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.artifactTiming!);
    checkUnnamed46(o.buildStepImages!);
    checkUnnamed47(o.buildStepOutputs!);
    checkUnnamed48(o.images!);
    checkUnnamed49(o.mavenArtifacts!);
    checkUnnamed50(o.npmPackages!);
    unittest.expect(
      o.numArtifacts!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.pythonPackages!);
  }
  buildCounterResults--;
}

core.int buildCounterRetryBuildRequest = 0;
api.RetryBuildRequest buildRetryBuildRequest() {
  final o = api.RetryBuildRequest();
  buildCounterRetryBuildRequest++;
  if (buildCounterRetryBuildRequest < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
  }
  buildCounterRetryBuildRequest--;
  return o;
}

void checkRetryBuildRequest(api.RetryBuildRequest o) {
  buildCounterRetryBuildRequest++;
  if (buildCounterRetryBuildRequest < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetryBuildRequest--;
}

core.int buildCounterRunBuildTriggerRequest = 0;
api.RunBuildTriggerRequest buildRunBuildTriggerRequest() {
  final o = api.RunBuildTriggerRequest();
  buildCounterRunBuildTriggerRequest++;
  if (buildCounterRunBuildTriggerRequest < 3) {
    o.projectId = 'foo';
    o.source = buildRepoSource();
    o.triggerId = 'foo';
  }
  buildCounterRunBuildTriggerRequest--;
  return o;
}

void checkRunBuildTriggerRequest(api.RunBuildTriggerRequest o) {
  buildCounterRunBuildTriggerRequest++;
  if (buildCounterRunBuildTriggerRequest < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkRepoSource(o.source!);
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunBuildTriggerRequest--;
}

core.Map<core.String, core.String> buildUnnamed52() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed52(core.Map<core.String, core.String> o) {
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

core.int buildCounterSecret = 0;
api.Secret buildSecret() {
  final o = api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.kmsKeyName = 'foo';
    o.secretEnv = buildUnnamed52();
  }
  buildCounterSecret--;
  return o;
}

void checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.secretEnv!);
  }
  buildCounterSecret--;
}

core.int buildCounterSecretManagerSecret = 0;
api.SecretManagerSecret buildSecretManagerSecret() {
  final o = api.SecretManagerSecret();
  buildCounterSecretManagerSecret++;
  if (buildCounterSecretManagerSecret < 3) {
    o.env = 'foo';
    o.versionName = 'foo';
  }
  buildCounterSecretManagerSecret--;
  return o;
}

void checkSecretManagerSecret(api.SecretManagerSecret o) {
  buildCounterSecretManagerSecret++;
  if (buildCounterSecretManagerSecret < 3) {
    unittest.expect(
      o.env!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretManagerSecret--;
}

core.List<api.InlineSecret> buildUnnamed53() => [
      buildInlineSecret(),
      buildInlineSecret(),
    ];

void checkUnnamed53(core.List<api.InlineSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineSecret(o[0]);
  checkInlineSecret(o[1]);
}

core.List<api.SecretManagerSecret> buildUnnamed54() => [
      buildSecretManagerSecret(),
      buildSecretManagerSecret(),
    ];

void checkUnnamed54(core.List<api.SecretManagerSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretManagerSecret(o[0]);
  checkSecretManagerSecret(o[1]);
}

core.int buildCounterSecrets = 0;
api.Secrets buildSecrets() {
  final o = api.Secrets();
  buildCounterSecrets++;
  if (buildCounterSecrets < 3) {
    o.inline = buildUnnamed53();
    o.secretManager = buildUnnamed54();
  }
  buildCounterSecrets--;
  return o;
}

void checkSecrets(api.Secrets o) {
  buildCounterSecrets++;
  if (buildCounterSecrets < 3) {
    checkUnnamed53(o.inline!);
    checkUnnamed54(o.secretManager!);
  }
  buildCounterSecrets--;
}

core.int buildCounterServiceDirectoryConfig = 0;
api.ServiceDirectoryConfig buildServiceDirectoryConfig() {
  final o = api.ServiceDirectoryConfig();
  buildCounterServiceDirectoryConfig++;
  if (buildCounterServiceDirectoryConfig < 3) {
    o.service = 'foo';
  }
  buildCounterServiceDirectoryConfig--;
  return o;
}

void checkServiceDirectoryConfig(api.ServiceDirectoryConfig o) {
  buildCounterServiceDirectoryConfig++;
  if (buildCounterServiceDirectoryConfig < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceDirectoryConfig--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.connectedRepository = buildConnectedRepository();
    o.gitSource = buildGitSource();
    o.repoSource = buildRepoSource();
    o.storageSource = buildStorageSource();
    o.storageSourceManifest = buildStorageSourceManifest();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkConnectedRepository(o.connectedRepository!);
    checkGitSource(o.gitSource!);
    checkRepoSource(o.repoSource!);
    checkStorageSource(o.storageSource!);
    checkStorageSourceManifest(o.storageSourceManifest!);
  }
  buildCounterSource--;
}

core.Map<core.String, api.FileHashes> buildUnnamed55() => {
      'x': buildFileHashes(),
      'y': buildFileHashes(),
    };

void checkUnnamed55(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSourceProvenance = 0;
api.SourceProvenance buildSourceProvenance() {
  final o = api.SourceProvenance();
  buildCounterSourceProvenance++;
  if (buildCounterSourceProvenance < 3) {
    o.fileHashes = buildUnnamed55();
    o.resolvedConnectedRepository = buildConnectedRepository();
    o.resolvedGitSource = buildGitSource();
    o.resolvedRepoSource = buildRepoSource();
    o.resolvedStorageSource = buildStorageSource();
    o.resolvedStorageSourceManifest = buildStorageSourceManifest();
  }
  buildCounterSourceProvenance--;
  return o;
}

void checkSourceProvenance(api.SourceProvenance o) {
  buildCounterSourceProvenance++;
  if (buildCounterSourceProvenance < 3) {
    checkUnnamed55(o.fileHashes!);
    checkConnectedRepository(o.resolvedConnectedRepository!);
    checkGitSource(o.resolvedGitSource!);
    checkRepoSource(o.resolvedRepoSource!);
    checkStorageSource(o.resolvedStorageSource!);
    checkStorageSourceManifest(o.resolvedStorageSourceManifest!);
  }
  buildCounterSourceProvenance--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed57() => [
      buildUnnamed56(),
      buildUnnamed56(),
    ];

void checkUnnamed57(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed56(o[0]);
  checkUnnamed56(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed57();
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
    checkUnnamed57(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
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
    o.sourceFetcher = 'foo';
  }
  buildCounterStorageSource--;
  return o;
}

void checkStorageSource(api.StorageSource o) {
  buildCounterStorageSource++;
  if (buildCounterStorageSource < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.object!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceFetcher!,
      unittest.equals('foo'),
    );
  }
  buildCounterStorageSource--;
}

core.int buildCounterStorageSourceManifest = 0;
api.StorageSourceManifest buildStorageSourceManifest() {
  final o = api.StorageSourceManifest();
  buildCounterStorageSourceManifest++;
  if (buildCounterStorageSourceManifest < 3) {
    o.bucket = 'foo';
    o.generation = 'foo';
    o.object = 'foo';
  }
  buildCounterStorageSourceManifest--;
  return o;
}

void checkStorageSourceManifest(api.StorageSourceManifest o) {
  buildCounterStorageSourceManifest++;
  if (buildCounterStorageSourceManifest < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.object!,
      unittest.equals('foo'),
    );
  }
  buildCounterStorageSourceManifest--;
}

core.int buildCounterTimeSpan = 0;
api.TimeSpan buildTimeSpan() {
  final o = api.TimeSpan();
  buildCounterTimeSpan++;
  if (buildCounterTimeSpan < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeSpan--;
  return o;
}

void checkTimeSpan(api.TimeSpan o) {
  buildCounterTimeSpan++;
  if (buildCounterTimeSpan < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeSpan--;
}

core.int buildCounterUploadedMavenArtifact = 0;
api.UploadedMavenArtifact buildUploadedMavenArtifact() {
  final o = api.UploadedMavenArtifact();
  buildCounterUploadedMavenArtifact++;
  if (buildCounterUploadedMavenArtifact < 3) {
    o.fileHashes = buildFileHashes();
    o.pushTiming = buildTimeSpan();
    o.uri = 'foo';
  }
  buildCounterUploadedMavenArtifact--;
  return o;
}

void checkUploadedMavenArtifact(api.UploadedMavenArtifact o) {
  buildCounterUploadedMavenArtifact++;
  if (buildCounterUploadedMavenArtifact < 3) {
    checkFileHashes(o.fileHashes!);
    checkTimeSpan(o.pushTiming!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadedMavenArtifact--;
}

core.int buildCounterUploadedNpmPackage = 0;
api.UploadedNpmPackage buildUploadedNpmPackage() {
  final o = api.UploadedNpmPackage();
  buildCounterUploadedNpmPackage++;
  if (buildCounterUploadedNpmPackage < 3) {
    o.fileHashes = buildFileHashes();
    o.pushTiming = buildTimeSpan();
    o.uri = 'foo';
  }
  buildCounterUploadedNpmPackage--;
  return o;
}

void checkUploadedNpmPackage(api.UploadedNpmPackage o) {
  buildCounterUploadedNpmPackage++;
  if (buildCounterUploadedNpmPackage < 3) {
    checkFileHashes(o.fileHashes!);
    checkTimeSpan(o.pushTiming!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadedNpmPackage--;
}

core.int buildCounterUploadedPythonPackage = 0;
api.UploadedPythonPackage buildUploadedPythonPackage() {
  final o = api.UploadedPythonPackage();
  buildCounterUploadedPythonPackage++;
  if (buildCounterUploadedPythonPackage < 3) {
    o.fileHashes = buildFileHashes();
    o.pushTiming = buildTimeSpan();
    o.uri = 'foo';
  }
  buildCounterUploadedPythonPackage--;
  return o;
}

void checkUploadedPythonPackage(api.UploadedPythonPackage o) {
  buildCounterUploadedPythonPackage++;
  if (buildCounterUploadedPythonPackage < 3) {
    checkFileHashes(o.fileHashes!);
    checkTimeSpan(o.pushTiming!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadedPythonPackage--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.name = 'foo';
    o.path = 'foo';
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
}

core.int buildCounterWarning = 0;
api.Warning buildWarning() {
  final o = api.Warning();
  buildCounterWarning++;
  if (buildCounterWarning < 3) {
    o.priority = 'foo';
    o.text = 'foo';
  }
  buildCounterWarning--;
  return o;
}

void checkWarning(api.Warning o) {
  buildCounterWarning++;
  if (buildCounterWarning < 3) {
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterWarning--;
}

core.int buildCounterWebhookConfig = 0;
api.WebhookConfig buildWebhookConfig() {
  final o = api.WebhookConfig();
  buildCounterWebhookConfig++;
  if (buildCounterWebhookConfig < 3) {
    o.secret = 'foo';
    o.state = 'foo';
  }
  buildCounterWebhookConfig--;
  return o;
}

void checkWebhookConfig(api.WebhookConfig o) {
  buildCounterWebhookConfig++;
  if (buildCounterWebhookConfig < 3) {
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebhookConfig--;
}

core.int buildCounterWorkerConfig = 0;
api.WorkerConfig buildWorkerConfig() {
  final o = api.WorkerConfig();
  buildCounterWorkerConfig++;
  if (buildCounterWorkerConfig < 3) {
    o.diskSizeGb = 'foo';
    o.machineType = 'foo';
  }
  buildCounterWorkerConfig--;
  return o;
}

void checkWorkerConfig(api.WorkerConfig o) {
  buildCounterWorkerConfig++;
  if (buildCounterWorkerConfig < 3) {
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerConfig--;
}

core.Map<core.String, core.String> buildUnnamed58() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed58(core.Map<core.String, core.String> o) {
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

core.int buildCounterWorkerPool = 0;
api.WorkerPool buildWorkerPool() {
  final o = api.WorkerPool();
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    o.annotations = buildUnnamed58();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.privatePoolV1Config = buildPrivatePoolV1Config();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWorkerPool--;
  return o;
}

void checkWorkerPool(api.WorkerPool o) {
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    checkUnnamed58(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPrivatePoolV1Config(o.privatePoolV1Config!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerPool--;
}

void main() {
  unittest.group('obj-schema-ApprovalConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApprovalConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApprovalConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApprovalConfig(od);
    });
  });

  unittest.group('obj-schema-ApprovalResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApprovalResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApprovalResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApprovalResult(od);
    });
  });

  unittest.group('obj-schema-ApproveBuildRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveBuildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveBuildRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproveBuildRequest(od);
    });
  });

  unittest.group('obj-schema-ArtifactObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactObjects.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArtifactObjects(od);
    });
  });

  unittest.group('obj-schema-Artifacts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifacts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Artifacts.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArtifacts(od);
    });
  });

  unittest.group(
      'obj-schema-BatchCreateBitbucketServerConnectedRepositoriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateBitbucketServerConnectedRepositoriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BatchCreateBitbucketServerConnectedRepositoriesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateBitbucketServerConnectedRepositoriesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateGitLabConnectedRepositoriesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateGitLabConnectedRepositoriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateGitLabConnectedRepositoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateGitLabConnectedRepositoriesRequest(od);
    });
  });

  unittest.group('obj-schema-BitbucketServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketServerConfig(od);
    });
  });

  unittest.group('obj-schema-BitbucketServerConnectedRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketServerConnectedRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketServerConnectedRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketServerConnectedRepository(od);
    });
  });

  unittest.group('obj-schema-BitbucketServerRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketServerRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketServerRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketServerRepository(od);
    });
  });

  unittest.group('obj-schema-BitbucketServerRepositoryId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketServerRepositoryId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketServerRepositoryId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketServerRepositoryId(od);
    });
  });

  unittest.group('obj-schema-BitbucketServerSecrets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketServerSecrets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketServerSecrets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketServerSecrets(od);
    });
  });

  unittest.group('obj-schema-BitbucketServerTriggerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketServerTriggerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketServerTriggerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketServerTriggerConfig(od);
    });
  });

  unittest.group('obj-schema-Build', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuild();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Build.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuild(od);
    });
  });

  unittest.group('obj-schema-BuildApproval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildApproval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildApproval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildApproval(od);
    });
  });

  unittest.group('obj-schema-BuildOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildOptions(od);
    });
  });

  unittest.group('obj-schema-BuildStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BuildStep.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuildStep(od);
    });
  });

  unittest.group('obj-schema-BuildTrigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildTrigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildTrigger(od);
    });
  });

  unittest.group('obj-schema-BuiltImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BuiltImage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuiltImage(od);
    });
  });

  unittest.group('obj-schema-CancelBuildRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelBuildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelBuildRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelBuildRequest(od);
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

  unittest.group('obj-schema-ConnectedRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectedRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectedRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectedRepository(od);
    });
  });

  unittest.group('obj-schema-CreateBitbucketServerConnectedRepositoryRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateBitbucketServerConnectedRepositoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateBitbucketServerConnectedRepositoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateBitbucketServerConnectedRepositoryRequest(od);
    });
  });

  unittest.group('obj-schema-CreateGitLabConnectedRepositoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateGitLabConnectedRepositoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateGitLabConnectedRepositoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateGitLabConnectedRepositoryRequest(od);
    });
  });

  unittest.group('obj-schema-DefaultServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultServiceAccount(od);
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

  unittest.group('obj-schema-FailureInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailureInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailureInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureInfo(od);
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

  unittest.group('obj-schema-GitFileSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitFileSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitFileSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitFileSource(od);
    });
  });

  unittest.group('obj-schema-GitHubEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubEnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GitHubEnterpriseSecrets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubEnterpriseSecrets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubEnterpriseSecrets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubEnterpriseSecrets(od);
    });
  });

  unittest.group('obj-schema-GitHubEventsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubEventsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubEventsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubEventsConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabConnectedRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabConnectedRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabConnectedRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabConnectedRepository(od);
    });
  });

  unittest.group('obj-schema-GitLabEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabEnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabEventsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabEventsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabEventsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabEventsConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabRepository(od);
    });
  });

  unittest.group('obj-schema-GitLabRepositoryId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabRepositoryId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabRepositoryId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabRepositoryId(od);
    });
  });

  unittest.group('obj-schema-GitLabSecrets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabSecrets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabSecrets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabSecrets(od);
    });
  });

  unittest.group('obj-schema-GitRepoSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitRepoSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitRepoSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitRepoSource(od);
    });
  });

  unittest.group('obj-schema-GitSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GitSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGitSource(od);
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

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpBody.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-InlineSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineSecret.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineSecret(od);
    });
  });

  unittest.group('obj-schema-ListBitbucketServerConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBitbucketServerConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBitbucketServerConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBitbucketServerConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBitbucketServerRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBitbucketServerRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBitbucketServerRepositoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBitbucketServerRepositoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListBuildTriggersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBuildTriggersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBuildTriggersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBuildTriggersResponse(od);
    });
  });

  unittest.group('obj-schema-ListBuildsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBuildsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBuildsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBuildsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGitLabConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGitLabConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGitLabConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGitLabConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGitLabRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGitLabRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGitLabRepositoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGitLabRepositoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGithubEnterpriseConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGithubEnterpriseConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGithubEnterpriseConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGithubEnterpriseConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkerPoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkerPoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkerPoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkerPoolsResponse(od);
    });
  });

  unittest.group('obj-schema-MavenArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMavenArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MavenArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMavenArtifact(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NpmPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNpmPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NpmPackage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNpmPackage(od);
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

  unittest.group('obj-schema-PoolOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoolOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PoolOption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPoolOption(od);
    });
  });

  unittest.group('obj-schema-PrivatePoolV1Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivatePoolV1Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivatePoolV1Config.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivatePoolV1Config(od);
    });
  });

  unittest.group('obj-schema-PubsubConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubConfig(od);
    });
  });

  unittest.group('obj-schema-PullRequestFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullRequestFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullRequestFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPullRequestFilter(od);
    });
  });

  unittest.group('obj-schema-PushFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PushFilter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPushFilter(od);
    });
  });

  unittest.group('obj-schema-PythonPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPythonPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PythonPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPythonPackage(od);
    });
  });

  unittest.group('obj-schema-ReceiveTriggerWebhookResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReceiveTriggerWebhookResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReceiveTriggerWebhookResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReceiveTriggerWebhookResponse(od);
    });
  });

  unittest.group('obj-schema-RemoveBitbucketServerConnectedRepositoryRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveBitbucketServerConnectedRepositoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveBitbucketServerConnectedRepositoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveBitbucketServerConnectedRepositoryRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveGitLabConnectedRepositoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveGitLabConnectedRepositoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveGitLabConnectedRepositoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveGitLabConnectedRepositoryRequest(od);
    });
  });

  unittest.group('obj-schema-RepoSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RepoSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepoSource(od);
    });
  });

  unittest.group('obj-schema-RepositoryEventConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepositoryEventConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepositoryEventConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepositoryEventConfig(od);
    });
  });

  unittest.group('obj-schema-Results', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Results.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResults(od);
    });
  });

  unittest.group('obj-schema-RetryBuildRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryBuildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryBuildRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryBuildRequest(od);
    });
  });

  unittest.group('obj-schema-RunBuildTriggerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunBuildTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunBuildTriggerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunBuildTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Secret.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSecret(od);
    });
  });

  unittest.group('obj-schema-SecretManagerSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretManagerSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretManagerSecret.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretManagerSecret(od);
    });
  });

  unittest.group('obj-schema-Secrets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecrets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Secrets.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSecrets(od);
    });
  });

  unittest.group('obj-schema-ServiceDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceDirectoryConfig(od);
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

  unittest.group('obj-schema-SourceProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceProvenance(od);
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

  unittest.group('obj-schema-StorageSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStorageSource(od);
    });
  });

  unittest.group('obj-schema-StorageSourceManifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageSourceManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageSourceManifest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStorageSourceManifest(od);
    });
  });

  unittest.group('obj-schema-TimeSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeSpan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeSpan(od);
    });
  });

  unittest.group('obj-schema-UploadedMavenArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadedMavenArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadedMavenArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadedMavenArtifact(od);
    });
  });

  unittest.group('obj-schema-UploadedNpmPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadedNpmPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadedNpmPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadedNpmPackage(od);
    });
  });

  unittest.group('obj-schema-UploadedPythonPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadedPythonPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadedPythonPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadedPythonPackage(od);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('obj-schema-Warning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Warning.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWarning(od);
    });
  });

  unittest.group('obj-schema-WebhookConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebhookConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebhookConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebhookConfig(od);
    });
  });

  unittest.group('obj-schema-WorkerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerConfig(od);
    });
  });

  unittest.group('obj-schema-WorkerPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WorkerPool.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkerPool(od);
    });
  });

  unittest.group('resource-GithubDotComWebhookResource', () {
    unittest.test('method--receive', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).githubDotComWebhook;
      final arg_request = buildHttpBody();
      final arg_webhookKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/githubDotComWebhook:receive'),
        );
        pathOffset += 30;

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
          queryMap['webhookKey']!.first,
          unittest.equals(arg_webhookKey),
        );
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
      final response = await res.receive(arg_request,
          webhookKey: arg_webhookKey, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-LocationsResource', () {
    unittest.test('method--regionalWebhook', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).locations;
      final arg_request = buildHttpBody();
      final arg_location = 'foo';
      final arg_webhookKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['webhookKey']!.first,
          unittest.equals(arg_webhookKey),
        );
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
      final response = await res.regionalWebhook(arg_request, arg_location,
          webhookKey: arg_webhookKey, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
      final res = api.CloudBuildApi(mock).operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsBuildsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.builds;
      final arg_request = buildApproveBuildRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApproveBuildRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApproveBuildRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.builds;
      final arg_request = buildCancelBuildRequest();
      final arg_projectId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelBuildRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelBuildRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/builds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/builds/'),
        );
        pathOffset += 8;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuild());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_request, arg_projectId, arg_id,
          $fields: arg_$fields);
      checkBuild(response as api.Build);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.builds;
      final arg_request = buildBuild();
      final arg_projectId = 'foo';
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Build.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuild(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/builds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/builds'),
        );
        pathOffset += 7;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
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
      final response = await res.create(arg_request, arg_projectId,
          parent: arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.builds;
      final arg_projectId = 'foo';
      final arg_id = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/builds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/builds/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuild());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_id,
          name: arg_name, $fields: arg_$fields);
      checkBuild(response as api.Build);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.builds;
      final arg_projectId = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/builds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/builds'),
        );
        pathOffset += 7;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBuildsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          $fields: arg_$fields);
      checkListBuildsResponse(response as api.ListBuildsResponse);
    });

    unittest.test('method--retry', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.builds;
      final arg_request = buildRetryBuildRequest();
      final arg_projectId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RetryBuildRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRetryBuildRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/builds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/builds/'),
        );
        pathOffset += 8;
        index = path.indexOf(':retry', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':retry'),
        );
        pathOffset += 6;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retry(arg_request, arg_projectId, arg_id,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsGithubEnterpriseConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.githubEnterpriseConfigs;
      final arg_request = buildGitHubEnterpriseConfig();
      final arg_parent = 'foo';
      final arg_gheConfigId = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitHubEnterpriseConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitHubEnterpriseConfig(obj);

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
          queryMap['gheConfigId']!.first,
          unittest.equals(arg_gheConfigId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
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
          gheConfigId: arg_gheConfigId,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.githubEnterpriseConfigs;
      final arg_name = 'foo';
      final arg_configId = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['configId']!.first,
          unittest.equals(arg_configId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
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
      final response = await res.delete(arg_name,
          configId: arg_configId,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.githubEnterpriseConfigs;
      final arg_name = 'foo';
      final arg_configId = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['configId']!.first,
          unittest.equals(arg_configId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGitHubEnterpriseConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          configId: arg_configId,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkGitHubEnterpriseConfig(response as api.GitHubEnterpriseConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.githubEnterpriseConfigs;
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListGithubEnterpriseConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          projectId: arg_projectId, $fields: arg_$fields);
      checkListGithubEnterpriseConfigsResponse(
          response as api.ListGithubEnterpriseConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.githubEnterpriseConfigs;
      final arg_request = buildGitHubEnterpriseConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitHubEnterpriseConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitHubEnterpriseConfig(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getDefaultServiceAccount', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDefaultServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDefaultServiceAccount(arg_name, $fields: arg_$fields);
      checkDefaultServiceAccount(response as api.DefaultServiceAccount);
    });
  });

  unittest.group('resource-ProjectsLocationsBitbucketServerConfigsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_request = buildBitbucketServerConfig();
      final arg_parent = 'foo';
      final arg_bitbucketServerConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BitbucketServerConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBitbucketServerConfig(obj);

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
          queryMap['bitbucketServerConfigId']!.first,
          unittest.equals(arg_bitbucketServerConfigId),
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
          bitbucketServerConfigId: arg_bitbucketServerConfigId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBitbucketServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBitbucketServerConfig(response as api.BitbucketServerConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListBitbucketServerConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBitbucketServerConfigsResponse(
          response as api.ListBitbucketServerConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_request = buildBitbucketServerConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BitbucketServerConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBitbucketServerConfig(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeBitbucketServerConnectedRepository', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_request =
          buildRemoveBitbucketServerConnectedRepositoryRequest();
      final arg_config = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.RemoveBitbucketServerConnectedRepositoryRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkRemoveBitbucketServerConnectedRepositoryRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeBitbucketServerConnectedRepository(
          arg_request, arg_config,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsBitbucketServerConfigsConnectedRepositoriesResource',
      () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock)
          .projects
          .locations
          .bitbucketServerConfigs
          .connectedRepositories;
      final arg_request =
          buildBatchCreateBitbucketServerConnectedRepositoriesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.BatchCreateBitbucketServerConnectedRepositoriesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkBatchCreateBitbucketServerConnectedRepositoriesRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsBitbucketServerConfigsReposResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock)
          .projects
          .locations
          .bitbucketServerConfigs
          .repos;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListBitbucketServerRepositoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBitbucketServerRepositoriesResponse(
          response as api.ListBitbucketServerRepositoriesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBuildsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.builds;
      final arg_request = buildApproveBuildRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApproveBuildRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApproveBuildRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.builds;
      final arg_request = buildCancelBuildRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelBuildRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelBuildRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuild());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkBuild(response as api.Build);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.builds;
      final arg_request = buildBuild();
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Build.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuild(obj);

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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
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
          projectId: arg_projectId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.builds;
      final arg_name = 'foo';
      final arg_id = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuild());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          id: arg_id, projectId: arg_projectId, $fields: arg_$fields);
      checkBuild(response as api.Build);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.builds;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBuildsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkListBuildsResponse(response as api.ListBuildsResponse);
    });

    unittest.test('method--retry', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.builds;
      final arg_request = buildRetryBuildRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RetryBuildRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRetryBuildRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.retry(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGitLabConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.gitLabConfigs;
      final arg_request = buildGitLabConfig();
      final arg_parent = 'foo';
      final arg_gitlabConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitLabConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitLabConfig(obj);

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
          queryMap['gitlabConfigId']!.first,
          unittest.equals(arg_gitlabConfigId),
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
          gitlabConfigId: arg_gitlabConfigId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.gitLabConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.gitLabConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGitLabConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGitLabConfig(response as api.GitLabConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.gitLabConfigs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGitLabConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGitLabConfigsResponse(response as api.ListGitLabConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.gitLabConfigs;
      final arg_request = buildGitLabConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitLabConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitLabConfig(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeGitLabConnectedRepository', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.gitLabConfigs;
      final arg_request = buildRemoveGitLabConnectedRepositoryRequest();
      final arg_config = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveGitLabConnectedRepositoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveGitLabConnectedRepositoryRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeGitLabConnectedRepository(
          arg_request, arg_config,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsGitLabConfigsConnectedRepositoriesResource',
      () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock)
          .projects
          .locations
          .gitLabConfigs
          .connectedRepositories;
      final arg_request = buildBatchCreateGitLabConnectedRepositoriesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateGitLabConnectedRepositoriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateGitLabConnectedRepositoriesRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGitLabConfigsReposResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.gitLabConfigs.repos;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGitLabRepositoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGitLabRepositoriesResponse(
          response as api.ListGitLabRepositoriesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGithubEnterpriseConfigsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.githubEnterpriseConfigs;
      final arg_request = buildGitHubEnterpriseConfig();
      final arg_parent = 'foo';
      final arg_gheConfigId = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitHubEnterpriseConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitHubEnterpriseConfig(obj);

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
          queryMap['gheConfigId']!.first,
          unittest.equals(arg_gheConfigId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
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
          gheConfigId: arg_gheConfigId,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.githubEnterpriseConfigs;
      final arg_name = 'foo';
      final arg_configId = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['configId']!.first,
          unittest.equals(arg_configId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
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
      final response = await res.delete(arg_name,
          configId: arg_configId,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.githubEnterpriseConfigs;
      final arg_name = 'foo';
      final arg_configId = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['configId']!.first,
          unittest.equals(arg_configId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGitHubEnterpriseConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          configId: arg_configId,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkGitHubEnterpriseConfig(response as api.GitHubEnterpriseConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.githubEnterpriseConfigs;
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListGithubEnterpriseConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          projectId: arg_projectId, $fields: arg_$fields);
      checkListGithubEnterpriseConfigsResponse(
          response as api.ListGithubEnterpriseConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.githubEnterpriseConfigs;
      final arg_request = buildGitHubEnterpriseConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitHubEnterpriseConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitHubEnterpriseConfig(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
      final res = api.CloudBuildApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsTriggersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_request = buildBuildTrigger();
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BuildTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildTrigger(obj);

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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          projectId: arg_projectId, $fields: arg_$fields);
      checkBuildTrigger(response as api.BuildTrigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_name = 'foo';
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['triggerId']!.first,
          unittest.equals(arg_triggerId),
        );
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
      final response = await res.delete(arg_name,
          projectId: arg_projectId,
          triggerId: arg_triggerId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_name = 'foo';
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['triggerId']!.first,
          unittest.equals(arg_triggerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          projectId: arg_projectId,
          triggerId: arg_triggerId,
          $fields: arg_$fields);
      checkBuildTrigger(response as api.BuildTrigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBuildTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkListBuildTriggersResponse(response as api.ListBuildTriggersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_request = buildBuildTrigger();
      final arg_resourceName = 'foo';
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BuildTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildTrigger(obj);

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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['triggerId']!.first,
          unittest.equals(arg_triggerId),
        );
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
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_resourceName,
          projectId: arg_projectId,
          triggerId: arg_triggerId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkBuildTrigger(response as api.BuildTrigger);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_request = buildRunBuildTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunBuildTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunBuildTriggerRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--webhook', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.triggers;
      final arg_request = buildHttpBody();
      final arg_name = 'foo';
      final arg_projectId = 'foo';
      final arg_secret = 'foo';
      final arg_trigger = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['secret']!.first,
          unittest.equals(arg_secret),
        );
        unittest.expect(
          queryMap['trigger']!.first,
          unittest.equals(arg_trigger),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReceiveTriggerWebhookResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhook(arg_request, arg_name,
          projectId: arg_projectId,
          secret: arg_secret,
          trigger: arg_trigger,
          $fields: arg_$fields);
      checkReceiveTriggerWebhookResponse(
          response as api.ReceiveTriggerWebhookResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsWorkerPoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.workerPools;
      final arg_request = buildWorkerPool();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_workerPoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkerPool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkerPool(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['workerPoolId']!.first,
          unittest.equals(arg_workerPoolId),
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
          validateOnly: arg_validateOnly,
          workerPoolId: arg_workerPoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.workerPools;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.workerPools;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildWorkerPool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkerPool(response as api.WorkerPool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.workerPools;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListWorkerPoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWorkerPoolsResponse(response as api.ListWorkerPoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.workerPools;
      final arg_request = buildWorkerPool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkerPool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkerPool(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsTriggersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_request = buildBuildTrigger();
      final arg_projectId = 'foo';
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BuildTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildTrigger(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/triggers'),
        );
        pathOffset += 9;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          parent: arg_parent, $fields: arg_$fields);
      checkBuildTrigger(response as api.BuildTrigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
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
      final response = await res.delete(arg_projectId, arg_triggerId,
          name: arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_triggerId,
          name: arg_name, $fields: arg_$fields);
      checkBuildTrigger(response as api.BuildTrigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_projectId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/triggers'),
        );
        pathOffset += 9;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBuildTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          $fields: arg_$fields);
      checkListBuildTriggersResponse(response as api.ListBuildTriggersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_request = buildBuildTrigger();
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BuildTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildTrigger(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_triggerId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkBuildTrigger(response as api.BuildTrigger);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_request = buildRepoSource();
      final arg_projectId = 'foo';
      final arg_triggerId = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RepoSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepoSource(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        index = path.indexOf(':run', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals(':run'),
        );
        pathOffset += 4;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.run(arg_request, arg_projectId, arg_triggerId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--webhook', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.triggers;
      final arg_request = buildHttpBody();
      final arg_projectId = 'foo';
      final arg_trigger = 'foo';
      final arg_name = 'foo';
      final arg_secret = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        index = path.indexOf(':webhook', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_trigger'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals(':webhook'),
        );
        pathOffset += 8;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['secret']!.first,
          unittest.equals(arg_secret),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReceiveTriggerWebhookResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhook(
          arg_request, arg_projectId, arg_trigger,
          name: arg_name, secret: arg_secret, $fields: arg_$fields);
      checkReceiveTriggerWebhookResponse(
          response as api.ReceiveTriggerWebhookResponse);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--webhook', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).v1;
      final arg_request = buildHttpBody();
      final arg_webhookKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/webhook'),
        );
        pathOffset += 10;

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
          queryMap['webhookKey']!.first,
          unittest.equals(arg_webhookKey),
        );
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
      final response = await res.webhook(arg_request,
          webhookKey: arg_webhookKey, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });
}
