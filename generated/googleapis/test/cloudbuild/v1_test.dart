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

import 'package:googleapis/cloudbuild/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddBitbucketServerConnectedRepositoryRequest = 0;
api.AddBitbucketServerConnectedRepositoryRequest
    buildAddBitbucketServerConnectedRepositoryRequest() {
  final o = api.AddBitbucketServerConnectedRepositoryRequest();
  buildCounterAddBitbucketServerConnectedRepositoryRequest++;
  if (buildCounterAddBitbucketServerConnectedRepositoryRequest < 3) {
    o.connectedRepository = buildBitbucketServerRepositoryId();
  }
  buildCounterAddBitbucketServerConnectedRepositoryRequest--;
  return o;
}

void checkAddBitbucketServerConnectedRepositoryRequest(
    api.AddBitbucketServerConnectedRepositoryRequest o) {
  buildCounterAddBitbucketServerConnectedRepositoryRequest++;
  if (buildCounterAddBitbucketServerConnectedRepositoryRequest < 3) {
    checkBitbucketServerRepositoryId(o.connectedRepository!);
  }
  buildCounterAddBitbucketServerConnectedRepositoryRequest--;
}

core.int buildCounterAddBitbucketServerConnectedRepositoryResponse = 0;
api.AddBitbucketServerConnectedRepositoryResponse
    buildAddBitbucketServerConnectedRepositoryResponse() {
  final o = api.AddBitbucketServerConnectedRepositoryResponse();
  buildCounterAddBitbucketServerConnectedRepositoryResponse++;
  if (buildCounterAddBitbucketServerConnectedRepositoryResponse < 3) {
    o.config = 'foo';
    o.connectedRepository = buildBitbucketServerRepositoryId();
  }
  buildCounterAddBitbucketServerConnectedRepositoryResponse--;
  return o;
}

void checkAddBitbucketServerConnectedRepositoryResponse(
    api.AddBitbucketServerConnectedRepositoryResponse o) {
  buildCounterAddBitbucketServerConnectedRepositoryResponse++;
  if (buildCounterAddBitbucketServerConnectedRepositoryResponse < 3) {
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
    checkBitbucketServerRepositoryId(o.connectedRepository!);
  }
  buildCounterAddBitbucketServerConnectedRepositoryResponse--;
}

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

core.int buildCounterArtifacts = 0;
api.Artifacts buildArtifacts() {
  final o = api.Artifacts();
  buildCounterArtifacts++;
  if (buildCounterArtifacts < 3) {
    o.images = buildUnnamed1();
    o.objects = buildArtifactObjects();
  }
  buildCounterArtifacts--;
  return o;
}

void checkArtifacts(api.Artifacts o) {
  buildCounterArtifacts++;
  if (buildCounterArtifacts < 3) {
    checkUnnamed1(o.images!);
    checkArtifactObjects(o.objects!);
  }
  buildCounterArtifacts--;
}

core.List<api.CreateBitbucketServerConnectedRepositoryRequest>
    buildUnnamed2() => [
          buildCreateBitbucketServerConnectedRepositoryRequest(),
          buildCreateBitbucketServerConnectedRepositoryRequest(),
        ];

void checkUnnamed2(
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
    o.requests = buildUnnamed2();
  }
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest--;
  return o;
}

void checkBatchCreateBitbucketServerConnectedRepositoriesRequest(
    api.BatchCreateBitbucketServerConnectedRepositoriesRequest o) {
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest++;
  if (buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest < 3) {
    checkUnnamed2(o.requests!);
  }
  buildCounterBatchCreateBitbucketServerConnectedRepositoriesRequest--;
}

core.List<api.BitbucketServerRepositoryId> buildUnnamed3() => [
      buildBitbucketServerRepositoryId(),
      buildBitbucketServerRepositoryId(),
    ];

