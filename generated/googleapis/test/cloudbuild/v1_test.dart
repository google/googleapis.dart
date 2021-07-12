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

core.List<core.String> buildUnnamed2092() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2092(core.List<core.String> o) {
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
    o.paths = buildUnnamed2092();
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
    checkUnnamed2092(o.paths!);
    checkTimeSpan(o.timing!);
  }
  buildCounterArtifactObjects--;
}

core.List<api.FileHashes> buildUnnamed2093() {
  final o = <api.FileHashes>[];
  o.add(buildFileHashes());
  o.add(buildFileHashes());
  return o;
}

void checkUnnamed2093(core.List<api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o[0]);
  checkFileHashes(o[1]);
}

core.int buildCounterArtifactResult = 0;
api.ArtifactResult buildArtifactResult() {
  final o = api.ArtifactResult();
  buildCounterArtifactResult++;
  if (buildCounterArtifactResult < 3) {
    o.fileHash = buildUnnamed2093();
    o.location = 'foo';
  }
  buildCounterArtifactResult--;
  return o;
}

void checkArtifactResult(api.ArtifactResult o) {
  buildCounterArtifactResult++;
  if (buildCounterArtifactResult < 3) {
    checkUnnamed2093(o.fileHash!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterArtifactResult--;
}

core.List<core.String> buildUnnamed2094() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2094(core.List<core.String> o) {
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
    o.images = buildUnnamed2094();
    o.objects = buildArtifactObjects();
  }
  buildCounterArtifacts--;
  return o;
}

void checkArtifacts(api.Artifacts o) {
  buildCounterArtifacts++;
  if (buildCounterArtifacts < 3) {
    checkUnnamed2094(o.images!);
    checkArtifactObjects(o.objects!);
  }
  buildCounterArtifacts--;
}

core.List<core.String> buildUnnamed2095() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2095(core.List<core.String> o) {
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

core.List<api.Secret> buildUnnamed2096() {
  final o = <api.Secret>[];
  o.add(buildSecret());
  o.add(buildSecret());
  return o;
}

void checkUnnamed2096(core.List<api.Secret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecret(o[0]);
  checkSecret(o[1]);
}

core.List<api.BuildStep> buildUnnamed2097() {
  final o = <api.BuildStep>[];
  o.add(buildBuildStep());
  o.add(buildBuildStep());
  return o;
}

void checkUnnamed2097(core.List<api.BuildStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildStep(o[0]);
  checkBuildStep(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2098() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2098(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed2099() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2099(core.List<core.String> o) {
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

core.Map<core.String, api.TimeSpan> buildUnnamed2100() {
  final o = <core.String, api.TimeSpan>{};
  o['x'] = buildTimeSpan();
  o['y'] = buildTimeSpan();
  return o;
}

void checkUnnamed2100(core.Map<core.String, api.TimeSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSpan(o['x']!);
  checkTimeSpan(o['y']!);
}

core.List<api.Warning> buildUnnamed2101() {
  final o = <api.Warning>[];
  o.add(buildWarning());
  o.add(buildWarning());
  return o;
}

void checkUnnamed2101(core.List<api.Warning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarning(o[0]);
  checkWarning(o[1]);
}

core.int buildCounterBuild = 0;
api.Build buildBuild() {
  final o = api.Build();
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    o.artifacts = buildArtifacts();
    o.availableSecrets = buildSecrets();
    o.buildTriggerId = 'foo';
    o.createTime = 'foo';
    o.finishTime = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed2095();
    o.logUrl = 'foo';
    o.logsBucket = 'foo';
    o.name = 'foo';
    o.options = buildBuildOptions();
    o.projectId = 'foo';
    o.queueTtl = 'foo';
    o.results = buildResults();
    o.secrets = buildUnnamed2096();
    o.serviceAccount = 'foo';
    o.source = buildSource();
    o.sourceProvenance = buildSourceProvenance();
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusDetail = 'foo';
    o.steps = buildUnnamed2097();
    o.substitutions = buildUnnamed2098();
    o.tags = buildUnnamed2099();
    o.timeout = 'foo';
    o.timing = buildUnnamed2100();
    o.warnings = buildUnnamed2101();
  }
  buildCounterBuild--;
  return o;
}

void checkBuild(api.Build o) {
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
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
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed2095(o.images!);
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
    checkUnnamed2096(o.secrets!);
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
    checkUnnamed2097(o.steps!);
    checkUnnamed2098(o.substitutions!);
    checkUnnamed2099(o.tags!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkUnnamed2100(o.timing!);
    checkUnnamed2101(o.warnings!);
  }
  buildCounterBuild--;
}

core.int buildCounterBuildOperationMetadata = 0;
api.BuildOperationMetadata buildBuildOperationMetadata() {
  final o = api.BuildOperationMetadata();
  buildCounterBuildOperationMetadata++;
  if (buildCounterBuildOperationMetadata < 3) {
    o.build = buildBuild();
  }
  buildCounterBuildOperationMetadata--;
  return o;
}

void checkBuildOperationMetadata(api.BuildOperationMetadata o) {
  buildCounterBuildOperationMetadata++;
  if (buildCounterBuildOperationMetadata < 3) {
    checkBuild(o.build!);
  }
  buildCounterBuildOperationMetadata--;
}

core.List<core.String> buildUnnamed2102() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2102(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2103() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2103(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2104() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2104(core.List<core.String> o) {
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

core.List<api.Volume> buildUnnamed2105() {
  final o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed2105(core.List<api.Volume> o) {
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
    o.env = buildUnnamed2102();
    o.logStreamingOption = 'foo';
    o.logging = 'foo';
    o.machineType = 'foo';
    o.pool = buildPoolOption();
    o.requestedVerifyOption = 'foo';
    o.secretEnv = buildUnnamed2103();
    o.sourceProvenanceHash = buildUnnamed2104();
    o.substitutionOption = 'foo';
    o.volumes = buildUnnamed2105();
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
    checkUnnamed2102(o.env!);
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
    checkUnnamed2103(o.secretEnv!);
    checkUnnamed2104(o.sourceProvenanceHash!);
    unittest.expect(
      o.substitutionOption!,
      unittest.equals('foo'),
    );
    checkUnnamed2105(o.volumes!);
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildOptions--;
}

core.List<core.String> buildUnnamed2106() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2106(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2107() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2107(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2108() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2108(core.List<core.String> o) {
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

core.List<api.Volume> buildUnnamed2109() {
  final o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed2109(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.List<core.String> buildUnnamed2110() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2110(core.List<core.String> o) {
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
    o.args = buildUnnamed2106();
    o.dir = 'foo';
    o.entrypoint = 'foo';
    o.env = buildUnnamed2107();
    o.id = 'foo';
    o.name = 'foo';
    o.pullTiming = buildTimeSpan();
    o.secretEnv = buildUnnamed2108();
    o.status = 'foo';
    o.timeout = 'foo';
    o.timing = buildTimeSpan();
    o.volumes = buildUnnamed2109();
    o.waitFor = buildUnnamed2110();
  }
  buildCounterBuildStep--;
  return o;
}

void checkBuildStep(api.BuildStep o) {
  buildCounterBuildStep++;
  if (buildCounterBuildStep < 3) {
    checkUnnamed2106(o.args!);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entrypoint!,
      unittest.equals('foo'),
    );
    checkUnnamed2107(o.env!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.pullTiming!);
    checkUnnamed2108(o.secretEnv!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkTimeSpan(o.timing!);
    checkUnnamed2109(o.volumes!);
    checkUnnamed2110(o.waitFor!);
  }
  buildCounterBuildStep--;
}

core.List<core.String> buildUnnamed2111() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2111(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2112() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2112(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed2113() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2113(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed2114() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2114(core.List<core.String> o) {
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
    o.autodetect = true;
    o.build = buildBuild();
    o.createTime = 'foo';
    o.description = 'foo';
    o.disabled = true;
    o.filename = 'foo';
    o.filter = 'foo';
    o.github = buildGitHubEventsConfig();
    o.id = 'foo';
    o.ignoredFiles = buildUnnamed2111();
    o.includedFiles = buildUnnamed2112();
    o.name = 'foo';
    o.pubsubConfig = buildPubsubConfig();
    o.resourceName = 'foo';
    o.substitutions = buildUnnamed2113();
    o.tags = buildUnnamed2114();
    o.triggerTemplate = buildRepoSource();
    o.webhookConfig = buildWebhookConfig();
  }
  buildCounterBuildTrigger--;
  return o;
}

void checkBuildTrigger(api.BuildTrigger o) {
  buildCounterBuildTrigger++;
  if (buildCounterBuildTrigger < 3) {
    unittest.expect(o.autodetect!, unittest.isTrue);
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
      o.filename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkGitHubEventsConfig(o.github!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed2111(o.ignoredFiles!);
    checkUnnamed2112(o.includedFiles!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPubsubConfig(o.pubsubConfig!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    checkUnnamed2113(o.substitutions!);
    checkUnnamed2114(o.tags!);
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

core.int buildCounterCreateWorkerPoolOperationMetadata = 0;
api.CreateWorkerPoolOperationMetadata buildCreateWorkerPoolOperationMetadata() {
  final o = api.CreateWorkerPoolOperationMetadata();
  buildCounterCreateWorkerPoolOperationMetadata++;
  if (buildCounterCreateWorkerPoolOperationMetadata < 3) {
    o.completeTime = 'foo';
    o.createTime = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterCreateWorkerPoolOperationMetadata--;
  return o;
}

void checkCreateWorkerPoolOperationMetadata(
    api.CreateWorkerPoolOperationMetadata o) {
  buildCounterCreateWorkerPoolOperationMetadata++;
  if (buildCounterCreateWorkerPoolOperationMetadata < 3) {
    unittest.expect(
      o.completeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateWorkerPoolOperationMetadata--;
}

core.int buildCounterDeleteWorkerPoolOperationMetadata = 0;
api.DeleteWorkerPoolOperationMetadata buildDeleteWorkerPoolOperationMetadata() {
  final o = api.DeleteWorkerPoolOperationMetadata();
  buildCounterDeleteWorkerPoolOperationMetadata++;
  if (buildCounterDeleteWorkerPoolOperationMetadata < 3) {
    o.completeTime = 'foo';
    o.createTime = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterDeleteWorkerPoolOperationMetadata--;
  return o;
}

void checkDeleteWorkerPoolOperationMetadata(
    api.DeleteWorkerPoolOperationMetadata o) {
  buildCounterDeleteWorkerPoolOperationMetadata++;
  if (buildCounterDeleteWorkerPoolOperationMetadata < 3) {
    unittest.expect(
      o.completeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteWorkerPoolOperationMetadata--;
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

core.List<api.Hash> buildUnnamed2115() {
  final o = <api.Hash>[];
  o.add(buildHash());
  o.add(buildHash());
  return o;
}

void checkUnnamed2115(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed2115();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed2115(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.int buildCounterGitHubEventsConfig = 0;
api.GitHubEventsConfig buildGitHubEventsConfig() {
  final o = api.GitHubEventsConfig();
  buildCounterGitHubEventsConfig++;
  if (buildCounterGitHubEventsConfig < 3) {
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

core.int buildCounterHTTPDelivery = 0;
api.HTTPDelivery buildHTTPDelivery() {
  final o = api.HTTPDelivery();
  buildCounterHTTPDelivery++;
  if (buildCounterHTTPDelivery < 3) {
    o.uri = 'foo';
  }
  buildCounterHTTPDelivery--;
  return o;
}

void checkHTTPDelivery(api.HTTPDelivery o) {
  buildCounterHTTPDelivery++;
  if (buildCounterHTTPDelivery < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterHTTPDelivery--;
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

core.Map<core.String, core.Object> buildUnnamed2116() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2116(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2117() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2116());
  o.add(buildUnnamed2116());
  return o;
}

void checkUnnamed2117(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2116(o[0]);
  checkUnnamed2116(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed2117();
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
    checkUnnamed2117(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.Map<core.String, core.String> buildUnnamed2118() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2118(core.Map<core.String, core.String> o) {
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
    o.envMap = buildUnnamed2118();
    o.kmsKeyName = 'foo';
  }
  buildCounterInlineSecret--;
  return o;
}

void checkInlineSecret(api.InlineSecret o) {
  buildCounterInlineSecret++;
  if (buildCounterInlineSecret < 3) {
    checkUnnamed2118(o.envMap!);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterInlineSecret--;
}

core.List<api.BuildTrigger> buildUnnamed2119() {
  final o = <api.BuildTrigger>[];
  o.add(buildBuildTrigger());
  o.add(buildBuildTrigger());
  return o;
}

void checkUnnamed2119(core.List<api.BuildTrigger> o) {
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
    o.triggers = buildUnnamed2119();
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
    checkUnnamed2119(o.triggers!);
  }
  buildCounterListBuildTriggersResponse--;
}

core.List<api.Build> buildUnnamed2120() {
  final o = <api.Build>[];
  o.add(buildBuild());
  o.add(buildBuild());
  return o;
}

void checkUnnamed2120(core.List<api.Build> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuild(o[0]);
  checkBuild(o[1]);
}

core.int buildCounterListBuildsResponse = 0;
api.ListBuildsResponse buildListBuildsResponse() {
  final o = api.ListBuildsResponse();
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    o.builds = buildUnnamed2120();
    o.nextPageToken = 'foo';
  }
  buildCounterListBuildsResponse--;
  return o;
}

void checkListBuildsResponse(api.ListBuildsResponse o) {
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    checkUnnamed2120(o.builds!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBuildsResponse--;
}

core.List<api.WorkerPool> buildUnnamed2121() {
  final o = <api.WorkerPool>[];
  o.add(buildWorkerPool());
  o.add(buildWorkerPool());
  return o;
}

void checkUnnamed2121(core.List<api.WorkerPool> o) {
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
    o.workerPools = buildUnnamed2121();
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
    checkUnnamed2121(o.workerPools!);
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

core.Map<core.String, core.Object> buildUnnamed2122() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2122(core.Map<core.String, core.Object> o) {
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

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  final o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.filter = 'foo';
    o.httpDelivery = buildHTTPDelivery();
    o.slackDelivery = buildSlackDelivery();
    o.smtpDelivery = buildSMTPDelivery();
    o.structDelivery = buildUnnamed2122();
  }
  buildCounterNotification--;
  return o;
}

void checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkHTTPDelivery(o.httpDelivery!);
    checkSlackDelivery(o.slackDelivery!);
    checkSMTPDelivery(o.smtpDelivery!);
    checkUnnamed2122(o.structDelivery!);
  }
  buildCounterNotification--;
}

core.int buildCounterNotifierConfig = 0;
api.NotifierConfig buildNotifierConfig() {
  final o = api.NotifierConfig();
  buildCounterNotifierConfig++;
  if (buildCounterNotifierConfig < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildNotifierMetadata();
    o.spec = buildNotifierSpec();
  }
  buildCounterNotifierConfig--;
  return o;
}

void checkNotifierConfig(api.NotifierConfig o) {
  buildCounterNotifierConfig++;
  if (buildCounterNotifierConfig < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkNotifierMetadata(o.metadata!);
    checkNotifierSpec(o.spec!);
  }
  buildCounterNotifierConfig--;
}

core.int buildCounterNotifierMetadata = 0;
api.NotifierMetadata buildNotifierMetadata() {
  final o = api.NotifierMetadata();
  buildCounterNotifierMetadata++;
  if (buildCounterNotifierMetadata < 3) {
    o.name = 'foo';
    o.notifier = 'foo';
  }
  buildCounterNotifierMetadata--;
  return o;
}

void checkNotifierMetadata(api.NotifierMetadata o) {
  buildCounterNotifierMetadata++;
  if (buildCounterNotifierMetadata < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotifierMetadata--;
}

core.int buildCounterNotifierSecret = 0;
api.NotifierSecret buildNotifierSecret() {
  final o = api.NotifierSecret();
  buildCounterNotifierSecret++;
  if (buildCounterNotifierSecret < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterNotifierSecret--;
  return o;
}

void checkNotifierSecret(api.NotifierSecret o) {
  buildCounterNotifierSecret++;
  if (buildCounterNotifierSecret < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotifierSecret--;
}

core.int buildCounterNotifierSecretRef = 0;
api.NotifierSecretRef buildNotifierSecretRef() {
  final o = api.NotifierSecretRef();
  buildCounterNotifierSecretRef++;
  if (buildCounterNotifierSecretRef < 3) {
    o.secretRef = 'foo';
  }
  buildCounterNotifierSecretRef--;
  return o;
}

void checkNotifierSecretRef(api.NotifierSecretRef o) {
  buildCounterNotifierSecretRef++;
  if (buildCounterNotifierSecretRef < 3) {
    unittest.expect(
      o.secretRef!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotifierSecretRef--;
}

core.List<api.NotifierSecret> buildUnnamed2123() {
  final o = <api.NotifierSecret>[];
  o.add(buildNotifierSecret());
  o.add(buildNotifierSecret());
  return o;
}

void checkUnnamed2123(core.List<api.NotifierSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotifierSecret(o[0]);
  checkNotifierSecret(o[1]);
}

core.int buildCounterNotifierSpec = 0;
api.NotifierSpec buildNotifierSpec() {
  final o = api.NotifierSpec();
  buildCounterNotifierSpec++;
  if (buildCounterNotifierSpec < 3) {
    o.notification = buildNotification();
    o.secrets = buildUnnamed2123();
  }
  buildCounterNotifierSpec--;
  return o;
}

void checkNotifierSpec(api.NotifierSpec o) {
  buildCounterNotifierSpec++;
  if (buildCounterNotifierSpec < 3) {
    checkNotification(o.notification!);
    checkUnnamed2123(o.secrets!);
  }
  buildCounterNotifierSpec--;
}

core.Map<core.String, core.Object> buildUnnamed2124() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2124(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2125() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2125(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2124();
    o.name = 'foo';
    o.response = buildUnnamed2125();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed2124(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2125(o.response!);
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

core.Map<core.String, core.String> buildUnnamed2126() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2126(core.Map<core.String, core.String> o) {
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
    o.substitutions = buildUnnamed2126();
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
    checkUnnamed2126(o.substitutions!);
    unittest.expect(
      o.tagName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepoSource--;
}

core.List<core.String> buildUnnamed2127() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2127(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2128() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2128(core.List<core.String> o) {
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

core.List<api.BuiltImage> buildUnnamed2129() {
  final o = <api.BuiltImage>[];
  o.add(buildBuiltImage());
  o.add(buildBuiltImage());
  return o;
}

void checkUnnamed2129(core.List<api.BuiltImage> o) {
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
    o.buildStepImages = buildUnnamed2127();
    o.buildStepOutputs = buildUnnamed2128();
    o.images = buildUnnamed2129();
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
    checkUnnamed2127(o.buildStepImages!);
    checkUnnamed2128(o.buildStepOutputs!);
    checkUnnamed2129(o.images!);
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

core.List<core.String> buildUnnamed2130() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2130(core.List<core.String> o) {
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

core.int buildCounterSMTPDelivery = 0;
api.SMTPDelivery buildSMTPDelivery() {
  final o = api.SMTPDelivery();
  buildCounterSMTPDelivery++;
  if (buildCounterSMTPDelivery < 3) {
    o.fromAddress = 'foo';
    o.password = buildNotifierSecretRef();
    o.port = 'foo';
    o.recipientAddresses = buildUnnamed2130();
    o.senderAddress = 'foo';
    o.server = 'foo';
  }
  buildCounterSMTPDelivery--;
  return o;
}

void checkSMTPDelivery(api.SMTPDelivery o) {
  buildCounterSMTPDelivery++;
  if (buildCounterSMTPDelivery < 3) {
    unittest.expect(
      o.fromAddress!,
      unittest.equals('foo'),
    );
    checkNotifierSecretRef(o.password!);
    unittest.expect(
      o.port!,
      unittest.equals('foo'),
    );
    checkUnnamed2130(o.recipientAddresses!);
    unittest.expect(
      o.senderAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.server!,
      unittest.equals('foo'),
    );
  }
  buildCounterSMTPDelivery--;
}

core.Map<core.String, core.String> buildUnnamed2131() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2131(core.Map<core.String, core.String> o) {
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
    o.secretEnv = buildUnnamed2131();
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
    checkUnnamed2131(o.secretEnv!);
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

core.List<api.InlineSecret> buildUnnamed2132() {
  final o = <api.InlineSecret>[];
  o.add(buildInlineSecret());
  o.add(buildInlineSecret());
  return o;
}

void checkUnnamed2132(core.List<api.InlineSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineSecret(o[0]);
  checkInlineSecret(o[1]);
}

core.List<api.SecretManagerSecret> buildUnnamed2133() {
  final o = <api.SecretManagerSecret>[];
  o.add(buildSecretManagerSecret());
  o.add(buildSecretManagerSecret());
  return o;
}

void checkUnnamed2133(core.List<api.SecretManagerSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretManagerSecret(o[0]);
  checkSecretManagerSecret(o[1]);
}

core.int buildCounterSecrets = 0;
api.Secrets buildSecrets() {
  final o = api.Secrets();
  buildCounterSecrets++;
  if (buildCounterSecrets < 3) {
    o.inline = buildUnnamed2132();
    o.secretManager = buildUnnamed2133();
  }
  buildCounterSecrets--;
  return o;
}

void checkSecrets(api.Secrets o) {
  buildCounterSecrets++;
  if (buildCounterSecrets < 3) {
    checkUnnamed2132(o.inline!);
    checkUnnamed2133(o.secretManager!);
  }
  buildCounterSecrets--;
}

core.int buildCounterSlackDelivery = 0;
api.SlackDelivery buildSlackDelivery() {
  final o = api.SlackDelivery();
  buildCounterSlackDelivery++;
  if (buildCounterSlackDelivery < 3) {
    o.webhookUri = buildNotifierSecretRef();
  }
  buildCounterSlackDelivery--;
  return o;
}

void checkSlackDelivery(api.SlackDelivery o) {
  buildCounterSlackDelivery++;
  if (buildCounterSlackDelivery < 3) {
    checkNotifierSecretRef(o.webhookUri!);
  }
  buildCounterSlackDelivery--;
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

core.Map<core.String, api.FileHashes> buildUnnamed2134() {
  final o = <core.String, api.FileHashes>{};
  o['x'] = buildFileHashes();
  o['y'] = buildFileHashes();
  return o;
}

void checkUnnamed2134(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSourceProvenance = 0;
api.SourceProvenance buildSourceProvenance() {
  final o = api.SourceProvenance();
  buildCounterSourceProvenance++;
  if (buildCounterSourceProvenance < 3) {
    o.fileHashes = buildUnnamed2134();
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
    checkUnnamed2134(o.fileHashes!);
    checkRepoSource(o.resolvedRepoSource!);
    checkStorageSource(o.resolvedStorageSource!);
    checkStorageSourceManifest(o.resolvedStorageSourceManifest!);
  }
  buildCounterSourceProvenance--;
}

core.Map<core.String, core.Object> buildUnnamed2135() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2135(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2136() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2135());
  o.add(buildUnnamed2135());
  return o;
}

void checkUnnamed2136(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2135(o[0]);
  checkUnnamed2135(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2136();
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
    checkUnnamed2136(o.details!);
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

core.int buildCounterUpdateWorkerPoolOperationMetadata = 0;
api.UpdateWorkerPoolOperationMetadata buildUpdateWorkerPoolOperationMetadata() {
  final o = api.UpdateWorkerPoolOperationMetadata();
  buildCounterUpdateWorkerPoolOperationMetadata++;
  if (buildCounterUpdateWorkerPoolOperationMetadata < 3) {
    o.completeTime = 'foo';
    o.createTime = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterUpdateWorkerPoolOperationMetadata--;
  return o;
}

void checkUpdateWorkerPoolOperationMetadata(
    api.UpdateWorkerPoolOperationMetadata o) {
  buildCounterUpdateWorkerPoolOperationMetadata++;
  if (buildCounterUpdateWorkerPoolOperationMetadata < 3) {
    unittest.expect(
      o.completeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateWorkerPoolOperationMetadata--;
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

core.Map<core.String, core.String> buildUnnamed2137() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2137(core.Map<core.String, core.String> o) {
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
    o.annotations = buildUnnamed2137();
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
    checkUnnamed2137(o.annotations!);
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
  unittest.group('obj-schema-ArtifactObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactObjects.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArtifactObjects(od);
    });
  });

  unittest.group('obj-schema-ArtifactResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArtifactResult(od);
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

  unittest.group('obj-schema-Build', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuild();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Build.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuild(od);
    });
  });

  unittest.group('obj-schema-BuildOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildOperationMetadata(od);
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

  unittest.group('obj-schema-CreateWorkerPoolOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateWorkerPoolOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateWorkerPoolOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateWorkerPoolOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-DeleteWorkerPoolOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteWorkerPoolOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteWorkerPoolOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteWorkerPoolOperationMetadata(od);
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

  unittest.group('obj-schema-FileHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileHashes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileHashes(od);
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

  unittest.group('obj-schema-HTTPDelivery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHTTPDelivery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HTTPDelivery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHTTPDelivery(od);
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

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-NotifierConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifierConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotifierConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotifierConfig(od);
    });
  });

  unittest.group('obj-schema-NotifierMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifierMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotifierMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotifierMetadata(od);
    });
  });

  unittest.group('obj-schema-NotifierSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifierSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotifierSecret.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotifierSecret(od);
    });
  });

  unittest.group('obj-schema-NotifierSecretRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifierSecretRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotifierSecretRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotifierSecretRef(od);
    });
  });

  unittest.group('obj-schema-NotifierSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifierSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotifierSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotifierSpec(od);
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

  unittest.group('obj-schema-SMTPDelivery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSMTPDelivery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SMTPDelivery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSMTPDelivery(od);
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

  unittest.group('obj-schema-SlackDelivery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlackDelivery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlackDelivery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlackDelivery(od);
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

  unittest.group('obj-schema-UpdateWorkerPoolOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateWorkerPoolOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateWorkerPoolOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateWorkerPoolOperationMetadata(od);
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

  unittest.group('resource-ProjectsLocationsBuildsResource', () {
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
}
