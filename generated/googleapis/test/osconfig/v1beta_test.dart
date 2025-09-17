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

import 'package:googleapis/osconfig/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAptRepository = 0;
api.AptRepository buildAptRepository() {
  final o = api.AptRepository();
  buildCounterAptRepository++;
  if (buildCounterAptRepository < 3) {
    o.archiveType = 'foo';
    o.components = buildUnnamed0();
    o.distribution = 'foo';
    o.gpgKey = 'foo';
    o.uri = 'foo';
  }
  buildCounterAptRepository--;
  return o;
}

void checkAptRepository(api.AptRepository o) {
  buildCounterAptRepository++;
  if (buildCounterAptRepository < 3) {
    unittest.expect(o.archiveType!, unittest.equals('foo'));
    checkUnnamed0(o.components!);
    unittest.expect(o.distribution!, unittest.equals('foo'));
    unittest.expect(o.gpgKey!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterAptRepository--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAptSettings = 0;
api.AptSettings buildAptSettings() {
  final o = api.AptSettings();
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    o.excludes = buildUnnamed1();
    o.exclusivePackages = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterAptSettings--;
  return o;
}

void checkAptSettings(api.AptSettings o) {
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    checkUnnamed1(o.excludes!);
    checkUnnamed2(o.exclusivePackages!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterAptSettings--;
}

core.List<api.AssignmentGroupLabel> buildUnnamed3() => [
  buildAssignmentGroupLabel(),
  buildAssignmentGroupLabel(),
];

void checkUnnamed3(core.List<api.AssignmentGroupLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignmentGroupLabel(o[0]);
  checkAssignmentGroupLabel(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AssignmentOsType> buildUnnamed6() => [
  buildAssignmentOsType(),
  buildAssignmentOsType(),
];

void checkUnnamed6(core.List<api.AssignmentOsType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignmentOsType(o[0]);
  checkAssignmentOsType(o[1]);
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssignment = 0;
api.Assignment buildAssignment() {
  final o = api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.groupLabels = buildUnnamed3();
    o.instanceNamePrefixes = buildUnnamed4();
    o.instances = buildUnnamed5();
    o.osTypes = buildUnnamed6();
    o.zones = buildUnnamed7();
  }
  buildCounterAssignment--;
  return o;
}

void checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    checkUnnamed3(o.groupLabels!);
    checkUnnamed4(o.instanceNamePrefixes!);
    checkUnnamed5(o.instances!);
    checkUnnamed6(o.osTypes!);
    checkUnnamed7(o.zones!);
  }
  buildCounterAssignment--;
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAssignmentGroupLabel = 0;
api.AssignmentGroupLabel buildAssignmentGroupLabel() {
  final o = api.AssignmentGroupLabel();
  buildCounterAssignmentGroupLabel++;
  if (buildCounterAssignmentGroupLabel < 3) {
    o.labels = buildUnnamed8();
  }
  buildCounterAssignmentGroupLabel--;
  return o;
}

void checkAssignmentGroupLabel(api.AssignmentGroupLabel o) {
  buildCounterAssignmentGroupLabel++;
  if (buildCounterAssignmentGroupLabel < 3) {
    checkUnnamed8(o.labels!);
  }
  buildCounterAssignmentGroupLabel--;
}

core.int buildCounterAssignmentOsType = 0;
api.AssignmentOsType buildAssignmentOsType() {
  final o = api.AssignmentOsType();
  buildCounterAssignmentOsType++;
  if (buildCounterAssignmentOsType < 3) {
    o.osArchitecture = 'foo';
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterAssignmentOsType--;
  return o;
}

void checkAssignmentOsType(api.AssignmentOsType o) {
  buildCounterAssignmentOsType++;
  if (buildCounterAssignmentOsType < 3) {
    unittest.expect(o.osArchitecture!, unittest.equals('foo'));
    unittest.expect(o.osShortName!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
  }
  buildCounterAssignmentOsType--;
}

core.int buildCounterCancelPatchJobRequest = 0;
api.CancelPatchJobRequest buildCancelPatchJobRequest() {
  final o = api.CancelPatchJobRequest();
  buildCounterCancelPatchJobRequest++;
  if (buildCounterCancelPatchJobRequest < 3) {}
  buildCounterCancelPatchJobRequest--;
  return o;
}

void checkCancelPatchJobRequest(api.CancelPatchJobRequest o) {
  buildCounterCancelPatchJobRequest++;
  if (buildCounterCancelPatchJobRequest < 3) {}
  buildCounterCancelPatchJobRequest--;
}

core.List<api.EffectiveGuestPolicySourcedPackageRepository> buildUnnamed9() => [
  buildEffectiveGuestPolicySourcedPackageRepository(),
  buildEffectiveGuestPolicySourcedPackageRepository(),
];

void checkUnnamed9(
  core.List<api.EffectiveGuestPolicySourcedPackageRepository> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveGuestPolicySourcedPackageRepository(o[0]);
  checkEffectiveGuestPolicySourcedPackageRepository(o[1]);
}

core.List<api.EffectiveGuestPolicySourcedPackage> buildUnnamed10() => [
  buildEffectiveGuestPolicySourcedPackage(),
  buildEffectiveGuestPolicySourcedPackage(),
];

void checkUnnamed10(core.List<api.EffectiveGuestPolicySourcedPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveGuestPolicySourcedPackage(o[0]);
  checkEffectiveGuestPolicySourcedPackage(o[1]);
}

core.List<api.EffectiveGuestPolicySourcedSoftwareRecipe> buildUnnamed11() => [
  buildEffectiveGuestPolicySourcedSoftwareRecipe(),
  buildEffectiveGuestPolicySourcedSoftwareRecipe(),
];

void checkUnnamed11(
  core.List<api.EffectiveGuestPolicySourcedSoftwareRecipe> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveGuestPolicySourcedSoftwareRecipe(o[0]);
  checkEffectiveGuestPolicySourcedSoftwareRecipe(o[1]);
}

core.int buildCounterEffectiveGuestPolicy = 0;
api.EffectiveGuestPolicy buildEffectiveGuestPolicy() {
  final o = api.EffectiveGuestPolicy();
  buildCounterEffectiveGuestPolicy++;
  if (buildCounterEffectiveGuestPolicy < 3) {
    o.packageRepositories = buildUnnamed9();
    o.packages = buildUnnamed10();
    o.softwareRecipes = buildUnnamed11();
  }
  buildCounterEffectiveGuestPolicy--;
  return o;
}

void checkEffectiveGuestPolicy(api.EffectiveGuestPolicy o) {
  buildCounterEffectiveGuestPolicy++;
  if (buildCounterEffectiveGuestPolicy < 3) {
    checkUnnamed9(o.packageRepositories!);
    checkUnnamed10(o.packages!);
    checkUnnamed11(o.softwareRecipes!);
  }
  buildCounterEffectiveGuestPolicy--;
}

core.int buildCounterEffectiveGuestPolicySourcedPackage = 0;
api.EffectiveGuestPolicySourcedPackage
buildEffectiveGuestPolicySourcedPackage() {
  final o = api.EffectiveGuestPolicySourcedPackage();
  buildCounterEffectiveGuestPolicySourcedPackage++;
  if (buildCounterEffectiveGuestPolicySourcedPackage < 3) {
    o.package = buildPackage();
    o.source = 'foo';
  }
  buildCounterEffectiveGuestPolicySourcedPackage--;
  return o;
}

void checkEffectiveGuestPolicySourcedPackage(
  api.EffectiveGuestPolicySourcedPackage o,
) {
  buildCounterEffectiveGuestPolicySourcedPackage++;
  if (buildCounterEffectiveGuestPolicySourcedPackage < 3) {
    checkPackage(o.package!);
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterEffectiveGuestPolicySourcedPackage--;
}

core.int buildCounterEffectiveGuestPolicySourcedPackageRepository = 0;
api.EffectiveGuestPolicySourcedPackageRepository
buildEffectiveGuestPolicySourcedPackageRepository() {
  final o = api.EffectiveGuestPolicySourcedPackageRepository();
  buildCounterEffectiveGuestPolicySourcedPackageRepository++;
  if (buildCounterEffectiveGuestPolicySourcedPackageRepository < 3) {
    o.packageRepository = buildPackageRepository();
    o.source = 'foo';
  }
  buildCounterEffectiveGuestPolicySourcedPackageRepository--;
  return o;
}

void checkEffectiveGuestPolicySourcedPackageRepository(
  api.EffectiveGuestPolicySourcedPackageRepository o,
) {
  buildCounterEffectiveGuestPolicySourcedPackageRepository++;
  if (buildCounterEffectiveGuestPolicySourcedPackageRepository < 3) {
    checkPackageRepository(o.packageRepository!);
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterEffectiveGuestPolicySourcedPackageRepository--;
}

core.int buildCounterEffectiveGuestPolicySourcedSoftwareRecipe = 0;
api.EffectiveGuestPolicySourcedSoftwareRecipe
buildEffectiveGuestPolicySourcedSoftwareRecipe() {
  final o = api.EffectiveGuestPolicySourcedSoftwareRecipe();
  buildCounterEffectiveGuestPolicySourcedSoftwareRecipe++;
  if (buildCounterEffectiveGuestPolicySourcedSoftwareRecipe < 3) {
    o.softwareRecipe = buildSoftwareRecipe();
    o.source = 'foo';
  }
  buildCounterEffectiveGuestPolicySourcedSoftwareRecipe--;
  return o;
}

void checkEffectiveGuestPolicySourcedSoftwareRecipe(
  api.EffectiveGuestPolicySourcedSoftwareRecipe o,
) {
  buildCounterEffectiveGuestPolicySourcedSoftwareRecipe++;
  if (buildCounterEffectiveGuestPolicySourcedSoftwareRecipe < 3) {
    checkSoftwareRecipe(o.softwareRecipe!);
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterEffectiveGuestPolicySourcedSoftwareRecipe--;
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

core.int buildCounterExecStep = 0;
api.ExecStep buildExecStep() {
  final o = api.ExecStep();
  buildCounterExecStep++;
  if (buildCounterExecStep < 3) {
    o.linuxExecStepConfig = buildExecStepConfig();
    o.windowsExecStepConfig = buildExecStepConfig();
  }
  buildCounterExecStep--;
  return o;
}

void checkExecStep(api.ExecStep o) {
  buildCounterExecStep++;
  if (buildCounterExecStep < 3) {
    checkExecStepConfig(o.linuxExecStepConfig!);
    checkExecStepConfig(o.windowsExecStepConfig!);
  }
  buildCounterExecStep--;
}

core.List<core.int> buildUnnamed12() => [42, 42];

void checkUnnamed12(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterExecStepConfig = 0;
api.ExecStepConfig buildExecStepConfig() {
  final o = api.ExecStepConfig();
  buildCounterExecStepConfig++;
  if (buildCounterExecStepConfig < 3) {
    o.allowedSuccessCodes = buildUnnamed12();
    o.gcsObject = buildGcsObject();
    o.interpreter = 'foo';
    o.localPath = 'foo';
  }
  buildCounterExecStepConfig--;
  return o;
}

void checkExecStepConfig(api.ExecStepConfig o) {
  buildCounterExecStepConfig++;
  if (buildCounterExecStepConfig < 3) {
    checkUnnamed12(o.allowedSuccessCodes!);
    checkGcsObject(o.gcsObject!);
    unittest.expect(o.interpreter!, unittest.equals('foo'));
    unittest.expect(o.localPath!, unittest.equals('foo'));
  }
  buildCounterExecStepConfig--;
}

core.int buildCounterExecutePatchJobRequest = 0;
api.ExecutePatchJobRequest buildExecutePatchJobRequest() {
  final o = api.ExecutePatchJobRequest();
  buildCounterExecutePatchJobRequest++;
  if (buildCounterExecutePatchJobRequest < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.dryRun = true;
    o.duration = 'foo';
    o.instanceFilter = buildPatchInstanceFilter();
    o.patchConfig = buildPatchConfig();
    o.rollout = buildPatchRollout();
  }
  buildCounterExecutePatchJobRequest--;
  return o;
}

void checkExecutePatchJobRequest(api.ExecutePatchJobRequest o) {
  buildCounterExecutePatchJobRequest++;
  if (buildCounterExecutePatchJobRequest < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkPatchInstanceFilter(o.instanceFilter!);
    checkPatchConfig(o.patchConfig!);
    checkPatchRollout(o.rollout!);
  }
  buildCounterExecutePatchJobRequest--;
}

core.int buildCounterFixedOrPercent = 0;
api.FixedOrPercent buildFixedOrPercent() {
  final o = api.FixedOrPercent();
  buildCounterFixedOrPercent++;
  if (buildCounterFixedOrPercent < 3) {
    o.fixed = 42;
    o.percent = 42;
  }
  buildCounterFixedOrPercent--;
  return o;
}

void checkFixedOrPercent(api.FixedOrPercent o) {
  buildCounterFixedOrPercent++;
  if (buildCounterFixedOrPercent < 3) {
    unittest.expect(o.fixed!, unittest.equals(42));
    unittest.expect(o.percent!, unittest.equals(42));
  }
  buildCounterFixedOrPercent--;
}

core.int buildCounterGcsObject = 0;
api.GcsObject buildGcsObject() {
  final o = api.GcsObject();
  buildCounterGcsObject++;
  if (buildCounterGcsObject < 3) {
    o.bucket = 'foo';
    o.generationNumber = 'foo';
    o.object = 'foo';
  }
  buildCounterGcsObject--;
  return o;
}

void checkGcsObject(api.GcsObject o) {
  buildCounterGcsObject++;
  if (buildCounterGcsObject < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.generationNumber!, unittest.equals('foo'));
    unittest.expect(o.object!, unittest.equals('foo'));
  }
  buildCounterGcsObject--;
}

core.int buildCounterGooRepository = 0;
api.GooRepository buildGooRepository() {
  final o = api.GooRepository();
  buildCounterGooRepository++;
  if (buildCounterGooRepository < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterGooRepository--;
  return o;
}

void checkGooRepository(api.GooRepository o) {
  buildCounterGooRepository++;
  if (buildCounterGooRepository < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGooRepository--;
}

core.int buildCounterGooSettings = 0;
api.GooSettings buildGooSettings() {
  final o = api.GooSettings();
  buildCounterGooSettings++;
  if (buildCounterGooSettings < 3) {}
  buildCounterGooSettings--;
  return o;
}

void checkGooSettings(api.GooSettings o) {
  buildCounterGooSettings++;
  if (buildCounterGooSettings < 3) {}
  buildCounterGooSettings--;
}

core.List<api.PackageRepository> buildUnnamed13() => [
  buildPackageRepository(),
  buildPackageRepository(),
];

void checkUnnamed13(core.List<api.PackageRepository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageRepository(o[0]);
  checkPackageRepository(o[1]);
}

core.List<api.Package> buildUnnamed14() => [buildPackage(), buildPackage()];

void checkUnnamed14(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.List<api.SoftwareRecipe> buildUnnamed15() => [
  buildSoftwareRecipe(),
  buildSoftwareRecipe(),
];

void checkUnnamed15(core.List<api.SoftwareRecipe> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSoftwareRecipe(o[0]);
  checkSoftwareRecipe(o[1]);
}

core.int buildCounterGuestPolicy = 0;
api.GuestPolicy buildGuestPolicy() {
  final o = api.GuestPolicy();
  buildCounterGuestPolicy++;
  if (buildCounterGuestPolicy < 3) {
    o.assignment = buildAssignment();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.packageRepositories = buildUnnamed13();
    o.packages = buildUnnamed14();
    o.recipes = buildUnnamed15();
    o.updateTime = 'foo';
  }
  buildCounterGuestPolicy--;
  return o;
}

void checkGuestPolicy(api.GuestPolicy o) {
  buildCounterGuestPolicy++;
  if (buildCounterGuestPolicy < 3) {
    checkAssignment(o.assignment!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed13(o.packageRepositories!);
    checkUnnamed14(o.packages!);
    checkUnnamed15(o.recipes!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGuestPolicy--;
}

core.List<api.GuestPolicy> buildUnnamed16() => [
  buildGuestPolicy(),
  buildGuestPolicy(),
];

void checkUnnamed16(core.List<api.GuestPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestPolicy(o[0]);
  checkGuestPolicy(o[1]);
}

core.int buildCounterListGuestPoliciesResponse = 0;
api.ListGuestPoliciesResponse buildListGuestPoliciesResponse() {
  final o = api.ListGuestPoliciesResponse();
  buildCounterListGuestPoliciesResponse++;
  if (buildCounterListGuestPoliciesResponse < 3) {
    o.guestPolicies = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListGuestPoliciesResponse--;
  return o;
}

void checkListGuestPoliciesResponse(api.ListGuestPoliciesResponse o) {
  buildCounterListGuestPoliciesResponse++;
  if (buildCounterListGuestPoliciesResponse < 3) {
    checkUnnamed16(o.guestPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGuestPoliciesResponse--;
}

core.List<api.PatchDeployment> buildUnnamed17() => [
  buildPatchDeployment(),
  buildPatchDeployment(),
];

void checkUnnamed17(core.List<api.PatchDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchDeployment(o[0]);
  checkPatchDeployment(o[1]);
}

core.int buildCounterListPatchDeploymentsResponse = 0;
api.ListPatchDeploymentsResponse buildListPatchDeploymentsResponse() {
  final o = api.ListPatchDeploymentsResponse();
  buildCounterListPatchDeploymentsResponse++;
  if (buildCounterListPatchDeploymentsResponse < 3) {
    o.nextPageToken = 'foo';
    o.patchDeployments = buildUnnamed17();
  }
  buildCounterListPatchDeploymentsResponse--;
  return o;
}

void checkListPatchDeploymentsResponse(api.ListPatchDeploymentsResponse o) {
  buildCounterListPatchDeploymentsResponse++;
  if (buildCounterListPatchDeploymentsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.patchDeployments!);
  }
  buildCounterListPatchDeploymentsResponse--;
}

core.List<api.PatchJobInstanceDetails> buildUnnamed18() => [
  buildPatchJobInstanceDetails(),
  buildPatchJobInstanceDetails(),
];

void checkUnnamed18(core.List<api.PatchJobInstanceDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchJobInstanceDetails(o[0]);
  checkPatchJobInstanceDetails(o[1]);
}

core.int buildCounterListPatchJobInstanceDetailsResponse = 0;
api.ListPatchJobInstanceDetailsResponse
buildListPatchJobInstanceDetailsResponse() {
  final o = api.ListPatchJobInstanceDetailsResponse();
  buildCounterListPatchJobInstanceDetailsResponse++;
  if (buildCounterListPatchJobInstanceDetailsResponse < 3) {
    o.nextPageToken = 'foo';
    o.patchJobInstanceDetails = buildUnnamed18();
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
  return o;
}

void checkListPatchJobInstanceDetailsResponse(
  api.ListPatchJobInstanceDetailsResponse o,
) {
  buildCounterListPatchJobInstanceDetailsResponse++;
  if (buildCounterListPatchJobInstanceDetailsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.patchJobInstanceDetails!);
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
}

core.List<api.PatchJob> buildUnnamed19() => [buildPatchJob(), buildPatchJob()];

void checkUnnamed19(core.List<api.PatchJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchJob(o[0]);
  checkPatchJob(o[1]);
}

core.int buildCounterListPatchJobsResponse = 0;
api.ListPatchJobsResponse buildListPatchJobsResponse() {
  final o = api.ListPatchJobsResponse();
  buildCounterListPatchJobsResponse++;
  if (buildCounterListPatchJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.patchJobs = buildUnnamed19();
  }
  buildCounterListPatchJobsResponse--;
  return o;
}

void checkListPatchJobsResponse(api.ListPatchJobsResponse o) {
  buildCounterListPatchJobsResponse++;
  if (buildCounterListPatchJobsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.patchJobs!);
  }
  buildCounterListPatchJobsResponse--;
}

core.int buildCounterLookupEffectiveGuestPolicyRequest = 0;
api.LookupEffectiveGuestPolicyRequest buildLookupEffectiveGuestPolicyRequest() {
  final o = api.LookupEffectiveGuestPolicyRequest();
  buildCounterLookupEffectiveGuestPolicyRequest++;
  if (buildCounterLookupEffectiveGuestPolicyRequest < 3) {
    o.osArchitecture = 'foo';
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterLookupEffectiveGuestPolicyRequest--;
  return o;
}

void checkLookupEffectiveGuestPolicyRequest(
  api.LookupEffectiveGuestPolicyRequest o,
) {
  buildCounterLookupEffectiveGuestPolicyRequest++;
  if (buildCounterLookupEffectiveGuestPolicyRequest < 3) {
    unittest.expect(o.osArchitecture!, unittest.equals('foo'));
    unittest.expect(o.osShortName!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
  }
  buildCounterLookupEffectiveGuestPolicyRequest--;
}

core.int buildCounterMonthlySchedule = 0;
api.MonthlySchedule buildMonthlySchedule() {
  final o = api.MonthlySchedule();
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    o.monthDay = 42;
    o.weekDayOfMonth = buildWeekDayOfMonth();
  }
  buildCounterMonthlySchedule--;
  return o;
}

void checkMonthlySchedule(api.MonthlySchedule o) {
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    unittest.expect(o.monthDay!, unittest.equals(42));
    checkWeekDayOfMonth(o.weekDayOfMonth!);
  }
  buildCounterMonthlySchedule--;
}

core.int buildCounterOneTimeSchedule = 0;
api.OneTimeSchedule buildOneTimeSchedule() {
  final o = api.OneTimeSchedule();
  buildCounterOneTimeSchedule++;
  if (buildCounterOneTimeSchedule < 3) {
    o.executeTime = 'foo';
  }
  buildCounterOneTimeSchedule--;
  return o;
}

void checkOneTimeSchedule(api.OneTimeSchedule o) {
  buildCounterOneTimeSchedule++;
  if (buildCounterOneTimeSchedule < 3) {
    unittest.expect(o.executeTime!, unittest.equals('foo'));
  }
  buildCounterOneTimeSchedule--;
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  final o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.desiredState = 'foo';
    o.manager = 'foo';
    o.name = 'foo';
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    unittest.expect(o.desiredState!, unittest.equals('foo'));
    unittest.expect(o.manager!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterPackage--;
}

core.int buildCounterPackageRepository = 0;
api.PackageRepository buildPackageRepository() {
  final o = api.PackageRepository();
  buildCounterPackageRepository++;
  if (buildCounterPackageRepository < 3) {
    o.apt = buildAptRepository();
    o.goo = buildGooRepository();
    o.yum = buildYumRepository();
    o.zypper = buildZypperRepository();
  }
  buildCounterPackageRepository--;
  return o;
}

void checkPackageRepository(api.PackageRepository o) {
  buildCounterPackageRepository++;
  if (buildCounterPackageRepository < 3) {
    checkAptRepository(o.apt!);
    checkGooRepository(o.goo!);
    checkYumRepository(o.yum!);
    checkZypperRepository(o.zypper!);
  }
  buildCounterPackageRepository--;
}

core.int buildCounterPatchConfig = 0;
api.PatchConfig buildPatchConfig() {
  final o = api.PatchConfig();
  buildCounterPatchConfig++;
  if (buildCounterPatchConfig < 3) {
    o.apt = buildAptSettings();
    o.goo = buildGooSettings();
    o.migInstancesAllowed = true;
    o.postStep = buildExecStep();
    o.preStep = buildExecStep();
    o.rebootConfig = 'foo';
    o.windowsUpdate = buildWindowsUpdateSettings();
    o.yum = buildYumSettings();
    o.zypper = buildZypperSettings();
  }
  buildCounterPatchConfig--;
  return o;
}

void checkPatchConfig(api.PatchConfig o) {
  buildCounterPatchConfig++;
  if (buildCounterPatchConfig < 3) {
    checkAptSettings(o.apt!);
    checkGooSettings(o.goo!);
    unittest.expect(o.migInstancesAllowed!, unittest.isTrue);
    checkExecStep(o.postStep!);
    checkExecStep(o.preStep!);
    unittest.expect(o.rebootConfig!, unittest.equals('foo'));
    checkWindowsUpdateSettings(o.windowsUpdate!);
    checkYumSettings(o.yum!);
    checkZypperSettings(o.zypper!);
  }
  buildCounterPatchConfig--;
}

core.int buildCounterPatchDeployment = 0;
api.PatchDeployment buildPatchDeployment() {
  final o = api.PatchDeployment();
  buildCounterPatchDeployment++;
  if (buildCounterPatchDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.duration = 'foo';
    o.instanceFilter = buildPatchInstanceFilter();
    o.lastExecuteTime = 'foo';
    o.name = 'foo';
    o.oneTimeSchedule = buildOneTimeSchedule();
    o.patchConfig = buildPatchConfig();
    o.recurringSchedule = buildRecurringSchedule();
    o.rollout = buildPatchRollout();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPatchDeployment--;
  return o;
}

void checkPatchDeployment(api.PatchDeployment o) {
  buildCounterPatchDeployment++;
  if (buildCounterPatchDeployment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkPatchInstanceFilter(o.instanceFilter!);
    unittest.expect(o.lastExecuteTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOneTimeSchedule(o.oneTimeSchedule!);
    checkPatchConfig(o.patchConfig!);
    checkRecurringSchedule(o.recurringSchedule!);
    checkPatchRollout(o.rollout!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPatchDeployment--;
}

core.List<api.PatchInstanceFilterGroupLabel> buildUnnamed20() => [
  buildPatchInstanceFilterGroupLabel(),
  buildPatchInstanceFilterGroupLabel(),
];

void checkUnnamed20(core.List<api.PatchInstanceFilterGroupLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchInstanceFilterGroupLabel(o[0]);
  checkPatchInstanceFilterGroupLabel(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterPatchInstanceFilter = 0;
api.PatchInstanceFilter buildPatchInstanceFilter() {
  final o = api.PatchInstanceFilter();
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    o.all = true;
    o.groupLabels = buildUnnamed20();
    o.instanceNamePrefixes = buildUnnamed21();
    o.instances = buildUnnamed22();
    o.zones = buildUnnamed23();
  }
  buildCounterPatchInstanceFilter--;
  return o;
}

void checkPatchInstanceFilter(api.PatchInstanceFilter o) {
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed20(o.groupLabels!);
    checkUnnamed21(o.instanceNamePrefixes!);
    checkUnnamed22(o.instances!);
    checkUnnamed23(o.zones!);
  }
  buildCounterPatchInstanceFilter--;
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPatchInstanceFilterGroupLabel = 0;
api.PatchInstanceFilterGroupLabel buildPatchInstanceFilterGroupLabel() {
  final o = api.PatchInstanceFilterGroupLabel();
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    o.labels = buildUnnamed24();
  }
  buildCounterPatchInstanceFilterGroupLabel--;
  return o;
}

void checkPatchInstanceFilterGroupLabel(api.PatchInstanceFilterGroupLabel o) {
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    checkUnnamed24(o.labels!);
  }
  buildCounterPatchInstanceFilterGroupLabel--;
}

core.int buildCounterPatchJob = 0;
api.PatchJob buildPatchJob() {
  final o = api.PatchJob();
  buildCounterPatchJob++;
  if (buildCounterPatchJob < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.dryRun = true;
    o.duration = 'foo';
    o.errorMessage = 'foo';
    o.instanceDetailsSummary = buildPatchJobInstanceDetailsSummary();
    o.instanceFilter = buildPatchInstanceFilter();
    o.name = 'foo';
    o.patchConfig = buildPatchConfig();
    o.patchDeployment = 'foo';
    o.percentComplete = 42.0;
    o.rollout = buildPatchRollout();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPatchJob--;
  return o;
}

void checkPatchJob(api.PatchJob o) {
  buildCounterPatchJob++;
  if (buildCounterPatchJob < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    checkPatchJobInstanceDetailsSummary(o.instanceDetailsSummary!);
    checkPatchInstanceFilter(o.instanceFilter!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPatchConfig(o.patchConfig!);
    unittest.expect(o.patchDeployment!, unittest.equals('foo'));
    unittest.expect(o.percentComplete!, unittest.equals(42.0));
    checkPatchRollout(o.rollout!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPatchJob--;
}

core.int buildCounterPatchJobInstanceDetails = 0;
api.PatchJobInstanceDetails buildPatchJobInstanceDetails() {
  final o = api.PatchJobInstanceDetails();
  buildCounterPatchJobInstanceDetails++;
  if (buildCounterPatchJobInstanceDetails < 3) {
    o.attemptCount = 'foo';
    o.failureReason = 'foo';
    o.instanceSystemId = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterPatchJobInstanceDetails--;
  return o;
}

void checkPatchJobInstanceDetails(api.PatchJobInstanceDetails o) {
  buildCounterPatchJobInstanceDetails++;
  if (buildCounterPatchJobInstanceDetails < 3) {
    unittest.expect(o.attemptCount!, unittest.equals('foo'));
    unittest.expect(o.failureReason!, unittest.equals('foo'));
    unittest.expect(o.instanceSystemId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterPatchJobInstanceDetails--;
}

core.int buildCounterPatchJobInstanceDetailsSummary = 0;
api.PatchJobInstanceDetailsSummary buildPatchJobInstanceDetailsSummary() {
  final o = api.PatchJobInstanceDetailsSummary();
  buildCounterPatchJobInstanceDetailsSummary++;
  if (buildCounterPatchJobInstanceDetailsSummary < 3) {
    o.ackedInstanceCount = 'foo';
    o.applyingPatchesInstanceCount = 'foo';
    o.downloadingPatchesInstanceCount = 'foo';
    o.failedInstanceCount = 'foo';
    o.inactiveInstanceCount = 'foo';
    o.noAgentDetectedInstanceCount = 'foo';
    o.notifiedInstanceCount = 'foo';
    o.pendingInstanceCount = 'foo';
    o.postPatchStepInstanceCount = 'foo';
    o.prePatchStepInstanceCount = 'foo';
    o.rebootingInstanceCount = 'foo';
    o.startedInstanceCount = 'foo';
    o.succeededInstanceCount = 'foo';
    o.succeededRebootRequiredInstanceCount = 'foo';
    o.timedOutInstanceCount = 'foo';
  }
  buildCounterPatchJobInstanceDetailsSummary--;
  return o;
}

void checkPatchJobInstanceDetailsSummary(api.PatchJobInstanceDetailsSummary o) {
  buildCounterPatchJobInstanceDetailsSummary++;
  if (buildCounterPatchJobInstanceDetailsSummary < 3) {
    unittest.expect(o.ackedInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.applyingPatchesInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.downloadingPatchesInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.failedInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.inactiveInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.noAgentDetectedInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.notifiedInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.pendingInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.postPatchStepInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.prePatchStepInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.rebootingInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.startedInstanceCount!, unittest.equals('foo'));
    unittest.expect(o.succeededInstanceCount!, unittest.equals('foo'));
    unittest.expect(
      o.succeededRebootRequiredInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(o.timedOutInstanceCount!, unittest.equals('foo'));
  }
  buildCounterPatchJobInstanceDetailsSummary--;
}

core.int buildCounterPatchRollout = 0;
api.PatchRollout buildPatchRollout() {
  final o = api.PatchRollout();
  buildCounterPatchRollout++;
  if (buildCounterPatchRollout < 3) {
    o.disruptionBudget = buildFixedOrPercent();
    o.mode = 'foo';
  }
  buildCounterPatchRollout--;
  return o;
}

void checkPatchRollout(api.PatchRollout o) {
  buildCounterPatchRollout++;
  if (buildCounterPatchRollout < 3) {
    checkFixedOrPercent(o.disruptionBudget!);
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterPatchRollout--;
}

core.int buildCounterPausePatchDeploymentRequest = 0;
api.PausePatchDeploymentRequest buildPausePatchDeploymentRequest() {
  final o = api.PausePatchDeploymentRequest();
  buildCounterPausePatchDeploymentRequest++;
  if (buildCounterPausePatchDeploymentRequest < 3) {}
  buildCounterPausePatchDeploymentRequest--;
  return o;
}

void checkPausePatchDeploymentRequest(api.PausePatchDeploymentRequest o) {
  buildCounterPausePatchDeploymentRequest++;
  if (buildCounterPausePatchDeploymentRequest < 3) {}
  buildCounterPausePatchDeploymentRequest--;
}

core.int buildCounterRecurringSchedule = 0;
api.RecurringSchedule buildRecurringSchedule() {
  final o = api.RecurringSchedule();
  buildCounterRecurringSchedule++;
  if (buildCounterRecurringSchedule < 3) {
    o.endTime = 'foo';
    o.frequency = 'foo';
    o.lastExecuteTime = 'foo';
    o.monthly = buildMonthlySchedule();
    o.nextExecuteTime = 'foo';
    o.startTime = 'foo';
    o.timeOfDay = buildTimeOfDay();
    o.timeZone = buildTimeZone();
    o.weekly = buildWeeklySchedule();
  }
  buildCounterRecurringSchedule--;
  return o;
}

void checkRecurringSchedule(api.RecurringSchedule o) {
  buildCounterRecurringSchedule++;
  if (buildCounterRecurringSchedule < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals('foo'));
    unittest.expect(o.lastExecuteTime!, unittest.equals('foo'));
    checkMonthlySchedule(o.monthly!);
    unittest.expect(o.nextExecuteTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkTimeOfDay(o.timeOfDay!);
    checkTimeZone(o.timeZone!);
    checkWeeklySchedule(o.weekly!);
  }
  buildCounterRecurringSchedule--;
}

core.int buildCounterResumePatchDeploymentRequest = 0;
api.ResumePatchDeploymentRequest buildResumePatchDeploymentRequest() {
  final o = api.ResumePatchDeploymentRequest();
  buildCounterResumePatchDeploymentRequest++;
  if (buildCounterResumePatchDeploymentRequest < 3) {}
  buildCounterResumePatchDeploymentRequest--;
  return o;
}

void checkResumePatchDeploymentRequest(api.ResumePatchDeploymentRequest o) {
  buildCounterResumePatchDeploymentRequest++;
  if (buildCounterResumePatchDeploymentRequest < 3) {}
  buildCounterResumePatchDeploymentRequest--;
}

core.List<api.SoftwareRecipeArtifact> buildUnnamed25() => [
  buildSoftwareRecipeArtifact(),
  buildSoftwareRecipeArtifact(),
];

void checkUnnamed25(core.List<api.SoftwareRecipeArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSoftwareRecipeArtifact(o[0]);
  checkSoftwareRecipeArtifact(o[1]);
}

core.List<api.SoftwareRecipeStep> buildUnnamed26() => [
  buildSoftwareRecipeStep(),
  buildSoftwareRecipeStep(),
];

void checkUnnamed26(core.List<api.SoftwareRecipeStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSoftwareRecipeStep(o[0]);
  checkSoftwareRecipeStep(o[1]);
}

core.List<api.SoftwareRecipeStep> buildUnnamed27() => [
  buildSoftwareRecipeStep(),
  buildSoftwareRecipeStep(),
];

void checkUnnamed27(core.List<api.SoftwareRecipeStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSoftwareRecipeStep(o[0]);
  checkSoftwareRecipeStep(o[1]);
}

core.int buildCounterSoftwareRecipe = 0;
api.SoftwareRecipe buildSoftwareRecipe() {
  final o = api.SoftwareRecipe();
  buildCounterSoftwareRecipe++;
  if (buildCounterSoftwareRecipe < 3) {
    o.artifacts = buildUnnamed25();
    o.desiredState = 'foo';
    o.installSteps = buildUnnamed26();
    o.name = 'foo';
    o.updateSteps = buildUnnamed27();
    o.version = 'foo';
  }
  buildCounterSoftwareRecipe--;
  return o;
}

void checkSoftwareRecipe(api.SoftwareRecipe o) {
  buildCounterSoftwareRecipe++;
  if (buildCounterSoftwareRecipe < 3) {
    checkUnnamed25(o.artifacts!);
    unittest.expect(o.desiredState!, unittest.equals('foo'));
    checkUnnamed26(o.installSteps!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed27(o.updateSteps!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipe--;
}

core.int buildCounterSoftwareRecipeArtifact = 0;
api.SoftwareRecipeArtifact buildSoftwareRecipeArtifact() {
  final o = api.SoftwareRecipeArtifact();
  buildCounterSoftwareRecipeArtifact++;
  if (buildCounterSoftwareRecipeArtifact < 3) {
    o.allowInsecure = true;
    o.gcs = buildSoftwareRecipeArtifactGcs();
    o.id = 'foo';
    o.remote = buildSoftwareRecipeArtifactRemote();
  }
  buildCounterSoftwareRecipeArtifact--;
  return o;
}

void checkSoftwareRecipeArtifact(api.SoftwareRecipeArtifact o) {
  buildCounterSoftwareRecipeArtifact++;
  if (buildCounterSoftwareRecipeArtifact < 3) {
    unittest.expect(o.allowInsecure!, unittest.isTrue);
    checkSoftwareRecipeArtifactGcs(o.gcs!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkSoftwareRecipeArtifactRemote(o.remote!);
  }
  buildCounterSoftwareRecipeArtifact--;
}

core.int buildCounterSoftwareRecipeArtifactGcs = 0;
api.SoftwareRecipeArtifactGcs buildSoftwareRecipeArtifactGcs() {
  final o = api.SoftwareRecipeArtifactGcs();
  buildCounterSoftwareRecipeArtifactGcs++;
  if (buildCounterSoftwareRecipeArtifactGcs < 3) {
    o.bucket = 'foo';
    o.generation = 'foo';
    o.object = 'foo';
  }
  buildCounterSoftwareRecipeArtifactGcs--;
  return o;
}

void checkSoftwareRecipeArtifactGcs(api.SoftwareRecipeArtifactGcs o) {
  buildCounterSoftwareRecipeArtifactGcs++;
  if (buildCounterSoftwareRecipeArtifactGcs < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.generation!, unittest.equals('foo'));
    unittest.expect(o.object!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeArtifactGcs--;
}

core.int buildCounterSoftwareRecipeArtifactRemote = 0;
api.SoftwareRecipeArtifactRemote buildSoftwareRecipeArtifactRemote() {
  final o = api.SoftwareRecipeArtifactRemote();
  buildCounterSoftwareRecipeArtifactRemote++;
  if (buildCounterSoftwareRecipeArtifactRemote < 3) {
    o.checksum = 'foo';
    o.uri = 'foo';
  }
  buildCounterSoftwareRecipeArtifactRemote--;
  return o;
}

void checkSoftwareRecipeArtifactRemote(api.SoftwareRecipeArtifactRemote o) {
  buildCounterSoftwareRecipeArtifactRemote++;
  if (buildCounterSoftwareRecipeArtifactRemote < 3) {
    unittest.expect(o.checksum!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeArtifactRemote--;
}

core.int buildCounterSoftwareRecipeStep = 0;
api.SoftwareRecipeStep buildSoftwareRecipeStep() {
  final o = api.SoftwareRecipeStep();
  buildCounterSoftwareRecipeStep++;
  if (buildCounterSoftwareRecipeStep < 3) {
    o.archiveExtraction = buildSoftwareRecipeStepExtractArchive();
    o.dpkgInstallation = buildSoftwareRecipeStepInstallDpkg();
    o.fileCopy = buildSoftwareRecipeStepCopyFile();
    o.fileExec = buildSoftwareRecipeStepExecFile();
    o.msiInstallation = buildSoftwareRecipeStepInstallMsi();
    o.rpmInstallation = buildSoftwareRecipeStepInstallRpm();
    o.scriptRun = buildSoftwareRecipeStepRunScript();
  }
  buildCounterSoftwareRecipeStep--;
  return o;
}

void checkSoftwareRecipeStep(api.SoftwareRecipeStep o) {
  buildCounterSoftwareRecipeStep++;
  if (buildCounterSoftwareRecipeStep < 3) {
    checkSoftwareRecipeStepExtractArchive(o.archiveExtraction!);
    checkSoftwareRecipeStepInstallDpkg(o.dpkgInstallation!);
    checkSoftwareRecipeStepCopyFile(o.fileCopy!);
    checkSoftwareRecipeStepExecFile(o.fileExec!);
    checkSoftwareRecipeStepInstallMsi(o.msiInstallation!);
    checkSoftwareRecipeStepInstallRpm(o.rpmInstallation!);
    checkSoftwareRecipeStepRunScript(o.scriptRun!);
  }
  buildCounterSoftwareRecipeStep--;
}

core.int buildCounterSoftwareRecipeStepCopyFile = 0;
api.SoftwareRecipeStepCopyFile buildSoftwareRecipeStepCopyFile() {
  final o = api.SoftwareRecipeStepCopyFile();
  buildCounterSoftwareRecipeStepCopyFile++;
  if (buildCounterSoftwareRecipeStepCopyFile < 3) {
    o.artifactId = 'foo';
    o.destination = 'foo';
    o.overwrite = true;
    o.permissions = 'foo';
  }
  buildCounterSoftwareRecipeStepCopyFile--;
  return o;
}

void checkSoftwareRecipeStepCopyFile(api.SoftwareRecipeStepCopyFile o) {
  buildCounterSoftwareRecipeStepCopyFile++;
  if (buildCounterSoftwareRecipeStepCopyFile < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.overwrite!, unittest.isTrue);
    unittest.expect(o.permissions!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeStepCopyFile--;
}

core.List<core.int> buildUnnamed28() => [42, 42];

void checkUnnamed28(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSoftwareRecipeStepExecFile = 0;
api.SoftwareRecipeStepExecFile buildSoftwareRecipeStepExecFile() {
  final o = api.SoftwareRecipeStepExecFile();
  buildCounterSoftwareRecipeStepExecFile++;
  if (buildCounterSoftwareRecipeStepExecFile < 3) {
    o.allowedExitCodes = buildUnnamed28();
    o.args = buildUnnamed29();
    o.artifactId = 'foo';
    o.localPath = 'foo';
  }
  buildCounterSoftwareRecipeStepExecFile--;
  return o;
}

void checkSoftwareRecipeStepExecFile(api.SoftwareRecipeStepExecFile o) {
  buildCounterSoftwareRecipeStepExecFile++;
  if (buildCounterSoftwareRecipeStepExecFile < 3) {
    checkUnnamed28(o.allowedExitCodes!);
    checkUnnamed29(o.args!);
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    unittest.expect(o.localPath!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeStepExecFile--;
}

core.int buildCounterSoftwareRecipeStepExtractArchive = 0;
api.SoftwareRecipeStepExtractArchive buildSoftwareRecipeStepExtractArchive() {
  final o = api.SoftwareRecipeStepExtractArchive();
  buildCounterSoftwareRecipeStepExtractArchive++;
  if (buildCounterSoftwareRecipeStepExtractArchive < 3) {
    o.artifactId = 'foo';
    o.destination = 'foo';
    o.type = 'foo';
  }
  buildCounterSoftwareRecipeStepExtractArchive--;
  return o;
}

void checkSoftwareRecipeStepExtractArchive(
  api.SoftwareRecipeStepExtractArchive o,
) {
  buildCounterSoftwareRecipeStepExtractArchive++;
  if (buildCounterSoftwareRecipeStepExtractArchive < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeStepExtractArchive--;
}

core.int buildCounterSoftwareRecipeStepInstallDpkg = 0;
api.SoftwareRecipeStepInstallDpkg buildSoftwareRecipeStepInstallDpkg() {
  final o = api.SoftwareRecipeStepInstallDpkg();
  buildCounterSoftwareRecipeStepInstallDpkg++;
  if (buildCounterSoftwareRecipeStepInstallDpkg < 3) {
    o.artifactId = 'foo';
  }
  buildCounterSoftwareRecipeStepInstallDpkg--;
  return o;
}

void checkSoftwareRecipeStepInstallDpkg(api.SoftwareRecipeStepInstallDpkg o) {
  buildCounterSoftwareRecipeStepInstallDpkg++;
  if (buildCounterSoftwareRecipeStepInstallDpkg < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeStepInstallDpkg--;
}

core.List<core.int> buildUnnamed30() => [42, 42];

void checkUnnamed30(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSoftwareRecipeStepInstallMsi = 0;
api.SoftwareRecipeStepInstallMsi buildSoftwareRecipeStepInstallMsi() {
  final o = api.SoftwareRecipeStepInstallMsi();
  buildCounterSoftwareRecipeStepInstallMsi++;
  if (buildCounterSoftwareRecipeStepInstallMsi < 3) {
    o.allowedExitCodes = buildUnnamed30();
    o.artifactId = 'foo';
    o.flags = buildUnnamed31();
  }
  buildCounterSoftwareRecipeStepInstallMsi--;
  return o;
}

void checkSoftwareRecipeStepInstallMsi(api.SoftwareRecipeStepInstallMsi o) {
  buildCounterSoftwareRecipeStepInstallMsi++;
  if (buildCounterSoftwareRecipeStepInstallMsi < 3) {
    checkUnnamed30(o.allowedExitCodes!);
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    checkUnnamed31(o.flags!);
  }
  buildCounterSoftwareRecipeStepInstallMsi--;
}

core.int buildCounterSoftwareRecipeStepInstallRpm = 0;
api.SoftwareRecipeStepInstallRpm buildSoftwareRecipeStepInstallRpm() {
  final o = api.SoftwareRecipeStepInstallRpm();
  buildCounterSoftwareRecipeStepInstallRpm++;
  if (buildCounterSoftwareRecipeStepInstallRpm < 3) {
    o.artifactId = 'foo';
  }
  buildCounterSoftwareRecipeStepInstallRpm--;
  return o;
}

void checkSoftwareRecipeStepInstallRpm(api.SoftwareRecipeStepInstallRpm o) {
  buildCounterSoftwareRecipeStepInstallRpm++;
  if (buildCounterSoftwareRecipeStepInstallRpm < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeStepInstallRpm--;
}

core.List<core.int> buildUnnamed32() => [42, 42];

void checkUnnamed32(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterSoftwareRecipeStepRunScript = 0;
api.SoftwareRecipeStepRunScript buildSoftwareRecipeStepRunScript() {
  final o = api.SoftwareRecipeStepRunScript();
  buildCounterSoftwareRecipeStepRunScript++;
  if (buildCounterSoftwareRecipeStepRunScript < 3) {
    o.allowedExitCodes = buildUnnamed32();
    o.interpreter = 'foo';
    o.script = 'foo';
  }
  buildCounterSoftwareRecipeStepRunScript--;
  return o;
}

void checkSoftwareRecipeStepRunScript(api.SoftwareRecipeStepRunScript o) {
  buildCounterSoftwareRecipeStepRunScript++;
  if (buildCounterSoftwareRecipeStepRunScript < 3) {
    checkUnnamed32(o.allowedExitCodes!);
    unittest.expect(o.interpreter!, unittest.equals('foo'));
    unittest.expect(o.script!, unittest.equals('foo'));
  }
  buildCounterSoftwareRecipeStepRunScript--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

core.int buildCounterWeekDayOfMonth = 0;
api.WeekDayOfMonth buildWeekDayOfMonth() {
  final o = api.WeekDayOfMonth();
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    o.dayOfWeek = 'foo';
    o.dayOffset = 42;
    o.weekOrdinal = 42;
  }
  buildCounterWeekDayOfMonth--;
  return o;
}

void checkWeekDayOfMonth(api.WeekDayOfMonth o) {
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.dayOffset!, unittest.equals(42));
    unittest.expect(o.weekOrdinal!, unittest.equals(42));
  }
  buildCounterWeekDayOfMonth--;
}

core.int buildCounterWeeklySchedule = 0;
api.WeeklySchedule buildWeeklySchedule() {
  final o = api.WeeklySchedule();
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    o.dayOfWeek = 'foo';
  }
  buildCounterWeeklySchedule--;
  return o;
}

void checkWeeklySchedule(api.WeeklySchedule o) {
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
  }
  buildCounterWeeklySchedule--;
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

core.int buildCounterWindowsUpdateSettings = 0;
api.WindowsUpdateSettings buildWindowsUpdateSettings() {
  final o = api.WindowsUpdateSettings();
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    o.classifications = buildUnnamed33();
    o.excludes = buildUnnamed34();
    o.exclusivePatches = buildUnnamed35();
  }
  buildCounterWindowsUpdateSettings--;
  return o;
}

void checkWindowsUpdateSettings(api.WindowsUpdateSettings o) {
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    checkUnnamed33(o.classifications!);
    checkUnnamed34(o.excludes!);
    checkUnnamed35(o.exclusivePatches!);
  }
  buildCounterWindowsUpdateSettings--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterYumRepository = 0;
api.YumRepository buildYumRepository() {
  final o = api.YumRepository();
  buildCounterYumRepository++;
  if (buildCounterYumRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed36();
    o.id = 'foo';
  }
  buildCounterYumRepository--;
  return o;
}

void checkYumRepository(api.YumRepository o) {
  buildCounterYumRepository++;
  if (buildCounterYumRepository < 3) {
    unittest.expect(o.baseUrl!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed36(o.gpgKeys!);
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterYumRepository--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterYumSettings = 0;
api.YumSettings buildYumSettings() {
  final o = api.YumSettings();
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    o.excludes = buildUnnamed37();
    o.exclusivePackages = buildUnnamed38();
    o.minimal = true;
    o.security = true;
  }
  buildCounterYumSettings--;
  return o;
}

void checkYumSettings(api.YumSettings o) {
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    checkUnnamed37(o.excludes!);
    checkUnnamed38(o.exclusivePackages!);
    unittest.expect(o.minimal!, unittest.isTrue);
    unittest.expect(o.security!, unittest.isTrue);
  }
  buildCounterYumSettings--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterZypperRepository = 0;
api.ZypperRepository buildZypperRepository() {
  final o = api.ZypperRepository();
  buildCounterZypperRepository++;
  if (buildCounterZypperRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed39();
    o.id = 'foo';
  }
  buildCounterZypperRepository--;
  return o;
}

void checkZypperRepository(api.ZypperRepository o) {
  buildCounterZypperRepository++;
  if (buildCounterZypperRepository < 3) {
    unittest.expect(o.baseUrl!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed39(o.gpgKeys!);
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterZypperRepository--;
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

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterZypperSettings = 0;
api.ZypperSettings buildZypperSettings() {
  final o = api.ZypperSettings();
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    o.categories = buildUnnamed40();
    o.excludes = buildUnnamed41();
    o.exclusivePatches = buildUnnamed42();
    o.severities = buildUnnamed43();
    o.withOptional = true;
    o.withUpdate = true;
  }
  buildCounterZypperSettings--;
  return o;
}

void checkZypperSettings(api.ZypperSettings o) {
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    checkUnnamed40(o.categories!);
    checkUnnamed41(o.excludes!);
    checkUnnamed42(o.exclusivePatches!);
    checkUnnamed43(o.severities!);
    unittest.expect(o.withOptional!, unittest.isTrue);
    unittest.expect(o.withUpdate!, unittest.isTrue);
  }
  buildCounterZypperSettings--;
}

void main() {
  unittest.group('obj-schema-AptRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAptRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AptRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAptRepository(od);
    });
  });

  unittest.group('obj-schema-AptSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAptSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AptSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAptSettings(od);
    });
  });

  unittest.group('obj-schema-Assignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Assignment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignment(od);
    });
  });

  unittest.group('obj-schema-AssignmentGroupLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignmentGroupLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignmentGroupLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignmentGroupLabel(od);
    });
  });

  unittest.group('obj-schema-AssignmentOsType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignmentOsType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignmentOsType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignmentOsType(od);
    });
  });

  unittest.group('obj-schema-CancelPatchJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelPatchJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelPatchJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelPatchJobRequest(od);
    });
  });

  unittest.group('obj-schema-EffectiveGuestPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveGuestPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveGuestPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEffectiveGuestPolicy(od);
    });
  });

  unittest.group('obj-schema-EffectiveGuestPolicySourcedPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveGuestPolicySourcedPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveGuestPolicySourcedPackage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEffectiveGuestPolicySourcedPackage(od);
    });
  });

  unittest.group('obj-schema-EffectiveGuestPolicySourcedPackageRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveGuestPolicySourcedPackageRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveGuestPolicySourcedPackageRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEffectiveGuestPolicySourcedPackageRepository(od);
    });
  });

  unittest.group('obj-schema-EffectiveGuestPolicySourcedSoftwareRecipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveGuestPolicySourcedSoftwareRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveGuestPolicySourcedSoftwareRecipe.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEffectiveGuestPolicySourcedSoftwareRecipe(od);
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

  unittest.group('obj-schema-ExecStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecStep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecStep(od);
    });
  });

  unittest.group('obj-schema-ExecStepConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecStepConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecStepConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecStepConfig(od);
    });
  });

  unittest.group('obj-schema-ExecutePatchJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutePatchJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutePatchJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutePatchJobRequest(od);
    });
  });

  unittest.group('obj-schema-FixedOrPercent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixedOrPercent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixedOrPercent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFixedOrPercent(od);
    });
  });

  unittest.group('obj-schema-GcsObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsObject(od);
    });
  });

  unittest.group('obj-schema-GooRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooRepository(od);
    });
  });

  unittest.group('obj-schema-GooSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooSettings(od);
    });
  });

  unittest.group('obj-schema-GuestPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuestPolicy(od);
    });
  });

  unittest.group('obj-schema-ListGuestPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGuestPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGuestPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGuestPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPatchDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPatchDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPatchDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPatchDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPatchJobInstanceDetailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPatchJobInstanceDetailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPatchJobInstanceDetailsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPatchJobInstanceDetailsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPatchJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPatchJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPatchJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPatchJobsResponse(od);
    });
  });

  unittest.group('obj-schema-LookupEffectiveGuestPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupEffectiveGuestPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupEffectiveGuestPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupEffectiveGuestPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-MonthlySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonthlySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonthlySchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonthlySchedule(od);
    });
  });

  unittest.group('obj-schema-OneTimeSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOneTimeSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OneTimeSchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOneTimeSchedule(od);
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

  unittest.group('obj-schema-PackageRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageRepository(od);
    });
  });

  unittest.group('obj-schema-PatchConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchConfig(od);
    });
  });

  unittest.group('obj-schema-PatchDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchDeployment(od);
    });
  });

  unittest.group('obj-schema-PatchInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchInstanceFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-PatchInstanceFilterGroupLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchInstanceFilterGroupLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchInstanceFilterGroupLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchInstanceFilterGroupLabel(od);
    });
  });

  unittest.group('obj-schema-PatchJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchJob(od);
    });
  });

  unittest.group('obj-schema-PatchJobInstanceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchJobInstanceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchJobInstanceDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchJobInstanceDetails(od);
    });
  });

  unittest.group('obj-schema-PatchJobInstanceDetailsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchJobInstanceDetailsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchJobInstanceDetailsSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchJobInstanceDetailsSummary(od);
    });
  });

  unittest.group('obj-schema-PatchRollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchRollout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPatchRollout(od);
    });
  });

  unittest.group('obj-schema-PausePatchDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPausePatchDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PausePatchDeploymentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPausePatchDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-RecurringSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurringSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurringSchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRecurringSchedule(od);
    });
  });

  unittest.group('obj-schema-ResumePatchDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumePatchDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumePatchDeploymentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResumePatchDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipe.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipe(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeArtifact(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeArtifactGcs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeArtifactGcs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeArtifactGcs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeArtifactGcs(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeArtifactRemote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeArtifactRemote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeArtifactRemote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeArtifactRemote(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStep(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepCopyFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepCopyFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepCopyFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepCopyFile(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepExecFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepExecFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepExecFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepExecFile(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepExtractArchive', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepExtractArchive();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepExtractArchive.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepExtractArchive(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepInstallDpkg', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepInstallDpkg();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepInstallDpkg.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepInstallDpkg(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepInstallMsi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepInstallMsi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepInstallMsi.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepInstallMsi(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepInstallRpm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepInstallRpm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepInstallRpm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepInstallRpm(od);
    });
  });

  unittest.group('obj-schema-SoftwareRecipeStepRunScript', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareRecipeStepRunScript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareRecipeStepRunScript.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareRecipeStepRunScript(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZone(od);
    });
  });

  unittest.group('obj-schema-WeekDayOfMonth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeekDayOfMonth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeekDayOfMonth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeekDayOfMonth(od);
    });
  });

  unittest.group('obj-schema-WeeklySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklySchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeeklySchedule(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdateSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdateSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdateSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWindowsUpdateSettings(od);
    });
  });

  unittest.group('obj-schema-YumRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYumRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YumRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYumRepository(od);
    });
  });

  unittest.group('obj-schema-YumSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYumSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YumSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYumSettings(od);
    });
  });

  unittest.group('obj-schema-ZypperRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZypperRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZypperRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkZypperRepository(od);
    });
  });

  unittest.group('obj-schema-ZypperSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZypperSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZypperSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkZypperSettings(od);
    });
  });

  unittest.group('resource-ProjectsGuestPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.guestPolicies;
      final arg_request = buildGuestPolicy();
      final arg_parent = 'foo';
      final arg_guestPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GuestPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGuestPolicy(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['guestPolicyId']!.first,
            unittest.equals(arg_guestPolicyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGuestPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        guestPolicyId: arg_guestPolicyId,
        $fields: arg_$fields,
      );
      checkGuestPolicy(response as api.GuestPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.guestPolicies;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
      final res = api.OSConfigApi(mock).projects.guestPolicies;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGuestPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGuestPolicy(response as api.GuestPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.guestPolicies;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildListGuestPoliciesResponse());
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
      checkListGuestPoliciesResponse(response as api.ListGuestPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.guestPolicies;
      final arg_request = buildGuestPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GuestPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGuestPolicy(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGuestPolicy());
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
      checkGuestPolicy(response as api.GuestPolicy);
    });
  });

  unittest.group('resource-ProjectsPatchDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildPatchDeployment();
      final arg_parent = 'foo';
      final arg_patchDeploymentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PatchDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPatchDeployment(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['patchDeploymentId']!.first,
            unittest.equals(arg_patchDeploymentId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPatchDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        patchDeploymentId: arg_patchDeploymentId,
        $fields: arg_$fields,
      );
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
      final res = api.OSConfigApi(mock).projects.patchDeployments;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildListPatchDeploymentsResponse());
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
      checkListPatchDeploymentsResponse(
        response as api.ListPatchDeploymentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildPatchDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PatchDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPatchDeployment(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchDeployment());
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
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildPausePatchDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PausePatchDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPausePatchDeploymentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pause(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildResumePatchDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResumePatchDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResumePatchDeploymentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPatchDeployment(response as api.PatchDeployment);
    });
  });

  unittest.group('resource-ProjectsPatchJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
      final arg_request = buildCancelPatchJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelPatchJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelPatchJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPatchJob(response as api.PatchJob);
    });

    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
      final arg_request = buildExecutePatchJobRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecutePatchJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecutePatchJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.execute(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkPatchJob(response as api.PatchJob);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildPatchJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPatchJob(response as api.PatchJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildListPatchJobsResponse());
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
      checkListPatchJobsResponse(response as api.ListPatchJobsResponse);
    });
  });

  unittest.group('resource-ProjectsPatchJobsInstanceDetailsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs.instanceDetails;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildListPatchJobInstanceDetailsResponse(),
          );
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
      checkListPatchJobInstanceDetailsResponse(
        response as api.ListPatchJobInstanceDetailsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsZonesInstancesResource', () {
    unittest.test('method--lookupEffectiveGuestPolicy', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.zones.instances;
      final arg_request = buildLookupEffectiveGuestPolicyRequest();
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LookupEffectiveGuestPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLookupEffectiveGuestPolicyRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildEffectiveGuestPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupEffectiveGuestPolicy(
        arg_request,
        arg_instance,
        $fields: arg_$fields,
      );
      checkEffectiveGuestPolicy(response as api.EffectiveGuestPolicy);
    });
  });
}