void checkUnnamed3(core.List<api.BitbucketServerRepositoryId> o) {
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
    o.connectedRepositories = buildUnnamed3();
    o.createTime = 'foo';
    o.hostUri = 'foo';
    o.name = 'foo';
    o.peeredNetwork = 'foo';
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
    checkUnnamed3(o.connectedRepositories!);
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.List<api.Secret> buildUnnamed5() => [
      buildSecret(),
      buildSecret(),
    ];

void checkUnnamed5(core.List<api.Secret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecret(o[0]);
  checkSecret(o[1]);
}

core.List<api.BuildStep> buildUnnamed6() => [
      buildBuildStep(),
      buildBuildStep(),
    ];

void checkUnnamed6(core.List<api.BuildStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildStep(o[0]);
  checkBuildStep(o[1]);
}

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
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

core.Map<core.String, api.TimeSpan> buildUnnamed9() => {
      'x': buildTimeSpan(),
      'y': buildTimeSpan(),
    };

void checkUnnamed9(core.Map<core.String, api.TimeSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSpan(o['x']!);
  checkTimeSpan(o['y']!);
}

core.List<api.Warning> buildUnnamed10() => [
      buildWarning(),
      buildWarning(),
    ];

void checkUnnamed10(core.List<api.Warning> o) {
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
    o.images = buildUnnamed4();
    o.logUrl = 'foo';
    o.logsBucket = 'foo';
    o.name = 'foo';
    o.options = buildBuildOptions();
    o.projectId = 'foo';
    o.queueTtl = 'foo';
    o.results = buildResults();
    o.secrets = buildUnnamed5();
    o.serviceAccount = 'foo';
    o.source = buildSource();
    o.sourceProvenance = buildSourceProvenance();
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusDetail = 'foo';
    o.steps = buildUnnamed6();
    o.substitutions = buildUnnamed7();
    o.tags = buildUnnamed8();
    o.timeout = 'foo';
    o.timing = buildUnnamed9();
    o.warnings = buildUnnamed10();
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
    checkUnnamed4(o.images!);
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
    checkUnnamed5(o.secrets!);
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
    checkUnnamed6(o.steps!);
    checkUnnamed7(o.substitutions!);
    checkUnnamed8(o.tags!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.timing!);
    checkUnnamed10(o.warnings!);
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

core.List<api.Volume> buildUnnamed14() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed14(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterBuildOptions = 0;
api.BuildOptions buildBuildOptions() {
  final o = api.BuildOptions();
  buildCounterBuildOptions++;
  if (buildCounterBuildOptions < 3) {
    o.diskSizeGb = 'foo';
    o.dynamicSubstitutions = true;
    o.env = buildUnnamed11();
    o.logStreamingOption = 'foo';
    o.logging = 'foo';
    o.machineType = 'foo';
    o.pool = buildPoolOption();
    o.requestedVerifyOption = 'foo';
    o.secretEnv = buildUnnamed12();
    o.sourceProvenanceHash = buildUnnamed13();
    o.substitutionOption = 'foo';
    o.volumes = buildUnnamed14();
    o.workerPool = 'foo';
  }
  buildCounterBuildOptions--;
  return o;
}

void checkBuildOptions(api.BuildOptions o) {
  buildCounterBuildOptions++;
  if (buildCounterBuildOptions < 3) {
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dynamicSubstitutions!, unittest.isTrue);
    checkUnnamed11(o.env!);
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
    checkUnnamed12(o.secretEnv!);
    checkUnnamed13(o.sourceProvenanceHash!);
    unittest.expect(
      o.substitutionOption!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.volumes!);
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildOptions--;
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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
    o.args = buildUnnamed15();
    o.dir = 'foo';
    o.entrypoint = 'foo';
    o.env = buildUnnamed16();
    o.id = 'foo';
    o.name = 'foo';
    o.pullTiming = buildTimeSpan();
    o.script = 'foo';
    o.secretEnv = buildUnnamed17();
    o.status = 'foo';
    o.timeout = 'foo';
    o.timing = buildTimeSpan();
    o.volumes = buildUnnamed18();
    o.waitFor = buildUnnamed19();
  }
  buildCounterBuildStep--;
  return o;
}

void checkBuildStep(api.BuildStep o) {
  buildCounterBuildStep++;
  if (buildCounterBuildStep < 3) {
    checkUnnamed15(o.args!);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entrypoint!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.env!);
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
    checkUnnamed17(o.secretEnv!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.timing!);
    checkUnnamed18(o.volumes!);
    checkUnnamed19(o.waitFor!);
  }
  buildCounterBuildStep--;
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

core.Map<core.String, core.String> buildUnnamed22() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed22(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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
    o.id = 'foo';
    o.ignoredFiles = buildUnnamed20();
    o.includedFiles = buildUnnamed21();
    o.name = 'foo';
    o.pubsubConfig = buildPubsubConfig();
    o.resourceName = 'foo';
    o.serviceAccount = 'foo';
    o.sourceToBuild = buildGitRepoSource();
    o.substitutions = buildUnnamed22();
    o.tags = buildUnnamed23();
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.ignoredFiles!);
    checkUnnamed21(o.includedFiles!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPubsubConfig(o.pubsubConfig!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkGitRepoSource(o.sourceToBuild!);
    checkUnnamed22(o.substitutions!);
    checkUnnamed23(o.tags!);
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

core.List<api.Hash> buildUnnamed24() => [
      buildHash(),
      buildHash(),
    ];

void checkUnnamed24(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed24();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed24(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.int buildCounterGitFileSource = 0;
api.GitFileSource buildGitFileSource() {
  final o = api.GitFileSource();
  buildCounterGitFileSource++;
  if (buildCounterGitFileSource < 3) {
    o.path = 'foo';
    o.repoType = 'foo';
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
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoType!,
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

core.int buildCounterGitRepoSource = 0;
api.GitRepoSource buildGitRepoSource() {
  final o = api.GitRepoSource();
  buildCounterGitRepoSource++;
  if (buildCounterGitRepoSource < 3) {
    o.ref = 'foo';
    o.repoType = 'foo';
    o.uri = 'foo';
  }
  buildCounterGitRepoSource--;
  return o;
}

void checkGitRepoSource(api.GitRepoSource o) {
  buildCounterGitRepoSource++;
  if (buildCounterGitRepoSource < 3) {
    unittest.expect(
      o.ref!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitRepoSource--;
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

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed26() => [
      buildUnnamed25(),
      buildUnnamed25(),
    ];

void checkUnnamed26(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed25(o[0]);
  checkUnnamed25(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed26();
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
    checkUnnamed26(o.extensions!);
  }
  buildCounterHttpBody--;
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

core.int buildCounterInlineSecret = 0;
api.InlineSecret buildInlineSecret() {
  final o = api.InlineSecret();
  buildCounterInlineSecret++;
  if (buildCounterInlineSecret < 3) {
    o.envMap = buildUnnamed27();
    o.kmsKeyName = 'foo';
  }
  buildCounterInlineSecret--;
  return o;
}

void checkInlineSecret(api.InlineSecret o) {
  buildCounterInlineSecret++;
  if (buildCounterInlineSecret < 3) {
    checkUnnamed27(o.envMap!);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterInlineSecret--;
}

core.List<api.BitbucketServerConfig> buildUnnamed28() => [
      buildBitbucketServerConfig(),
      buildBitbucketServerConfig(),
    ];

void checkUnnamed28(core.List<api.BitbucketServerConfig> o) {
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
    o.bitbucketServerConfigs = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterListBitbucketServerConfigsResponse--;
  return o;
}

void checkListBitbucketServerConfigsResponse(
    api.ListBitbucketServerConfigsResponse o) {
  buildCounterListBitbucketServerConfigsResponse++;
  if (buildCounterListBitbucketServerConfigsResponse < 3) {
    checkUnnamed28(o.bitbucketServerConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBitbucketServerConfigsResponse--;
}

core.List<api.BitbucketServerRepository> buildUnnamed29() => [
      buildBitbucketServerRepository(),
      buildBitbucketServerRepository(),
    ];

void checkUnnamed29(core.List<api.BitbucketServerRepository> o) {
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
    o.bitbucketServerRepositories = buildUnnamed29();
    o.nextPageToken = 'foo';
  }
  buildCounterListBitbucketServerRepositoriesResponse--;
  return o;
}

void checkListBitbucketServerRepositoriesResponse(
    api.ListBitbucketServerRepositoriesResponse o) {
  buildCounterListBitbucketServerRepositoriesResponse++;
  if (buildCounterListBitbucketServerRepositoriesResponse < 3) {
    checkUnnamed29(o.bitbucketServerRepositories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBitbucketServerRepositoriesResponse--;
}

core.List<api.BuildTrigger> buildUnnamed30() => [
      buildBuildTrigger(),
      buildBuildTrigger(),
    ];

void checkUnnamed30(core.List<api.BuildTrigger> o) {
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
    o.triggers = buildUnnamed30();
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
    checkUnnamed30(o.triggers!);
  }
  buildCounterListBuildTriggersResponse--;
}

core.List<api.Build> buildUnnamed31() => [
      buildBuild(),
      buildBuild(),
    ];

void checkUnnamed31(core.List<api.Build> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuild(o[0]);
  checkBuild(o[1]);
}

core.int buildCounterListBuildsResponse = 0;
api.ListBuildsResponse buildListBuildsResponse() {
  final o = api.ListBuildsResponse();
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    o.builds = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterListBuildsResponse--;
  return o;
}

void checkListBuildsResponse(api.ListBuildsResponse o) {
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    checkUnnamed31(o.builds!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBuildsResponse--;
}

core.List<api.GitHubEnterpriseConfig> buildUnnamed32() => [
      buildGitHubEnterpriseConfig(),
      buildGitHubEnterpriseConfig(),
    ];

void checkUnnamed32(core.List<api.GitHubEnterpriseConfig> o) {
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
    o.configs = buildUnnamed32();
  }
  buildCounterListGithubEnterpriseConfigsResponse--;
  return o;
}

void checkListGithubEnterpriseConfigsResponse(
    api.ListGithubEnterpriseConfigsResponse o) {
  buildCounterListGithubEnterpriseConfigsResponse++;
  if (buildCounterListGithubEnterpriseConfigsResponse < 3) {
    checkUnnamed32(o.configs!);
  }
  buildCounterListGithubEnterpriseConfigsResponse--;
}

core.List<api.WorkerPool> buildUnnamed33() => [
      buildWorkerPool(),
      buildWorkerPool(),
    ];

void checkUnnamed33(core.List<api.WorkerPool> o) {
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
    o.workerPools = buildUnnamed33();
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
    checkUnnamed33(o.workerPools!);
  }
  buildCounterListWorkerPoolsResponse--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.egressOption = 'foo';
    o.peeredNetwork = 'foo';
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
  }
  buildCounterNetworkConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed34();
    o.name = 'foo';
    o.response = buildUnnamed35();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed34(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.response!);
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

core.Map<core.String, core.String> buildUnnamed36() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed36(core.Map<core.String, core.String> o) {
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
    o.substitutions = buildUnnamed36();
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
    checkUnnamed36(o.substitutions!);
    unittest.expect(
      o.tagName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepoSource--;
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.List<api.BuiltImage> buildUnnamed39() => [
      buildBuiltImage(),
      buildBuiltImage(),
    ];

void checkUnnamed39(core.List<api.BuiltImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuiltImage(o[0]);
  checkBuiltImage(o[1]);
}

core.int buildCounterResults = 0;
api.Results buildResults() {
  final o = api.Results();
  buildCounterResults++;
  if (buildCounterResults < 3) {
    o.artifactManifest = 'foo';
    o.artifactTiming = buildTimeSpan();
    o.buildStepImages = buildUnnamed37();
    o.buildStepOutputs = buildUnnamed38();
    o.images = buildUnnamed39();
    o.numArtifacts = 'foo';
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
    checkUnnamed37(o.buildStepImages!);
    checkUnnamed38(o.buildStepOutputs!);
    checkUnnamed39(o.images!);
    unittest.expect(
      o.numArtifacts!,
      unittest.equals('foo'),
    );
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

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
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
    o.secretEnv = buildUnnamed40();
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
    checkUnnamed40(o.secretEnv!);
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

core.List<api.InlineSecret> buildUnnamed41() => [
      buildInlineSecret(),
      buildInlineSecret(),
    ];

void checkUnnamed41(core.List<api.InlineSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineSecret(o[0]);
  checkInlineSecret(o[1]);
}

core.List<api.SecretManagerSecret> buildUnnamed42() => [
      buildSecretManagerSecret(),
      buildSecretManagerSecret(),
    ];

void checkUnnamed42(core.List<api.SecretManagerSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretManagerSecret(o[0]);
  checkSecretManagerSecret(o[1]);
}

core.int buildCounterSecrets = 0;
api.Secrets buildSecrets() {
  final o = api.Secrets();
  buildCounterSecrets++;
  if (buildCounterSecrets < 3) {
    o.inline = buildUnnamed41();
    o.secretManager = buildUnnamed42();
  }
  buildCounterSecrets--;
  return o;
}

void checkSecrets(api.Secrets o) {
  buildCounterSecrets++;
  if (buildCounterSecrets < 3) {
    checkUnnamed41(o.inline!);
    checkUnnamed42(o.secretManager!);
  }
  buildCounterSecrets--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
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
    checkRepoSource(o.repoSource!);
    checkStorageSource(o.storageSource!);
    checkStorageSourceManifest(o.storageSourceManifest!);
  }
  buildCounterSource--;
}

core.Map<core.String, api.FileHashes> buildUnnamed43() => {
      'x': buildFileHashes(),
      'y': buildFileHashes(),
    };

void checkUnnamed43(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSourceProvenance = 0;
api.SourceProvenance buildSourceProvenance() {
  final o = api.SourceProvenance();
  buildCounterSourceProvenance++;
  if (buildCounterSourceProvenance < 3) {
    o.fileHashes = buildUnnamed43();
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
    checkUnnamed43(o.fileHashes!);
    checkRepoSource(o.resolvedRepoSource!);
    checkStorageSource(o.resolvedStorageSource!);
    checkStorageSourceManifest(o.resolvedStorageSourceManifest!);
  }
  buildCounterSourceProvenance--;
}

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed45() => [
      buildUnnamed44(),
      buildUnnamed44(),
    ];

void checkUnnamed45(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed44(o[0]);
  checkUnnamed44(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed45();
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
    checkUnnamed45(o.details!);
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

core.Map<core.String, core.String> buildUnnamed46() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed46(core.Map<core.String, core.String> o) {
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
    o.annotations = buildUnnamed46();
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
    checkUnnamed46(o.annotations!);
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
  unittest.group('obj-schema-AddBitbucketServerConnectedRepositoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddBitbucketServerConnectedRepositoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddBitbucketServerConnectedRepositoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddBitbucketServerConnectedRepositoryRequest(od);
    });
  });

  unittest.group('obj-schema-AddBitbucketServerConnectedRepositoryResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddBitbucketServerConnectedRepositoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddBitbucketServerConnectedRepositoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddBitbucketServerConnectedRepositoryResponse(od);
    });
  });

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

  unittest.group('obj-schema-GitRepoSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitRepoSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitRepoSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitRepoSource(od);
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

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
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

  unittest.group('obj-schema-RepoSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RepoSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepoSource(od);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBitbucketServerConfigsResource',
      () {
    unittest.test('method--addBitbucketServerConnectedRepository', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.bitbucketServerConfigs;
      final arg_request = buildAddBitbucketServerConnectedRepositoryRequest();
      final arg_config = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddBitbucketServerConnectedRepositoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddBitbucketServerConnectedRepositoryRequest(obj);

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
        final resp = convert.json
            .encode(buildAddBitbucketServerConnectedRepositoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addBitbucketServerConnectedRepository(
          arg_request, arg_config,
          $fields: arg_$fields);
      checkAddBitbucketServerConnectedRepositoryResponse(
          response as api.AddBitbucketServerConnectedRepositoryResponse);
    });

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.retry(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
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
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BuildTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildTrigger(obj);

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
      final response = await res.patch(arg_request, arg_resourceName,
          projectId: arg_projectId,
          triggerId: arg_triggerId,
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
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BuildTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildTrigger(obj);

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
        final resp = convert.json.encode(buildBuildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_triggerId,
          $fields: arg_$fields);
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/webhook'),
        );
        pathOffset += 10;

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
