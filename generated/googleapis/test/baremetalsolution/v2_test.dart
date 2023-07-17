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
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/baremetalsolution/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAllowedClient = 0;
api.AllowedClient buildAllowedClient() {
  final o = api.AllowedClient();
  buildCounterAllowedClient++;
  if (buildCounterAllowedClient < 3) {
    o.allowDev = true;
    o.allowSuid = true;
    o.allowedClientsCidr = 'foo';
    o.mountPermissions = 'foo';
    o.network = 'foo';
    o.nfsPath = 'foo';
    o.noRootSquash = true;
    o.shareIp = 'foo';
  }
  buildCounterAllowedClient--;
  return o;
}

void checkAllowedClient(api.AllowedClient o) {
  buildCounterAllowedClient++;
  if (buildCounterAllowedClient < 3) {
    unittest.expect(o.allowDev!, unittest.isTrue);
    unittest.expect(o.allowSuid!, unittest.isTrue);
    unittest.expect(
      o.allowedClientsCidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mountPermissions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nfsPath!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noRootSquash!, unittest.isTrue);
    unittest.expect(
      o.shareIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterAllowedClient--;
}

core.int buildCounterDetachLunRequest = 0;
api.DetachLunRequest buildDetachLunRequest() {
  final o = api.DetachLunRequest();
  buildCounterDetachLunRequest++;
  if (buildCounterDetachLunRequest < 3) {
    o.lun = 'foo';
    o.skipReboot = true;
  }
  buildCounterDetachLunRequest--;
  return o;
}

void checkDetachLunRequest(api.DetachLunRequest o) {
  buildCounterDetachLunRequest++;
  if (buildCounterDetachLunRequest < 3) {
    unittest.expect(
      o.lun!,
      unittest.equals('foo'),
    );
    unittest.expect(o.skipReboot!, unittest.isTrue);
  }
  buildCounterDetachLunRequest--;
}

core.int buildCounterDisableInteractiveSerialConsoleRequest = 0;
api.DisableInteractiveSerialConsoleRequest
    buildDisableInteractiveSerialConsoleRequest() {
  final o = api.DisableInteractiveSerialConsoleRequest();
  buildCounterDisableInteractiveSerialConsoleRequest++;
  if (buildCounterDisableInteractiveSerialConsoleRequest < 3) {}
  buildCounterDisableInteractiveSerialConsoleRequest--;
  return o;
}

void checkDisableInteractiveSerialConsoleRequest(
    api.DisableInteractiveSerialConsoleRequest o) {
  buildCounterDisableInteractiveSerialConsoleRequest++;
  if (buildCounterDisableInteractiveSerialConsoleRequest < 3) {}
  buildCounterDisableInteractiveSerialConsoleRequest--;
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

core.int buildCounterEnableInteractiveSerialConsoleRequest = 0;
api.EnableInteractiveSerialConsoleRequest
    buildEnableInteractiveSerialConsoleRequest() {
  final o = api.EnableInteractiveSerialConsoleRequest();
  buildCounterEnableInteractiveSerialConsoleRequest++;
  if (buildCounterEnableInteractiveSerialConsoleRequest < 3) {}
  buildCounterEnableInteractiveSerialConsoleRequest--;
  return o;
}

void checkEnableInteractiveSerialConsoleRequest(
    api.EnableInteractiveSerialConsoleRequest o) {
  buildCounterEnableInteractiveSerialConsoleRequest++;
  if (buildCounterEnableInteractiveSerialConsoleRequest < 3) {}
  buildCounterEnableInteractiveSerialConsoleRequest--;
}

core.int buildCounterEvictLunRequest = 0;
api.EvictLunRequest buildEvictLunRequest() {
  final o = api.EvictLunRequest();
  buildCounterEvictLunRequest++;
  if (buildCounterEvictLunRequest < 3) {}
  buildCounterEvictLunRequest--;
  return o;
}

void checkEvictLunRequest(api.EvictLunRequest o) {
  buildCounterEvictLunRequest++;
  if (buildCounterEvictLunRequest < 3) {}
  buildCounterEvictLunRequest--;
}

core.int buildCounterEvictVolumeRequest = 0;
api.EvictVolumeRequest buildEvictVolumeRequest() {
  final o = api.EvictVolumeRequest();
  buildCounterEvictVolumeRequest++;
  if (buildCounterEvictVolumeRequest < 3) {}
  buildCounterEvictVolumeRequest--;
  return o;
}

void checkEvictVolumeRequest(api.EvictVolumeRequest o) {
  buildCounterEvictVolumeRequest++;
  if (buildCounterEvictVolumeRequest < 3) {}
  buildCounterEvictVolumeRequest--;
}

core.List<api.LogicalNetworkInterface> buildUnnamed0() => [
      buildLogicalNetworkInterface(),
      buildLogicalNetworkInterface(),
    ];

void checkUnnamed0(core.List<api.LogicalNetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogicalNetworkInterface(o[0]);
  checkLogicalNetworkInterface(o[1]);
}

core.int buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface = 0;
api.GoogleCloudBaremetalsolutionV2LogicalInterface
    buildGoogleCloudBaremetalsolutionV2LogicalInterface() {
  final o = api.GoogleCloudBaremetalsolutionV2LogicalInterface();
  buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface++;
  if (buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface < 3) {
    o.interfaceIndex = 42;
    o.logicalNetworkInterfaces = buildUnnamed0();
    o.name = 'foo';
  }
  buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface--;
  return o;
}

void checkGoogleCloudBaremetalsolutionV2LogicalInterface(
    api.GoogleCloudBaremetalsolutionV2LogicalInterface o) {
  buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface++;
  if (buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface < 3) {
    unittest.expect(
      o.interfaceIndex!,
      unittest.equals(42),
    );
    checkUnnamed0(o.logicalNetworkInterfaces!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudBaremetalsolutionV2LogicalInterface--;
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

core.List<api.GoogleCloudBaremetalsolutionV2LogicalInterface> buildUnnamed2() =>
    [
      buildGoogleCloudBaremetalsolutionV2LogicalInterface(),
      buildGoogleCloudBaremetalsolutionV2LogicalInterface(),
    ];

void checkUnnamed2(
    core.List<api.GoogleCloudBaremetalsolutionV2LogicalInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBaremetalsolutionV2LogicalInterface(o[0]);
  checkGoogleCloudBaremetalsolutionV2LogicalInterface(o[1]);
}

core.List<api.Lun> buildUnnamed3() => [
      buildLun(),
      buildLun(),
    ];

void checkUnnamed3(core.List<api.Lun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLun(o[0]);
  checkLun(o[1]);
}

core.List<api.Network> buildUnnamed4() => [
      buildNetwork(),
      buildNetwork(),
    ];

void checkUnnamed4(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
}

core.List<api.Volume> buildUnnamed5() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed5(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.firmwareVersion = 'foo';
    o.hyperthreadingEnabled = true;
    o.id = 'foo';
    o.interactiveSerialConsoleEnabled = true;
    o.labels = buildUnnamed1();
    o.logicalInterfaces = buildUnnamed2();
    o.loginInfo = 'foo';
    o.luns = buildUnnamed3();
    o.machineType = 'foo';
    o.name = 'foo';
    o.networkTemplate = 'foo';
    o.networks = buildUnnamed4();
    o.osImage = 'foo';
    o.pod = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.volumes = buildUnnamed5();
    o.workloadProfile = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firmwareVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hyperthreadingEnabled!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.interactiveSerialConsoleEnabled!, unittest.isTrue);
    checkUnnamed1(o.labels!);
    checkUnnamed2(o.logicalInterfaces!);
    unittest.expect(
      o.loginInfo!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.luns!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkTemplate!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.networks!);
    unittest.expect(
      o.osImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.volumes!);
    unittest.expect(
      o.workloadProfile!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.List<api.GoogleCloudBaremetalsolutionV2LogicalInterface> buildUnnamed6() =>
    [
      buildGoogleCloudBaremetalsolutionV2LogicalInterface(),
      buildGoogleCloudBaremetalsolutionV2LogicalInterface(),
    ];

void checkUnnamed6(
    core.List<api.GoogleCloudBaremetalsolutionV2LogicalInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBaremetalsolutionV2LogicalInterface(o[0]);
  checkGoogleCloudBaremetalsolutionV2LogicalInterface(o[1]);
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

core.int buildCounterInstanceConfig = 0;
api.InstanceConfig buildInstanceConfig() {
  final o = api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.accountNetworksEnabled = true;
    o.clientNetwork = buildNetworkAddress();
    o.hyperthreading = true;
    o.id = 'foo';
    o.instanceType = 'foo';
    o.logicalInterfaces = buildUnnamed6();
    o.name = 'foo';
    o.networkConfig = 'foo';
    o.networkTemplate = 'foo';
    o.osImage = 'foo';
    o.privateNetwork = buildNetworkAddress();
    o.sshKeyNames = buildUnnamed7();
    o.userNote = 'foo';
  }
  buildCounterInstanceConfig--;
  return o;
}

void checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(o.accountNetworksEnabled!, unittest.isTrue);
    checkNetworkAddress(o.clientNetwork!);
    unittest.expect(o.hyperthreading!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.logicalInterfaces!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osImage!,
      unittest.equals('foo'),
    );
    checkNetworkAddress(o.privateNetwork!);
    checkUnnamed7(o.sshKeyNames!);
    unittest.expect(
      o.userNote!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceConfig--;
}

core.int buildCounterInstanceQuota = 0;
api.InstanceQuota buildInstanceQuota() {
  final o = api.InstanceQuota();
  buildCounterInstanceQuota++;
  if (buildCounterInstanceQuota < 3) {
    o.availableMachineCount = 42;
    o.gcpService = 'foo';
    o.instanceType = 'foo';
    o.location = 'foo';
    o.name = 'foo';
  }
  buildCounterInstanceQuota--;
  return o;
}

void checkInstanceQuota(api.InstanceQuota o) {
  buildCounterInstanceQuota++;
  if (buildCounterInstanceQuota < 3) {
    unittest.expect(
      o.availableMachineCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceQuota--;
}

core.int buildCounterIntakeVlanAttachment = 0;
api.IntakeVlanAttachment buildIntakeVlanAttachment() {
  final o = api.IntakeVlanAttachment();
  buildCounterIntakeVlanAttachment++;
  if (buildCounterIntakeVlanAttachment < 3) {
    o.id = 'foo';
    o.pairingKey = 'foo';
  }
  buildCounterIntakeVlanAttachment--;
  return o;
}

void checkIntakeVlanAttachment(api.IntakeVlanAttachment o) {
  buildCounterIntakeVlanAttachment++;
  if (buildCounterIntakeVlanAttachment < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pairingKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntakeVlanAttachment--;
}

core.List<api.Instance> buildUnnamed8() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed8(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
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

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed8();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed9();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed8(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed10() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed10(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed10(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Lun> buildUnnamed11() => [
      buildLun(),
      buildLun(),
    ];

void checkUnnamed11(core.List<api.Lun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLun(o[0]);
  checkLun(o[1]);
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

core.int buildCounterListLunsResponse = 0;
api.ListLunsResponse buildListLunsResponse() {
  final o = api.ListLunsResponse();
  buildCounterListLunsResponse++;
  if (buildCounterListLunsResponse < 3) {
    o.luns = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterListLunsResponse--;
  return o;
}

void checkListLunsResponse(api.ListLunsResponse o) {
  buildCounterListLunsResponse++;
  if (buildCounterListLunsResponse < 3) {
    checkUnnamed11(o.luns!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListLunsResponse--;
}

core.List<api.NetworkUsage> buildUnnamed13() => [
      buildNetworkUsage(),
      buildNetworkUsage(),
    ];

void checkUnnamed13(core.List<api.NetworkUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkUsage(o[0]);
  checkNetworkUsage(o[1]);
}

core.int buildCounterListNetworkUsageResponse = 0;
api.ListNetworkUsageResponse buildListNetworkUsageResponse() {
  final o = api.ListNetworkUsageResponse();
  buildCounterListNetworkUsageResponse++;
  if (buildCounterListNetworkUsageResponse < 3) {
    o.networks = buildUnnamed13();
  }
  buildCounterListNetworkUsageResponse--;
  return o;
}

void checkListNetworkUsageResponse(api.ListNetworkUsageResponse o) {
  buildCounterListNetworkUsageResponse++;
  if (buildCounterListNetworkUsageResponse < 3) {
    checkUnnamed13(o.networks!);
  }
  buildCounterListNetworkUsageResponse--;
}

core.List<api.Network> buildUnnamed14() => [
      buildNetwork(),
      buildNetwork(),
    ];

void checkUnnamed14(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
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

core.int buildCounterListNetworksResponse = 0;
api.ListNetworksResponse buildListNetworksResponse() {
  final o = api.ListNetworksResponse();
  buildCounterListNetworksResponse++;
  if (buildCounterListNetworksResponse < 3) {
    o.networks = buildUnnamed14();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed15();
  }
  buildCounterListNetworksResponse--;
  return o;
}

void checkListNetworksResponse(api.ListNetworksResponse o) {
  buildCounterListNetworksResponse++;
  if (buildCounterListNetworksResponse < 3) {
    checkUnnamed14(o.networks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.unreachable!);
  }
  buildCounterListNetworksResponse--;
}

core.List<api.NfsShare> buildUnnamed16() => [
      buildNfsShare(),
      buildNfsShare(),
    ];

void checkUnnamed16(core.List<api.NfsShare> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsShare(o[0]);
  checkNfsShare(o[1]);
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

core.int buildCounterListNfsSharesResponse = 0;
api.ListNfsSharesResponse buildListNfsSharesResponse() {
  final o = api.ListNfsSharesResponse();
  buildCounterListNfsSharesResponse++;
  if (buildCounterListNfsSharesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nfsShares = buildUnnamed16();
    o.unreachable = buildUnnamed17();
  }
  buildCounterListNfsSharesResponse--;
  return o;
}

void checkListNfsSharesResponse(api.ListNfsSharesResponse o) {
  buildCounterListNfsSharesResponse++;
  if (buildCounterListNfsSharesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.nfsShares!);
    checkUnnamed17(o.unreachable!);
  }
  buildCounterListNfsSharesResponse--;
}

core.List<api.ProvisioningQuota> buildUnnamed18() => [
      buildProvisioningQuota(),
      buildProvisioningQuota(),
    ];

void checkUnnamed18(core.List<api.ProvisioningQuota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProvisioningQuota(o[0]);
  checkProvisioningQuota(o[1]);
}

core.int buildCounterListProvisioningQuotasResponse = 0;
api.ListProvisioningQuotasResponse buildListProvisioningQuotasResponse() {
  final o = api.ListProvisioningQuotasResponse();
  buildCounterListProvisioningQuotasResponse++;
  if (buildCounterListProvisioningQuotasResponse < 3) {
    o.nextPageToken = 'foo';
    o.provisioningQuotas = buildUnnamed18();
  }
  buildCounterListProvisioningQuotasResponse--;
  return o;
}

void checkListProvisioningQuotasResponse(api.ListProvisioningQuotasResponse o) {
  buildCounterListProvisioningQuotasResponse++;
  if (buildCounterListProvisioningQuotasResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.provisioningQuotas!);
  }
  buildCounterListProvisioningQuotasResponse--;
}

core.List<api.SSHKey> buildUnnamed19() => [
      buildSSHKey(),
      buildSSHKey(),
    ];

void checkUnnamed19(core.List<api.SSHKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSSHKey(o[0]);
  checkSSHKey(o[1]);
}

core.int buildCounterListSSHKeysResponse = 0;
api.ListSSHKeysResponse buildListSSHKeysResponse() {
  final o = api.ListSSHKeysResponse();
  buildCounterListSSHKeysResponse++;
  if (buildCounterListSSHKeysResponse < 3) {
    o.nextPageToken = 'foo';
    o.sshKeys = buildUnnamed19();
  }
  buildCounterListSSHKeysResponse--;
  return o;
}

void checkListSSHKeysResponse(api.ListSSHKeysResponse o) {
  buildCounterListSSHKeysResponse++;
  if (buildCounterListSSHKeysResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.sshKeys!);
  }
  buildCounterListSSHKeysResponse--;
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

core.List<api.VolumeSnapshot> buildUnnamed21() => [
      buildVolumeSnapshot(),
      buildVolumeSnapshot(),
    ];

void checkUnnamed21(core.List<api.VolumeSnapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeSnapshot(o[0]);
  checkVolumeSnapshot(o[1]);
}

core.int buildCounterListVolumeSnapshotsResponse = 0;
api.ListVolumeSnapshotsResponse buildListVolumeSnapshotsResponse() {
  final o = api.ListVolumeSnapshotsResponse();
  buildCounterListVolumeSnapshotsResponse++;
  if (buildCounterListVolumeSnapshotsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
    o.volumeSnapshots = buildUnnamed21();
  }
  buildCounterListVolumeSnapshotsResponse--;
  return o;
}

void checkListVolumeSnapshotsResponse(api.ListVolumeSnapshotsResponse o) {
  buildCounterListVolumeSnapshotsResponse++;
  if (buildCounterListVolumeSnapshotsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
    checkUnnamed21(o.volumeSnapshots!);
  }
  buildCounterListVolumeSnapshotsResponse--;
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

core.int buildCounterListVolumesResponse = 0;
api.ListVolumesResponse buildListVolumesResponse() {
  final o = api.ListVolumesResponse();
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
    o.volumes = buildUnnamed23();
  }
  buildCounterListVolumesResponse--;
  return o;
}

void checkListVolumesResponse(api.ListVolumesResponse o) {
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.unreachable!);
    checkUnnamed23(o.volumes!);
  }
  buildCounterListVolumesResponse--;
}

core.Map<core.String, core.String> buildUnnamed24() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed24(core.Map<core.String, core.String> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed24();
    o.locationId = 'foo';
    o.metadata = buildUnnamed25();
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
    checkUnnamed24(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLogicalNetworkInterface = 0;
api.LogicalNetworkInterface buildLogicalNetworkInterface() {
  final o = api.LogicalNetworkInterface();
  buildCounterLogicalNetworkInterface++;
  if (buildCounterLogicalNetworkInterface < 3) {
    o.defaultGateway = true;
    o.id = 'foo';
    o.ipAddress = 'foo';
    o.network = 'foo';
    o.networkType = 'foo';
  }
  buildCounterLogicalNetworkInterface--;
  return o;
}

void checkLogicalNetworkInterface(api.LogicalNetworkInterface o) {
  buildCounterLogicalNetworkInterface++;
  if (buildCounterLogicalNetworkInterface < 3) {
    unittest.expect(o.defaultGateway!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogicalNetworkInterface--;
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

core.int buildCounterLun = 0;
api.Lun buildLun() {
  final o = api.Lun();
  buildCounterLun++;
  if (buildCounterLun < 3) {
    o.bootLun = true;
    o.expireTime = 'foo';
    o.id = 'foo';
    o.instances = buildUnnamed26();
    o.multiprotocolType = 'foo';
    o.name = 'foo';
    o.shareable = true;
    o.sizeGb = 'foo';
    o.state = 'foo';
    o.storageType = 'foo';
    o.storageVolume = 'foo';
    o.wwid = 'foo';
  }
  buildCounterLun--;
  return o;
}

void checkLun(api.Lun o) {
  buildCounterLun++;
  if (buildCounterLun < 3) {
    unittest.expect(o.bootLun!, unittest.isTrue);
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.instances!);
    unittest.expect(
      o.multiprotocolType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shareable!, unittest.isTrue);
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageVolume!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wwid!,
      unittest.equals('foo'),
    );
  }
  buildCounterLun--;
}

core.int buildCounterLunRange = 0;
api.LunRange buildLunRange() {
  final o = api.LunRange();
  buildCounterLunRange++;
  if (buildCounterLunRange < 3) {
    o.quantity = 42;
    o.sizeGb = 42;
  }
  buildCounterLunRange--;
  return o;
}

void checkLunRange(api.LunRange o) {
  buildCounterLunRange++;
  if (buildCounterLunRange < 3) {
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
  }
  buildCounterLunRange--;
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

core.List<api.NetworkMountPoint> buildUnnamed29() => [
      buildNetworkMountPoint(),
      buildNetworkMountPoint(),
    ];

void checkUnnamed29(core.List<api.NetworkMountPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkMountPoint(o[0]);
  checkNetworkMountPoint(o[1]);
}

core.List<api.NetworkAddressReservation> buildUnnamed30() => [
      buildNetworkAddressReservation(),
      buildNetworkAddressReservation(),
    ];

void checkUnnamed30(core.List<api.NetworkAddressReservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkAddressReservation(o[0]);
  checkNetworkAddressReservation(o[1]);
}

core.int buildCounterNetwork = 0;
api.Network buildNetwork() {
  final o = api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.cidr = 'foo';
    o.gatewayIp = 'foo';
    o.id = 'foo';
    o.ipAddress = 'foo';
    o.jumboFramesEnabled = true;
    o.labels = buildUnnamed27();
    o.macAddress = buildUnnamed28();
    o.mountPoints = buildUnnamed29();
    o.name = 'foo';
    o.pod = 'foo';
    o.reservations = buildUnnamed30();
    o.servicesCidr = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.vlanId = 'foo';
    o.vrf = buildVRF();
  }
  buildCounterNetwork--;
  return o;
}

void checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatewayIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.jumboFramesEnabled!, unittest.isTrue);
    checkUnnamed27(o.labels!);
    checkUnnamed28(o.macAddress!);
    checkUnnamed29(o.mountPoints!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.reservations!);
    unittest.expect(
      o.servicesCidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vlanId!,
      unittest.equals('foo'),
    );
    checkVRF(o.vrf!);
  }
  buildCounterNetwork--;
}

core.int buildCounterNetworkAddress = 0;
api.NetworkAddress buildNetworkAddress() {
  final o = api.NetworkAddress();
  buildCounterNetworkAddress++;
  if (buildCounterNetworkAddress < 3) {
    o.address = 'foo';
    o.existingNetworkId = 'foo';
    o.networkId = 'foo';
  }
  buildCounterNetworkAddress--;
  return o;
}

void checkNetworkAddress(api.NetworkAddress o) {
  buildCounterNetworkAddress++;
  if (buildCounterNetworkAddress < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.existingNetworkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkAddress--;
}

core.int buildCounterNetworkAddressReservation = 0;
api.NetworkAddressReservation buildNetworkAddressReservation() {
  final o = api.NetworkAddressReservation();
  buildCounterNetworkAddressReservation++;
  if (buildCounterNetworkAddressReservation < 3) {
    o.endAddress = 'foo';
    o.note = 'foo';
    o.startAddress = 'foo';
  }
  buildCounterNetworkAddressReservation--;
  return o;
}

void checkNetworkAddressReservation(api.NetworkAddressReservation o) {
  buildCounterNetworkAddressReservation++;
  if (buildCounterNetworkAddressReservation < 3) {
    unittest.expect(
      o.endAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkAddressReservation--;
}

core.List<api.IntakeVlanAttachment> buildUnnamed31() => [
      buildIntakeVlanAttachment(),
      buildIntakeVlanAttachment(),
    ];

void checkUnnamed31(core.List<api.IntakeVlanAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntakeVlanAttachment(o[0]);
  checkIntakeVlanAttachment(o[1]);
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.bandwidth = 'foo';
    o.cidr = 'foo';
    o.gcpService = 'foo';
    o.id = 'foo';
    o.jumboFramesEnabled = true;
    o.name = 'foo';
    o.serviceCidr = 'foo';
    o.type = 'foo';
    o.userNote = 'foo';
    o.vlanAttachments = buildUnnamed31();
    o.vlanSameProject = true;
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(
      o.bandwidth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.jumboFramesEnabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceCidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userNote!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.vlanAttachments!);
    unittest.expect(o.vlanSameProject!, unittest.isTrue);
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkMountPoint = 0;
api.NetworkMountPoint buildNetworkMountPoint() {
  final o = api.NetworkMountPoint();
  buildCounterNetworkMountPoint++;
  if (buildCounterNetworkMountPoint < 3) {
    o.defaultGateway = true;
    o.instance = 'foo';
    o.ipAddress = 'foo';
    o.logicalInterface = 'foo';
  }
  buildCounterNetworkMountPoint--;
  return o;
}

void checkNetworkMountPoint(api.NetworkMountPoint o) {
  buildCounterNetworkMountPoint++;
  if (buildCounterNetworkMountPoint < 3) {
    unittest.expect(o.defaultGateway!, unittest.isTrue);
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logicalInterface!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkMountPoint--;
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

core.int buildCounterNetworkUsage = 0;
api.NetworkUsage buildNetworkUsage() {
  final o = api.NetworkUsage();
  buildCounterNetworkUsage++;
  if (buildCounterNetworkUsage < 3) {
    o.network = buildNetwork();
    o.usedIps = buildUnnamed32();
  }
  buildCounterNetworkUsage--;
  return o;
}

void checkNetworkUsage(api.NetworkUsage o) {
  buildCounterNetworkUsage++;
  if (buildCounterNetworkUsage < 3) {
    checkNetwork(o.network!);
    checkUnnamed32(o.usedIps!);
  }
  buildCounterNetworkUsage--;
}

core.int buildCounterNfsExport = 0;
api.NfsExport buildNfsExport() {
  final o = api.NfsExport();
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    o.allowDev = true;
    o.allowSuid = true;
    o.cidr = 'foo';
    o.machineId = 'foo';
    o.networkId = 'foo';
    o.noRootSquash = true;
    o.permissions = 'foo';
  }
  buildCounterNfsExport--;
  return o;
}

void checkNfsExport(api.NfsExport o) {
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    unittest.expect(o.allowDev!, unittest.isTrue);
    unittest.expect(o.allowSuid!, unittest.isTrue);
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noRootSquash!, unittest.isTrue);
    unittest.expect(
      o.permissions!,
      unittest.equals('foo'),
    );
  }
  buildCounterNfsExport--;
}

core.List<api.AllowedClient> buildUnnamed33() => [
      buildAllowedClient(),
      buildAllowedClient(),
    ];

void checkUnnamed33(core.List<api.AllowedClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAllowedClient(o[0]);
  checkAllowedClient(o[1]);
}

core.Map<core.String, core.String> buildUnnamed34() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed34(core.Map<core.String, core.String> o) {
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

core.int buildCounterNfsShare = 0;
api.NfsShare buildNfsShare() {
  final o = api.NfsShare();
  buildCounterNfsShare++;
  if (buildCounterNfsShare < 3) {
    o.allowedClients = buildUnnamed33();
    o.id = 'foo';
    o.labels = buildUnnamed34();
    o.name = 'foo';
    o.nfsShareId = 'foo';
    o.requestedSizeGib = 'foo';
    o.state = 'foo';
    o.storageType = 'foo';
    o.volume = 'foo';
  }
  buildCounterNfsShare--;
  return o;
}

void checkNfsShare(api.NfsShare o) {
  buildCounterNfsShare++;
  if (buildCounterNfsShare < 3) {
    checkUnnamed33(o.allowedClients!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nfsShareId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volume!,
      unittest.equals('foo'),
    );
  }
  buildCounterNfsShare--;
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

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed35();
    o.name = 'foo';
    o.response = buildUnnamed36();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed35(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.InstanceConfig> buildUnnamed37() => [
      buildInstanceConfig(),
      buildInstanceConfig(),
    ];

void checkUnnamed37(core.List<api.InstanceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceConfig(o[0]);
  checkInstanceConfig(o[1]);
}

core.List<api.NetworkConfig> buildUnnamed38() => [
      buildNetworkConfig(),
      buildNetworkConfig(),
    ];

void checkUnnamed38(core.List<api.NetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfig(o[0]);
  checkNetworkConfig(o[1]);
}

core.List<api.VolumeConfig> buildUnnamed39() => [
      buildVolumeConfig(),
      buildVolumeConfig(),
    ];

void checkUnnamed39(core.List<api.VolumeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeConfig(o[0]);
  checkVolumeConfig(o[1]);
}

core.int buildCounterProvisioningConfig = 0;
api.ProvisioningConfig buildProvisioningConfig() {
  final o = api.ProvisioningConfig();
  buildCounterProvisioningConfig++;
  if (buildCounterProvisioningConfig < 3) {
    o.cloudConsoleUri = 'foo';
    o.customId = 'foo';
    o.email = 'foo';
    o.handoverServiceAccount = 'foo';
    o.instances = buildUnnamed37();
    o.location = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed38();
    o.state = 'foo';
    o.statusMessage = 'foo';
    o.ticketId = 'foo';
    o.updateTime = 'foo';
    o.volumes = buildUnnamed39();
    o.vpcScEnabled = true;
  }
  buildCounterProvisioningConfig--;
  return o;
}

void checkProvisioningConfig(api.ProvisioningConfig o) {
  buildCounterProvisioningConfig++;
  if (buildCounterProvisioningConfig < 3) {
    unittest.expect(
      o.cloudConsoleUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.handoverServiceAccount!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.instances!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.networks!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ticketId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.volumes!);
    unittest.expect(o.vpcScEnabled!, unittest.isTrue);
  }
  buildCounterProvisioningConfig--;
}

core.int buildCounterProvisioningQuota = 0;
api.ProvisioningQuota buildProvisioningQuota() {
  final o = api.ProvisioningQuota();
  buildCounterProvisioningQuota++;
  if (buildCounterProvisioningQuota < 3) {
    o.assetType = 'foo';
    o.availableCount = 42;
    o.gcpService = 'foo';
    o.instanceQuota = buildInstanceQuota();
    o.location = 'foo';
    o.name = 'foo';
    o.networkBandwidth = 'foo';
    o.serverCount = 'foo';
    o.storageGib = 'foo';
  }
  buildCounterProvisioningQuota--;
  return o;
}

void checkProvisioningQuota(api.ProvisioningQuota o) {
  buildCounterProvisioningQuota++;
  if (buildCounterProvisioningQuota < 3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    checkInstanceQuota(o.instanceQuota!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkBandwidth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageGib!,
      unittest.equals('foo'),
    );
  }
  buildCounterProvisioningQuota--;
}

core.int buildCounterQosPolicy = 0;
api.QosPolicy buildQosPolicy() {
  final o = api.QosPolicy();
  buildCounterQosPolicy++;
  if (buildCounterQosPolicy < 3) {
    o.bandwidthGbps = 42.0;
  }
  buildCounterQosPolicy--;
  return o;
}

void checkQosPolicy(api.QosPolicy o) {
  buildCounterQosPolicy++;
  if (buildCounterQosPolicy < 3) {
    unittest.expect(
      o.bandwidthGbps!,
      unittest.equals(42.0),
    );
  }
  buildCounterQosPolicy--;
}

core.int buildCounterRenameInstanceRequest = 0;
api.RenameInstanceRequest buildRenameInstanceRequest() {
  final o = api.RenameInstanceRequest();
  buildCounterRenameInstanceRequest++;
  if (buildCounterRenameInstanceRequest < 3) {
    o.newInstanceId = 'foo';
  }
  buildCounterRenameInstanceRequest--;
  return o;
}

void checkRenameInstanceRequest(api.RenameInstanceRequest o) {
  buildCounterRenameInstanceRequest++;
  if (buildCounterRenameInstanceRequest < 3) {
    unittest.expect(
      o.newInstanceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenameInstanceRequest--;
}

core.int buildCounterRenameNetworkRequest = 0;
api.RenameNetworkRequest buildRenameNetworkRequest() {
  final o = api.RenameNetworkRequest();
  buildCounterRenameNetworkRequest++;
  if (buildCounterRenameNetworkRequest < 3) {
    o.newNetworkId = 'foo';
  }
  buildCounterRenameNetworkRequest--;
  return o;
}

void checkRenameNetworkRequest(api.RenameNetworkRequest o) {
  buildCounterRenameNetworkRequest++;
  if (buildCounterRenameNetworkRequest < 3) {
    unittest.expect(
      o.newNetworkId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenameNetworkRequest--;
}

core.int buildCounterRenameNfsShareRequest = 0;
api.RenameNfsShareRequest buildRenameNfsShareRequest() {
  final o = api.RenameNfsShareRequest();
  buildCounterRenameNfsShareRequest++;
  if (buildCounterRenameNfsShareRequest < 3) {
    o.newNfsshareId = 'foo';
  }
  buildCounterRenameNfsShareRequest--;
  return o;
}

void checkRenameNfsShareRequest(api.RenameNfsShareRequest o) {
  buildCounterRenameNfsShareRequest++;
  if (buildCounterRenameNfsShareRequest < 3) {
    unittest.expect(
      o.newNfsshareId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenameNfsShareRequest--;
}

core.int buildCounterRenameVolumeRequest = 0;
api.RenameVolumeRequest buildRenameVolumeRequest() {
  final o = api.RenameVolumeRequest();
  buildCounterRenameVolumeRequest++;
  if (buildCounterRenameVolumeRequest < 3) {
    o.newVolumeId = 'foo';
  }
  buildCounterRenameVolumeRequest--;
  return o;
}

void checkRenameVolumeRequest(api.RenameVolumeRequest o) {
  buildCounterRenameVolumeRequest++;
  if (buildCounterRenameVolumeRequest < 3) {
    unittest.expect(
      o.newVolumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenameVolumeRequest--;
}

core.int buildCounterResetInstanceRequest = 0;
api.ResetInstanceRequest buildResetInstanceRequest() {
  final o = api.ResetInstanceRequest();
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
  return o;
}

void checkResetInstanceRequest(api.ResetInstanceRequest o) {
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
}

core.int buildCounterResizeVolumeRequest = 0;
api.ResizeVolumeRequest buildResizeVolumeRequest() {
  final o = api.ResizeVolumeRequest();
  buildCounterResizeVolumeRequest++;
  if (buildCounterResizeVolumeRequest < 3) {
    o.sizeGib = 'foo';
  }
  buildCounterResizeVolumeRequest--;
  return o;
}

void checkResizeVolumeRequest(api.ResizeVolumeRequest o) {
  buildCounterResizeVolumeRequest++;
  if (buildCounterResizeVolumeRequest < 3) {
    unittest.expect(
      o.sizeGib!,
      unittest.equals('foo'),
    );
  }
  buildCounterResizeVolumeRequest--;
}

core.int buildCounterRestoreVolumeSnapshotRequest = 0;
api.RestoreVolumeSnapshotRequest buildRestoreVolumeSnapshotRequest() {
  final o = api.RestoreVolumeSnapshotRequest();
  buildCounterRestoreVolumeSnapshotRequest++;
  if (buildCounterRestoreVolumeSnapshotRequest < 3) {}
  buildCounterRestoreVolumeSnapshotRequest--;
  return o;
}

void checkRestoreVolumeSnapshotRequest(api.RestoreVolumeSnapshotRequest o) {
  buildCounterRestoreVolumeSnapshotRequest++;
  if (buildCounterRestoreVolumeSnapshotRequest < 3) {}
  buildCounterRestoreVolumeSnapshotRequest--;
}

core.int buildCounterSSHKey = 0;
api.SSHKey buildSSHKey() {
  final o = api.SSHKey();
  buildCounterSSHKey++;
  if (buildCounterSSHKey < 3) {
    o.name = 'foo';
    o.publicKey = 'foo';
  }
  buildCounterSSHKey--;
  return o;
}

void checkSSHKey(api.SSHKey o) {
  buildCounterSSHKey++;
  if (buildCounterSSHKey < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterSSHKey--;
}

core.int buildCounterSnapshotReservationDetail = 0;
api.SnapshotReservationDetail buildSnapshotReservationDetail() {
  final o = api.SnapshotReservationDetail();
  buildCounterSnapshotReservationDetail++;
  if (buildCounterSnapshotReservationDetail < 3) {
    o.reservedSpaceGib = 'foo';
    o.reservedSpacePercent = 42;
    o.reservedSpaceRemainingGib = 'foo';
    o.reservedSpaceUsedPercent = 42;
  }
  buildCounterSnapshotReservationDetail--;
  return o;
}

void checkSnapshotReservationDetail(api.SnapshotReservationDetail o) {
  buildCounterSnapshotReservationDetail++;
  if (buildCounterSnapshotReservationDetail < 3) {
    unittest.expect(
      o.reservedSpaceGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSpacePercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reservedSpaceRemainingGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSpaceUsedPercent!,
      unittest.equals(42),
    );
  }
  buildCounterSnapshotReservationDetail--;
}

core.int buildCounterStartInstanceRequest = 0;
api.StartInstanceRequest buildStartInstanceRequest() {
  final o = api.StartInstanceRequest();
  buildCounterStartInstanceRequest++;
  if (buildCounterStartInstanceRequest < 3) {}
  buildCounterStartInstanceRequest--;
  return o;
}

void checkStartInstanceRequest(api.StartInstanceRequest o) {
  buildCounterStartInstanceRequest++;
  if (buildCounterStartInstanceRequest < 3) {}
  buildCounterStartInstanceRequest--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed41() => [
      buildUnnamed40(),
      buildUnnamed40(),
    ];

void checkUnnamed41(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed40(o[0]);
  checkUnnamed40(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed41();
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
    checkUnnamed41(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopInstanceRequest = 0;
api.StopInstanceRequest buildStopInstanceRequest() {
  final o = api.StopInstanceRequest();
  buildCounterStopInstanceRequest++;
  if (buildCounterStopInstanceRequest < 3) {}
  buildCounterStopInstanceRequest--;
  return o;
}

void checkStopInstanceRequest(api.StopInstanceRequest o) {
  buildCounterStopInstanceRequest++;
  if (buildCounterStopInstanceRequest < 3) {}
  buildCounterStopInstanceRequest--;
}

core.int buildCounterSubmitProvisioningConfigRequest = 0;
api.SubmitProvisioningConfigRequest buildSubmitProvisioningConfigRequest() {
  final o = api.SubmitProvisioningConfigRequest();
  buildCounterSubmitProvisioningConfigRequest++;
  if (buildCounterSubmitProvisioningConfigRequest < 3) {
    o.email = 'foo';
    o.provisioningConfig = buildProvisioningConfig();
  }
  buildCounterSubmitProvisioningConfigRequest--;
  return o;
}

void checkSubmitProvisioningConfigRequest(
    api.SubmitProvisioningConfigRequest o) {
  buildCounterSubmitProvisioningConfigRequest++;
  if (buildCounterSubmitProvisioningConfigRequest < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkProvisioningConfig(o.provisioningConfig!);
  }
  buildCounterSubmitProvisioningConfigRequest--;
}

core.int buildCounterSubmitProvisioningConfigResponse = 0;
api.SubmitProvisioningConfigResponse buildSubmitProvisioningConfigResponse() {
  final o = api.SubmitProvisioningConfigResponse();
  buildCounterSubmitProvisioningConfigResponse++;
  if (buildCounterSubmitProvisioningConfigResponse < 3) {
    o.provisioningConfig = buildProvisioningConfig();
  }
  buildCounterSubmitProvisioningConfigResponse--;
  return o;
}

void checkSubmitProvisioningConfigResponse(
    api.SubmitProvisioningConfigResponse o) {
  buildCounterSubmitProvisioningConfigResponse++;
  if (buildCounterSubmitProvisioningConfigResponse < 3) {
    checkProvisioningConfig(o.provisioningConfig!);
  }
  buildCounterSubmitProvisioningConfigResponse--;
}

core.List<api.VlanAttachment> buildUnnamed42() => [
      buildVlanAttachment(),
      buildVlanAttachment(),
    ];

void checkUnnamed42(core.List<api.VlanAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVlanAttachment(o[0]);
  checkVlanAttachment(o[1]);
}

core.int buildCounterVRF = 0;
api.VRF buildVRF() {
  final o = api.VRF();
  buildCounterVRF++;
  if (buildCounterVRF < 3) {
    o.name = 'foo';
    o.qosPolicy = buildQosPolicy();
    o.state = 'foo';
    o.vlanAttachments = buildUnnamed42();
  }
  buildCounterVRF--;
  return o;
}

void checkVRF(api.VRF o) {
  buildCounterVRF++;
  if (buildCounterVRF < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQosPolicy(o.qosPolicy!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.vlanAttachments!);
  }
  buildCounterVRF--;
}

core.int buildCounterVlanAttachment = 0;
api.VlanAttachment buildVlanAttachment() {
  final o = api.VlanAttachment();
  buildCounterVlanAttachment++;
  if (buildCounterVlanAttachment < 3) {
    o.id = 'foo';
    o.interconnectAttachment = 'foo';
    o.pairingKey = 'foo';
    o.peerIp = 'foo';
    o.peerVlanId = 'foo';
    o.qosPolicy = buildQosPolicy();
    o.routerIp = 'foo';
  }
  buildCounterVlanAttachment--;
  return o;
}

void checkVlanAttachment(api.VlanAttachment o) {
  buildCounterVlanAttachment++;
  if (buildCounterVlanAttachment < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interconnectAttachment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pairingKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peerIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peerVlanId!,
      unittest.equals('foo'),
    );
    checkQosPolicy(o.qosPolicy!);
    unittest.expect(
      o.routerIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterVlanAttachment--;
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed44() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed44(core.Map<core.String, core.String> o) {
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

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.attached = true;
    o.autoGrownSizeGib = 'foo';
    o.bootVolume = true;
    o.currentSizeGib = 'foo';
    o.emergencySizeGib = 'foo';
    o.expireTime = 'foo';
    o.id = 'foo';
    o.instances = buildUnnamed43();
    o.labels = buildUnnamed44();
    o.maxSizeGib = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.originallyRequestedSizeGib = 'foo';
    o.performanceTier = 'foo';
    o.pod = 'foo';
    o.protocol = 'foo';
    o.remainingSpaceGib = 'foo';
    o.requestedSizeGib = 'foo';
    o.snapshotAutoDeleteBehavior = 'foo';
    o.snapshotEnabled = true;
    o.snapshotReservationDetail = buildSnapshotReservationDetail();
    o.snapshotSchedulePolicy = 'foo';
    o.state = 'foo';
    o.storageAggregatePool = 'foo';
    o.storageType = 'foo';
    o.workloadProfile = 'foo';
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(o.attached!, unittest.isTrue);
    unittest.expect(
      o.autoGrownSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(o.bootVolume!, unittest.isTrue);
    unittest.expect(
      o.currentSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emergencySizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.instances!);
    checkUnnamed44(o.labels!);
    unittest.expect(
      o.maxSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originallyRequestedSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.performanceTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingSpaceGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotAutoDeleteBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(o.snapshotEnabled!, unittest.isTrue);
    checkSnapshotReservationDetail(o.snapshotReservationDetail!);
    unittest.expect(
      o.snapshotSchedulePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageAggregatePool!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workloadProfile!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
}

core.List<api.LunRange> buildUnnamed45() => [
      buildLunRange(),
      buildLunRange(),
    ];

void checkUnnamed45(core.List<api.LunRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLunRange(o[0]);
  checkLunRange(o[1]);
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

core.List<api.NfsExport> buildUnnamed47() => [
      buildNfsExport(),
      buildNfsExport(),
    ];

void checkUnnamed47(core.List<api.NfsExport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsExport(o[0]);
  checkNfsExport(o[1]);
}

core.int buildCounterVolumeConfig = 0;
api.VolumeConfig buildVolumeConfig() {
  final o = api.VolumeConfig();
  buildCounterVolumeConfig++;
  if (buildCounterVolumeConfig < 3) {
    o.gcpService = 'foo';
    o.id = 'foo';
    o.lunRanges = buildUnnamed45();
    o.machineIds = buildUnnamed46();
    o.name = 'foo';
    o.nfsExports = buildUnnamed47();
    o.performanceTier = 'foo';
    o.protocol = 'foo';
    o.sizeGb = 42;
    o.snapshotsEnabled = true;
    o.storageAggregatePool = 'foo';
    o.type = 'foo';
    o.userNote = 'foo';
  }
  buildCounterVolumeConfig--;
  return o;
}

void checkVolumeConfig(api.VolumeConfig o) {
  buildCounterVolumeConfig++;
  if (buildCounterVolumeConfig < 3) {
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.lunRanges!);
    checkUnnamed46(o.machineIds!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.nfsExports!);
    unittest.expect(
      o.performanceTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(o.snapshotsEnabled!, unittest.isTrue);
    unittest.expect(
      o.storageAggregatePool!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userNote!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeConfig--;
}

core.int buildCounterVolumeSnapshot = 0;
api.VolumeSnapshot buildVolumeSnapshot() {
  final o = api.VolumeSnapshot();
  buildCounterVolumeSnapshot++;
  if (buildCounterVolumeSnapshot < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.storageVolume = 'foo';
    o.type = 'foo';
  }
  buildCounterVolumeSnapshot--;
  return o;
}

void checkVolumeSnapshot(api.VolumeSnapshot o) {
  buildCounterVolumeSnapshot++;
  if (buildCounterVolumeSnapshot < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageVolume!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSnapshot--;
}

void main() {
  unittest.group('obj-schema-AllowedClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowedClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowedClient.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedClient(od);
    });
  });

  unittest.group('obj-schema-DetachLunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetachLunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetachLunRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetachLunRequest(od);
    });
  });

  unittest.group('obj-schema-DisableInteractiveSerialConsoleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableInteractiveSerialConsoleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableInteractiveSerialConsoleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableInteractiveSerialConsoleRequest(od);
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

  unittest.group('obj-schema-EnableInteractiveSerialConsoleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableInteractiveSerialConsoleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableInteractiveSerialConsoleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableInteractiveSerialConsoleRequest(od);
    });
  });

  unittest.group('obj-schema-EvictLunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvictLunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvictLunRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEvictLunRequest(od);
    });
  });

  unittest.group('obj-schema-EvictVolumeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvictVolumeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvictVolumeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEvictVolumeRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBaremetalsolutionV2LogicalInterface',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBaremetalsolutionV2LogicalInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBaremetalsolutionV2LogicalInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBaremetalsolutionV2LogicalInterface(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-InstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceQuota(od);
    });
  });

  unittest.group('obj-schema-IntakeVlanAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntakeVlanAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntakeVlanAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntakeVlanAttachment(od);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancesResponse(od);
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

  unittest.group('obj-schema-ListLunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLunsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworkUsageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworkUsageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworkUsageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNetworkUsageResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNetworksResponse(od);
    });
  });

  unittest.group('obj-schema-ListNfsSharesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNfsSharesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNfsSharesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNfsSharesResponse(od);
    });
  });

  unittest.group('obj-schema-ListProvisioningQuotasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProvisioningQuotasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProvisioningQuotasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProvisioningQuotasResponse(od);
    });
  });

  unittest.group('obj-schema-ListSSHKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSSHKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSSHKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSSHKeysResponse(od);
    });
  });

  unittest.group('obj-schema-ListVolumeSnapshotsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVolumeSnapshotsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVolumeSnapshotsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVolumeSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVolumesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVolumesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVolumesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVolumesResponse(od);
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

  unittest.group('obj-schema-LogicalNetworkInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogicalNetworkInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogicalNetworkInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogicalNetworkInterface(od);
    });
  });

  unittest.group('obj-schema-Lun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Lun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLun(od);
    });
  });

  unittest.group('obj-schema-LunRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLunRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LunRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLunRange(od);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Network.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNetwork(od);
    });
  });

  unittest.group('obj-schema-NetworkAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAddress(od);
    });
  });

  unittest.group('obj-schema-NetworkAddressReservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddressReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddressReservation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAddressReservation(od);
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

  unittest.group('obj-schema-NetworkMountPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkMountPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkMountPoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkMountPoint(od);
    });
  });

  unittest.group('obj-schema-NetworkUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkUsage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkUsage(od);
    });
  });

  unittest.group('obj-schema-NfsExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NfsExport.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNfsExport(od);
    });
  });

  unittest.group('obj-schema-NfsShare', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsShare();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NfsShare.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNfsShare(od);
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

  unittest.group('obj-schema-ProvisioningConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisioningConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisioningConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProvisioningConfig(od);
    });
  });

  unittest.group('obj-schema-ProvisioningQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisioningQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisioningQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProvisioningQuota(od);
    });
  });

  unittest.group('obj-schema-QosPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQosPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QosPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQosPolicy(od);
    });
  });

  unittest.group('obj-schema-RenameInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenameInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenameInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenameInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-RenameNetworkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenameNetworkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenameNetworkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenameNetworkRequest(od);
    });
  });

  unittest.group('obj-schema-RenameNfsShareRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenameNfsShareRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenameNfsShareRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenameNfsShareRequest(od);
    });
  });

  unittest.group('obj-schema-RenameVolumeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenameVolumeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenameVolumeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenameVolumeRequest(od);
    });
  });

  unittest.group('obj-schema-ResetInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ResizeVolumeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResizeVolumeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResizeVolumeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResizeVolumeRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreVolumeSnapshotRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreVolumeSnapshotRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreVolumeSnapshotRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreVolumeSnapshotRequest(od);
    });
  });

  unittest.group('obj-schema-SSHKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSSHKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SSHKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSSHKey(od);
    });
  });

  unittest.group('obj-schema-SnapshotReservationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotReservationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotReservationDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotReservationDetail(od);
    });
  });

  unittest.group('obj-schema-StartInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartInstanceRequest(od);
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

  unittest.group('obj-schema-StopInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-SubmitProvisioningConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmitProvisioningConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmitProvisioningConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubmitProvisioningConfigRequest(od);
    });
  });

  unittest.group('obj-schema-SubmitProvisioningConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmitProvisioningConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmitProvisioningConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubmitProvisioningConfigResponse(od);
    });
  });

  unittest.group('obj-schema-VRF', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVRF();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VRF.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVRF(od);
    });
  });

  unittest.group('obj-schema-VlanAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVlanAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VlanAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVlanAttachment(od);
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

  unittest.group('obj-schema-VolumeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeConfig(od);
    });
  });

  unittest.group('obj-schema-VolumeSnapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSnapshot.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSnapshot(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
      final res = api.BaremetalsolutionApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--detachLun', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildDetachLunRequest();
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DetachLunRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDetachLunRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.detachLun(arg_request, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disableInteractiveSerialConsole', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildDisableInteractiveSerialConsoleRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableInteractiveSerialConsoleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableInteractiveSerialConsoleRequest(obj);

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
          unittest.equals('v2/'),
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
      final response = await res.disableInteractiveSerialConsole(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enableInteractiveSerialConsole', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildEnableInteractiveSerialConsoleRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableInteractiveSerialConsoleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableInteractiveSerialConsoleRequest(obj);

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
          unittest.equals('v2/'),
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
      final response = await res.enableInteractiveSerialConsole(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj);

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
          unittest.equals('v2/'),
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

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildRenameInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenameInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenameInstanceRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildResetInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetInstanceRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildStartInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartInstanceRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildStopInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopInstanceRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsNetworksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildNetwork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNetwork(response as api.Network);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListNetworksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNetworksResponse(response as api.ListNetworksResponse);
    });

    unittest.test('method--listNetworkUsage', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_location = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListNetworkUsageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.listNetworkUsage(arg_location, $fields: arg_$fields);
      checkListNetworkUsageResponse(response as api.ListNetworkUsageResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_request = buildNetwork();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Network.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNetwork(obj);

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
          unittest.equals('v2/'),
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

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_request = buildRenameNetworkRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenameNetworkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenameNetworkRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildNetwork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkNetwork(response as api.Network);
    });
  });

  unittest.group('resource-ProjectsLocationsNfsSharesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_request = buildNfsShare();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.NfsShare.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNfsShare(obj);

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
          unittest.equals('v2/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
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
          unittest.equals('v2/'),
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
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildNfsShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNfsShare(response as api.NfsShare);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListNfsSharesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNfsSharesResponse(response as api.ListNfsSharesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_request = buildNfsShare();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.NfsShare.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNfsShare(obj);

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
          unittest.equals('v2/'),
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

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_request = buildRenameNfsShareRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenameNfsShareRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenameNfsShareRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildNfsShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkNfsShare(response as api.NfsShare);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsProvisioningConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_request = buildProvisioningConfig();
      final arg_parent = 'foo';
      final arg_email = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProvisioningConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProvisioningConfig(obj);

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
          unittest.equals('v2/'),
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
          queryMap['email']!.first,
          unittest.equals(arg_email),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProvisioningConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          email: arg_email, $fields: arg_$fields);
      checkProvisioningConfig(response as api.ProvisioningConfig);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildProvisioningConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProvisioningConfig(response as api.ProvisioningConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_request = buildProvisioningConfig();
      final arg_name = 'foo';
      final arg_email = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProvisioningConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProvisioningConfig(obj);

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
          unittest.equals('v2/'),
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
          queryMap['email']!.first,
          unittest.equals(arg_email),
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
        final resp = convert.json.encode(buildProvisioningConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          email: arg_email, updateMask: arg_updateMask, $fields: arg_$fields);
      checkProvisioningConfig(response as api.ProvisioningConfig);
    });

    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_request = buildSubmitProvisioningConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubmitProvisioningConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubmitProvisioningConfigRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildSubmitProvisioningConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.submit(arg_request, arg_parent, $fields: arg_$fields);
      checkSubmitProvisioningConfigResponse(
          response as api.SubmitProvisioningConfigResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProvisioningQuotasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningQuotas;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListProvisioningQuotasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProvisioningQuotasResponse(
          response as api.ListProvisioningQuotasResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSshKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.sshKeys;
      final arg_request = buildSSHKey();
      final arg_parent = 'foo';
      final arg_sshKeyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.SSHKey.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSSHKey(obj);

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
          unittest.equals('v2/'),
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
          queryMap['sshKeyId']!.first,
          unittest.equals(arg_sshKeyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSSHKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          sshKeyId: arg_sshKeyId, $fields: arg_$fields);
      checkSSHKey(response as api.SSHKey);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.sshKeys;
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
          unittest.equals('v2/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.sshKeys;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListSSHKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSSHKeysResponse(response as api.ListSSHKeysResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesResource', () {
    unittest.test('method--evict', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_request = buildEvictVolumeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EvictVolumeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEvictVolumeRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.evict(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVolume(response as api.Volume);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListVolumesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVolumesResponse(response as api.ListVolumesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_request = buildVolume();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Volume.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVolume(obj);

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
          unittest.equals('v2/'),
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

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_request = buildRenameVolumeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenameVolumeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenameVolumeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkVolume(response as api.Volume);
    });

    unittest.test('method--resize', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_request = buildResizeVolumeRequest();
      final arg_volume = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResizeVolumeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResizeVolumeRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.resize(arg_request, arg_volume, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesLunsResource', () {
    unittest.test('method--evict', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
      final arg_request = buildEvictLunRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EvictLunRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEvictLunRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.evict(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildLun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLun(response as api.Lun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListLunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLunsResponse(response as api.ListLunsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesSnapshotsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
      final arg_request = buildVolumeSnapshot();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VolumeSnapshot.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVolumeSnapshot(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolumeSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkVolumeSnapshot(response as api.VolumeSnapshot);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
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
          unittest.equals('v2/'),
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
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolumeSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVolumeSnapshot(response as api.VolumeSnapshot);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListVolumeSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVolumeSnapshotsResponse(
          response as api.ListVolumeSnapshotsResponse);
    });

    unittest.test('method--restoreVolumeSnapshot', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
      final arg_request = buildRestoreVolumeSnapshotRequest();
      final arg_volumeSnapshot = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreVolumeSnapshotRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreVolumeSnapshotRequest(obj);

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
          unittest.equals('v2/'),
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
      final response = await res.restoreVolumeSnapshot(
          arg_request, arg_volumeSnapshot,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
