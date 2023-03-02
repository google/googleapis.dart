// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

import 'package:googleapis/vmmigration/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessKeyCredentials = 0;
api.AccessKeyCredentials buildAccessKeyCredentials() {
  final o = api.AccessKeyCredentials();
  buildCounterAccessKeyCredentials++;
  if (buildCounterAccessKeyCredentials < 3) {
    o.accessKeyId = 'foo';
    o.secretAccessKey = 'foo';
  }
  buildCounterAccessKeyCredentials--;
  return o;
}

void checkAccessKeyCredentials(api.AccessKeyCredentials o) {
  buildCounterAccessKeyCredentials++;
  if (buildCounterAccessKeyCredentials < 3) {
    unittest.expect(
      o.accessKeyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretAccessKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessKeyCredentials--;
}

core.int buildCounterAdaptingOSStep = 0;
api.AdaptingOSStep buildAdaptingOSStep() {
  final o = api.AdaptingOSStep();
  buildCounterAdaptingOSStep++;
  if (buildCounterAdaptingOSStep < 3) {}
  buildCounterAdaptingOSStep--;
  return o;
}

void checkAdaptingOSStep(api.AdaptingOSStep o) {
  buildCounterAdaptingOSStep++;
  if (buildCounterAdaptingOSStep < 3) {}
  buildCounterAdaptingOSStep--;
}

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

core.int buildCounterApplianceVersion = 0;
api.ApplianceVersion buildApplianceVersion() {
  final o = api.ApplianceVersion();
  buildCounterApplianceVersion++;
  if (buildCounterApplianceVersion < 3) {
    o.critical = true;
    o.releaseNotesUri = 'foo';
    o.uri = 'foo';
    o.version = 'foo';
  }
  buildCounterApplianceVersion--;
  return o;
}

void checkApplianceVersion(api.ApplianceVersion o) {
  buildCounterApplianceVersion++;
  if (buildCounterApplianceVersion < 3) {
    unittest.expect(o.critical!, unittest.isTrue);
    unittest.expect(
      o.releaseNotesUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplianceVersion--;
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

core.int buildCounterAvailableUpdates = 0;
api.AvailableUpdates buildAvailableUpdates() {
  final o = api.AvailableUpdates();
  buildCounterAvailableUpdates++;
  if (buildCounterAvailableUpdates < 3) {
    o.inPlaceUpdate = buildApplianceVersion();
    o.newDeployableAppliance = buildApplianceVersion();
  }
  buildCounterAvailableUpdates--;
  return o;
}

void checkAvailableUpdates(api.AvailableUpdates o) {
  buildCounterAvailableUpdates++;
  if (buildCounterAvailableUpdates < 3) {
    checkApplianceVersion(o.inPlaceUpdate!);
    checkApplianceVersion(o.newDeployableAppliance!);
  }
  buildCounterAvailableUpdates--;
}

core.int buildCounterAwsSecurityGroup = 0;
api.AwsSecurityGroup buildAwsSecurityGroup() {
  final o = api.AwsSecurityGroup();
  buildCounterAwsSecurityGroup++;
  if (buildCounterAwsSecurityGroup < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAwsSecurityGroup--;
  return o;
}

void checkAwsSecurityGroup(api.AwsSecurityGroup o) {
  buildCounterAwsSecurityGroup++;
  if (buildCounterAwsSecurityGroup < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsSecurityGroup--;
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

core.List<api.Tag> buildUnnamed1() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed1(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
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

core.int buildCounterAwsSourceDetails = 0;
api.AwsSourceDetails buildAwsSourceDetails() {
  final o = api.AwsSourceDetails();
  buildCounterAwsSourceDetails++;
  if (buildCounterAwsSourceDetails < 3) {
    o.accessKeyCreds = buildAccessKeyCredentials();
    o.awsRegion = 'foo';
    o.error = buildStatus();
    o.inventorySecurityGroupNames = buildUnnamed0();
    o.inventoryTagList = buildUnnamed1();
    o.migrationResourcesUserTags = buildUnnamed2();
    o.publicIp = 'foo';
    o.state = 'foo';
  }
  buildCounterAwsSourceDetails--;
  return o;
}

void checkAwsSourceDetails(api.AwsSourceDetails o) {
  buildCounterAwsSourceDetails++;
  if (buildCounterAwsSourceDetails < 3) {
    checkAccessKeyCredentials(o.accessKeyCreds!);
    unittest.expect(
      o.awsRegion!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    checkUnnamed0(o.inventorySecurityGroupNames!);
    checkUnnamed1(o.inventoryTagList!);
    checkUnnamed2(o.migrationResourcesUserTags!);
    unittest.expect(
      o.publicIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsSourceDetails--;
}

core.int buildCounterAwsSourceVmDetails = 0;
api.AwsSourceVmDetails buildAwsSourceVmDetails() {
  final o = api.AwsSourceVmDetails();
  buildCounterAwsSourceVmDetails++;
  if (buildCounterAwsSourceVmDetails < 3) {
    o.committedStorageBytes = 'foo';
    o.firmware = 'foo';
  }
  buildCounterAwsSourceVmDetails--;
  return o;
}

void checkAwsSourceVmDetails(api.AwsSourceVmDetails o) {
  buildCounterAwsSourceVmDetails++;
  if (buildCounterAwsSourceVmDetails < 3) {
    unittest.expect(
      o.committedStorageBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firmware!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsSourceVmDetails--;
}

core.List<api.AwsSecurityGroup> buildUnnamed3() => [
      buildAwsSecurityGroup(),
      buildAwsSecurityGroup(),
    ];

void checkUnnamed3(core.List<api.AwsSecurityGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAwsSecurityGroup(o[0]);
  checkAwsSecurityGroup(o[1]);
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.int buildCounterAwsVmDetails = 0;
api.AwsVmDetails buildAwsVmDetails() {
  final o = api.AwsVmDetails();
  buildCounterAwsVmDetails++;
  if (buildCounterAwsVmDetails < 3) {
    o.architecture = 'foo';
    o.bootOption = 'foo';
    o.committedStorageMb = 'foo';
    o.cpuCount = 42;
    o.diskCount = 42;
    o.displayName = 'foo';
    o.instanceType = 'foo';
    o.memoryMb = 42;
    o.osDescription = 'foo';
    o.powerState = 'foo';
    o.securityGroups = buildUnnamed3();
    o.sourceDescription = 'foo';
    o.sourceId = 'foo';
    o.tags = buildUnnamed4();
    o.virtualizationType = 'foo';
    o.vmId = 'foo';
    o.vpcId = 'foo';
    o.zone = 'foo';
  }
  buildCounterAwsVmDetails--;
  return o;
}

void checkAwsVmDetails(api.AwsVmDetails o) {
  buildCounterAwsVmDetails++;
  if (buildCounterAwsVmDetails < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
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
      o.diskCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryMb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.osDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.powerState!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.securityGroups!);
    unittest.expect(
      o.sourceDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceId!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.tags!);
    unittest.expect(
      o.virtualizationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsVmDetails--;
}

core.List<api.AwsVmDetails> buildUnnamed5() => [
      buildAwsVmDetails(),
      buildAwsVmDetails(),
    ];

void checkUnnamed5(core.List<api.AwsVmDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAwsVmDetails(o[0]);
  checkAwsVmDetails(o[1]);
}

core.int buildCounterAwsVmsDetails = 0;
api.AwsVmsDetails buildAwsVmsDetails() {
  final o = api.AwsVmsDetails();
  buildCounterAwsVmsDetails++;
  if (buildCounterAwsVmsDetails < 3) {
    o.details = buildUnnamed5();
  }
  buildCounterAwsVmsDetails--;
  return o;
}

void checkAwsVmsDetails(api.AwsVmsDetails o) {
  buildCounterAwsVmsDetails++;
  if (buildCounterAwsVmsDetails < 3) {
    checkUnnamed5(o.details!);
  }
  buildCounterAwsVmsDetails--;
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

core.List<api.CloneStep> buildUnnamed6() => [
      buildCloneStep(),
      buildCloneStep(),
    ];

void checkUnnamed6(core.List<api.CloneStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneStep(o[0]);
  checkCloneStep(o[1]);
}

core.int buildCounterCloneJob = 0;
api.CloneJob buildCloneJob() {
  final o = api.CloneJob();
  buildCounterCloneJob++;
  if (buildCounterCloneJob < 3) {
    o.computeEngineTargetDetails = buildComputeEngineTargetDetails();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.steps = buildUnnamed6();
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
    unittest.expect(
      o.endTime!,
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
    checkUnnamed6(o.steps!);
  }
  buildCounterCloneJob--;
}

core.int buildCounterCloneStep = 0;
api.CloneStep buildCloneStep() {
  final o = api.CloneStep();
  buildCounterCloneStep++;
  if (buildCounterCloneStep < 3) {
    o.adaptingOs = buildAdaptingOSStep();
    o.endTime = 'foo';
    o.instantiatingMigratedVm = buildInstantiatingMigratedVMStep();
    o.preparingVmDisks = buildPreparingVMDisksStep();
    o.startTime = 'foo';
  }
  buildCounterCloneStep--;
  return o;
}

void checkCloneStep(api.CloneStep o) {
  buildCounterCloneStep++;
  if (buildCounterCloneStep < 3) {
    checkAdaptingOSStep(o.adaptingOs!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkInstantiatingMigratedVMStep(o.instantiatingMigratedVm!);
    checkPreparingVMDisksStep(o.preparingVmDisks!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloneStep--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed10() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed10(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
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

core.int buildCounterComputeEngineTargetDefaults = 0;
api.ComputeEngineTargetDefaults buildComputeEngineTargetDefaults() {
  final o = api.ComputeEngineTargetDefaults();
  buildCounterComputeEngineTargetDefaults++;
  if (buildCounterComputeEngineTargetDefaults < 3) {
    o.additionalLicenses = buildUnnamed7();
    o.appliedLicense = buildAppliedLicense();
    o.bootOption = 'foo';
    o.computeScheduling = buildComputeScheduling();
    o.diskType = 'foo';
    o.hostname = 'foo';
    o.labels = buildUnnamed8();
    o.licenseType = 'foo';
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed9();
    o.networkInterfaces = buildUnnamed10();
    o.networkTags = buildUnnamed11();
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
    checkUnnamed7(o.additionalLicenses!);
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
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
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
    checkUnnamed9(o.metadata!);
    checkUnnamed10(o.networkInterfaces!);
    checkUnnamed11(o.networkTags!);
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

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed15() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed15(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
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

core.int buildCounterComputeEngineTargetDetails = 0;
api.ComputeEngineTargetDetails buildComputeEngineTargetDetails() {
  final o = api.ComputeEngineTargetDetails();
  buildCounterComputeEngineTargetDetails++;
  if (buildCounterComputeEngineTargetDetails < 3) {
    o.additionalLicenses = buildUnnamed12();
    o.appliedLicense = buildAppliedLicense();
    o.bootOption = 'foo';
    o.computeScheduling = buildComputeScheduling();
    o.diskType = 'foo';
    o.hostname = 'foo';
    o.labels = buildUnnamed13();
    o.licenseType = 'foo';
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed14();
    o.networkInterfaces = buildUnnamed15();
    o.networkTags = buildUnnamed16();
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
    checkUnnamed12(o.additionalLicenses!);
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
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.labels!);
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
    checkUnnamed14(o.metadata!);
    checkUnnamed15(o.networkInterfaces!);
    checkUnnamed16(o.networkTags!);
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

core.List<api.SchedulingNodeAffinity> buildUnnamed17() => [
      buildSchedulingNodeAffinity(),
      buildSchedulingNodeAffinity(),
    ];

void checkUnnamed17(core.List<api.SchedulingNodeAffinity> o) {
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
    o.nodeAffinities = buildUnnamed17();
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
    checkUnnamed17(o.nodeAffinities!);
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

core.List<api.CutoverStep> buildUnnamed18() => [
      buildCutoverStep(),
      buildCutoverStep(),
    ];

void checkUnnamed18(core.List<api.CutoverStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverStep(o[0]);
  checkCutoverStep(o[1]);
}

core.int buildCounterCutoverJob = 0;
api.CutoverJob buildCutoverJob() {
  final o = api.CutoverJob();
  buildCounterCutoverJob++;
  if (buildCounterCutoverJob < 3) {
    o.computeEngineTargetDetails = buildComputeEngineTargetDetails();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.progressPercent = 42;
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.stateTime = 'foo';
    o.steps = buildUnnamed18();
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
    unittest.expect(
      o.endTime!,
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
    checkUnnamed18(o.steps!);
  }
  buildCounterCutoverJob--;
}

core.int buildCounterCutoverStep = 0;
api.CutoverStep buildCutoverStep() {
  final o = api.CutoverStep();
  buildCounterCutoverStep++;
  if (buildCounterCutoverStep < 3) {
    o.endTime = 'foo';
    o.finalSync = buildReplicationCycle();
    o.instantiatingMigratedVm = buildInstantiatingMigratedVMStep();
    o.preparingVmDisks = buildPreparingVMDisksStep();
    o.previousReplicationCycle = buildReplicationCycle();
    o.shuttingDownSourceVm = buildShuttingDownSourceVMStep();
    o.startTime = 'foo';
  }
  buildCounterCutoverStep--;
  return o;
}

void checkCutoverStep(api.CutoverStep o) {
  buildCounterCutoverStep++;
  if (buildCounterCutoverStep < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkReplicationCycle(o.finalSync!);
    checkInstantiatingMigratedVMStep(o.instantiatingMigratedVm!);
    checkPreparingVMDisksStep(o.preparingVmDisks!);
    checkReplicationCycle(o.previousReplicationCycle!);
    checkShuttingDownSourceVMStep(o.shuttingDownSourceVm!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCutoverStep--;
}

core.int buildCounterCycleStep = 0;
api.CycleStep buildCycleStep() {
  final o = api.CycleStep();
  buildCounterCycleStep++;
  if (buildCounterCycleStep < 3) {
    o.endTime = 'foo';
    o.initializingReplication = buildInitializingReplicationStep();
    o.postProcessing = buildPostProcessingStep();
    o.replicating = buildReplicatingStep();
    o.startTime = 'foo';
  }
  buildCounterCycleStep--;
  return o;
}

void checkCycleStep(api.CycleStep o) {
  buildCounterCycleStep++;
  if (buildCounterCycleStep < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkInitializingReplicationStep(o.initializingReplication!);
    checkPostProcessingStep(o.postProcessing!);
    checkReplicatingStep(o.replicating!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCycleStep--;
}

core.int buildCounterDatacenterConnector = 0;
api.DatacenterConnector buildDatacenterConnector() {
  final o = api.DatacenterConnector();
  buildCounterDatacenterConnector++;
  if (buildCounterDatacenterConnector < 3) {
    o.applianceInfrastructureVersion = 'foo';
    o.applianceSoftwareVersion = 'foo';
    o.availableVersions = buildAvailableUpdates();
    o.bucket = 'foo';
    o.createTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.registrationId = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.updateTime = 'foo';
    o.upgradeStatus = buildUpgradeStatus();
    o.version = 'foo';
  }
  buildCounterDatacenterConnector--;
  return o;
}

void checkDatacenterConnector(api.DatacenterConnector o) {
  buildCounterDatacenterConnector++;
  if (buildCounterDatacenterConnector < 3) {
    unittest.expect(
      o.applianceInfrastructureVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applianceSoftwareVersion!,
      unittest.equals('foo'),
    );
    checkAvailableUpdates(o.availableVersions!);
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
    checkUpgradeStatus(o.upgradeStatus!);
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
    o.awsVms = buildAwsVmsDetails();
    o.nextPageToken = 'foo';
    o.updateTime = 'foo';
    o.vmwareVms = buildVmwareVmsDetails();
  }
  buildCounterFetchInventoryResponse--;
  return o;
}

void checkFetchInventoryResponse(api.FetchInventoryResponse o) {
  buildCounterFetchInventoryResponse++;
  if (buildCounterFetchInventoryResponse < 3) {
    checkAwsVmsDetails(o.awsVms!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
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

core.int buildCounterInitializingReplicationStep = 0;
api.InitializingReplicationStep buildInitializingReplicationStep() {
  final o = api.InitializingReplicationStep();
  buildCounterInitializingReplicationStep++;
  if (buildCounterInitializingReplicationStep < 3) {}
  buildCounterInitializingReplicationStep--;
  return o;
}

void checkInitializingReplicationStep(api.InitializingReplicationStep o) {
  buildCounterInitializingReplicationStep++;
  if (buildCounterInitializingReplicationStep < 3) {}
  buildCounterInitializingReplicationStep--;
}

core.int buildCounterInstantiatingMigratedVMStep = 0;
api.InstantiatingMigratedVMStep buildInstantiatingMigratedVMStep() {
  final o = api.InstantiatingMigratedVMStep();
  buildCounterInstantiatingMigratedVMStep++;
  if (buildCounterInstantiatingMigratedVMStep < 3) {}
  buildCounterInstantiatingMigratedVMStep--;
  return o;
}

void checkInstantiatingMigratedVMStep(api.InstantiatingMigratedVMStep o) {
  buildCounterInstantiatingMigratedVMStep++;
  if (buildCounterInstantiatingMigratedVMStep < 3) {}
  buildCounterInstantiatingMigratedVMStep--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.description = 'foo';
    o.url = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterLink--;
}

core.List<api.CloneJob> buildUnnamed19() => [
      buildCloneJob(),
      buildCloneJob(),
    ];

void checkUnnamed19(core.List<api.CloneJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneJob(o[0]);
  checkCloneJob(o[1]);
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

core.int buildCounterListCloneJobsResponse = 0;
api.ListCloneJobsResponse buildListCloneJobsResponse() {
  final o = api.ListCloneJobsResponse();
  buildCounterListCloneJobsResponse++;
  if (buildCounterListCloneJobsResponse < 3) {
    o.cloneJobs = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListCloneJobsResponse--;
  return o;
}

void checkListCloneJobsResponse(api.ListCloneJobsResponse o) {
  buildCounterListCloneJobsResponse++;
  if (buildCounterListCloneJobsResponse < 3) {
    checkUnnamed19(o.cloneJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListCloneJobsResponse--;
}

core.List<api.CutoverJob> buildUnnamed21() => [
      buildCutoverJob(),
      buildCutoverJob(),
    ];

void checkUnnamed21(core.List<api.CutoverJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverJob(o[0]);
  checkCutoverJob(o[1]);
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

core.int buildCounterListCutoverJobsResponse = 0;
api.ListCutoverJobsResponse buildListCutoverJobsResponse() {
  final o = api.ListCutoverJobsResponse();
  buildCounterListCutoverJobsResponse++;
  if (buildCounterListCutoverJobsResponse < 3) {
    o.cutoverJobs = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListCutoverJobsResponse--;
  return o;
}

void checkListCutoverJobsResponse(api.ListCutoverJobsResponse o) {
  buildCounterListCutoverJobsResponse++;
  if (buildCounterListCutoverJobsResponse < 3) {
    checkUnnamed21(o.cutoverJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListCutoverJobsResponse--;
}

core.List<api.DatacenterConnector> buildUnnamed23() => [
      buildDatacenterConnector(),
      buildDatacenterConnector(),
    ];

void checkUnnamed23(core.List<api.DatacenterConnector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatacenterConnector(o[0]);
  checkDatacenterConnector(o[1]);
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

core.int buildCounterListDatacenterConnectorsResponse = 0;
api.ListDatacenterConnectorsResponse buildListDatacenterConnectorsResponse() {
  final o = api.ListDatacenterConnectorsResponse();
  buildCounterListDatacenterConnectorsResponse++;
  if (buildCounterListDatacenterConnectorsResponse < 3) {
    o.datacenterConnectors = buildUnnamed23();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed24();
  }
  buildCounterListDatacenterConnectorsResponse--;
  return o;
}

void checkListDatacenterConnectorsResponse(
    api.ListDatacenterConnectorsResponse o) {
  buildCounterListDatacenterConnectorsResponse++;
  if (buildCounterListDatacenterConnectorsResponse < 3) {
    checkUnnamed23(o.datacenterConnectors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListDatacenterConnectorsResponse--;
}

core.List<api.Group> buildUnnamed25() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed25(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
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

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed25();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed26();
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed25(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListGroupsResponse--;
}

core.List<api.Location> buildUnnamed27() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed27(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed27(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MigratingVm> buildUnnamed28() => [
      buildMigratingVm(),
      buildMigratingVm(),
    ];

void checkUnnamed28(core.List<api.MigratingVm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigratingVm(o[0]);
  checkMigratingVm(o[1]);
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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
    o.migratingVms = buildUnnamed28();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed29();
  }
  buildCounterListMigratingVmsResponse--;
  return o;
}

void checkListMigratingVmsResponse(api.ListMigratingVmsResponse o) {
  buildCounterListMigratingVmsResponse++;
  if (buildCounterListMigratingVmsResponse < 3) {
    checkUnnamed28(o.migratingVms!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.unreachable!);
  }
  buildCounterListMigratingVmsResponse--;
}

core.List<api.Operation> buildUnnamed30() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed30(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed30();
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
    checkUnnamed30(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ReplicationCycle> buildUnnamed31() => [
      buildReplicationCycle(),
      buildReplicationCycle(),
    ];

void checkUnnamed31(core.List<api.ReplicationCycle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicationCycle(o[0]);
  checkReplicationCycle(o[1]);
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.int buildCounterListReplicationCyclesResponse = 0;
api.ListReplicationCyclesResponse buildListReplicationCyclesResponse() {
  final o = api.ListReplicationCyclesResponse();
  buildCounterListReplicationCyclesResponse++;
  if (buildCounterListReplicationCyclesResponse < 3) {
    o.nextPageToken = 'foo';
    o.replicationCycles = buildUnnamed31();
    o.unreachable = buildUnnamed32();
  }
  buildCounterListReplicationCyclesResponse--;
  return o;
}

void checkListReplicationCyclesResponse(api.ListReplicationCyclesResponse o) {
  buildCounterListReplicationCyclesResponse++;
  if (buildCounterListReplicationCyclesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.replicationCycles!);
    checkUnnamed32(o.unreachable!);
  }
  buildCounterListReplicationCyclesResponse--;
}

core.List<api.Source> buildUnnamed33() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed33(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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
    o.sources = buildUnnamed33();
    o.unreachable = buildUnnamed34();
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
    checkUnnamed33(o.sources!);
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListSourcesResponse--;
}

core.List<api.TargetProject> buildUnnamed35() => [
      buildTargetProject(),
      buildTargetProject(),
    ];

void checkUnnamed35(core.List<api.TargetProject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetProject(o[0]);
  checkTargetProject(o[1]);
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

core.int buildCounterListTargetProjectsResponse = 0;
api.ListTargetProjectsResponse buildListTargetProjectsResponse() {
  final o = api.ListTargetProjectsResponse();
  buildCounterListTargetProjectsResponse++;
  if (buildCounterListTargetProjectsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetProjects = buildUnnamed35();
    o.unreachable = buildUnnamed36();
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
    checkUnnamed35(o.targetProjects!);
    checkUnnamed36(o.unreachable!);
  }
  buildCounterListTargetProjectsResponse--;
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

core.List<api.UtilizationReport> buildUnnamed38() => [
      buildUtilizationReport(),
      buildUtilizationReport(),
    ];

void checkUnnamed38(core.List<api.UtilizationReport> o) {
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
    o.unreachable = buildUnnamed37();
    o.utilizationReports = buildUnnamed38();
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
    checkUnnamed37(o.unreachable!);
    checkUnnamed38(o.utilizationReports!);
  }
  buildCounterListUtilizationReportsResponse--;
}

core.int buildCounterLocalizedMessage = 0;
api.LocalizedMessage buildLocalizedMessage() {
  final o = api.LocalizedMessage();
  buildCounterLocalizedMessage++;
  if (buildCounterLocalizedMessage < 3) {
    o.locale = 'foo';
    o.message = 'foo';
  }
  buildCounterLocalizedMessage--;
  return o;
}

void checkLocalizedMessage(api.LocalizedMessage o) {
  buildCounterLocalizedMessage++;
  if (buildCounterLocalizedMessage < 3) {
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizedMessage--;
}

core.Map<core.String, core.String> buildUnnamed39() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed39(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed40() => {
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

void checkUnnamed40(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed39();
    o.locationId = 'foo';
    o.metadata = buildUnnamed40();
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
    checkUnnamed39(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed41() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed41(core.Map<core.String, core.String> o) {
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

core.List<api.CloneJob> buildUnnamed42() => [
      buildCloneJob(),
      buildCloneJob(),
    ];

void checkUnnamed42(core.List<api.CloneJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneJob(o[0]);
  checkCloneJob(o[1]);
}

core.List<api.CutoverJob> buildUnnamed43() => [
      buildCutoverJob(),
      buildCutoverJob(),
    ];

void checkUnnamed43(core.List<api.CutoverJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverJob(o[0]);
  checkCutoverJob(o[1]);
}

core.int buildCounterMigratingVm = 0;
api.MigratingVm buildMigratingVm() {
  final o = api.MigratingVm();
  buildCounterMigratingVm++;
  if (buildCounterMigratingVm < 3) {
    o.awsSourceVmDetails = buildAwsSourceVmDetails();
    o.computeEngineTargetDefaults = buildComputeEngineTargetDefaults();
    o.createTime = 'foo';
    o.currentSyncInfo = buildReplicationCycle();
    o.description = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.group = 'foo';
    o.labels = buildUnnamed41();
    o.lastReplicationCycle = buildReplicationCycle();
    o.lastSync = buildReplicationSync();
    o.name = 'foo';
    o.policy = buildSchedulePolicy();
    o.recentCloneJobs = buildUnnamed42();
    o.recentCutoverJobs = buildUnnamed43();
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
    checkAwsSourceVmDetails(o.awsSourceVmDetails!);
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
    checkUnnamed41(o.labels!);
    checkReplicationCycle(o.lastReplicationCycle!);
    checkReplicationSync(o.lastSync!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSchedulePolicy(o.policy!);
    checkUnnamed42(o.recentCloneJobs!);
    checkUnnamed43(o.recentCutoverJobs!);
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

core.List<api.Link> buildUnnamed44() => [
      buildLink(),
      buildLink(),
    ];

void checkUnnamed44(core.List<api.Link> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLink(o[0]);
  checkLink(o[1]);
}

core.int buildCounterMigrationWarning = 0;
api.MigrationWarning buildMigrationWarning() {
  final o = api.MigrationWarning();
  buildCounterMigrationWarning++;
  if (buildCounterMigrationWarning < 3) {
    o.actionItem = buildLocalizedMessage();
    o.code = 'foo';
    o.helpLinks = buildUnnamed44();
    o.warningMessage = buildLocalizedMessage();
    o.warningTime = 'foo';
  }
  buildCounterMigrationWarning--;
  return o;
}

void checkMigrationWarning(api.MigrationWarning o) {
  buildCounterMigrationWarning++;
  if (buildCounterMigrationWarning < 3) {
    checkLocalizedMessage(o.actionItem!);
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.helpLinks!);
    checkLocalizedMessage(o.warningMessage!);
    unittest.expect(
      o.warningTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMigrationWarning--;
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

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed46() => {
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

void checkUnnamed46(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed45();
    o.name = 'foo';
    o.response = buildUnnamed46();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed45(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.response!);
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

core.int buildCounterPostProcessingStep = 0;
api.PostProcessingStep buildPostProcessingStep() {
  final o = api.PostProcessingStep();
  buildCounterPostProcessingStep++;
  if (buildCounterPostProcessingStep < 3) {}
  buildCounterPostProcessingStep--;
  return o;
}

void checkPostProcessingStep(api.PostProcessingStep o) {
  buildCounterPostProcessingStep++;
  if (buildCounterPostProcessingStep < 3) {}
  buildCounterPostProcessingStep--;
}

core.int buildCounterPreparingVMDisksStep = 0;
api.PreparingVMDisksStep buildPreparingVMDisksStep() {
  final o = api.PreparingVMDisksStep();
  buildCounterPreparingVMDisksStep++;
  if (buildCounterPreparingVMDisksStep < 3) {}
  buildCounterPreparingVMDisksStep--;
  return o;
}

void checkPreparingVMDisksStep(api.PreparingVMDisksStep o) {
  buildCounterPreparingVMDisksStep++;
  if (buildCounterPreparingVMDisksStep < 3) {}
  buildCounterPreparingVMDisksStep--;
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

core.int buildCounterReplicatingStep = 0;
api.ReplicatingStep buildReplicatingStep() {
  final o = api.ReplicatingStep();
  buildCounterReplicatingStep++;
  if (buildCounterReplicatingStep < 3) {
    o.lastThirtyMinutesAverageBytesPerSecond = 'foo';
    o.lastTwoMinutesAverageBytesPerSecond = 'foo';
    o.replicatedBytes = 'foo';
    o.totalBytes = 'foo';
  }
  buildCounterReplicatingStep--;
  return o;
}

void checkReplicatingStep(api.ReplicatingStep o) {
  buildCounterReplicatingStep++;
  if (buildCounterReplicatingStep < 3) {
    unittest.expect(
      o.lastThirtyMinutesAverageBytesPerSecond!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTwoMinutesAverageBytesPerSecond!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicatedBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicatingStep--;
}

core.List<api.CycleStep> buildUnnamed47() => [
      buildCycleStep(),
      buildCycleStep(),
    ];

void checkUnnamed47(core.List<api.CycleStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCycleStep(o[0]);
  checkCycleStep(o[1]);
}

core.List<api.MigrationWarning> buildUnnamed48() => [
      buildMigrationWarning(),
      buildMigrationWarning(),
    ];

void checkUnnamed48(core.List<api.MigrationWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationWarning(o[0]);
  checkMigrationWarning(o[1]);
}

core.int buildCounterReplicationCycle = 0;
api.ReplicationCycle buildReplicationCycle() {
  final o = api.ReplicationCycle();
  buildCounterReplicationCycle++;
  if (buildCounterReplicationCycle < 3) {
    o.cycleNumber = 42;
    o.endTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.progressPercent = 42;
    o.startTime = 'foo';
    o.state = 'foo';
    o.steps = buildUnnamed47();
    o.totalPauseDuration = 'foo';
    o.warnings = buildUnnamed48();
  }
  buildCounterReplicationCycle--;
  return o;
}

void checkReplicationCycle(api.ReplicationCycle o) {
  buildCounterReplicationCycle++;
  if (buildCounterReplicationCycle < 3) {
    unittest.expect(
      o.cycleNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endTime!,
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
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.steps!);
    unittest.expect(
      o.totalPauseDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.warnings!);
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

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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
    o.values = buildUnnamed49();
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
    checkUnnamed49(o.values!);
  }
  buildCounterSchedulingNodeAffinity--;
}

core.int buildCounterShuttingDownSourceVMStep = 0;
api.ShuttingDownSourceVMStep buildShuttingDownSourceVMStep() {
  final o = api.ShuttingDownSourceVMStep();
  buildCounterShuttingDownSourceVMStep++;
  if (buildCounterShuttingDownSourceVMStep < 3) {}
  buildCounterShuttingDownSourceVMStep--;
  return o;
}

void checkShuttingDownSourceVMStep(api.ShuttingDownSourceVMStep o) {
  buildCounterShuttingDownSourceVMStep++;
  if (buildCounterShuttingDownSourceVMStep < 3) {}
  buildCounterShuttingDownSourceVMStep--;
}

core.Map<core.String, core.String> buildUnnamed50() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed50(core.Map<core.String, core.String> o) {
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
    o.aws = buildAwsSourceDetails();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed50();
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
    checkAwsSourceDetails(o.aws!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.labels!);
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

core.Map<core.String, core.Object?> buildUnnamed51() => {
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

void checkUnnamed51(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed52() => [
      buildUnnamed51(),
      buildUnnamed51(),
    ];

void checkUnnamed52(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed51(o[0]);
  checkUnnamed51(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed52();
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
    checkUnnamed52(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTag = 0;
api.Tag buildTag() {
  final o = api.Tag();
  buildCounterTag++;
  if (buildCounterTag < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterTag--;
  return o;
}

void checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterTag--;
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

core.int buildCounterUpgradeApplianceRequest = 0;
api.UpgradeApplianceRequest buildUpgradeApplianceRequest() {
  final o = api.UpgradeApplianceRequest();
  buildCounterUpgradeApplianceRequest++;
  if (buildCounterUpgradeApplianceRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterUpgradeApplianceRequest--;
  return o;
}

void checkUpgradeApplianceRequest(api.UpgradeApplianceRequest o) {
  buildCounterUpgradeApplianceRequest++;
  if (buildCounterUpgradeApplianceRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeApplianceRequest--;
}

core.int buildCounterUpgradeStatus = 0;
api.UpgradeStatus buildUpgradeStatus() {
  final o = api.UpgradeStatus();
  buildCounterUpgradeStatus++;
  if (buildCounterUpgradeStatus < 3) {
    o.error = buildStatus();
    o.previousVersion = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.version = 'foo';
  }
  buildCounterUpgradeStatus--;
  return o;
}

void checkUpgradeStatus(api.UpgradeStatus o) {
  buildCounterUpgradeStatus++;
  if (buildCounterUpgradeStatus < 3) {
    checkStatus(o.error!);
    unittest.expect(
      o.previousVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeStatus--;
}

core.List<api.VmUtilizationInfo> buildUnnamed53() => [
      buildVmUtilizationInfo(),
      buildVmUtilizationInfo(),
    ];

void checkUnnamed53(core.List<api.VmUtilizationInfo> o) {
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
    o.vms = buildUnnamed53();
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
    checkUnnamed53(o.vms!);
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

core.List<api.VmwareVmDetails> buildUnnamed54() => [
      buildVmwareVmDetails(),
      buildVmwareVmDetails(),
    ];

void checkUnnamed54(core.List<api.VmwareVmDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareVmDetails(o[0]);
  checkVmwareVmDetails(o[1]);
}

core.int buildCounterVmwareVmsDetails = 0;
api.VmwareVmsDetails buildVmwareVmsDetails() {
  final o = api.VmwareVmsDetails();
  buildCounterVmwareVmsDetails++;
  if (buildCounterVmwareVmsDetails < 3) {
    o.details = buildUnnamed54();
  }
  buildCounterVmwareVmsDetails--;
  return o;
}

void checkVmwareVmsDetails(api.VmwareVmsDetails o) {
  buildCounterVmwareVmsDetails++;
  if (buildCounterVmwareVmsDetails < 3) {
    checkUnnamed54(o.details!);
  }
  buildCounterVmwareVmsDetails--;
}

void main() {
  unittest.group('obj-schema-AccessKeyCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessKeyCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessKeyCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessKeyCredentials(od);
    });
  });

  unittest.group('obj-schema-AdaptingOSStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptingOSStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptingOSStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptingOSStep(od);
    });
  });

  unittest.group('obj-schema-AddGroupMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddGroupMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddGroupMigrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddGroupMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-ApplianceVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplianceVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplianceVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplianceVersion(od);
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

  unittest.group('obj-schema-AvailableUpdates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvailableUpdates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvailableUpdates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvailableUpdates(od);
    });
  });

  unittest.group('obj-schema-AwsSecurityGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsSecurityGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsSecurityGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsSecurityGroup(od);
    });
  });

  unittest.group('obj-schema-AwsSourceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsSourceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsSourceDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsSourceDetails(od);
    });
  });

  unittest.group('obj-schema-AwsSourceVmDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsSourceVmDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsSourceVmDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsSourceVmDetails(od);
    });
  });

  unittest.group('obj-schema-AwsVmDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsVmDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsVmDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsVmDetails(od);
    });
  });

  unittest.group('obj-schema-AwsVmsDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsVmsDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsVmsDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsVmsDetails(od);
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

  unittest.group('obj-schema-CloneStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloneStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CloneStep.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCloneStep(od);
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

  unittest.group('obj-schema-CutoverStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutoverStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CutoverStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCutoverStep(od);
    });
  });

  unittest.group('obj-schema-CycleStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCycleStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CycleStep.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCycleStep(od);
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

  unittest.group('obj-schema-InitializingReplicationStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitializingReplicationStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitializingReplicationStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitializingReplicationStep(od);
    });
  });

  unittest.group('obj-schema-InstantiatingMigratedVMStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstantiatingMigratedVMStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstantiatingMigratedVMStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstantiatingMigratedVMStep(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od);
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

  unittest.group('obj-schema-ListReplicationCyclesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReplicationCyclesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReplicationCyclesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReplicationCyclesResponse(od);
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

  unittest.group('obj-schema-LocalizedMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedMessage(od);
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

  unittest.group('obj-schema-MigrationWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrationWarning(od);
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

  unittest.group('obj-schema-PostProcessingStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostProcessingStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostProcessingStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostProcessingStep(od);
    });
  });

  unittest.group('obj-schema-PreparingVMDisksStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreparingVMDisksStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreparingVMDisksStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreparingVMDisksStep(od);
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

  unittest.group('obj-schema-ReplicatingStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicatingStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicatingStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicatingStep(od);
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

  unittest.group('obj-schema-ShuttingDownSourceVMStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShuttingDownSourceVMStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShuttingDownSourceVMStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShuttingDownSourceVMStep(od);
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

  unittest.group('obj-schema-Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTag(od);
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

  unittest.group('obj-schema-UpgradeApplianceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeApplianceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeApplianceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeApplianceRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeStatus(od);
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
          queryMap['forceRefresh']!.first,
          unittest.equals('$arg_forceRefresh'),
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
        final resp = convert.json.encode(buildFetchInventoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchInventory(arg_source,
          forceRefresh: arg_forceRefresh,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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

    unittest.test('method--upgradeAppliance', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .datacenterConnectors;
      final arg_request = buildUpgradeApplianceRequest();
      final arg_datacenterConnector = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpgradeApplianceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpgradeApplianceRequest(obj);

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
      final response = await res.upgradeAppliance(
          arg_request, arg_datacenterConnector,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
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

  unittest.group(
      'resource-ProjectsLocationsSourcesMigratingVmsReplicationCyclesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .replicationCycles;
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
        final resp = convert.json.encode(buildReplicationCycle());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReplicationCycle(response as api.ReplicationCycle);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .sources
          .migratingVms
          .replicationCycles;
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
        final resp = convert.json.encode(buildListReplicationCyclesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReplicationCyclesResponse(
          response as api.ListReplicationCyclesResponse);
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
