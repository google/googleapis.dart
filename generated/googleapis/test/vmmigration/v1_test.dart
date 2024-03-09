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
    o.sessionToken = 'foo';
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
    unittest.expect(
      o.sessionToken!,
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

core.int buildCounterAwsDiskDetails = 0;
api.AwsDiskDetails buildAwsDiskDetails() {
  final o = api.AwsDiskDetails();
  buildCounterAwsDiskDetails++;
  if (buildCounterAwsDiskDetails < 3) {
    o.diskNumber = 42;
    o.sizeGb = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterAwsDiskDetails--;
  return o;
}

void checkAwsDiskDetails(api.AwsDiskDetails o) {
  buildCounterAwsDiskDetails++;
  if (buildCounterAwsDiskDetails < 3) {
    unittest.expect(
      o.diskNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsDiskDetails--;
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

core.List<api.AwsDiskDetails> buildUnnamed3() => [
      buildAwsDiskDetails(),
      buildAwsDiskDetails(),
    ];

void checkUnnamed3(core.List<api.AwsDiskDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAwsDiskDetails(o[0]);
  checkAwsDiskDetails(o[1]);
}

core.int buildCounterAwsSourceVmDetails = 0;
api.AwsSourceVmDetails buildAwsSourceVmDetails() {
  final o = api.AwsSourceVmDetails();
  buildCounterAwsSourceVmDetails++;
  if (buildCounterAwsSourceVmDetails < 3) {
    o.committedStorageBytes = 'foo';
    o.disks = buildUnnamed3();
    o.firmware = 'foo';
    o.vmCapabilitiesInfo = buildVmCapabilities();
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
    checkUnnamed3(o.disks!);
    unittest.expect(
      o.firmware!,
      unittest.equals('foo'),
    );
    checkVmCapabilities(o.vmCapabilitiesInfo!);
  }
  buildCounterAwsSourceVmDetails--;
}

core.List<api.AwsSecurityGroup> buildUnnamed4() => [
      buildAwsSecurityGroup(),
      buildAwsSecurityGroup(),
    ];

void checkUnnamed4(core.List<api.AwsSecurityGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAwsSecurityGroup(o[0]);
  checkAwsSecurityGroup(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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
    o.securityGroups = buildUnnamed4();
    o.sourceDescription = 'foo';
    o.sourceId = 'foo';
    o.tags = buildUnnamed5();
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
    checkUnnamed4(o.securityGroups!);
    unittest.expect(
      o.sourceDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceId!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.tags!);
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

core.List<api.AwsVmDetails> buildUnnamed6() => [
      buildAwsVmDetails(),
      buildAwsVmDetails(),
    ];

void checkUnnamed6(core.List<api.AwsVmDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAwsVmDetails(o[0]);
  checkAwsVmDetails(o[1]);
}

core.int buildCounterAwsVmsDetails = 0;
api.AwsVmsDetails buildAwsVmsDetails() {
  final o = api.AwsVmsDetails();
  buildCounterAwsVmsDetails++;
  if (buildCounterAwsVmsDetails < 3) {
    o.details = buildUnnamed6();
  }
  buildCounterAwsVmsDetails--;
  return o;
}

void checkAwsVmsDetails(api.AwsVmsDetails o) {
  buildCounterAwsVmsDetails++;
  if (buildCounterAwsVmsDetails < 3) {
    checkUnnamed6(o.details!);
  }
  buildCounterAwsVmsDetails--;
}

core.int buildCounterAzureDiskDetails = 0;
api.AzureDiskDetails buildAzureDiskDetails() {
  final o = api.AzureDiskDetails();
  buildCounterAzureDiskDetails++;
  if (buildCounterAzureDiskDetails < 3) {
    o.diskId = 'foo';
    o.diskNumber = 42;
    o.sizeGb = 'foo';
  }
  buildCounterAzureDiskDetails--;
  return o;
}

void checkAzureDiskDetails(api.AzureDiskDetails o) {
  buildCounterAzureDiskDetails++;
  if (buildCounterAzureDiskDetails < 3) {
    unittest.expect(
      o.diskId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureDiskDetails--;
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

core.int buildCounterAzureSourceDetails = 0;
api.AzureSourceDetails buildAzureSourceDetails() {
  final o = api.AzureSourceDetails();
  buildCounterAzureSourceDetails++;
  if (buildCounterAzureSourceDetails < 3) {
    o.azureLocation = 'foo';
    o.clientSecretCreds = buildClientSecretCredentials();
    o.error = buildStatus();
    o.migrationResourcesUserTags = buildUnnamed7();
    o.resourceGroupId = 'foo';
    o.state = 'foo';
    o.subscriptionId = 'foo';
  }
  buildCounterAzureSourceDetails--;
  return o;
}

void checkAzureSourceDetails(api.AzureSourceDetails o) {
  buildCounterAzureSourceDetails++;
  if (buildCounterAzureSourceDetails < 3) {
    unittest.expect(
      o.azureLocation!,
      unittest.equals('foo'),
    );
    checkClientSecretCredentials(o.clientSecretCreds!);
    checkStatus(o.error!);
    checkUnnamed7(o.migrationResourcesUserTags!);
    unittest.expect(
      o.resourceGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureSourceDetails--;
}

core.List<api.AzureDiskDetails> buildUnnamed8() => [
      buildAzureDiskDetails(),
      buildAzureDiskDetails(),
    ];

void checkUnnamed8(core.List<api.AzureDiskDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAzureDiskDetails(o[0]);
  checkAzureDiskDetails(o[1]);
}

core.int buildCounterAzureSourceVmDetails = 0;
api.AzureSourceVmDetails buildAzureSourceVmDetails() {
  final o = api.AzureSourceVmDetails();
  buildCounterAzureSourceVmDetails++;
  if (buildCounterAzureSourceVmDetails < 3) {
    o.committedStorageBytes = 'foo';
    o.disks = buildUnnamed8();
    o.firmware = 'foo';
    o.vmCapabilitiesInfo = buildVmCapabilities();
  }
  buildCounterAzureSourceVmDetails--;
  return o;
}

void checkAzureSourceVmDetails(api.AzureSourceVmDetails o) {
  buildCounterAzureSourceVmDetails++;
  if (buildCounterAzureSourceVmDetails < 3) {
    unittest.expect(
      o.committedStorageBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.disks!);
    unittest.expect(
      o.firmware!,
      unittest.equals('foo'),
    );
    checkVmCapabilities(o.vmCapabilitiesInfo!);
  }
  buildCounterAzureSourceVmDetails--;
}

core.List<api.Disk> buildUnnamed9() => [
      buildDisk(),
      buildDisk(),
    ];

void checkUnnamed9(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterAzureVmDetails = 0;
api.AzureVmDetails buildAzureVmDetails() {
  final o = api.AzureVmDetails();
  buildCounterAzureVmDetails++;
  if (buildCounterAzureVmDetails < 3) {
    o.bootOption = 'foo';
    o.committedStorageMb = 'foo';
    o.computerName = 'foo';
    o.cpuCount = 42;
    o.diskCount = 42;
    o.disks = buildUnnamed9();
    o.memoryMb = 42;
    o.osDescription = buildOSDescription();
    o.osDisk = buildOSDisk();
    o.powerState = 'foo';
    o.tags = buildUnnamed10();
    o.vmId = 'foo';
    o.vmSize = 'foo';
  }
  buildCounterAzureVmDetails--;
  return o;
}

void checkAzureVmDetails(api.AzureVmDetails o) {
  buildCounterAzureVmDetails++;
  if (buildCounterAzureVmDetails < 3) {
    unittest.expect(
      o.bootOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.committedStorageMb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.computerName!,
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
    checkUnnamed9(o.disks!);
    unittest.expect(
      o.memoryMb!,
      unittest.equals(42),
    );
    checkOSDescription(o.osDescription!);
    checkOSDisk(o.osDisk!);
    unittest.expect(
      o.powerState!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.tags!);
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmSize!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureVmDetails--;
}

core.List<api.AzureVmDetails> buildUnnamed11() => [
      buildAzureVmDetails(),
      buildAzureVmDetails(),
    ];

void checkUnnamed11(core.List<api.AzureVmDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAzureVmDetails(o[0]);
  checkAzureVmDetails(o[1]);
}

core.int buildCounterAzureVmsDetails = 0;
api.AzureVmsDetails buildAzureVmsDetails() {
  final o = api.AzureVmsDetails();
  buildCounterAzureVmsDetails++;
  if (buildCounterAzureVmsDetails < 3) {
    o.details = buildUnnamed11();
  }
  buildCounterAzureVmsDetails--;
  return o;
}

void checkAzureVmsDetails(api.AzureVmsDetails o) {
  buildCounterAzureVmsDetails++;
  if (buildCounterAzureVmsDetails < 3) {
    checkUnnamed11(o.details!);
  }
  buildCounterAzureVmsDetails--;
}

core.int buildCounterBootDiskDefaults = 0;
api.BootDiskDefaults buildBootDiskDefaults() {
  final o = api.BootDiskDefaults();
  buildCounterBootDiskDefaults++;
  if (buildCounterBootDiskDefaults < 3) {
    o.deviceName = 'foo';
    o.diskName = 'foo';
    o.diskType = 'foo';
    o.encryption = buildEncryption();
    o.image = buildDiskImageDefaults();
  }
  buildCounterBootDiskDefaults--;
  return o;
}

void checkBootDiskDefaults(api.BootDiskDefaults o) {
  buildCounterBootDiskDefaults++;
  if (buildCounterBootDiskDefaults < 3) {
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkEncryption(o.encryption!);
    checkDiskImageDefaults(o.image!);
  }
  buildCounterBootDiskDefaults--;
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

core.int buildCounterCancelImageImportJobRequest = 0;
api.CancelImageImportJobRequest buildCancelImageImportJobRequest() {
  final o = api.CancelImageImportJobRequest();
  buildCounterCancelImageImportJobRequest++;
  if (buildCounterCancelImageImportJobRequest < 3) {}
  buildCounterCancelImageImportJobRequest--;
  return o;
}

void checkCancelImageImportJobRequest(api.CancelImageImportJobRequest o) {
  buildCounterCancelImageImportJobRequest++;
  if (buildCounterCancelImageImportJobRequest < 3) {}
  buildCounterCancelImageImportJobRequest--;
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

core.int buildCounterClientSecretCredentials = 0;
api.ClientSecretCredentials buildClientSecretCredentials() {
  final o = api.ClientSecretCredentials();
  buildCounterClientSecretCredentials++;
  if (buildCounterClientSecretCredentials < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterClientSecretCredentials--;
  return o;
}

void checkClientSecretCredentials(api.ClientSecretCredentials o) {
  buildCounterClientSecretCredentials++;
  if (buildCounterClientSecretCredentials < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientSecretCredentials--;
}

core.List<api.CloneStep> buildUnnamed12() => [
      buildCloneStep(),
      buildCloneStep(),
    ];

void checkUnnamed12(core.List<api.CloneStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneStep(o[0]);
  checkCloneStep(o[1]);
}

core.int buildCounterCloneJob = 0;
api.CloneJob buildCloneJob() {
  final o = api.CloneJob();
  buildCounterCloneJob++;
  if (buildCounterCloneJob < 3) {
    o.computeEngineDisksTargetDetails = buildComputeEngineDisksTargetDetails();
    o.computeEngineTargetDetails = buildComputeEngineTargetDetails();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.steps = buildUnnamed12();
  }
  buildCounterCloneJob--;
  return o;
}

void checkCloneJob(api.CloneJob o) {
  buildCounterCloneJob++;
  if (buildCounterCloneJob < 3) {
    checkComputeEngineDisksTargetDetails(o.computeEngineDisksTargetDetails!);
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
    checkUnnamed12(o.steps!);
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

core.List<api.PersistentDiskDefaults> buildUnnamed13() => [
      buildPersistentDiskDefaults(),
      buildPersistentDiskDefaults(),
    ];

void checkUnnamed13(core.List<api.PersistentDiskDefaults> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentDiskDefaults(o[0]);
  checkPersistentDiskDefaults(o[1]);
}

core.int buildCounterComputeEngineDisksTargetDefaults = 0;
api.ComputeEngineDisksTargetDefaults buildComputeEngineDisksTargetDefaults() {
  final o = api.ComputeEngineDisksTargetDefaults();
  buildCounterComputeEngineDisksTargetDefaults++;
  if (buildCounterComputeEngineDisksTargetDefaults < 3) {
    o.disks = buildUnnamed13();
    o.disksTargetDefaults = buildDisksMigrationDisksTargetDefaults();
    o.targetProject = 'foo';
    o.vmTargetDefaults = buildDisksMigrationVmTargetDefaults();
    o.zone = 'foo';
  }
  buildCounterComputeEngineDisksTargetDefaults--;
  return o;
}

void checkComputeEngineDisksTargetDefaults(
    api.ComputeEngineDisksTargetDefaults o) {
  buildCounterComputeEngineDisksTargetDefaults++;
  if (buildCounterComputeEngineDisksTargetDefaults < 3) {
    checkUnnamed13(o.disks!);
    checkDisksMigrationDisksTargetDefaults(o.disksTargetDefaults!);
    unittest.expect(
      o.targetProject!,
      unittest.equals('foo'),
    );
    checkDisksMigrationVmTargetDefaults(o.vmTargetDefaults!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeEngineDisksTargetDefaults--;
}

core.List<api.PersistentDisk> buildUnnamed14() => [
      buildPersistentDisk(),
      buildPersistentDisk(),
    ];

void checkUnnamed14(core.List<api.PersistentDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentDisk(o[0]);
  checkPersistentDisk(o[1]);
}

core.int buildCounterComputeEngineDisksTargetDetails = 0;
api.ComputeEngineDisksTargetDetails buildComputeEngineDisksTargetDetails() {
  final o = api.ComputeEngineDisksTargetDetails();
  buildCounterComputeEngineDisksTargetDetails++;
  if (buildCounterComputeEngineDisksTargetDetails < 3) {
    o.disks = buildUnnamed14();
    o.disksTargetDetails = buildDisksMigrationDisksTargetDetails();
    o.vmTargetDetails = buildDisksMigrationVmTargetDetails();
  }
  buildCounterComputeEngineDisksTargetDetails--;
  return o;
}

void checkComputeEngineDisksTargetDetails(
    api.ComputeEngineDisksTargetDetails o) {
  buildCounterComputeEngineDisksTargetDetails++;
  if (buildCounterComputeEngineDisksTargetDetails < 3) {
    checkUnnamed14(o.disks!);
    checkDisksMigrationDisksTargetDetails(o.disksTargetDetails!);
    checkDisksMigrationVmTargetDetails(o.vmTargetDetails!);
  }
  buildCounterComputeEngineDisksTargetDetails--;
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

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed18() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed18(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
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

core.int buildCounterComputeEngineTargetDefaults = 0;
api.ComputeEngineTargetDefaults buildComputeEngineTargetDefaults() {
  final o = api.ComputeEngineTargetDefaults();
  buildCounterComputeEngineTargetDefaults++;
  if (buildCounterComputeEngineTargetDefaults < 3) {
    o.additionalLicenses = buildUnnamed15();
    o.appliedLicense = buildAppliedLicense();
    o.bootOption = 'foo';
    o.computeScheduling = buildComputeScheduling();
    o.diskType = 'foo';
    o.encryption = buildEncryption();
    o.hostname = 'foo';
    o.labels = buildUnnamed16();
    o.licenseType = 'foo';
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed17();
    o.networkInterfaces = buildUnnamed18();
    o.networkTags = buildUnnamed19();
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
    checkUnnamed15(o.additionalLicenses!);
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
    checkEncryption(o.encryption!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.labels!);
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
    checkUnnamed17(o.metadata!);
    checkUnnamed18(o.networkInterfaces!);
    checkUnnamed19(o.networkTags!);
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

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed23() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed23(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
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

core.int buildCounterComputeEngineTargetDetails = 0;
api.ComputeEngineTargetDetails buildComputeEngineTargetDetails() {
  final o = api.ComputeEngineTargetDetails();
  buildCounterComputeEngineTargetDetails++;
  if (buildCounterComputeEngineTargetDetails < 3) {
    o.additionalLicenses = buildUnnamed20();
    o.appliedLicense = buildAppliedLicense();
    o.bootOption = 'foo';
    o.computeScheduling = buildComputeScheduling();
    o.diskType = 'foo';
    o.encryption = buildEncryption();
    o.hostname = 'foo';
    o.labels = buildUnnamed21();
    o.licenseType = 'foo';
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed22();
    o.networkInterfaces = buildUnnamed23();
    o.networkTags = buildUnnamed24();
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
    checkUnnamed20(o.additionalLicenses!);
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
    checkEncryption(o.encryption!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.labels!);
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
    checkUnnamed22(o.metadata!);
    checkUnnamed23(o.networkInterfaces!);
    checkUnnamed24(o.networkTags!);
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

core.List<api.SchedulingNodeAffinity> buildUnnamed25() => [
      buildSchedulingNodeAffinity(),
      buildSchedulingNodeAffinity(),
    ];

void checkUnnamed25(core.List<api.SchedulingNodeAffinity> o) {
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
    o.nodeAffinities = buildUnnamed25();
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
    checkUnnamed25(o.nodeAffinities!);
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

core.int buildCounterCreatingImageStep = 0;
api.CreatingImageStep buildCreatingImageStep() {
  final o = api.CreatingImageStep();
  buildCounterCreatingImageStep++;
  if (buildCounterCreatingImageStep < 3) {}
  buildCounterCreatingImageStep--;
  return o;
}

void checkCreatingImageStep(api.CreatingImageStep o) {
  buildCounterCreatingImageStep++;
  if (buildCounterCreatingImageStep < 3) {}
  buildCounterCreatingImageStep--;
}

core.int buildCounterCutoverForecast = 0;
api.CutoverForecast buildCutoverForecast() {
  final o = api.CutoverForecast();
  buildCounterCutoverForecast++;
  if (buildCounterCutoverForecast < 3) {
    o.estimatedCutoverJobDuration = 'foo';
  }
  buildCounterCutoverForecast--;
  return o;
}

void checkCutoverForecast(api.CutoverForecast o) {
  buildCounterCutoverForecast++;
  if (buildCounterCutoverForecast < 3) {
    unittest.expect(
      o.estimatedCutoverJobDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterCutoverForecast--;
}

core.List<api.CutoverStep> buildUnnamed26() => [
      buildCutoverStep(),
      buildCutoverStep(),
    ];

void checkUnnamed26(core.List<api.CutoverStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverStep(o[0]);
  checkCutoverStep(o[1]);
}

core.int buildCounterCutoverJob = 0;
api.CutoverJob buildCutoverJob() {
  final o = api.CutoverJob();
  buildCounterCutoverJob++;
  if (buildCounterCutoverJob < 3) {
    o.computeEngineDisksTargetDetails = buildComputeEngineDisksTargetDetails();
    o.computeEngineTargetDetails = buildComputeEngineTargetDetails();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.name = 'foo';
    o.progressPercent = 42;
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.stateTime = 'foo';
    o.steps = buildUnnamed26();
  }
  buildCounterCutoverJob--;
  return o;
}

void checkCutoverJob(api.CutoverJob o) {
  buildCounterCutoverJob++;
  if (buildCounterCutoverJob < 3) {
    checkComputeEngineDisksTargetDetails(o.computeEngineDisksTargetDetails!);
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
    checkUnnamed26(o.steps!);
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

core.int buildCounterDataDiskImageImport = 0;
api.DataDiskImageImport buildDataDiskImageImport() {
  final o = api.DataDiskImageImport();
  buildCounterDataDiskImageImport++;
  if (buildCounterDataDiskImageImport < 3) {}
  buildCounterDataDiskImageImport--;
  return o;
}

void checkDataDiskImageImport(api.DataDiskImageImport o) {
  buildCounterDataDiskImageImport++;
  if (buildCounterDataDiskImageImport < 3) {}
  buildCounterDataDiskImageImport--;
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

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  final o = api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.lun = 42;
    o.name = 'foo';
    o.sizeGb = 42;
  }
  buildCounterDisk--;
  return o;
}

void checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(
      o.lun!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
  }
  buildCounterDisk--;
}

core.int buildCounterDiskImageDefaults = 0;
api.DiskImageDefaults buildDiskImageDefaults() {
  final o = api.DiskImageDefaults();
  buildCounterDiskImageDefaults++;
  if (buildCounterDiskImageDefaults < 3) {
    o.sourceImage = 'foo';
  }
  buildCounterDiskImageDefaults--;
  return o;
}

void checkDiskImageDefaults(api.DiskImageDefaults o) {
  buildCounterDiskImageDefaults++;
  if (buildCounterDiskImageDefaults < 3) {
    unittest.expect(
      o.sourceImage!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiskImageDefaults--;
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

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
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

core.int buildCounterDiskImageTargetDetails = 0;
api.DiskImageTargetDetails buildDiskImageTargetDetails() {
  final o = api.DiskImageTargetDetails();
  buildCounterDiskImageTargetDetails++;
  if (buildCounterDiskImageTargetDetails < 3) {
    o.additionalLicenses = buildUnnamed27();
    o.dataDiskImageImport = buildDataDiskImageImport();
    o.description = 'foo';
    o.encryption = buildEncryption();
    o.familyName = 'foo';
    o.imageName = 'foo';
    o.labels = buildUnnamed28();
    o.osAdaptationParameters = buildImageImportOsAdaptationParameters();
    o.singleRegionStorage = true;
    o.targetProject = 'foo';
  }
  buildCounterDiskImageTargetDetails--;
  return o;
}

void checkDiskImageTargetDetails(api.DiskImageTargetDetails o) {
  buildCounterDiskImageTargetDetails++;
  if (buildCounterDiskImageTargetDetails < 3) {
    checkUnnamed27(o.additionalLicenses!);
    checkDataDiskImageImport(o.dataDiskImageImport!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEncryption(o.encryption!);
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageName!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.labels!);
    checkImageImportOsAdaptationParameters(o.osAdaptationParameters!);
    unittest.expect(o.singleRegionStorage!, unittest.isTrue);
    unittest.expect(
      o.targetProject!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiskImageTargetDetails--;
}

core.int buildCounterDisksMigrationDisksTargetDefaults = 0;
api.DisksMigrationDisksTargetDefaults buildDisksMigrationDisksTargetDefaults() {
  final o = api.DisksMigrationDisksTargetDefaults();
  buildCounterDisksMigrationDisksTargetDefaults++;
  if (buildCounterDisksMigrationDisksTargetDefaults < 3) {}
  buildCounterDisksMigrationDisksTargetDefaults--;
  return o;
}

void checkDisksMigrationDisksTargetDefaults(
    api.DisksMigrationDisksTargetDefaults o) {
  buildCounterDisksMigrationDisksTargetDefaults++;
  if (buildCounterDisksMigrationDisksTargetDefaults < 3) {}
  buildCounterDisksMigrationDisksTargetDefaults--;
}

core.int buildCounterDisksMigrationDisksTargetDetails = 0;
api.DisksMigrationDisksTargetDetails buildDisksMigrationDisksTargetDetails() {
  final o = api.DisksMigrationDisksTargetDetails();
  buildCounterDisksMigrationDisksTargetDetails++;
  if (buildCounterDisksMigrationDisksTargetDetails < 3) {}
  buildCounterDisksMigrationDisksTargetDetails--;
  return o;
}

void checkDisksMigrationDisksTargetDetails(
    api.DisksMigrationDisksTargetDetails o) {
  buildCounterDisksMigrationDisksTargetDetails++;
  if (buildCounterDisksMigrationDisksTargetDetails < 3) {}
  buildCounterDisksMigrationDisksTargetDetails--;
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

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed32() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed32(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterDisksMigrationVmTargetDefaults = 0;
api.DisksMigrationVmTargetDefaults buildDisksMigrationVmTargetDefaults() {
  final o = api.DisksMigrationVmTargetDefaults();
  buildCounterDisksMigrationVmTargetDefaults++;
  if (buildCounterDisksMigrationVmTargetDefaults < 3) {
    o.additionalLicenses = buildUnnamed29();
    o.bootDiskDefaults = buildBootDiskDefaults();
    o.computeScheduling = buildComputeScheduling();
    o.encryption = buildEncryption();
    o.hostname = 'foo';
    o.labels = buildUnnamed30();
    o.machineType = 'foo';
    o.machineTypeSeries = 'foo';
    o.metadata = buildUnnamed31();
    o.networkInterfaces = buildUnnamed32();
    o.networkTags = buildUnnamed33();
    o.secureBoot = true;
    o.serviceAccount = 'foo';
    o.vmName = 'foo';
  }
  buildCounterDisksMigrationVmTargetDefaults--;
  return o;
}

void checkDisksMigrationVmTargetDefaults(api.DisksMigrationVmTargetDefaults o) {
  buildCounterDisksMigrationVmTargetDefaults++;
  if (buildCounterDisksMigrationVmTargetDefaults < 3) {
    checkUnnamed29(o.additionalLicenses!);
    checkBootDiskDefaults(o.bootDiskDefaults!);
    checkComputeScheduling(o.computeScheduling!);
    checkEncryption(o.encryption!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineTypeSeries!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.metadata!);
    checkUnnamed32(o.networkInterfaces!);
    checkUnnamed33(o.networkTags!);
    unittest.expect(o.secureBoot!, unittest.isTrue);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisksMigrationVmTargetDefaults--;
}

core.int buildCounterDisksMigrationVmTargetDetails = 0;
api.DisksMigrationVmTargetDetails buildDisksMigrationVmTargetDetails() {
  final o = api.DisksMigrationVmTargetDetails();
  buildCounterDisksMigrationVmTargetDetails++;
  if (buildCounterDisksMigrationVmTargetDetails < 3) {
    o.vmUri = 'foo';
  }
  buildCounterDisksMigrationVmTargetDetails--;
  return o;
}

void checkDisksMigrationVmTargetDetails(api.DisksMigrationVmTargetDetails o) {
  buildCounterDisksMigrationVmTargetDetails++;
  if (buildCounterDisksMigrationVmTargetDetails < 3) {
    unittest.expect(
      o.vmUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisksMigrationVmTargetDetails--;
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

core.int buildCounterEncryption = 0;
api.Encryption buildEncryption() {
  final o = api.Encryption();
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    o.kmsKey = 'foo';
  }
  buildCounterEncryption--;
  return o;
}

void checkEncryption(api.Encryption o) {
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryption--;
}

core.int buildCounterFetchInventoryResponse = 0;
api.FetchInventoryResponse buildFetchInventoryResponse() {
  final o = api.FetchInventoryResponse();
  buildCounterFetchInventoryResponse++;
  if (buildCounterFetchInventoryResponse < 3) {
    o.awsVms = buildAwsVmsDetails();
    o.azureVms = buildAzureVmsDetails();
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
    checkAzureVmsDetails(o.azureVms!);
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
    o.migrationTargetType = 'foo';
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
      o.migrationTargetType!,
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

core.List<api.ImageImportJob> buildUnnamed34() => [
      buildImageImportJob(),
      buildImageImportJob(),
    ];

void checkUnnamed34(core.List<api.ImageImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageImportJob(o[0]);
  checkImageImportJob(o[1]);
}

core.int buildCounterImageImport = 0;
api.ImageImport buildImageImport() {
  final o = api.ImageImport();
  buildCounterImageImport++;
  if (buildCounterImageImport < 3) {
    o.cloudStorageUri = 'foo';
    o.createTime = 'foo';
    o.diskImageTargetDefaults = buildDiskImageTargetDetails();
    o.encryption = buildEncryption();
    o.name = 'foo';
    o.recentImageImportJobs = buildUnnamed34();
  }
  buildCounterImageImport--;
  return o;
}

void checkImageImport(api.ImageImport o) {
  buildCounterImageImport++;
  if (buildCounterImageImport < 3) {
    unittest.expect(
      o.cloudStorageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDiskImageTargetDetails(o.diskImageTargetDefaults!);
    checkEncryption(o.encryption!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.recentImageImportJobs!);
  }
  buildCounterImageImport--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.List<api.Status> buildUnnamed36() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed36(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.ImageImportStep> buildUnnamed37() => [
      buildImageImportStep(),
      buildImageImportStep(),
    ];

void checkUnnamed37(core.List<api.ImageImportStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageImportStep(o[0]);
  checkImageImportStep(o[1]);
}

core.List<api.MigrationWarning> buildUnnamed38() => [
      buildMigrationWarning(),
      buildMigrationWarning(),
    ];

void checkUnnamed38(core.List<api.MigrationWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationWarning(o[0]);
  checkMigrationWarning(o[1]);
}

core.int buildCounterImageImportJob = 0;
api.ImageImportJob buildImageImportJob() {
  final o = api.ImageImportJob();
  buildCounterImageImportJob++;
  if (buildCounterImageImportJob < 3) {
    o.cloudStorageUri = 'foo';
    o.createTime = 'foo';
    o.createdResources = buildUnnamed35();
    o.diskImageTargetDetails = buildDiskImageTargetDetails();
    o.endTime = 'foo';
    o.errors = buildUnnamed36();
    o.name = 'foo';
    o.state = 'foo';
    o.steps = buildUnnamed37();
    o.warnings = buildUnnamed38();
  }
  buildCounterImageImportJob--;
  return o;
}

void checkImageImportJob(api.ImageImportJob o) {
  buildCounterImageImportJob++;
  if (buildCounterImageImportJob < 3) {
    unittest.expect(
      o.cloudStorageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.createdResources!);
    checkDiskImageTargetDetails(o.diskImageTargetDetails!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.errors!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.steps!);
    checkUnnamed38(o.warnings!);
  }
  buildCounterImageImportJob--;
}

core.int buildCounterImageImportOsAdaptationParameters = 0;
api.ImageImportOsAdaptationParameters buildImageImportOsAdaptationParameters() {
  final o = api.ImageImportOsAdaptationParameters();
  buildCounterImageImportOsAdaptationParameters++;
  if (buildCounterImageImportOsAdaptationParameters < 3) {
    o.generalize = true;
    o.licenseType = 'foo';
  }
  buildCounterImageImportOsAdaptationParameters--;
  return o;
}

void checkImageImportOsAdaptationParameters(
    api.ImageImportOsAdaptationParameters o) {
  buildCounterImageImportOsAdaptationParameters++;
  if (buildCounterImageImportOsAdaptationParameters < 3) {
    unittest.expect(o.generalize!, unittest.isTrue);
    unittest.expect(
      o.licenseType!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageImportOsAdaptationParameters--;
}

core.int buildCounterImageImportStep = 0;
api.ImageImportStep buildImageImportStep() {
  final o = api.ImageImportStep();
  buildCounterImageImportStep++;
  if (buildCounterImageImportStep < 3) {
    o.adaptingOs = buildAdaptingOSStep();
    o.creatingImage = buildCreatingImageStep();
    o.endTime = 'foo';
    o.initializing = buildInitializingImageImportStep();
    o.loadingSourceFiles = buildLoadingImageSourceFilesStep();
    o.startTime = 'foo';
  }
  buildCounterImageImportStep--;
  return o;
}

void checkImageImportStep(api.ImageImportStep o) {
  buildCounterImageImportStep++;
  if (buildCounterImageImportStep < 3) {
    checkAdaptingOSStep(o.adaptingOs!);
    checkCreatingImageStep(o.creatingImage!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkInitializingImageImportStep(o.initializing!);
    checkLoadingImageSourceFilesStep(o.loadingSourceFiles!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageImportStep--;
}

core.int buildCounterInitializingImageImportStep = 0;
api.InitializingImageImportStep buildInitializingImageImportStep() {
  final o = api.InitializingImageImportStep();
  buildCounterInitializingImageImportStep++;
  if (buildCounterInitializingImageImportStep < 3) {}
  buildCounterInitializingImageImportStep--;
  return o;
}

void checkInitializingImageImportStep(api.InitializingImageImportStep o) {
  buildCounterInitializingImageImportStep++;
  if (buildCounterInitializingImageImportStep < 3) {}
  buildCounterInitializingImageImportStep--;
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

core.List<api.CloneJob> buildUnnamed39() => [
      buildCloneJob(),
      buildCloneJob(),
    ];

void checkUnnamed39(core.List<api.CloneJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneJob(o[0]);
  checkCloneJob(o[1]);
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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
    o.cloneJobs = buildUnnamed39();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed40();
  }
  buildCounterListCloneJobsResponse--;
  return o;
}

void checkListCloneJobsResponse(api.ListCloneJobsResponse o) {
  buildCounterListCloneJobsResponse++;
  if (buildCounterListCloneJobsResponse < 3) {
    checkUnnamed39(o.cloneJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.unreachable!);
  }
  buildCounterListCloneJobsResponse--;
}

core.List<api.CutoverJob> buildUnnamed41() => [
      buildCutoverJob(),
      buildCutoverJob(),
    ];

void checkUnnamed41(core.List<api.CutoverJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCutoverJob(o[0]);
  checkCutoverJob(o[1]);
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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
    o.cutoverJobs = buildUnnamed41();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed42();
  }
  buildCounterListCutoverJobsResponse--;
  return o;
}

void checkListCutoverJobsResponse(api.ListCutoverJobsResponse o) {
  buildCounterListCutoverJobsResponse++;
  if (buildCounterListCutoverJobsResponse < 3) {
    checkUnnamed41(o.cutoverJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.unreachable!);
  }
  buildCounterListCutoverJobsResponse--;
}

core.List<api.DatacenterConnector> buildUnnamed43() => [
      buildDatacenterConnector(),
      buildDatacenterConnector(),
    ];

void checkUnnamed43(core.List<api.DatacenterConnector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatacenterConnector(o[0]);
  checkDatacenterConnector(o[1]);
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

core.int buildCounterListDatacenterConnectorsResponse = 0;
api.ListDatacenterConnectorsResponse buildListDatacenterConnectorsResponse() {
  final o = api.ListDatacenterConnectorsResponse();
  buildCounterListDatacenterConnectorsResponse++;
  if (buildCounterListDatacenterConnectorsResponse < 3) {
    o.datacenterConnectors = buildUnnamed43();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed44();
  }
  buildCounterListDatacenterConnectorsResponse--;
  return o;
}

void checkListDatacenterConnectorsResponse(
    api.ListDatacenterConnectorsResponse o) {
  buildCounterListDatacenterConnectorsResponse++;
  if (buildCounterListDatacenterConnectorsResponse < 3) {
    checkUnnamed43(o.datacenterConnectors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.unreachable!);
  }
  buildCounterListDatacenterConnectorsResponse--;
}

core.List<api.Group> buildUnnamed45() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed45(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
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

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed45();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed46();
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed45(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.unreachable!);
  }
  buildCounterListGroupsResponse--;
}

core.List<api.ImageImportJob> buildUnnamed47() => [
      buildImageImportJob(),
      buildImageImportJob(),
    ];

void checkUnnamed47(core.List<api.ImageImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageImportJob(o[0]);
  checkImageImportJob(o[1]);
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterListImageImportJobsResponse = 0;
api.ListImageImportJobsResponse buildListImageImportJobsResponse() {
  final o = api.ListImageImportJobsResponse();
  buildCounterListImageImportJobsResponse++;
  if (buildCounterListImageImportJobsResponse < 3) {
    o.imageImportJobs = buildUnnamed47();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed48();
  }
  buildCounterListImageImportJobsResponse--;
  return o;
}

void checkListImageImportJobsResponse(api.ListImageImportJobsResponse o) {
  buildCounterListImageImportJobsResponse++;
  if (buildCounterListImageImportJobsResponse < 3) {
    checkUnnamed47(o.imageImportJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.unreachable!);
  }
  buildCounterListImageImportJobsResponse--;
}

core.List<api.ImageImport> buildUnnamed49() => [
      buildImageImport(),
      buildImageImport(),
    ];

void checkUnnamed49(core.List<api.ImageImport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageImport(o[0]);
  checkImageImport(o[1]);
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.int buildCounterListImageImportsResponse = 0;
api.ListImageImportsResponse buildListImageImportsResponse() {
  final o = api.ListImageImportsResponse();
  buildCounterListImageImportsResponse++;
  if (buildCounterListImageImportsResponse < 3) {
    o.imageImports = buildUnnamed49();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed50();
  }
  buildCounterListImageImportsResponse--;
  return o;
}

void checkListImageImportsResponse(api.ListImageImportsResponse o) {
  buildCounterListImageImportsResponse++;
  if (buildCounterListImageImportsResponse < 3) {
    checkUnnamed49(o.imageImports!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.unreachable!);
  }
  buildCounterListImageImportsResponse--;
}

core.List<api.Location> buildUnnamed51() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed51(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed51();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed51(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MigratingVm> buildUnnamed52() => [
      buildMigratingVm(),
      buildMigratingVm(),
    ];

void checkUnnamed52(core.List<api.MigratingVm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigratingVm(o[0]);
  checkMigratingVm(o[1]);
}

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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
    o.migratingVms = buildUnnamed52();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed53();
  }
  buildCounterListMigratingVmsResponse--;
  return o;
}

void checkListMigratingVmsResponse(api.ListMigratingVmsResponse o) {
  buildCounterListMigratingVmsResponse++;
  if (buildCounterListMigratingVmsResponse < 3) {
    checkUnnamed52(o.migratingVms!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.unreachable!);
  }
  buildCounterListMigratingVmsResponse--;
}

core.List<api.Operation> buildUnnamed54() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed54(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed54();
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
    checkUnnamed54(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ReplicationCycle> buildUnnamed55() => [
      buildReplicationCycle(),
      buildReplicationCycle(),
    ];

void checkUnnamed55(core.List<api.ReplicationCycle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicationCycle(o[0]);
  checkReplicationCycle(o[1]);
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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
    o.replicationCycles = buildUnnamed55();
    o.unreachable = buildUnnamed56();
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
    checkUnnamed55(o.replicationCycles!);
    checkUnnamed56(o.unreachable!);
  }
  buildCounterListReplicationCyclesResponse--;
}

core.List<api.Source> buildUnnamed57() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed57(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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
    o.sources = buildUnnamed57();
    o.unreachable = buildUnnamed58();
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
    checkUnnamed57(o.sources!);
    checkUnnamed58(o.unreachable!);
  }
  buildCounterListSourcesResponse--;
}

core.List<api.TargetProject> buildUnnamed59() => [
      buildTargetProject(),
      buildTargetProject(),
    ];

void checkUnnamed59(core.List<api.TargetProject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetProject(o[0]);
  checkTargetProject(o[1]);
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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
    o.targetProjects = buildUnnamed59();
    o.unreachable = buildUnnamed60();
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
    checkUnnamed59(o.targetProjects!);
    checkUnnamed60(o.unreachable!);
  }
  buildCounterListTargetProjectsResponse--;
}

core.List<core.String> buildUnnamed61() => [
      'foo',
      'foo',
    ];

void checkUnnamed61(core.List<core.String> o) {
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

core.List<api.UtilizationReport> buildUnnamed62() => [
      buildUtilizationReport(),
      buildUtilizationReport(),
    ];

void checkUnnamed62(core.List<api.UtilizationReport> o) {
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
    o.unreachable = buildUnnamed61();
    o.utilizationReports = buildUnnamed62();
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
    checkUnnamed61(o.unreachable!);
    checkUnnamed62(o.utilizationReports!);
  }
  buildCounterListUtilizationReportsResponse--;
}

core.int buildCounterLoadingImageSourceFilesStep = 0;
api.LoadingImageSourceFilesStep buildLoadingImageSourceFilesStep() {
  final o = api.LoadingImageSourceFilesStep();
  buildCounterLoadingImageSourceFilesStep++;
  if (buildCounterLoadingImageSourceFilesStep < 3) {}
  buildCounterLoadingImageSourceFilesStep--;
  return o;
}

void checkLoadingImageSourceFilesStep(api.LoadingImageSourceFilesStep o) {
  buildCounterLoadingImageSourceFilesStep++;
  if (buildCounterLoadingImageSourceFilesStep < 3) {}
  buildCounterLoadingImageSourceFilesStep--;
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

core.Map<core.String, core.String> buildUnnamed63() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed63(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed63();
    o.locationId = 'foo';
    o.metadata = buildUnnamed64();
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
    checkUnnamed63(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed65() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed65(core.Map<core.String, core.String> o) {
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

core.List<api.CloneJob> buildUnnamed66() => [
      buildCloneJob(),
      buildCloneJob(),
    ];

void checkUnnamed66(core.List<api.CloneJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloneJob(o[0]);
  checkCloneJob(o[1]);
}

core.List<api.CutoverJob> buildUnnamed67() => [
      buildCutoverJob(),
      buildCutoverJob(),
    ];

void checkUnnamed67(core.List<api.CutoverJob> o) {
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
    o.azureSourceVmDetails = buildAzureSourceVmDetails();
    o.computeEngineDisksTargetDefaults =
        buildComputeEngineDisksTargetDefaults();
    o.computeEngineTargetDefaults = buildComputeEngineTargetDefaults();
    o.createTime = 'foo';
    o.currentSyncInfo = buildReplicationCycle();
    o.cutoverForecast = buildCutoverForecast();
    o.description = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.group = 'foo';
    o.labels = buildUnnamed65();
    o.lastReplicationCycle = buildReplicationCycle();
    o.lastSync = buildReplicationSync();
    o.name = 'foo';
    o.policy = buildSchedulePolicy();
    o.recentCloneJobs = buildUnnamed66();
    o.recentCutoverJobs = buildUnnamed67();
    o.sourceVmId = 'foo';
    o.state = 'foo';
    o.stateTime = 'foo';
    o.updateTime = 'foo';
    o.vmwareSourceVmDetails = buildVmwareSourceVmDetails();
  }
  buildCounterMigratingVm--;
  return o;
}

void checkMigratingVm(api.MigratingVm o) {
  buildCounterMigratingVm++;
  if (buildCounterMigratingVm < 3) {
    checkAwsSourceVmDetails(o.awsSourceVmDetails!);
    checkAzureSourceVmDetails(o.azureSourceVmDetails!);
    checkComputeEngineDisksTargetDefaults(o.computeEngineDisksTargetDefaults!);
    checkComputeEngineTargetDefaults(o.computeEngineTargetDefaults!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkReplicationCycle(o.currentSyncInfo!);
    checkCutoverForecast(o.cutoverForecast!);
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
    checkUnnamed65(o.labels!);
    checkReplicationCycle(o.lastReplicationCycle!);
    checkReplicationSync(o.lastSync!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSchedulePolicy(o.policy!);
    checkUnnamed66(o.recentCloneJobs!);
    checkUnnamed67(o.recentCutoverJobs!);
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
    checkVmwareSourceVmDetails(o.vmwareSourceVmDetails!);
  }
  buildCounterMigratingVm--;
}

core.List<api.Link> buildUnnamed68() => [
      buildLink(),
      buildLink(),
    ];

void checkUnnamed68(core.List<api.Link> o) {
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
    o.helpLinks = buildUnnamed68();
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
    checkUnnamed68(o.helpLinks!);
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

core.int buildCounterOSDescription = 0;
api.OSDescription buildOSDescription() {
  final o = api.OSDescription();
  buildCounterOSDescription++;
  if (buildCounterOSDescription < 3) {
    o.offer = 'foo';
    o.plan = 'foo';
    o.publisher = 'foo';
    o.type = 'foo';
  }
  buildCounterOSDescription--;
  return o;
}

void checkOSDescription(api.OSDescription o) {
  buildCounterOSDescription++;
  if (buildCounterOSDescription < 3) {
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisher!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSDescription--;
}

core.int buildCounterOSDisk = 0;
api.OSDisk buildOSDisk() {
  final o = api.OSDisk();
  buildCounterOSDisk++;
  if (buildCounterOSDisk < 3) {
    o.name = 'foo';
    o.sizeGb = 42;
    o.type = 'foo';
  }
  buildCounterOSDisk--;
  return o;
}

void checkOSDisk(api.OSDisk o) {
  buildCounterOSDisk++;
  if (buildCounterOSDisk < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSDisk--;
}

core.Map<core.String, core.Object?> buildUnnamed69() => {
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

void checkUnnamed69(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed70() => {
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

void checkUnnamed70(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed69();
    o.name = 'foo';
    o.response = buildUnnamed70();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed69(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.response!);
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

core.int buildCounterPersistentDisk = 0;
api.PersistentDisk buildPersistentDisk() {
  final o = api.PersistentDisk();
  buildCounterPersistentDisk++;
  if (buildCounterPersistentDisk < 3) {
    o.diskUri = 'foo';
    o.sourceDiskNumber = 42;
  }
  buildCounterPersistentDisk--;
  return o;
}

void checkPersistentDisk(api.PersistentDisk o) {
  buildCounterPersistentDisk++;
  if (buildCounterPersistentDisk < 3) {
    unittest.expect(
      o.diskUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceDiskNumber!,
      unittest.equals(42),
    );
  }
  buildCounterPersistentDisk--;
}

core.Map<core.String, core.String> buildUnnamed71() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed71(core.Map<core.String, core.String> o) {
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

core.int buildCounterPersistentDiskDefaults = 0;
api.PersistentDiskDefaults buildPersistentDiskDefaults() {
  final o = api.PersistentDiskDefaults();
  buildCounterPersistentDiskDefaults++;
  if (buildCounterPersistentDiskDefaults < 3) {
    o.additionalLabels = buildUnnamed71();
    o.diskName = 'foo';
    o.diskType = 'foo';
    o.encryption = buildEncryption();
    o.sourceDiskNumber = 42;
    o.vmAttachmentDetails = buildVmAttachmentDetails();
  }
  buildCounterPersistentDiskDefaults--;
  return o;
}

void checkPersistentDiskDefaults(api.PersistentDiskDefaults o) {
  buildCounterPersistentDiskDefaults++;
  if (buildCounterPersistentDiskDefaults < 3) {
    checkUnnamed71(o.additionalLabels!);
    unittest.expect(
      o.diskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkEncryption(o.encryption!);
    unittest.expect(
      o.sourceDiskNumber!,
      unittest.equals(42),
    );
    checkVmAttachmentDetails(o.vmAttachmentDetails!);
  }
  buildCounterPersistentDiskDefaults--;
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

core.List<api.CycleStep> buildUnnamed72() => [
      buildCycleStep(),
      buildCycleStep(),
    ];

void checkUnnamed72(core.List<api.CycleStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCycleStep(o[0]);
  checkCycleStep(o[1]);
}

core.List<api.MigrationWarning> buildUnnamed73() => [
      buildMigrationWarning(),
      buildMigrationWarning(),
    ];

void checkUnnamed73(core.List<api.MigrationWarning> o) {
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
    o.steps = buildUnnamed72();
    o.totalPauseDuration = 'foo';
    o.warnings = buildUnnamed73();
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
    checkUnnamed72(o.steps!);
    unittest.expect(
      o.totalPauseDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.warnings!);
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

core.List<core.String> buildUnnamed74() => [
      'foo',
      'foo',
    ];

void checkUnnamed74(core.List<core.String> o) {
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
    o.values = buildUnnamed74();
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
    checkUnnamed74(o.values!);
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

core.Map<core.String, core.String> buildUnnamed75() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed75(core.Map<core.String, core.String> o) {
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
    o.azure = buildAzureSourceDetails();
    o.createTime = 'foo';
    o.description = 'foo';
    o.encryption = buildEncryption();
    o.labels = buildUnnamed75();
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
    checkAzureSourceDetails(o.azure!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEncryption(o.encryption!);
    checkUnnamed75(o.labels!);
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

core.Map<core.String, core.Object?> buildUnnamed76() => {
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

void checkUnnamed76(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed77() => [
      buildUnnamed76(),
      buildUnnamed76(),
    ];

void checkUnnamed77(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed76(o[0]);
  checkUnnamed76(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed77();
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
    checkUnnamed77(o.details!);
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

core.List<api.VmUtilizationInfo> buildUnnamed78() => [
      buildVmUtilizationInfo(),
      buildVmUtilizationInfo(),
    ];

void checkUnnamed78(core.List<api.VmUtilizationInfo> o) {
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
    o.vms = buildUnnamed78();
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
    checkUnnamed78(o.vms!);
  }
  buildCounterUtilizationReport--;
}

core.int buildCounterVmAttachmentDetails = 0;
api.VmAttachmentDetails buildVmAttachmentDetails() {
  final o = api.VmAttachmentDetails();
  buildCounterVmAttachmentDetails++;
  if (buildCounterVmAttachmentDetails < 3) {
    o.deviceName = 'foo';
  }
  buildCounterVmAttachmentDetails--;
  return o;
}

void checkVmAttachmentDetails(api.VmAttachmentDetails o) {
  buildCounterVmAttachmentDetails++;
  if (buildCounterVmAttachmentDetails < 3) {
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmAttachmentDetails--;
}

core.List<core.String> buildUnnamed79() => [
      'foo',
      'foo',
    ];

void checkUnnamed79(core.List<core.String> o) {
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

core.int buildCounterVmCapabilities = 0;
api.VmCapabilities buildVmCapabilities() {
  final o = api.VmCapabilities();
  buildCounterVmCapabilities++;
  if (buildCounterVmCapabilities < 3) {
    o.lastOsCapabilitiesUpdateTime = 'foo';
    o.osCapabilities = buildUnnamed79();
  }
  buildCounterVmCapabilities--;
  return o;
}

void checkVmCapabilities(api.VmCapabilities o) {
  buildCounterVmCapabilities++;
  if (buildCounterVmCapabilities < 3) {
    unittest.expect(
      o.lastOsCapabilitiesUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.osCapabilities!);
  }
  buildCounterVmCapabilities--;
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

core.int buildCounterVmwareDiskDetails = 0;
api.VmwareDiskDetails buildVmwareDiskDetails() {
  final o = api.VmwareDiskDetails();
  buildCounterVmwareDiskDetails++;
  if (buildCounterVmwareDiskDetails < 3) {
    o.diskNumber = 42;
    o.label = 'foo';
    o.sizeGb = 'foo';
  }
  buildCounterVmwareDiskDetails--;
  return o;
}

void checkVmwareDiskDetails(api.VmwareDiskDetails o) {
  buildCounterVmwareDiskDetails++;
  if (buildCounterVmwareDiskDetails < 3) {
    unittest.expect(
      o.diskNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareDiskDetails--;
}

core.int buildCounterVmwareSourceDetails = 0;
api.VmwareSourceDetails buildVmwareSourceDetails() {
  final o = api.VmwareSourceDetails();
  buildCounterVmwareSourceDetails++;
  if (buildCounterVmwareSourceDetails < 3) {
    o.password = 'foo';
    o.resolvedVcenterHost = 'foo';
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
      o.resolvedVcenterHost!,
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

core.List<api.VmwareDiskDetails> buildUnnamed80() => [
      buildVmwareDiskDetails(),
      buildVmwareDiskDetails(),
    ];

void checkUnnamed80(core.List<api.VmwareDiskDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareDiskDetails(o[0]);
  checkVmwareDiskDetails(o[1]);
}

core.int buildCounterVmwareSourceVmDetails = 0;
api.VmwareSourceVmDetails buildVmwareSourceVmDetails() {
  final o = api.VmwareSourceVmDetails();
  buildCounterVmwareSourceVmDetails++;
  if (buildCounterVmwareSourceVmDetails < 3) {
    o.committedStorageBytes = 'foo';
    o.disks = buildUnnamed80();
    o.firmware = 'foo';
    o.vmCapabilitiesInfo = buildVmCapabilities();
  }
  buildCounterVmwareSourceVmDetails--;
  return o;
}

void checkVmwareSourceVmDetails(api.VmwareSourceVmDetails o) {
  buildCounterVmwareSourceVmDetails++;
  if (buildCounterVmwareSourceVmDetails < 3) {
    unittest.expect(
      o.committedStorageBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed80(o.disks!);
    unittest.expect(
      o.firmware!,
      unittest.equals('foo'),
    );
    checkVmCapabilities(o.vmCapabilitiesInfo!);
  }
  buildCounterVmwareSourceVmDetails--;
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

core.List<api.VmwareVmDetails> buildUnnamed81() => [
      buildVmwareVmDetails(),
      buildVmwareVmDetails(),
    ];

void checkUnnamed81(core.List<api.VmwareVmDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareVmDetails(o[0]);
  checkVmwareVmDetails(o[1]);
}

core.int buildCounterVmwareVmsDetails = 0;
api.VmwareVmsDetails buildVmwareVmsDetails() {
  final o = api.VmwareVmsDetails();
  buildCounterVmwareVmsDetails++;
  if (buildCounterVmwareVmsDetails < 3) {
    o.details = buildUnnamed81();
  }
  buildCounterVmwareVmsDetails--;
  return o;
}

void checkVmwareVmsDetails(api.VmwareVmsDetails o) {
  buildCounterVmwareVmsDetails++;
  if (buildCounterVmwareVmsDetails < 3) {
    checkUnnamed81(o.details!);
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

  unittest.group('obj-schema-AwsDiskDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsDiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsDiskDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsDiskDetails(od);
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

  unittest.group('obj-schema-AzureDiskDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureDiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureDiskDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureDiskDetails(od);
    });
  });

  unittest.group('obj-schema-AzureSourceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureSourceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureSourceDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureSourceDetails(od);
    });
  });

  unittest.group('obj-schema-AzureSourceVmDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureSourceVmDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureSourceVmDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureSourceVmDetails(od);
    });
  });

  unittest.group('obj-schema-AzureVmDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureVmDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureVmDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureVmDetails(od);
    });
  });

  unittest.group('obj-schema-AzureVmsDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureVmsDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureVmsDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureVmsDetails(od);
    });
  });

  unittest.group('obj-schema-BootDiskDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBootDiskDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BootDiskDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBootDiskDefaults(od);
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

  unittest.group('obj-schema-CancelImageImportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelImageImportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelImageImportJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelImageImportJobRequest(od);
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

  unittest.group('obj-schema-ClientSecretCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientSecretCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientSecretCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientSecretCredentials(od);
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

  unittest.group('obj-schema-ComputeEngineDisksTargetDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineDisksTargetDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineDisksTargetDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEngineDisksTargetDefaults(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineDisksTargetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineDisksTargetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineDisksTargetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEngineDisksTargetDetails(od);
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

  unittest.group('obj-schema-CreatingImageStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreatingImageStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreatingImageStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreatingImageStep(od);
    });
  });

  unittest.group('obj-schema-CutoverForecast', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutoverForecast();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CutoverForecast.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCutoverForecast(od);
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

  unittest.group('obj-schema-DataDiskImageImport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataDiskImageImport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataDiskImageImport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataDiskImageImport(od);
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

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Disk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisk(od);
    });
  });

  unittest.group('obj-schema-DiskImageDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskImageDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskImageDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskImageDefaults(od);
    });
  });

  unittest.group('obj-schema-DiskImageTargetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskImageTargetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskImageTargetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskImageTargetDetails(od);
    });
  });

  unittest.group('obj-schema-DisksMigrationDisksTargetDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisksMigrationDisksTargetDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisksMigrationDisksTargetDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisksMigrationDisksTargetDefaults(od);
    });
  });

  unittest.group('obj-schema-DisksMigrationDisksTargetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisksMigrationDisksTargetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisksMigrationDisksTargetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisksMigrationDisksTargetDetails(od);
    });
  });

  unittest.group('obj-schema-DisksMigrationVmTargetDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisksMigrationVmTargetDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisksMigrationVmTargetDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisksMigrationVmTargetDefaults(od);
    });
  });

  unittest.group('obj-schema-DisksMigrationVmTargetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisksMigrationVmTargetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisksMigrationVmTargetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisksMigrationVmTargetDetails(od);
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

  unittest.group('obj-schema-Encryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Encryption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEncryption(od);
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

  unittest.group('obj-schema-ImageImport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageImport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageImport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageImport(od);
    });
  });

  unittest.group('obj-schema-ImageImportJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageImportJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageImportJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageImportJob(od);
    });
  });

  unittest.group('obj-schema-ImageImportOsAdaptationParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageImportOsAdaptationParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageImportOsAdaptationParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageImportOsAdaptationParameters(od);
    });
  });

  unittest.group('obj-schema-ImageImportStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageImportStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageImportStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageImportStep(od);
    });
  });

  unittest.group('obj-schema-InitializingImageImportStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitializingImageImportStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitializingImageImportStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitializingImageImportStep(od);
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

  unittest.group('obj-schema-ListImageImportJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImageImportJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImageImportJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImageImportJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListImageImportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImageImportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImageImportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImageImportsResponse(od);
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

  unittest.group('obj-schema-LoadingImageSourceFilesStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadingImageSourceFilesStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadingImageSourceFilesStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadingImageSourceFilesStep(od);
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

  unittest.group('obj-schema-OSDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSDescription(od);
    });
  });

  unittest.group('obj-schema-OSDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSDisk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOSDisk(od);
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

  unittest.group('obj-schema-PersistentDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistentDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistentDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistentDisk(od);
    });
  });

  unittest.group('obj-schema-PersistentDiskDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistentDiskDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistentDiskDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistentDiskDefaults(od);
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

  unittest.group('obj-schema-VmAttachmentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmAttachmentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmAttachmentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmAttachmentDetails(od);
    });
  });

  unittest.group('obj-schema-VmCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmCapabilities(od);
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

  unittest.group('obj-schema-VmwareDiskDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareDiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareDiskDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareDiskDetails(od);
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

  unittest.group('obj-schema-VmwareSourceVmDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareSourceVmDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareSourceVmDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareSourceVmDetails(od);
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
      final response = await res.removeGroupMigration(arg_request, arg_group,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsImageImportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.imageImports;
      final arg_request = buildImageImport();
      final arg_parent = 'foo';
      final arg_imageImportId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImageImport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImageImport(obj);

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
          queryMap['imageImportId']!.first,
          unittest.equals(arg_imageImportId),
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
          imageImportId: arg_imageImportId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.imageImports;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          api.VMMigrationServiceApi(mock).projects.locations.imageImports;
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
        final resp = convert.json.encode(buildImageImport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkImageImport(response as api.ImageImport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMMigrationServiceApi(mock).projects.locations.imageImports;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
        final resp = convert.json.encode(buildListImageImportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImageImportsResponse(response as api.ListImageImportsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsImageImportsImageImportJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .imageImports
          .imageImportJobs;
      final arg_request = buildCancelImageImportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelImageImportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelImageImportJobRequest(obj);

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
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .imageImports
          .imageImportJobs;
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
        final resp = convert.json.encode(buildImageImportJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkImageImportJob(response as api.ImageImportJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock)
          .projects
          .locations
          .imageImports
          .imageImportJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
        final resp = convert.json.encode(buildListImageImportJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImageImportJobsResponse(
          response as api.ListImageImportJobsResponse);
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

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.operations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMMigrationServiceApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
