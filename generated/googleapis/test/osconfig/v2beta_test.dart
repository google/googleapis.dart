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

import 'package:googleapis/osconfig/v2beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector = 0;
api.GoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector
buildGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector() {
  final o = api.GoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector();
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector <
      3) {
    o.includedLocations = buildUnnamed0();
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector--;
  return o;
}

void checkGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector(
  api.GoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector o,
) {
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector <
      3) {
    checkUnnamed0(o.includedLocations!);
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector--;
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

core.int
buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector =
    0;
api.GoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector
buildGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector() {
  final o =
      api.GoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector();
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector <
      3) {
    o.includedFolders = buildUnnamed1();
    o.includedProjects = buildUnnamed2();
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector--;
  return o;
}

void checkGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector(
  api.GoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector o,
) {
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector <
      3) {
    checkUnnamed1(o.includedFolders!);
    checkUnnamed2(o.includedProjects!);
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector--;
}

core.int buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector = 0;
api.GoogleCloudOsconfigV2betaOrchestrationScopeSelector
buildGoogleCloudOsconfigV2betaOrchestrationScopeSelector() {
  final o = api.GoogleCloudOsconfigV2betaOrchestrationScopeSelector();
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector < 3) {
    o.locationSelector =
        buildGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector();
    o.resourceHierarchySelector =
        buildGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector();
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector--;
  return o;
}

void checkGoogleCloudOsconfigV2betaOrchestrationScopeSelector(
  api.GoogleCloudOsconfigV2betaOrchestrationScopeSelector o,
) {
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector < 3) {
    checkGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector(
      o.locationSelector!,
    );
    checkGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector(
      o.resourceHierarchySelector!,
    );
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScopeSelector--;
}

core.int buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState =
    0;
api.GoogleCloudOsconfigV2betaPolicyOrchestratorIterationState
buildGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState() {
  final o = api.GoogleCloudOsconfigV2betaPolicyOrchestratorIterationState();
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState++;
  if (buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState <
      3) {
    o.error = buildStatus();
    o.failedActions = 'foo';
    o.finishTime = 'foo';
    o.iterationId = 'foo';
    o.performedActions = 'foo';
    o.progress = 42.0;
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState--;
  return o;
}

void checkGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState(
  api.GoogleCloudOsconfigV2betaPolicyOrchestratorIterationState o,
) {
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState++;
  if (buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState <
      3) {
    checkStatus(o.error!);
    unittest.expect(o.failedActions!, unittest.equals('foo'));
    unittest.expect(o.finishTime!, unittest.equals('foo'));
    unittest.expect(o.iterationId!, unittest.equals('foo'));
    unittest.expect(o.performedActions!, unittest.equals('foo'));
    unittest.expect(o.progress!, unittest.equals(42.0));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState--;
}

core.int
buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState = 0;
api.GoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState
buildGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState() {
  final o = api.GoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState();
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState++;
  if (buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState <
      3) {
    o.currentIterationState =
        buildGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState();
    o.previousIterationState =
        buildGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState();
  }
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState--;
  return o;
}

void checkGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState(
  api.GoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState o,
) {
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState++;
  if (buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState <
      3) {
    checkGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState(
      o.currentIterationState!,
    );
    checkGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState(
      o.previousIterationState!,
    );
  }
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState--;
}

core.List<api.GoogleCloudOsconfigV2betaPolicyOrchestrator> buildUnnamed3() => [
  buildGoogleCloudOsconfigV2betaPolicyOrchestrator(),
  buildGoogleCloudOsconfigV2betaPolicyOrchestrator(),
];

void checkUnnamed3(
  core.List<api.GoogleCloudOsconfigV2betaPolicyOrchestrator> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOsconfigV2betaPolicyOrchestrator(o[0]);
  checkGoogleCloudOsconfigV2betaPolicyOrchestrator(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse =
    0;
api.GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse
buildGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse() {
  final o = api.GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse();
  buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse++;
  if (buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.policyOrchestrators = buildUnnamed3();
    o.unreachable = buildUnnamed4();
  }
  buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse--;
  return o;
}

void checkGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(
  api.GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse o,
) {
  buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse++;
  if (buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed3(o.policyOrchestrators!);
    checkUnnamed4(o.unreachable!);
  }
  buildCounterGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse--;
}

core.int buildCounterGoogleCloudOsconfigV2betaOrchestratedResource = 0;
api.GoogleCloudOsconfigV2betaOrchestratedResource
buildGoogleCloudOsconfigV2betaOrchestratedResource() {
  final o = api.GoogleCloudOsconfigV2betaOrchestratedResource();
  buildCounterGoogleCloudOsconfigV2betaOrchestratedResource++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestratedResource < 3) {
    o.id = 'foo';
    o.osPolicyAssignmentV1Payload = buildOSPolicyAssignment();
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestratedResource--;
  return o;
}

void checkGoogleCloudOsconfigV2betaOrchestratedResource(
  api.GoogleCloudOsconfigV2betaOrchestratedResource o,
) {
  buildCounterGoogleCloudOsconfigV2betaOrchestratedResource++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestratedResource < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkOSPolicyAssignment(o.osPolicyAssignmentV1Payload!);
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestratedResource--;
}

core.List<api.GoogleCloudOsconfigV2betaOrchestrationScopeSelector>
buildUnnamed5() => [
  buildGoogleCloudOsconfigV2betaOrchestrationScopeSelector(),
  buildGoogleCloudOsconfigV2betaOrchestrationScopeSelector(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudOsconfigV2betaOrchestrationScopeSelector> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOsconfigV2betaOrchestrationScopeSelector(o[0]);
  checkGoogleCloudOsconfigV2betaOrchestrationScopeSelector(o[1]);
}

core.int buildCounterGoogleCloudOsconfigV2betaOrchestrationScope = 0;
api.GoogleCloudOsconfigV2betaOrchestrationScope
buildGoogleCloudOsconfigV2betaOrchestrationScope() {
  final o = api.GoogleCloudOsconfigV2betaOrchestrationScope();
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScope++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScope < 3) {
    o.selectors = buildUnnamed5();
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScope--;
  return o;
}

void checkGoogleCloudOsconfigV2betaOrchestrationScope(
  api.GoogleCloudOsconfigV2betaOrchestrationScope o,
) {
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScope++;
  if (buildCounterGoogleCloudOsconfigV2betaOrchestrationScope < 3) {
    checkUnnamed5(o.selectors!);
  }
  buildCounterGoogleCloudOsconfigV2betaOrchestrationScope--;
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator = 0;
api.GoogleCloudOsconfigV2betaPolicyOrchestrator
buildGoogleCloudOsconfigV2betaPolicyOrchestrator() {
  final o = api.GoogleCloudOsconfigV2betaPolicyOrchestrator();
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator++;
  if (buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator < 3) {
    o.action = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed6();
    o.name = 'foo';
    o.orchestratedResource =
        buildGoogleCloudOsconfigV2betaOrchestratedResource();
    o.orchestrationScope = buildGoogleCloudOsconfigV2betaOrchestrationScope();
    o.orchestrationState =
        buildGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState();
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator--;
  return o;
}

void checkGoogleCloudOsconfigV2betaPolicyOrchestrator(
  api.GoogleCloudOsconfigV2betaPolicyOrchestrator o,
) {
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator++;
  if (buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed6(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudOsconfigV2betaOrchestratedResource(o.orchestratedResource!);
    checkGoogleCloudOsconfigV2betaOrchestrationScope(o.orchestrationScope!);
    checkGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState(
      o.orchestrationState!,
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOsconfigV2betaPolicyOrchestrator--;
}

core.List<api.Operation> buildUnnamed7() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed7(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed7();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.OSPolicyResourceGroup> buildUnnamed8() => [
  buildOSPolicyResourceGroup(),
  buildOSPolicyResourceGroup(),
];

void checkUnnamed8(core.List<api.OSPolicyResourceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResourceGroup(o[0]);
  checkOSPolicyResourceGroup(o[1]);
}

core.int buildCounterOSPolicy = 0;
api.OSPolicy buildOSPolicy() {
  final o = api.OSPolicy();
  buildCounterOSPolicy++;
  if (buildCounterOSPolicy < 3) {
    o.allowNoResourceGroupMatch = true;
    o.description = 'foo';
    o.id = 'foo';
    o.mode = 'foo';
    o.resourceGroups = buildUnnamed8();
  }
  buildCounterOSPolicy--;
  return o;
}

void checkOSPolicy(api.OSPolicy o) {
  buildCounterOSPolicy++;
  if (buildCounterOSPolicy < 3) {
    unittest.expect(o.allowNoResourceGroupMatch!, unittest.isTrue);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.mode!, unittest.equals('foo'));
    checkUnnamed8(o.resourceGroups!);
  }
  buildCounterOSPolicy--;
}

core.List<api.OSPolicy> buildUnnamed9() => [buildOSPolicy(), buildOSPolicy()];

void checkUnnamed9(core.List<api.OSPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicy(o[0]);
  checkOSPolicy(o[1]);
}

core.int buildCounterOSPolicyAssignment = 0;
api.OSPolicyAssignment buildOSPolicyAssignment() {
  final o = api.OSPolicyAssignment();
  buildCounterOSPolicyAssignment++;
  if (buildCounterOSPolicyAssignment < 3) {
    o.baseline = true;
    o.deleted = true;
    o.description = 'foo';
    o.etag = 'foo';
    o.instanceFilter = buildOSPolicyAssignmentInstanceFilter();
    o.name = 'foo';
    o.osPolicies = buildUnnamed9();
    o.reconciling = true;
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.rollout = buildOSPolicyAssignmentRollout();
    o.rolloutState = 'foo';
    o.uid = 'foo';
  }
  buildCounterOSPolicyAssignment--;
  return o;
}

void checkOSPolicyAssignment(api.OSPolicyAssignment o) {
  buildCounterOSPolicyAssignment++;
  if (buildCounterOSPolicyAssignment < 3) {
    unittest.expect(o.baseline!, unittest.isTrue);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkOSPolicyAssignmentInstanceFilter(o.instanceFilter!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed9(o.osPolicies!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.revisionCreateTime!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    checkOSPolicyAssignmentRollout(o.rollout!);
    unittest.expect(o.rolloutState!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterOSPolicyAssignment--;
}

core.List<api.OSPolicyAssignmentLabelSet> buildUnnamed10() => [
  buildOSPolicyAssignmentLabelSet(),
  buildOSPolicyAssignmentLabelSet(),
];

void checkUnnamed10(core.List<api.OSPolicyAssignmentLabelSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentLabelSet(o[0]);
  checkOSPolicyAssignmentLabelSet(o[1]);
}

core.List<api.OSPolicyAssignmentLabelSet> buildUnnamed11() => [
  buildOSPolicyAssignmentLabelSet(),
  buildOSPolicyAssignmentLabelSet(),
];

void checkUnnamed11(core.List<api.OSPolicyAssignmentLabelSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentLabelSet(o[0]);
  checkOSPolicyAssignmentLabelSet(o[1]);
}

core.List<api.OSPolicyAssignmentInstanceFilterInventory> buildUnnamed12() => [
  buildOSPolicyAssignmentInstanceFilterInventory(),
  buildOSPolicyAssignmentInstanceFilterInventory(),
];

void checkUnnamed12(
  core.List<api.OSPolicyAssignmentInstanceFilterInventory> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentInstanceFilterInventory(o[0]);
  checkOSPolicyAssignmentInstanceFilterInventory(o[1]);
}

core.int buildCounterOSPolicyAssignmentInstanceFilter = 0;
api.OSPolicyAssignmentInstanceFilter buildOSPolicyAssignmentInstanceFilter() {
  final o = api.OSPolicyAssignmentInstanceFilter();
  buildCounterOSPolicyAssignmentInstanceFilter++;
  if (buildCounterOSPolicyAssignmentInstanceFilter < 3) {
    o.all = true;
    o.exclusionLabels = buildUnnamed10();
    o.inclusionLabels = buildUnnamed11();
    o.inventories = buildUnnamed12();
  }
  buildCounterOSPolicyAssignmentInstanceFilter--;
  return o;
}

void checkOSPolicyAssignmentInstanceFilter(
  api.OSPolicyAssignmentInstanceFilter o,
) {
  buildCounterOSPolicyAssignmentInstanceFilter++;
  if (buildCounterOSPolicyAssignmentInstanceFilter < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed10(o.exclusionLabels!);
    checkUnnamed11(o.inclusionLabels!);
    checkUnnamed12(o.inventories!);
  }
  buildCounterOSPolicyAssignmentInstanceFilter--;
}

core.int buildCounterOSPolicyAssignmentInstanceFilterInventory = 0;
api.OSPolicyAssignmentInstanceFilterInventory
buildOSPolicyAssignmentInstanceFilterInventory() {
  final o = api.OSPolicyAssignmentInstanceFilterInventory();
  buildCounterOSPolicyAssignmentInstanceFilterInventory++;
  if (buildCounterOSPolicyAssignmentInstanceFilterInventory < 3) {
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterOSPolicyAssignmentInstanceFilterInventory--;
  return o;
}

void checkOSPolicyAssignmentInstanceFilterInventory(
  api.OSPolicyAssignmentInstanceFilterInventory o,
) {
  buildCounterOSPolicyAssignmentInstanceFilterInventory++;
  if (buildCounterOSPolicyAssignmentInstanceFilterInventory < 3) {
    unittest.expect(o.osShortName!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
  }
  buildCounterOSPolicyAssignmentInstanceFilterInventory--;
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterOSPolicyAssignmentLabelSet = 0;
api.OSPolicyAssignmentLabelSet buildOSPolicyAssignmentLabelSet() {
  final o = api.OSPolicyAssignmentLabelSet();
  buildCounterOSPolicyAssignmentLabelSet++;
  if (buildCounterOSPolicyAssignmentLabelSet < 3) {
    o.labels = buildUnnamed13();
  }
  buildCounterOSPolicyAssignmentLabelSet--;
  return o;
}

void checkOSPolicyAssignmentLabelSet(api.OSPolicyAssignmentLabelSet o) {
  buildCounterOSPolicyAssignmentLabelSet++;
  if (buildCounterOSPolicyAssignmentLabelSet < 3) {
    checkUnnamed13(o.labels!);
  }
  buildCounterOSPolicyAssignmentLabelSet--;
}

core.int buildCounterOSPolicyAssignmentRollout = 0;
api.OSPolicyAssignmentRollout buildOSPolicyAssignmentRollout() {
  final o = api.OSPolicyAssignmentRollout();
  buildCounterOSPolicyAssignmentRollout++;
  if (buildCounterOSPolicyAssignmentRollout < 3) {
    o.disruptionBudget = buildFixedOrPercent();
    o.minWaitDuration = 'foo';
  }
  buildCounterOSPolicyAssignmentRollout--;
  return o;
}

void checkOSPolicyAssignmentRollout(api.OSPolicyAssignmentRollout o) {
  buildCounterOSPolicyAssignmentRollout++;
  if (buildCounterOSPolicyAssignmentRollout < 3) {
    checkFixedOrPercent(o.disruptionBudget!);
    unittest.expect(o.minWaitDuration!, unittest.equals('foo'));
  }
  buildCounterOSPolicyAssignmentRollout--;
}

core.int buildCounterOSPolicyInventoryFilter = 0;
api.OSPolicyInventoryFilter buildOSPolicyInventoryFilter() {
  final o = api.OSPolicyInventoryFilter();
  buildCounterOSPolicyInventoryFilter++;
  if (buildCounterOSPolicyInventoryFilter < 3) {
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterOSPolicyInventoryFilter--;
  return o;
}

void checkOSPolicyInventoryFilter(api.OSPolicyInventoryFilter o) {
  buildCounterOSPolicyInventoryFilter++;
  if (buildCounterOSPolicyInventoryFilter < 3) {
    unittest.expect(o.osShortName!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
  }
  buildCounterOSPolicyInventoryFilter--;
}

core.int buildCounterOSPolicyResource = 0;
api.OSPolicyResource buildOSPolicyResource() {
  final o = api.OSPolicyResource();
  buildCounterOSPolicyResource++;
  if (buildCounterOSPolicyResource < 3) {
    o.exec = buildOSPolicyResourceExecResource();
    o.file = buildOSPolicyResourceFileResource();
    o.id = 'foo';
    o.pkg = buildOSPolicyResourcePackageResource();
    o.repository = buildOSPolicyResourceRepositoryResource();
  }
  buildCounterOSPolicyResource--;
  return o;
}

void checkOSPolicyResource(api.OSPolicyResource o) {
  buildCounterOSPolicyResource++;
  if (buildCounterOSPolicyResource < 3) {
    checkOSPolicyResourceExecResource(o.exec!);
    checkOSPolicyResourceFileResource(o.file!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkOSPolicyResourcePackageResource(o.pkg!);
    checkOSPolicyResourceRepositoryResource(o.repository!);
  }
  buildCounterOSPolicyResource--;
}

core.int buildCounterOSPolicyResourceExecResource = 0;
api.OSPolicyResourceExecResource buildOSPolicyResourceExecResource() {
  final o = api.OSPolicyResourceExecResource();
  buildCounterOSPolicyResourceExecResource++;
  if (buildCounterOSPolicyResourceExecResource < 3) {
    o.enforce = buildOSPolicyResourceExecResourceExec();
    o.validate = buildOSPolicyResourceExecResourceExec();
  }
  buildCounterOSPolicyResourceExecResource--;
  return o;
}

void checkOSPolicyResourceExecResource(api.OSPolicyResourceExecResource o) {
  buildCounterOSPolicyResourceExecResource++;
  if (buildCounterOSPolicyResourceExecResource < 3) {
    checkOSPolicyResourceExecResourceExec(o.enforce!);
    checkOSPolicyResourceExecResourceExec(o.validate!);
  }
  buildCounterOSPolicyResourceExecResource--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOSPolicyResourceExecResourceExec = 0;
api.OSPolicyResourceExecResourceExec buildOSPolicyResourceExecResourceExec() {
  final o = api.OSPolicyResourceExecResourceExec();
  buildCounterOSPolicyResourceExecResourceExec++;
  if (buildCounterOSPolicyResourceExecResourceExec < 3) {
    o.args = buildUnnamed14();
    o.file = buildOSPolicyResourceFile();
    o.interpreter = 'foo';
    o.outputFilePath = 'foo';
    o.script = 'foo';
  }
  buildCounterOSPolicyResourceExecResourceExec--;
  return o;
}

void checkOSPolicyResourceExecResourceExec(
  api.OSPolicyResourceExecResourceExec o,
) {
  buildCounterOSPolicyResourceExecResourceExec++;
  if (buildCounterOSPolicyResourceExecResourceExec < 3) {
    checkUnnamed14(o.args!);
    checkOSPolicyResourceFile(o.file!);
    unittest.expect(o.interpreter!, unittest.equals('foo'));
    unittest.expect(o.outputFilePath!, unittest.equals('foo'));
    unittest.expect(o.script!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceExecResourceExec--;
}

core.int buildCounterOSPolicyResourceFile = 0;
api.OSPolicyResourceFile buildOSPolicyResourceFile() {
  final o = api.OSPolicyResourceFile();
  buildCounterOSPolicyResourceFile++;
  if (buildCounterOSPolicyResourceFile < 3) {
    o.allowInsecure = true;
    o.gcs = buildOSPolicyResourceFileGcs();
    o.localPath = 'foo';
    o.remote = buildOSPolicyResourceFileRemote();
  }
  buildCounterOSPolicyResourceFile--;
  return o;
}

void checkOSPolicyResourceFile(api.OSPolicyResourceFile o) {
  buildCounterOSPolicyResourceFile++;
  if (buildCounterOSPolicyResourceFile < 3) {
    unittest.expect(o.allowInsecure!, unittest.isTrue);
    checkOSPolicyResourceFileGcs(o.gcs!);
    unittest.expect(o.localPath!, unittest.equals('foo'));
    checkOSPolicyResourceFileRemote(o.remote!);
  }
  buildCounterOSPolicyResourceFile--;
}

core.int buildCounterOSPolicyResourceFileGcs = 0;
api.OSPolicyResourceFileGcs buildOSPolicyResourceFileGcs() {
  final o = api.OSPolicyResourceFileGcs();
  buildCounterOSPolicyResourceFileGcs++;
  if (buildCounterOSPolicyResourceFileGcs < 3) {
    o.bucket = 'foo';
    o.generation = 'foo';
    o.object = 'foo';
  }
  buildCounterOSPolicyResourceFileGcs--;
  return o;
}

void checkOSPolicyResourceFileGcs(api.OSPolicyResourceFileGcs o) {
  buildCounterOSPolicyResourceFileGcs++;
  if (buildCounterOSPolicyResourceFileGcs < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.generation!, unittest.equals('foo'));
    unittest.expect(o.object!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceFileGcs--;
}

core.int buildCounterOSPolicyResourceFileRemote = 0;
api.OSPolicyResourceFileRemote buildOSPolicyResourceFileRemote() {
  final o = api.OSPolicyResourceFileRemote();
  buildCounterOSPolicyResourceFileRemote++;
  if (buildCounterOSPolicyResourceFileRemote < 3) {
    o.sha256Checksum = 'foo';
    o.uri = 'foo';
  }
  buildCounterOSPolicyResourceFileRemote--;
  return o;
}

void checkOSPolicyResourceFileRemote(api.OSPolicyResourceFileRemote o) {
  buildCounterOSPolicyResourceFileRemote++;
  if (buildCounterOSPolicyResourceFileRemote < 3) {
    unittest.expect(o.sha256Checksum!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceFileRemote--;
}

core.int buildCounterOSPolicyResourceFileResource = 0;
api.OSPolicyResourceFileResource buildOSPolicyResourceFileResource() {
  final o = api.OSPolicyResourceFileResource();
  buildCounterOSPolicyResourceFileResource++;
  if (buildCounterOSPolicyResourceFileResource < 3) {
    o.content = 'foo';
    o.file = buildOSPolicyResourceFile();
    o.path = 'foo';
    o.permissions = 'foo';
    o.state = 'foo';
  }
  buildCounterOSPolicyResourceFileResource--;
  return o;
}

void checkOSPolicyResourceFileResource(api.OSPolicyResourceFileResource o) {
  buildCounterOSPolicyResourceFileResource++;
  if (buildCounterOSPolicyResourceFileResource < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    checkOSPolicyResourceFile(o.file!);
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.permissions!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceFileResource--;
}

core.List<api.OSPolicyInventoryFilter> buildUnnamed15() => [
  buildOSPolicyInventoryFilter(),
  buildOSPolicyInventoryFilter(),
];

void checkUnnamed15(core.List<api.OSPolicyInventoryFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyInventoryFilter(o[0]);
  checkOSPolicyInventoryFilter(o[1]);
}

core.List<api.OSPolicyResource> buildUnnamed16() => [
  buildOSPolicyResource(),
  buildOSPolicyResource(),
];

void checkUnnamed16(core.List<api.OSPolicyResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResource(o[0]);
  checkOSPolicyResource(o[1]);
}

core.int buildCounterOSPolicyResourceGroup = 0;
api.OSPolicyResourceGroup buildOSPolicyResourceGroup() {
  final o = api.OSPolicyResourceGroup();
  buildCounterOSPolicyResourceGroup++;
  if (buildCounterOSPolicyResourceGroup < 3) {
    o.inventoryFilters = buildUnnamed15();
    o.resources = buildUnnamed16();
  }
  buildCounterOSPolicyResourceGroup--;
  return o;
}

void checkOSPolicyResourceGroup(api.OSPolicyResourceGroup o) {
  buildCounterOSPolicyResourceGroup++;
  if (buildCounterOSPolicyResourceGroup < 3) {
    checkUnnamed15(o.inventoryFilters!);
    checkUnnamed16(o.resources!);
  }
  buildCounterOSPolicyResourceGroup--;
}

core.int buildCounterOSPolicyResourcePackageResource = 0;
api.OSPolicyResourcePackageResource buildOSPolicyResourcePackageResource() {
  final o = api.OSPolicyResourcePackageResource();
  buildCounterOSPolicyResourcePackageResource++;
  if (buildCounterOSPolicyResourcePackageResource < 3) {
    o.apt = buildOSPolicyResourcePackageResourceAPT();
    o.deb = buildOSPolicyResourcePackageResourceDeb();
    o.desiredState = 'foo';
    o.googet = buildOSPolicyResourcePackageResourceGooGet();
    o.msi = buildOSPolicyResourcePackageResourceMSI();
    o.rpm = buildOSPolicyResourcePackageResourceRPM();
    o.yum = buildOSPolicyResourcePackageResourceYUM();
    o.zypper = buildOSPolicyResourcePackageResourceZypper();
  }
  buildCounterOSPolicyResourcePackageResource--;
  return o;
}

void checkOSPolicyResourcePackageResource(
  api.OSPolicyResourcePackageResource o,
) {
  buildCounterOSPolicyResourcePackageResource++;
  if (buildCounterOSPolicyResourcePackageResource < 3) {
    checkOSPolicyResourcePackageResourceAPT(o.apt!);
    checkOSPolicyResourcePackageResourceDeb(o.deb!);
    unittest.expect(o.desiredState!, unittest.equals('foo'));
    checkOSPolicyResourcePackageResourceGooGet(o.googet!);
    checkOSPolicyResourcePackageResourceMSI(o.msi!);
    checkOSPolicyResourcePackageResourceRPM(o.rpm!);
    checkOSPolicyResourcePackageResourceYUM(o.yum!);
    checkOSPolicyResourcePackageResourceZypper(o.zypper!);
  }
  buildCounterOSPolicyResourcePackageResource--;
}

core.int buildCounterOSPolicyResourcePackageResourceAPT = 0;
api.OSPolicyResourcePackageResourceAPT
buildOSPolicyResourcePackageResourceAPT() {
  final o = api.OSPolicyResourcePackageResourceAPT();
  buildCounterOSPolicyResourcePackageResourceAPT++;
  if (buildCounterOSPolicyResourcePackageResourceAPT < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceAPT--;
  return o;
}

void checkOSPolicyResourcePackageResourceAPT(
  api.OSPolicyResourcePackageResourceAPT o,
) {
  buildCounterOSPolicyResourcePackageResourceAPT++;
  if (buildCounterOSPolicyResourcePackageResourceAPT < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourcePackageResourceAPT--;
}

core.int buildCounterOSPolicyResourcePackageResourceDeb = 0;
api.OSPolicyResourcePackageResourceDeb
buildOSPolicyResourcePackageResourceDeb() {
  final o = api.OSPolicyResourcePackageResourceDeb();
  buildCounterOSPolicyResourcePackageResourceDeb++;
  if (buildCounterOSPolicyResourcePackageResourceDeb < 3) {
    o.pullDeps = true;
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceDeb--;
  return o;
}

void checkOSPolicyResourcePackageResourceDeb(
  api.OSPolicyResourcePackageResourceDeb o,
) {
  buildCounterOSPolicyResourcePackageResourceDeb++;
  if (buildCounterOSPolicyResourcePackageResourceDeb < 3) {
    unittest.expect(o.pullDeps!, unittest.isTrue);
    checkOSPolicyResourceFile(o.source!);
  }
  buildCounterOSPolicyResourcePackageResourceDeb--;
}

core.int buildCounterOSPolicyResourcePackageResourceGooGet = 0;
api.OSPolicyResourcePackageResourceGooGet
buildOSPolicyResourcePackageResourceGooGet() {
  final o = api.OSPolicyResourcePackageResourceGooGet();
  buildCounterOSPolicyResourcePackageResourceGooGet++;
  if (buildCounterOSPolicyResourcePackageResourceGooGet < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceGooGet--;
  return o;
}

void checkOSPolicyResourcePackageResourceGooGet(
  api.OSPolicyResourcePackageResourceGooGet o,
) {
  buildCounterOSPolicyResourcePackageResourceGooGet++;
  if (buildCounterOSPolicyResourcePackageResourceGooGet < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourcePackageResourceGooGet--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOSPolicyResourcePackageResourceMSI = 0;
api.OSPolicyResourcePackageResourceMSI
buildOSPolicyResourcePackageResourceMSI() {
  final o = api.OSPolicyResourcePackageResourceMSI();
  buildCounterOSPolicyResourcePackageResourceMSI++;
  if (buildCounterOSPolicyResourcePackageResourceMSI < 3) {
    o.properties = buildUnnamed17();
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceMSI--;
  return o;
}

void checkOSPolicyResourcePackageResourceMSI(
  api.OSPolicyResourcePackageResourceMSI o,
) {
  buildCounterOSPolicyResourcePackageResourceMSI++;
  if (buildCounterOSPolicyResourcePackageResourceMSI < 3) {
    checkUnnamed17(o.properties!);
    checkOSPolicyResourceFile(o.source!);
  }
  buildCounterOSPolicyResourcePackageResourceMSI--;
}

core.int buildCounterOSPolicyResourcePackageResourceRPM = 0;
api.OSPolicyResourcePackageResourceRPM
buildOSPolicyResourcePackageResourceRPM() {
  final o = api.OSPolicyResourcePackageResourceRPM();
  buildCounterOSPolicyResourcePackageResourceRPM++;
  if (buildCounterOSPolicyResourcePackageResourceRPM < 3) {
    o.pullDeps = true;
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceRPM--;
  return o;
}

void checkOSPolicyResourcePackageResourceRPM(
  api.OSPolicyResourcePackageResourceRPM o,
) {
  buildCounterOSPolicyResourcePackageResourceRPM++;
  if (buildCounterOSPolicyResourcePackageResourceRPM < 3) {
    unittest.expect(o.pullDeps!, unittest.isTrue);
    checkOSPolicyResourceFile(o.source!);
  }
  buildCounterOSPolicyResourcePackageResourceRPM--;
}

core.int buildCounterOSPolicyResourcePackageResourceYUM = 0;
api.OSPolicyResourcePackageResourceYUM
buildOSPolicyResourcePackageResourceYUM() {
  final o = api.OSPolicyResourcePackageResourceYUM();
  buildCounterOSPolicyResourcePackageResourceYUM++;
  if (buildCounterOSPolicyResourcePackageResourceYUM < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceYUM--;
  return o;
}

void checkOSPolicyResourcePackageResourceYUM(
  api.OSPolicyResourcePackageResourceYUM o,
) {
  buildCounterOSPolicyResourcePackageResourceYUM++;
  if (buildCounterOSPolicyResourcePackageResourceYUM < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourcePackageResourceYUM--;
}

core.int buildCounterOSPolicyResourcePackageResourceZypper = 0;
api.OSPolicyResourcePackageResourceZypper
buildOSPolicyResourcePackageResourceZypper() {
  final o = api.OSPolicyResourcePackageResourceZypper();
  buildCounterOSPolicyResourcePackageResourceZypper++;
  if (buildCounterOSPolicyResourcePackageResourceZypper < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceZypper--;
  return o;
}

void checkOSPolicyResourcePackageResourceZypper(
  api.OSPolicyResourcePackageResourceZypper o,
) {
  buildCounterOSPolicyResourcePackageResourceZypper++;
  if (buildCounterOSPolicyResourcePackageResourceZypper < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourcePackageResourceZypper--;
}

core.int buildCounterOSPolicyResourceRepositoryResource = 0;
api.OSPolicyResourceRepositoryResource
buildOSPolicyResourceRepositoryResource() {
  final o = api.OSPolicyResourceRepositoryResource();
  buildCounterOSPolicyResourceRepositoryResource++;
  if (buildCounterOSPolicyResourceRepositoryResource < 3) {
    o.apt = buildOSPolicyResourceRepositoryResourceAptRepository();
    o.goo = buildOSPolicyResourceRepositoryResourceGooRepository();
    o.yum = buildOSPolicyResourceRepositoryResourceYumRepository();
    o.zypper = buildOSPolicyResourceRepositoryResourceZypperRepository();
  }
  buildCounterOSPolicyResourceRepositoryResource--;
  return o;
}

void checkOSPolicyResourceRepositoryResource(
  api.OSPolicyResourceRepositoryResource o,
) {
  buildCounterOSPolicyResourceRepositoryResource++;
  if (buildCounterOSPolicyResourceRepositoryResource < 3) {
    checkOSPolicyResourceRepositoryResourceAptRepository(o.apt!);
    checkOSPolicyResourceRepositoryResourceGooRepository(o.goo!);
    checkOSPolicyResourceRepositoryResourceYumRepository(o.yum!);
    checkOSPolicyResourceRepositoryResourceZypperRepository(o.zypper!);
  }
  buildCounterOSPolicyResourceRepositoryResource--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOSPolicyResourceRepositoryResourceAptRepository = 0;
api.OSPolicyResourceRepositoryResourceAptRepository
buildOSPolicyResourceRepositoryResourceAptRepository() {
  final o = api.OSPolicyResourceRepositoryResourceAptRepository();
  buildCounterOSPolicyResourceRepositoryResourceAptRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceAptRepository < 3) {
    o.archiveType = 'foo';
    o.components = buildUnnamed18();
    o.distribution = 'foo';
    o.gpgKey = 'foo';
    o.uri = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceAptRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceAptRepository(
  api.OSPolicyResourceRepositoryResourceAptRepository o,
) {
  buildCounterOSPolicyResourceRepositoryResourceAptRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceAptRepository < 3) {
    unittest.expect(o.archiveType!, unittest.equals('foo'));
    checkUnnamed18(o.components!);
    unittest.expect(o.distribution!, unittest.equals('foo'));
    unittest.expect(o.gpgKey!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceRepositoryResourceAptRepository--;
}

core.int buildCounterOSPolicyResourceRepositoryResourceGooRepository = 0;
api.OSPolicyResourceRepositoryResourceGooRepository
buildOSPolicyResourceRepositoryResourceGooRepository() {
  final o = api.OSPolicyResourceRepositoryResourceGooRepository();
  buildCounterOSPolicyResourceRepositoryResourceGooRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceGooRepository < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceGooRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceGooRepository(
  api.OSPolicyResourceRepositoryResourceGooRepository o,
) {
  buildCounterOSPolicyResourceRepositoryResourceGooRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceGooRepository < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceRepositoryResourceGooRepository--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOSPolicyResourceRepositoryResourceYumRepository = 0;
api.OSPolicyResourceRepositoryResourceYumRepository
buildOSPolicyResourceRepositoryResourceYumRepository() {
  final o = api.OSPolicyResourceRepositoryResourceYumRepository();
  buildCounterOSPolicyResourceRepositoryResourceYumRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceYumRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed19();
    o.id = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceYumRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceYumRepository(
  api.OSPolicyResourceRepositoryResourceYumRepository o,
) {
  buildCounterOSPolicyResourceRepositoryResourceYumRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceYumRepository < 3) {
    unittest.expect(o.baseUrl!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed19(o.gpgKeys!);
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceRepositoryResourceYumRepository--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOSPolicyResourceRepositoryResourceZypperRepository = 0;
api.OSPolicyResourceRepositoryResourceZypperRepository
buildOSPolicyResourceRepositoryResourceZypperRepository() {
  final o = api.OSPolicyResourceRepositoryResourceZypperRepository();
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceZypperRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed20();
    o.id = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceZypperRepository(
  api.OSPolicyResourceRepositoryResourceZypperRepository o,
) {
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceZypperRepository < 3) {
    unittest.expect(o.baseUrl!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed20(o.gpgKeys!);
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed21();
    o.name = 'foo';
    o.response = buildUnnamed22();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed21(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed22(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed24() => [
  buildUnnamed23(),
  buildUnnamed23(),
];

void checkUnnamed24(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed23(o[0]);
  checkUnnamed23(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed24();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed24(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
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

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaOrchestrationScopeLocationSelector(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaOrchestrationScopeResourceHierarchySelector(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaOrchestrationScopeSelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudOsconfigV2betaOrchestrationScopeSelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsconfigV2betaOrchestrationScopeSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaOrchestrationScopeSelector(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaPolicyOrchestratorIterationState',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsconfigV2betaPolicyOrchestratorIterationState.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaPolicyOrchestratorIterationState(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaPolicyOrchestratorOrchestrationState(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsconfigV2betaOrchestratedResource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudOsconfigV2betaOrchestratedResource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudOsconfigV2betaOrchestratedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsconfigV2betaOrchestratedResource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudOsconfigV2betaOrchestrationScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOsconfigV2betaOrchestrationScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOsconfigV2betaOrchestrationScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOsconfigV2betaOrchestrationScope(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOsconfigV2betaPolicyOrchestrator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOsconfigV2betaPolicyOrchestrator(od);
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

  unittest.group('obj-schema-OSPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicy(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyAssignment(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentInstanceFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyAssignmentInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentInstanceFilterInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentInstanceFilterInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentInstanceFilterInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyAssignmentInstanceFilterInventory(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentLabelSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentLabelSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentLabelSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyAssignmentLabelSet(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentRollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentRollout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyAssignmentRollout(od);
    });
  });

  unittest.group('obj-schema-OSPolicyInventoryFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyInventoryFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyInventoryFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyInventoryFilter(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceExecResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceExecResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceExecResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceExecResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceExecResourceExec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceExecResourceExec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceExecResourceExec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceExecResourceExec(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceFile(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFileGcs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFileGcs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFileGcs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceFileGcs(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFileRemote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFileRemote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFileRemote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceFileRemote(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFileResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFileResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFileResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceFileResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceGroup(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceAPT', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceAPT();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceAPT.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceAPT(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceDeb', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceDeb();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceDeb.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceDeb(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceGooGet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceGooGet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceGooGet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceGooGet(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceMSI', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceMSI();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceMSI.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceMSI(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceRPM', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceRPM();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceRPM.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceRPM(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceYUM', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceYUM();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceYUM.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceYUM(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceZypper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceZypper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceZypper.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourcePackageResourceZypper(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceRepositoryResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceRepositoryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceRepositoryResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOSPolicyResourceRepositoryResource(od);
    });
  });

  unittest.group(
    'obj-schema-OSPolicyResourceRepositoryResourceAptRepository',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildOSPolicyResourceRepositoryResourceAptRepository();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.OSPolicyResourceRepositoryResourceAptRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOSPolicyResourceRepositoryResourceAptRepository(od);
      });
    },
  );

  unittest.group(
    'obj-schema-OSPolicyResourceRepositoryResourceGooRepository',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildOSPolicyResourceRepositoryResourceGooRepository();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.OSPolicyResourceRepositoryResourceGooRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOSPolicyResourceRepositoryResourceGooRepository(od);
      });
    },
  );

  unittest.group(
    'obj-schema-OSPolicyResourceRepositoryResourceYumRepository',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildOSPolicyResourceRepositoryResourceYumRepository();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.OSPolicyResourceRepositoryResourceYumRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOSPolicyResourceRepositoryResourceYumRepository(od);
      });
    },
  );

  unittest.group(
    'obj-schema-OSPolicyResourceRepositoryResourceZypperRepository',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildOSPolicyResourceRepositoryResourceZypperRepository();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .OSPolicyResourceRepositoryResourceZypperRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOSPolicyResourceRepositoryResourceZypperRepository(od);
      });
    },
  );

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

  unittest.group('resource-FoldersLocationsGlobalPolicyOrchestratorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).folders.locations.global.policyOrchestrators;
      final arg_request = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final arg_parent = 'foo';
      final arg_policyOrchestratorId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsconfigV2betaPolicyOrchestrator(obj);

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
            unittest.equals('v2beta/'),
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
            queryMap['policyOrchestratorId']!.first,
            unittest.equals(arg_policyOrchestratorId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        policyOrchestratorId: arg_policyOrchestratorId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).folders.locations.global.policyOrchestrators;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
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
            unittest.equals('v2beta/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).folders.locations.global.policyOrchestrators;
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
            unittest.equals('v2beta/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudOsconfigV2betaPolicyOrchestrator(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOsconfigV2betaPolicyOrchestrator(
        response as api.GoogleCloudOsconfigV2betaPolicyOrchestrator,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).folders.locations.global.policyOrchestrators;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            unittest.equals('v2beta/'),
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            buildGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(
        response
            as api.GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).folders.locations.global.policyOrchestrators;
      final arg_request = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsconfigV2betaPolicyOrchestrator(obj);

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
            unittest.equals('v2beta/'),
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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-FoldersLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).folders.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
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
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).folders.locations.operations;
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
            unittest.equals('v2beta/'),
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
      final res = api.OSConfigApi(mock).folders.locations.operations;
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
            unittest.equals('v2beta/'),
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
      final res = api.OSConfigApi(mock).folders.locations.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
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
  });

  unittest.group('resource-OrganizationsLocationsGlobalPolicyOrchestratorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(
            mock,
          ).organizations.locations.global.policyOrchestrators;
      final arg_request = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final arg_parent = 'foo';
      final arg_policyOrchestratorId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsconfigV2betaPolicyOrchestrator(obj);

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
            unittest.equals('v2beta/'),
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
            queryMap['policyOrchestratorId']!.first,
            unittest.equals(arg_policyOrchestratorId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        policyOrchestratorId: arg_policyOrchestratorId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(
            mock,
          ).organizations.locations.global.policyOrchestrators;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
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
            unittest.equals('v2beta/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(
            mock,
          ).organizations.locations.global.policyOrchestrators;
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
            unittest.equals('v2beta/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudOsconfigV2betaPolicyOrchestrator(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOsconfigV2betaPolicyOrchestrator(
        response as api.GoogleCloudOsconfigV2betaPolicyOrchestrator,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(
            mock,
          ).organizations.locations.global.policyOrchestrators;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            unittest.equals('v2beta/'),
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            buildGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(
        response
            as api.GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(
            mock,
          ).organizations.locations.global.policyOrchestrators;
      final arg_request = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsconfigV2betaPolicyOrchestrator(obj);

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
            unittest.equals('v2beta/'),
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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).organizations.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
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
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).organizations.locations.operations;
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
            unittest.equals('v2beta/'),
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
      final res = api.OSConfigApi(mock).organizations.locations.operations;
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
            unittest.equals('v2beta/'),
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
      final res = api.OSConfigApi(mock).organizations.locations.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
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
  });

  unittest.group('resource-ProjectsLocationsGlobalPolicyOrchestratorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.global.policyOrchestrators;
      final arg_request = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final arg_parent = 'foo';
      final arg_policyOrchestratorId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsconfigV2betaPolicyOrchestrator(obj);

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
            unittest.equals('v2beta/'),
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
            queryMap['policyOrchestratorId']!.first,
            unittest.equals(arg_policyOrchestratorId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        policyOrchestratorId: arg_policyOrchestratorId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.global.policyOrchestrators;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
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
            unittest.equals('v2beta/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.global.policyOrchestrators;
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
            unittest.equals('v2beta/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudOsconfigV2betaPolicyOrchestrator(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOsconfigV2betaPolicyOrchestrator(
        response as api.GoogleCloudOsconfigV2betaPolicyOrchestrator,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.global.policyOrchestrators;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            unittest.equals('v2beta/'),
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            buildGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse(
        response
            as api.GoogleCloudOsconfigV2betaListPolicyOrchestratorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.global.policyOrchestrators;
      final arg_request = buildGoogleCloudOsconfigV2betaPolicyOrchestrator();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudOsconfigV2betaPolicyOrchestrator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsconfigV2betaPolicyOrchestrator(obj);

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
            unittest.equals('v2beta/'),
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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
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
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.operations;
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
            unittest.equals('v2beta/'),
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
      final res = api.OSConfigApi(mock).projects.locations.operations;
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
            unittest.equals('v2beta/'),
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
      final res = api.OSConfigApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
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
  });
}
