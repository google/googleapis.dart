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

import 'package:googleapis/vmmigration/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddGroupMigrationRequest = 0;
api.AddGroupMigrationRequest buildAddGroupMigrationRequest() {
  final o = api.AddGroupMigrationRequest();
  buildCounterAddGroupMigrationRequest++;
  if (buildCounterAddGroupMigrationRequest < 3) {
    o.migratingVm = 'foo';
  }
  buildCounterAddGroupMigrationRequest--;
  return o;
}

void checkAddGroupMigrationRequest(api.AddGroupMigrationRequest o) {
  buildCounterAddGroupMigrationRequest++;
  if (buildCounterAddGroupMigrationRequest < 3) {
    unittest.expect(
      o.migratingVm!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddGroupMigrationRequest--;
}

core.int buildCounterAppliedLicense = 0;
api.AppliedLicense buildAppliedLicense() {
  final o = api.AppliedLicense();
  buildCounterAppliedLicense++;
  if (buildCounterAppliedLicense < 3) {
    o.osLicense = 'foo';
    o.type = 'foo';
  }
  buildCounterAppliedLicense--;
  return o;
}

void checkAppliedLicense(api.AppliedLicense o) {
  buildCounterAppliedLicense++;
  if (buildCounterAppliedLicense < 3) {
    unittest.expect(
      o.osLicense!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppliedLicense--;
}

core.int buildCounterCancelCloneJobRequest = 0;
api.CancelCloneJobRequest buildCancelCloneJobRequest() {
  final o = api.CancelCloneJobRequest();
  buildCounterCancelCloneJobRequest++;
  if (buildCounterCancelCloneJobRequest < 3) {}
  buildCounterCancelCloneJobRequest--;
  return o;
}

void checkCancelCloneJobRequest(api.CancelCloneJobRequest o) {
  buildCounterCancelCloneJobRequest++;
  if (buildCounterCancelCloneJobRequest < 3) {}
  buildCounterCancelCloneJobRequest--;
}

core.int buildCounterCancelCutoverJobRequest = 0;
api.CancelCutoverJobRequest buildCancelCutoverJobRequest() {
  final o = api.CancelCutoverJobRequest();
  buildCounterCancelCutoverJobRequest++;
  if (buildCounterCancelCutoverJobRequest < 3) {}
  buildCounterCancelCutoverJobRequest--;
  return o;
}

void checkCancelCutoverJobRequest(api.CancelCutoverJobRequest o) {
  buildCounterCancelCutoverJobRequest++;
  if (buildCounterCancelCutoverJobRequest < 3) {}
  buildCounterCancelCutoverJobRequest--;
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

core.int buildCounterCloneJob = 0;
api.CloneJob buildCloneJob() {
  final o = api.CloneJob();
  buildCounterCloneJob++;
  if (buildCounterCloneJob < 3) {
    o.computeEngineTargetDetails = buildComputeEngineTargetDetails();
    o.createTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
  }
  buildCounterCloneJob--;
  return o;
}

void checkCloneJob(api.CloneJob o) {
  buildCounterCloneJob++;
  if (buildCounterCloneJob < 3) {
    checkComputeEngineTargetDetails(o.computeEngineTargetDetails!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloneJob--;
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

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed3() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed3(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
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

core.int buildCounterComputeEngineTargetDefaults = 0;
api.ComputeEngineTargetDefaults buildComputeEngineTargetDefaults() {
  final o = api.ComputeEngineTargetDefaults();
  buildCounterComputeEngineTargetDefaults++;
  if (buildCounterComputeEngineTargetDefaults < 3) {
    o.additionalLicenses = buildUnnamed0();
    o.appliedLicense = buildAppliedLicense();
    o.bootOption = 'foo';
    o.computeScheduling = buildComputeScheduling();
    o.diskType = 'foo';
    o.labels = buildUnnamed1();
    o.licenseType = 'foo';
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed2();
    o.networkInterfaces = buildUnnamed3();
    o.networkTags = buildUnnamed4();
    o.secureBoot = true;
    o.serviceAccount = 'foo';
    o.targetProject = 'foo';
    o.vmName = 'foo';
    o.zone = 'foo';
  }
  buildCounterComputeEngineTargetDefaults--;
  return o;
}

void checkComputeEngineTargetDefaults(api.ComputeEngineTargetDefaults o) {
  buildCounterComputeEngineTargetDefaults++;
  if (buildCounterComputeEngineTargetDefaults < 3) {
    checkUnnamed0(o.additionalLicenses!);
    checkAppliedLicense(o.appliedLicense!);
    unittest.expect(
      o.bootOption!,
      unittest.equals('foo'),
    );
    checkComputeScheduling(o.computeScheduling!);
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.labels!);
    unittest.expect(
      o.licenseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineTypeSeries!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.metadata!);
    checkUnnamed3(o.networkInterfaces!);
    checkUnnamed4(o.networkTags!);
    unittest.expect(o.secureBoot!, unittest.isTrue);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeEngineTargetDefaults--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed8() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed8(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterComputeEngineTargetDetails = 0;
api.ComputeEngineTargetDetails buildComputeEngineTargetDetails() {
  final o = api.ComputeEngineTargetDetails();
  buildCounterComputeEngineTargetDetails++;
  if (buildCounterComputeEngineTargetDetails < 3) {
    o.additionalLicenses = buildUnnamed5();
    o.appliedLicense = buildAppliedLicense();
    o.bootOption = 'foo';
    o.computeScheduling = buildComputeScheduling();
    o.diskType = 'foo';
    o.labels = buildUnnamed6();
    o.licenseType = 'foo';
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed7();
    o.networkInterfaces = buildUnnamed8();
    o.networkTags = buildUnnamed9();
    o.project = 'foo';
    o.secureBoot = true;
    o.serviceAccount = 'foo';
    o.vmName = 'foo';
    o.zone = 'foo';
  }
  buildCounterComputeEngineTargetDetails--;
  return o;
}

void checkComputeEngineTargetDetails(api.ComputeEngineTargetDetails o) {
  buildCounterComputeEngineTargetDetails++;
  if (buildCounterComputeEngineTargetDetails < 3) {
    checkUnnamed5(o.additionalLicenses!);
    checkAppliedLicense(o.appliedLicense!);
    unittest.expect(
      o.bootOption!,
      unittest.equals('foo'),
    );
    checkComputeScheduling(o.computeScheduling!);
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.labels!);
    unittest.expect(
      o.licenseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineTypeSeries!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.metadata!);
    checkUnnamed8(o.networkInterfaces!);
    checkUnnamed9(o.networkTags!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(o.secureBoot!, unittest.isTrue);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeEngineTargetDetails--;
}

core.List<api.SchedulingNodeAffinity> buildUnnamed10() => [
      buildSchedulingNodeAffinity(),
      buildSchedulingNodeAffinity(),
    ];

void checkUnnamed10(core.List<api.SchedulingNodeAffinity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedulingNodeAffinity(o[0]);
  checkSchedulingNodeAffinity(o[1]);
}

core.int buildCounterComputeScheduling = 0;
api.ComputeScheduling buildComputeScheduling() {
  final o = api.ComputeScheduling();
  buildCounterComputeScheduling++;
  if (buildCounterComputeScheduling < 3) {
    o.minNodeCpus = 42;
    o.nodeAffinities = buildUnnamed10();
    o.onHostMaintenance = 'foo';
    o.restartType = 'foo';
  }
  buildCounterComputeScheduling--;
  return o;
}

void checkComputeScheduling(api.ComputeScheduling o) {
  buildCounterComputeScheduling++;
  if (buildCounterComputeScheduling < 3) {
    unittest.expect(
      o.minNodeCpus!,
      unittest.equals(42),
    );
    checkUnnamed10(o.nodeAffinities!);
    unittest.expect(
      o.onHostMaintenance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.restartType!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeScheduling--;
}

core.int buildCounterCutoverJob = 0;
api.CutoverJob buildCutoverJob() {
  final o = api.CutoverJob();
  buildCounterCutoverJob++;
  if (buildCounterCutoverJob < 3) {
    o.computeEngineTargetDetails = buildComputeEngineTargetDetails();
    o.createTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.progressPercent = 42;
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.stateTime = 'foo';
  }
  buildCounterCutoverJob--;
  return o;
}

void checkCutoverJob(api.CutoverJob o) {
  buildCounterCutoverJob++;
  if (buildCounterCutoverJob < 3) {
    checkComputeEngineTargetDetails(o.computeEngineTargetDetails!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCutoverJob--;
}

core.int buildCounterDatacenterConnector = 0;
api.DatacenterConnector buildDatacenterConnector() {
  final o = api.DatacenterConnector();
  buildCounterDatacenterConnector++;
  if (buildCounterDatacenterConnector < 3) {
    o.bucket = 'foo';
    o.createTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.registrationId = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.updateTime = 'foo';
    o.version = 'foo';
  }
  buildCounterDatacenterConnector--;
  return o;
}

void checkDatacenterConnector(api.DatacenterConnector o) {
  buildCounterDatacenterConnector++;
  if (buildCounterDatacenterConnector < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.registrationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatacenterConnector--;
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

core.int buildCounterFetchInventoryResponse = 0;
api.FetchInventoryResponse buildFetchInventoryResponse() {
  final o = api.FetchInventoryResponse();
  buildCounterFetchInventoryResponse++;
  if (buildCounterFetchInventoryResponse < 3) {
    o.updateTime = 'foo';
    o.vmwareVms = buildVmwareVmsDetails();
  }
  buildCounterFetchInventoryResponse--;
  return o;
}

void checkFetchInventoryResponse(api.FetchInventoryResponse o) {
  buildCounterFetchInventoryResponse++;
  if (buildCounterFetchInventoryResponse < 3) {
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVmwareVmsDetails(o.vmwareVms!);
  }
  buildCounterFetchInventoryResponse--;
}

core.int buildCounterFinalizeMigrationRequest = 0;
api.FinalizeMigrationRequest buildFinalizeMigrationRequest() {
  final o = api.FinalizeMigrationRequest();
  buildCounterFinalizeMigrationRequest++;
  if (buildCounterFinalizeMigrationRequest < 3) {}
  buildCounterFinalizeMigrationRequest--;
  return o;
}

void checkFinalizeMigrationRequest(api.FinalizeMigrationRequest o) {
  buildCounterFinalizeMigrationRequest++;
  if (buildCounterFinalizeMigrationRequest < 3) {}
  buildCounterFinalizeMigrationRequest--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(
      o.createTime!,
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
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.List<api.CloneJob> buildUnnamed11() => [
      buildCloneJob(),
      buildCloneJob(),
    ];

void checkUnnamed11(core.List<api.CloneJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneJob(o[0]);
  checkCloneJob(o[1]);
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

core.int buildCounterListCloneJobsResponse = 0;
api.ListCloneJobsResponse buildListCloneJobsResponse() {
  final o = api.ListCloneJobsResponse();
  buildCounterListCloneJobsResponse++;
  if (buildCounterListCloneJobsResponse < 3) {
    o.cloneJobs = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterListCloneJobsResponse--;
  return o;
}

void checkListCloneJobsResponse(api.ListCloneJobsResponse o) {
  buildCounterListCloneJobsResponse++;
  if (buildCounterListCloneJobsResponse < 3) {
    checkUnnamed11(o.cloneJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListCloneJobsResponse--;
}

core.List<api.CutoverJob> buildUnnamed13() => [
      buildCutoverJob(),
      buildCutoverJob(),
    ];

void checkUnnamed13(core.List<api.CutoverJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverJob(o[0]);
  checkCutoverJob(o[1]);
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterListCutoverJobsResponse = 0;
api.ListCutoverJobsResponse buildListCutoverJobsResponse() {
  final o = api.ListCutoverJobsResponse();
  buildCounterListCutoverJobsResponse++;
  if (buildCounterListCutoverJobsResponse < 3) {
    o.cutoverJobs = buildUnnamed13();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed14();
  }
  buildCounterListCutoverJobsResponse--;
  return o;
}

void checkListCutoverJobsResponse(api.ListCutoverJobsResponse o) {
  buildCounterListCutoverJobsResponse++;
  if (buildCounterListCutoverJobsResponse < 3) {
    checkUnnamed13(o.cutoverJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListCutoverJobsResponse--;
}

core.List<api.DatacenterConnector> buildUnnamed15() => [
      buildDatacenterConnector(),
      buildDatacenterConnector(),
    ];

void checkUnnamed15(core.List<api.DatacenterConnector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatacenterConnector(o[0]);
  checkDatacenterConnector(o[1]);
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

core.int buildCounterListDatacenterConnectorsResponse = 0;
api.ListDatacenterConnectorsResponse buildListDatacenterConnectorsResponse() {
  final o = api.ListDatacenterConnectorsResponse();
  buildCounterListDatacenterConnectorsResponse++;
  if (buildCounterListDatacenterConnectorsResponse < 3) {
    o.datacenterConnectors = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed16();
  }
  buildCounterListDatacenterConnectorsResponse--;
  return o;
}

void checkListDatacenterConnectorsResponse(
    api.ListDatacenterConnectorsResponse o) {
  buildCounterListDatacenterConnectorsResponse++;
  if (buildCounterListDatacenterConnectorsResponse < 3) {
    checkUnnamed15(o.datacenterConnectors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListDatacenterConnectorsResponse--;
}

core.List<api.Group> buildUnnamed17() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed17(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed17(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListGroupsResponse--;
}

core.List<api.Location> buildUnnamed19() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed19(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed19(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MigratingVm> buildUnnamed20() => [
      buildMigratingVm(),
      buildMigratingVm(),
    ];

void checkUnnamed20(core.List<api.MigratingVm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigratingVm(o[0]);
  checkMigratingVm(o[1]);
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

core.int buildCounterListMigratingVmsResponse = 0;
api.ListMigratingVmsResponse buildListMigratingVmsResponse() {
  final o = api.ListMigratingVmsResponse();
  buildCounterListMigratingVmsResponse++;
  if (buildCounterListMigratingVmsResponse < 3) {
    o.migratingVms = buildUnnamed20();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed21();
  }
  buildCounterListMigratingVmsResponse--;
  return o;
}

void checkListMigratingVmsResponse(api.ListMigratingVmsResponse o) {
  buildCounterListMigratingVmsResponse++;
  if (buildCounterListMigratingVmsResponse < 3) {
    checkUnnamed20(o.migratingVms!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.unreachable!);
  }
  buildCounterListMigratingVmsResponse--;
}

core.List<api.Operation> buildUnnamed22() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed22(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed22();
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
    checkUnnamed22(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Source> buildUnnamed23() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed23(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
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

core.int buildCounterListSourcesResponse = 0;
api.ListSourcesResponse buildListSourcesResponse() {
  final o = api.ListSourcesResponse();
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sources = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterListSourcesResponse--;
  return o;
}

void checkListSourcesResponse(api.ListSourcesResponse o) {
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.sources!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListSourcesResponse--;
}

core.List<api.TargetProject> buildUnnamed25() => [
      buildTargetProject(),
      buildTargetProject(),
    ];

void checkUnnamed25(core.List<api.TargetProject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetProject(o[0]);
  checkTargetProject(o[1]);
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

core.int buildCounterListTargetProjectsResponse = 0;
api.ListTargetProjectsResponse buildListTargetProjectsResponse() {
  final o = api.ListTargetProjectsResponse();
  buildCounterListTargetProjectsResponse++;
  if (buildCounterListTargetProjectsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetProjects = buildUnnamed25();
    o.unreachable = buildUnnamed26();
  }
  buildCounterListTargetProjectsResponse--;
  return o;
}

void checkListTargetProjectsResponse(api.ListTargetProjectsResponse o) {
  buildCounterListTargetProjectsResponse++;
  if (buildCounterListTargetProjectsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.targetProjects!);
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListTargetProjectsResponse--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<api.UtilizationReport> buildUnnamed28() => [
      buildUtilizationReport(),
      buildUtilizationReport(),
    ];

void checkUnnamed28(core.List<api.UtilizationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUtilizationReport(o[0]);
  checkUtilizationReport(o[1]);
}

core.int buildCounterListUtilizationReportsResponse = 0;
api.ListUtilizationReportsResponse buildListUtilizationReportsResponse() {
  final o = api.ListUtilizationReportsResponse();
  buildCounterListUtilizationReportsResponse++;
  if (buildCounterListUtilizationReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed27();
    o.utilizationReports = buildUnnamed28();
  }
  buildCounterListUtilizationReportsResponse--;
  return o;
}

void checkListUtilizationReportsResponse(api.ListUtilizationReportsResponse o) {
  buildCounterListUtilizationReportsResponse++;
  if (buildCounterListUtilizationReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.unreachable!);
    checkUnnamed28(o.utilizationReports!);
  }
  buildCounterListUtilizationReportsResponse--;
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed29();
    o.locationId = 'foo';
    o.metadata = buildUnnamed30();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed31() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed31(core.Map<core.String, core.String> o) {
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

core.List<api.CloneJob> buildUnnamed32() => [
      buildCloneJob(),
      buildCloneJob(),
    ];

void checkUnnamed32(core.List<api.CloneJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneJob(o[0]);
  checkCloneJob(o[1]);
}

core.List<api.CutoverJob> buildUnnamed33() => [
      buildCutoverJob(),
      buildCutoverJob(),
    ];

void checkUnnamed33(core.List<api.CutoverJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverJob(o[0]);
  checkCutoverJob(o[1]);
}

core.int buildCounterMigratingVm = 0;
api.MigratingVm buildMigratingVm() {
  final o = api.MigratingVm();
  buildCounterMigratingVm++;
  if (buildCounterMigratingVm < 3) {
    o.computeEngineTargetDefaults = buildComputeEngineTargetDefaults();
    o.createTime = 'foo';
    o.currentSyncInfo = buildReplicationCycle();
    o.description = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.group = 'foo';
    o.labels = buildUnnamed31();
    o.lastSync = buildReplicationSync();
    o.name = 'foo';
    o.policy = buildSchedulePolicy();
    o.recentCloneJobs = buildUnnamed32();
    o.recentCutoverJobs = buildUnnamed33();
    o.sourceVmId = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMigratingVm--;
  return o;
}

void checkMigratingVm(api.MigratingVm o) {
  buildCounterMigratingVm++;
  if (buildCounterMigratingVm < 3) {
    checkComputeEngineTargetDefaults(o.computeEngineTargetDefaults!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkReplicationCycle(o.currentSyncInfo!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.labels!);
    checkReplicationSync(o.lastSync!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSchedulePolicy(o.policy!);
    checkUnnamed32(o.recentCloneJobs!);
    checkUnnamed33(o.recentCutoverJobs!);
    unittest.expect(
      o.sourceVmId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMigratingVm--;
}

core.int buildCounterNetworkInterface = 0;
api.NetworkInterface buildNetworkInterface() {
  final o = api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.externalIp = 'foo';
    o.internalIp = 'foo';
    o.network = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterNetworkInterface--;
  return o;
}

void checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    unittest.expect(
      o.externalIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkInterface--;
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

core.int buildCounterPauseMigrationRequest = 0;
api.PauseMigrationRequest buildPauseMigrationRequest() {
  final o = api.PauseMigrationRequest();
  buildCounterPauseMigrationRequest++;
  if (buildCounterPauseMigrationRequest < 3) {}
  buildCounterPauseMigrationRequest--;
  return o;
}

void checkPauseMigrationRequest(api.PauseMigrationRequest o) {
  buildCounterPauseMigrationRequest++;
  if (buildCounterPauseMigrationRequest < 3) {}
  buildCounterPauseMigrationRequest--;
}

core.int buildCounterRemoveGroupMigrationRequest = 0;
api.RemoveGroupMigrationRequest buildRemoveGroupMigrationRequest() {
  final o = api.RemoveGroupMigrationRequest();
  buildCounterRemoveGroupMigrationRequest++;
  if (buildCounterRemoveGroupMigrationRequest < 3) {
    o.migratingVm = 'foo';
  }
  buildCounterRemoveGroupMigrationRequest--;
  return o;
}

void checkRemoveGroupMigrationRequest(api.RemoveGroupMigrationRequest o) {
  buildCounterRemoveGroupMigrationRequest++;
  if (buildCounterRemoveGroupMigrationRequest < 3) {
    unittest.expect(
      o.migratingVm!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveGroupMigrationRequest--;
}

core.int buildCounterReplicationCycle = 0;
api.ReplicationCycle buildReplicationCycle() {
  final o = api.ReplicationCycle();
  buildCounterReplicationCycle++;
  if (buildCounterReplicationCycle < 3) {
    o.progressPercent = 42;
    o.startTime = 'foo';
  }
  buildCounterReplicationCycle--;
  return o;
}

void checkReplicationCycle(api.ReplicationCycle o) {
  buildCounterReplicationCycle++;
  if (buildCounterReplicationCycle < 3) {
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicationCycle--;
}

core.int buildCounterReplicationSync = 0;
api.ReplicationSync buildReplicationSync() {
  final o = api.ReplicationSync();
  buildCounterReplicationSync++;
  if (buildCounterReplicationSync < 3) {
    o.lastSyncTime = 'foo';
  }
  buildCounterReplicationSync--;
  return o;
}

void checkReplicationSync(api.ReplicationSync o) {
  buildCounterReplicationSync++;
  if (buildCounterReplicationSync < 3) {
    unittest.expect(
      o.lastSyncTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicationSync--;
}

core.int buildCounterResumeMigrationRequest = 0;
api.ResumeMigrationRequest buildResumeMigrationRequest() {
  final o = api.ResumeMigrationRequest();
  buildCounterResumeMigrationRequest++;
  if (buildCounterResumeMigrationRequest < 3) {}
  buildCounterResumeMigrationRequest--;
  return o;
}

void checkResumeMigrationRequest(api.ResumeMigrationRequest o) {
  buildCounterResumeMigrationRequest++;
  if (buildCounterResumeMigrationRequest < 3) {}
  buildCounterResumeMigrationRequest--;
}

core.int buildCounterSchedulePolicy = 0;
api.SchedulePolicy buildSchedulePolicy() {
  final o = api.SchedulePolicy();
  buildCounterSchedulePolicy++;
  if (buildCounterSchedulePolicy < 3) {
    o.idleDuration = 'foo';
    o.skipOsAdaptation = true;
  }
  buildCounterSchedulePolicy--;
  return o;
}

void checkSchedulePolicy(api.SchedulePolicy o) {
  buildCounterSchedulePolicy++;
  if (buildCounterSchedulePolicy < 3) {
    unittest.expect(
      o.idleDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.skipOsAdaptation!, unittest.isTrue);
  }
  buildCounterSchedulePolicy--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.int buildCounterSchedulingNodeAffinity = 0;
api.SchedulingNodeAffinity buildSchedulingNodeAffinity() {
  final o = api.SchedulingNodeAffinity();
  buildCounterSchedulingNodeAffinity++;
  if (buildCounterSchedulingNodeAffinity < 3) {
    o.key = 'foo';
    o.operator = 'foo';
    o.values = buildUnnamed36();
  }
  buildCounterSchedulingNodeAffinity--;
  return o;
}

void checkSchedulingNodeAffinity(api.SchedulingNodeAffinity o) {
  buildCounterSchedulingNodeAffinity++;
  if (buildCounterSchedulingNodeAffinity < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.values!);
  }
  buildCounterSchedulingNodeAffinity--;
}

core.Map<core.String, core.String> buildUnnamed37() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed37(core.Map<core.String, core.String> o) {
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

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed37();
    o.name = 'foo';
    o.updateTime = 'foo';
    o.vmware = buildVmwareSourceDetails();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVmwareSourceDetails(o.vmware!);
  }
  buildCounterSource--;
}

core.int buildCounterStartMigrationRequest = 0;
api.StartMigrationRequest buildStartMigrationRequest() {
  final o = api.StartMigrationRequest();
  buildCounterStartMigrationRequest++;
  if (buildCounterStartMigrationRequest < 3) {}
  buildCounterStartMigrationRequest--;
  return o;
}

void checkStartMigrationRequest(api.StartMigrationRequest o) {
  buildCounterStartMigrationRequest++;
  if (buildCounterStartMigrationRequest < 3) {}
  buildCounterStartMigrationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed39() => [
      buildUnnamed38(),
      buildUnnamed38(),
    ];

void checkUnnamed39(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed38(o[0]);
  checkUnnamed38(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed39();
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
    checkUnnamed39(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTargetProject = 0;
api.TargetProject buildTargetProject() {
  final o = api.TargetProject();
  buildCounterTargetProject++;
  if (buildCounterTargetProject < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.project = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTargetProject--;
  return o;
}

void checkTargetProject(api.TargetProject o) {
  buildCounterTargetProject++;
  if (buildCounterTargetProject < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetProject--;
}

core.List<api.VmUtilizationInfo> buildUnnamed40() => [
      buildVmUtilizationInfo(),
      buildVmUtilizationInfo(),
    ];

void checkUnnamed40(core.List<api.VmUtilizationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmUtilizationInfo(o[0]);
  checkVmUtilizationInfo(o[1]);
}

core.int buildCounterUtilizationReport = 0;
api.UtilizationReport buildUtilizationReport() {
  final o = api.UtilizationReport();
  buildCounterUtilizationReport++;
  if (buildCounterUtilizationReport < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.frameEndTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.timeFrame = 'foo';
    o.vmCount = 42;
    o.vms = buildUnnamed40();
  }
  buildCounterUtilizationReport--;
  return o;
}

void checkUtilizationReport(api.UtilizationReport o) {
  buildCounterUtilizationReport++;
  if (buildCounterUtilizationReport < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.frameEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeFrame!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmCount!,
      unittest.equals(42),
    );
    checkUnnamed40(o.vms!);
  }
  buildCounterUtilizationReport--;
}

core.int buildCounterVmUtilizationInfo = 0;
api.VmUtilizationInfo buildVmUtilizationInfo() {
  final o = api.VmUtilizationInfo();
  buildCounterVmUtilizationInfo++;
  if (buildCounterVmUtilizationInfo < 3) {
    o.utilization = buildVmUtilizationMetrics();
    o.vmId = 'foo';
    o.vmwareVmDetails = buildVmwareVmDetails();
  }
  buildCounterVmUtilizationInfo--;
  return o;
}

void checkVmUtilizationInfo(api.VmUtilizationInfo o) {
  buildCounterVmUtilizationInfo++;
  if (buildCounterVmUtilizationInfo < 3) {
    checkVmUtilizationMetrics(o.utilization!);
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
    checkVmwareVmDetails(o.vmwareVmDetails!);
  }
  buildCounterVmUtilizationInfo--;
}

core.int buildCounterVmUtilizationMetrics = 0;
api.VmUtilizationMetrics buildVmUtilizationMetrics() {
  final o = api.VmUtilizationMetrics();
  buildCounterVmUtilizationMetrics++;
  if (buildCounterVmUtilizationMetrics < 3) {
    o.cpuAveragePercent = 42;
    o.cpuMaxPercent = 42;
    o.diskIoRateAverageKbps = 'foo';
    o.diskIoRateMaxKbps = 'foo';
    o.memoryAveragePercent = 42;
    o.memoryMaxPercent = 42;
    o.networkThroughputAverageKbps = 'foo';
    o.networkThroughputMaxKbps = 'foo';
  }
  buildCounterVmUtilizationMetrics--;
  return o;
}

void checkVmUtilizationMetrics(api.VmUtilizationMetrics o) {
  buildCounterVmUtilizationMetrics++;
  if (buildCounterVmUtilizationMetrics < 3) {
    unittest.expect(
      o.cpuAveragePercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cpuMaxPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.diskIoRateAverageKbps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskIoRateMaxKbps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryAveragePercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.memoryMaxPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.networkThroughputAverageKbps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkThroughputMaxKbps!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmUtilizationMetrics--;
}

core.int buildCounterVmwareSourceDetails = 0;
api.VmwareSourceDetails buildVmwareSourceDetails() {
  final o = api.VmwareSourceDetails();
  buildCounterVmwareSourceDetails++;
  if (buildCounterVmwareSourceDetails < 3) {
    o.password = 'foo';
    o.thumbprint = 'foo';
    o.username = 'foo';
    o.vcenterIp = 'foo';
  }
  buildCounterVmwareSourceDetails--;
  return o;
}

void checkVmwareSourceDetails(api.VmwareSourceDetails o) {
  buildCounterVmwareSourceDetails++;
  if (buildCounterVmwareSourceDetails < 3) {
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vcenterIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareSourceDetails--;
}

core.int buildCounterVmwareVmDetails = 0;
api.VmwareVmDetails buildVmwareVmDetails() {
  final o = api.VmwareVmDetails();
  buildCounterVmwareVmDetails++;
  if (buildCounterVmwareVmDetails < 3) {
    o.bootOption = 'foo';
    o.committedStorageMb = 'foo';
    o.cpuCount = 42;
    o.datacenterDescription = 'foo';
    o.datacenterId = 'foo';
    o.diskCount = 42;
    o.displayName = 'foo';
    o.guestDescription = 'foo';
    o.memoryMb = 42;
    o.powerState = 'foo';
    o.uuid = 'foo';
    o.vmId = 'foo';
  }
  buildCounterVmwareVmDetails--;
  return o;
}

void checkVmwareVmDetails(api.VmwareVmDetails o) {
  buildCounterVmwareVmDetails++;
  if (buildCounterVmwareVmDetails < 3) {
    unittest.expect(
      o.bootOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.committedStorageMb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.datacenterDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datacenterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.guestDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryMb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.powerState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareVmDetails--;
}

core.List<api.VmwareVmDetails> buildUnnamed41() => [
      buildVmwareVmDetails(),
      buildVmwareVmDetails(),
    ];

void checkUnnamed41(core.List<api.VmwareVmDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareVmDetails(o[0]);
  checkVmwareVmDetails(o[1]);
}

core.int buildCounterVmwareVmsDetails = 0;
api.VmwareVmsDetails buildVmwareVmsDetails() {
  final o = api.VmwareVmsDetails();
  buildCounterVmwareVmsDetails++;
  if (buildCounterVmwareVmsDetails < 3) {
    o.details = buildUnnamed41();
  }
  buildCounterVmwareVmsDetails--;
  return o;
}

void checkVmwareVmsDetails(api.VmwareVmsDetails o) {
  buildCounterVmwareVmsDetails++;
  if (buildCounterVmwareVmsDetails < 3) {
    checkUnnamed41(o.details!);
  }
  buildCounterVmwareVmsDetails--;
}

void main() {
  unittest.group('obj-schema-AddGroupMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddGroupMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddGroupMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddGroupMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-AppliedLicense', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppliedLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppliedLicense.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppliedLicense(od);
    });
  });

  unittest.group('obj-schema-CancelCloneJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelCloneJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelCloneJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelCloneJobRequest(od);
    });
  });

  unittest.group('obj-schema-CancelCutoverJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelCutoverJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelCutoverJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelCutoverJobRequest(od);
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

  unittest.group('obj-schema-CloneJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloneJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CloneJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCloneJob(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineTargetDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineTargetDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineTargetDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEngineTargetDefaults(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineTargetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineTargetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineTargetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEngineTargetDetails(od);
    });
  });

  unittest.group('obj-schema-ComputeScheduling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeScheduling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeScheduling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeScheduling(od);
    });
  });

  unittest.group('obj-schema-CutoverJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutoverJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CutoverJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCutoverJob(od);
    });
  });

  unittest.group('obj-schema-DatacenterConnector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatacenterConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatacenterConnector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatacenterConnector(od);
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

  unittest.group('obj-schema-FetchInventoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchInventoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchInventoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchInventoryResponse(od);
    });
  });

  unittest.group('obj-schema-FinalizeMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinalizeMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinalizeMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinalizeMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-ListCloneJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCloneJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCloneJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCloneJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCutoverJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCutoverJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCutoverJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCutoverJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatacenterConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatacenterConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatacenterConnectorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatacenterConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMigratingVmsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMigratingVmsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMigratingVmsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMigratingVmsResponse(od);
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

  unittest.group('obj-schema-ListSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTargetProjectsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTargetProjectsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTargetProjectsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTargetProjectsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUtilizationReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUtilizationReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUtilizationReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUtilizationReportsResponse(od);
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

  unittest.group('obj-schema-MigratingVm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigratingVm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigratingVm.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigratingVm(od);
    });
  });

  unittest.group('obj-schema-NetworkInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkInterface(od);
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

  unittest.group('obj-schema-PauseMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveGroupMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveGroupMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveGroupMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveGroupMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-ReplicationCycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicationCycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicationCycle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicationCycle(od);
    });
  });

  unittest.group('obj-schema-ReplicationSync', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicationSync();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicationSync.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicationSync(od);
    });
  });

  unittest.group('obj-schema-ResumeMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-SchedulePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchedulePolicy(od);
    });
  });

  unittest.group('obj-schema-SchedulingNodeAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulingNodeAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulingNodeAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchedulingNodeAffinity(od);
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

  unittest.group('obj-schema-StartMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartMigrationRequest(od);
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

  unittest.group('obj-schema-TargetProject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetProject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetProject(od);
    });
  });

  unittest.group('obj-schema-UtilizationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUtilizationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UtilizationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUtilizationReport(od);
    });
  });

  unittest.group('obj-schema-VmUtilizationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmUtilizationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmUtilizationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmUtilizationInfo(od);
    });
  });

  unittest.group('obj-schema-VmUtilizationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmUtilizationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmUtilizationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmUtilizationMetrics(od);
    });
  });

  unittest.group('obj-schema-VmwareSourceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareSourceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareSourceDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareSourceDetails(od);
    });
  });

  unittest.group('obj-schema-VmwareVmDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVmDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVmDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVmDetails(od);
    });
  });

  unittest.group('obj-schema-VmwareVmsDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVmsDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVmsDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVmsDetails(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGroupsResource', () {
    unittest.test('method--addGroupMigration', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
      final arg_request = buildAddGroupMigrationRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddGroupMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddGroupMigrationRequest(obj);

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
      final response = await res.addGroupMigration(arg_request, arg_group,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
      final arg_request = buildGroup();
      final arg_parent = 'foo';
      final arg_groupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          queryMap['groupId']!.first,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          groupId: arg_groupId, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeGroupMigration', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.groups;
      final arg_request = buildRemoveGroupMigrationRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveGroupMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveGroupMigrationRequest(obj);

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
      final response = await res.removeGroupMigration(arg_request, arg_group,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.operations;
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

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.operations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.operations;
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
  });

  unittest.group('resource-ProjectsLocationsSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.sources;
      final arg_request = buildSource();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_sourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Source.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSource(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['sourceId']!.first,
          unittest.equals(arg_sourceId),
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
          requestId: arg_requestId,
          sourceId: arg_sourceId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.sources;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchInventory', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.sources;
      final arg_source = 'foo';
      final arg_forceRefresh = true;
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
          queryMap['forceRefresh']!.first,
          unittest.equals('$arg_forceRefresh'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFetchInventoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchInventory(arg_source,
          forceRefresh: arg_forceRefresh, $fields: arg_$fields);
      checkFetchInventoryResponse(response as api.FetchInventoryResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.sources;
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
        final resp = convert.json.encode(buildSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSource(response as api.Source);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.sources;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSourcesResponse(response as api.ListSourcesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.sources;
      final arg_request = buildSource();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Source.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSource(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsSourcesDatacenterConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .datacenterConnectors;
      final arg_request = buildDatacenterConnector();
      final arg_parent = 'foo';
      final arg_datacenterConnectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatacenterConnector.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatacenterConnector(obj);

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
          queryMap['datacenterConnectorId']!.first,
          unittest.equals(arg_datacenterConnectorId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          datacenterConnectorId: arg_datacenterConnectorId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .datacenterConnectors;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .datacenterConnectors;
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
        final resp = convert.json.encode(buildDatacenterConnector());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDatacenterConnector(response as api.DatacenterConnector);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .datacenterConnectors;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListDatacenterConnectorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatacenterConnectorsResponse(
          response as api.ListDatacenterConnectorsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSourcesMigratingVmsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_request = buildMigratingVm();
      final arg_parent = 'foo';
      final arg_migratingVmId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigratingVm.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigratingVm(obj);

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
          queryMap['migratingVmId']!.first,
          unittest.equals(arg_migratingVmId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          migratingVmId: arg_migratingVmId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
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

    unittest.test('method--finalizeMigration', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_request = buildFinalizeMigrationRequest();
      final arg_migratingVm = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FinalizeMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFinalizeMigrationRequest(obj);

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
      final response = await res.finalizeMigration(arg_request, arg_migratingVm,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMigratingVm());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkMigratingVm(response as api.MigratingVm);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListMigratingVmsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListMigratingVmsResponse(response as api.ListMigratingVmsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_request = buildMigratingVm();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigratingVm.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigratingVm(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--pauseMigration', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_request = buildPauseMigrationRequest();
      final arg_migratingVm = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseMigrationRequest(obj);

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
      final response = await res.pauseMigration(arg_request, arg_migratingVm,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resumeMigration', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_request = buildResumeMigrationRequest();
      final arg_migratingVm = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeMigrationRequest(obj);

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
      final response = await res.resumeMigration(arg_request, arg_migratingVm,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startMigration', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms;
      final arg_request = buildStartMigrationRequest();
      final arg_migratingVm = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartMigrationRequest(obj);

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
      final response = await res.startMigration(arg_request, arg_migratingVm,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsSourcesMigratingVmsCloneJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cloneJobs;
      final arg_request = buildCancelCloneJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelCloneJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelCloneJobRequest(obj);

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
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cloneJobs;
      final arg_request = buildCloneJob();
      final arg_parent = 'foo';
      final arg_cloneJobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.CloneJob.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCloneJob(obj);

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
          queryMap['cloneJobId']!.first,
          unittest.equals(arg_cloneJobId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          cloneJobId: arg_cloneJobId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cloneJobs;
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
        final resp = convert.json.encode(buildCloneJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCloneJob(response as api.CloneJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cloneJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCloneJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCloneJobsResponse(response as api.ListCloneJobsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsSourcesMigratingVmsCutoverJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cutoverJobs;
      final arg_request = buildCancelCutoverJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelCutoverJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelCutoverJobRequest(obj);

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
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cutoverJobs;
      final arg_request = buildCutoverJob();
      final arg_parent = 'foo';
      final arg_cutoverJobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CutoverJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCutoverJob(obj);

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
          queryMap['cutoverJobId']!.first,
          unittest.equals(arg_cutoverJobId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          cutoverJobId: arg_cutoverJobId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cutoverJobs;
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
        final resp = convert.json.encode(buildCutoverJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCutoverJob(response as api.CutoverJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .cutoverJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCutoverJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCutoverJobsResponse(response as api.ListCutoverJobsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSourcesUtilizationReportsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .utilizationReports;
      final arg_request = buildUtilizationReport();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_utilizationReportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UtilizationReport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUtilizationReport(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['utilizationReportId']!.first,
          unittest.equals(arg_utilizationReportId),
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
          requestId: arg_requestId,
          utilizationReportId: arg_utilizationReportId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .utilizationReports;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .utilizationReports;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUtilizationReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkUtilizationReport(response as api.UtilizationReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .utilizationReports;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListUtilizationReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListUtilizationReportsResponse(
          response as api.ListUtilizationReportsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTargetProjectsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.targetProjects;
      final arg_request = buildTargetProject();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TargetProject.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTargetProject(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['targetProjectId']!.first,
          unittest.equals(arg_targetProjectId),
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
          requestId: arg_requestId,
          targetProjectId: arg_targetProjectId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.targetProjects;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.targetProjects;
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
        final resp = convert.json.encode(buildTargetProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTargetProject(response as api.TargetProject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.targetProjects;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTargetProjectsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTargetProjectsResponse(
          response as api.ListTargetProjectsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.targetProjects;
      final arg_request = buildTargetProject();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TargetProject.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTargetProject(obj);

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
