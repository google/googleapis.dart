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

import 'package:googleapis/notebooks/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.coreCount = 'foo';
    o.type = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(o.coreCount!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAccessConfig = 0;
api.AccessConfig buildAccessConfig() {
  final o = api.AccessConfig();
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    o.externalIp = 'foo';
  }
  buildCounterAccessConfig--;
  return o;
}

void checkAccessConfig(api.AccessConfig o) {
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    unittest.expect(o.externalIp!, unittest.equals('foo'));
  }
  buildCounterAccessConfig--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed0();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed0(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBootDisk = 0;
api.BootDisk buildBootDisk() {
  final o = api.BootDisk();
  buildCounterBootDisk++;
  if (buildCounterBootDisk < 3) {
    o.diskEncryption = 'foo';
    o.diskSizeGb = 'foo';
    o.diskType = 'foo';
    o.kmsKey = 'foo';
  }
  buildCounterBootDisk--;
  return o;
}

void checkBootDisk(api.BootDisk o) {
  buildCounterBootDisk++;
  if (buildCounterBootDisk < 3) {
    unittest.expect(o.diskEncryption!, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb!, unittest.equals('foo'));
    unittest.expect(o.diskType!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
  }
  buildCounterBootDisk--;
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

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCheckAuthorizationRequest = 0;
api.CheckAuthorizationRequest buildCheckAuthorizationRequest() {
  final o = api.CheckAuthorizationRequest();
  buildCounterCheckAuthorizationRequest++;
  if (buildCounterCheckAuthorizationRequest < 3) {
    o.authorizationDetails = buildUnnamed1();
  }
  buildCounterCheckAuthorizationRequest--;
  return o;
}

void checkCheckAuthorizationRequest(api.CheckAuthorizationRequest o) {
  buildCounterCheckAuthorizationRequest++;
  if (buildCounterCheckAuthorizationRequest < 3) {
    checkUnnamed1(o.authorizationDetails!);
  }
  buildCounterCheckAuthorizationRequest--;
}

core.int buildCounterCheckAuthorizationResponse = 0;
api.CheckAuthorizationResponse buildCheckAuthorizationResponse() {
  final o = api.CheckAuthorizationResponse();
  buildCounterCheckAuthorizationResponse++;
  if (buildCounterCheckAuthorizationResponse < 3) {
    o.createTime = 'foo';
    o.oauthUri = 'foo';
    o.success = true;
  }
  buildCounterCheckAuthorizationResponse--;
  return o;
}

void checkCheckAuthorizationResponse(api.CheckAuthorizationResponse o) {
  buildCounterCheckAuthorizationResponse++;
  if (buildCounterCheckAuthorizationResponse < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.oauthUri!, unittest.equals('foo'));
    unittest.expect(o.success!, unittest.isTrue);
  }
  buildCounterCheckAuthorizationResponse--;
}

core.int buildCounterCheckInstanceUpgradabilityResponse = 0;
api.CheckInstanceUpgradabilityResponse
buildCheckInstanceUpgradabilityResponse() {
  final o = api.CheckInstanceUpgradabilityResponse();
  buildCounterCheckInstanceUpgradabilityResponse++;
  if (buildCounterCheckInstanceUpgradabilityResponse < 3) {
    o.upgradeImage = 'foo';
    o.upgradeInfo = 'foo';
    o.upgradeVersion = 'foo';
    o.upgradeable = true;
  }
  buildCounterCheckInstanceUpgradabilityResponse--;
  return o;
}

void checkCheckInstanceUpgradabilityResponse(
  api.CheckInstanceUpgradabilityResponse o,
) {
  buildCounterCheckInstanceUpgradabilityResponse++;
  if (buildCounterCheckInstanceUpgradabilityResponse < 3) {
    unittest.expect(o.upgradeImage!, unittest.equals('foo'));
    unittest.expect(o.upgradeInfo!, unittest.equals('foo'));
    unittest.expect(o.upgradeVersion!, unittest.equals('foo'));
    unittest.expect(o.upgradeable!, unittest.isTrue);
  }
  buildCounterCheckInstanceUpgradabilityResponse--;
}

core.int buildCounterConfidentialInstanceConfig = 0;
api.ConfidentialInstanceConfig buildConfidentialInstanceConfig() {
  final o = api.ConfidentialInstanceConfig();
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    o.confidentialInstanceType = 'foo';
  }
  buildCounterConfidentialInstanceConfig--;
  return o;
}

void checkConfidentialInstanceConfig(api.ConfidentialInstanceConfig o) {
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    unittest.expect(o.confidentialInstanceType!, unittest.equals('foo'));
  }
  buildCounterConfidentialInstanceConfig--;
}

core.List<api.ImageRelease> buildUnnamed2() => [
  buildImageRelease(),
  buildImageRelease(),
];

void checkUnnamed2(core.List<api.ImageRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageRelease(o[0]);
  checkImageRelease(o[1]);
}

core.int buildCounterConfig = 0;
api.Config buildConfig() {
  final o = api.Config();
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    o.availableImages = buildUnnamed2();
    o.defaultValues = buildDefaultValues();
    o.disableWorkbenchLegacyCreation = true;
    o.supportedValues = buildSupportedValues();
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    checkUnnamed2(o.availableImages!);
    checkDefaultValues(o.defaultValues!);
    unittest.expect(o.disableWorkbenchLegacyCreation!, unittest.isTrue);
    checkSupportedValues(o.supportedValues!);
  }
  buildCounterConfig--;
}

core.int buildCounterContainerImage = 0;
api.ContainerImage buildContainerImage() {
  final o = api.ContainerImage();
  buildCounterContainerImage++;
  if (buildCounterContainerImage < 3) {
    o.repository = 'foo';
    o.tag = 'foo';
  }
  buildCounterContainerImage--;
  return o;
}

void checkContainerImage(api.ContainerImage o) {
  buildCounterContainerImage++;
  if (buildCounterContainerImage < 3) {
    unittest.expect(o.repository!, unittest.equals('foo'));
    unittest.expect(o.tag!, unittest.equals('foo'));
  }
  buildCounterContainerImage--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataDisk = 0;
api.DataDisk buildDataDisk() {
  final o = api.DataDisk();
  buildCounterDataDisk++;
  if (buildCounterDataDisk < 3) {
    o.diskEncryption = 'foo';
    o.diskSizeGb = 'foo';
    o.diskType = 'foo';
    o.kmsKey = 'foo';
    o.resourcePolicies = buildUnnamed3();
  }
  buildCounterDataDisk--;
  return o;
}

void checkDataDisk(api.DataDisk o) {
  buildCounterDataDisk++;
  if (buildCounterDataDisk < 3) {
    unittest.expect(o.diskEncryption!, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb!, unittest.equals('foo'));
    unittest.expect(o.diskType!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    checkUnnamed3(o.resourcePolicies!);
  }
  buildCounterDataDisk--;
}

core.int buildCounterDefaultValues = 0;
api.DefaultValues buildDefaultValues() {
  final o = api.DefaultValues();
  buildCounterDefaultValues++;
  if (buildCounterDefaultValues < 3) {
    o.machineType = 'foo';
  }
  buildCounterDefaultValues--;
  return o;
}

void checkDefaultValues(api.DefaultValues o) {
  buildCounterDefaultValues++;
  if (buildCounterDefaultValues < 3) {
    unittest.expect(o.machineType!, unittest.equals('foo'));
  }
  buildCounterDefaultValues--;
}

core.int buildCounterDiagnoseInstanceRequest = 0;
api.DiagnoseInstanceRequest buildDiagnoseInstanceRequest() {
  final o = api.DiagnoseInstanceRequest();
  buildCounterDiagnoseInstanceRequest++;
  if (buildCounterDiagnoseInstanceRequest < 3) {
    o.diagnosticConfig = buildDiagnosticConfig();
    o.timeoutMinutes = 42;
  }
  buildCounterDiagnoseInstanceRequest--;
  return o;
}

void checkDiagnoseInstanceRequest(api.DiagnoseInstanceRequest o) {
  buildCounterDiagnoseInstanceRequest++;
  if (buildCounterDiagnoseInstanceRequest < 3) {
    checkDiagnosticConfig(o.diagnosticConfig!);
    unittest.expect(o.timeoutMinutes!, unittest.equals(42));
  }
  buildCounterDiagnoseInstanceRequest--;
}

core.int buildCounterDiagnosticConfig = 0;
api.DiagnosticConfig buildDiagnosticConfig() {
  final o = api.DiagnosticConfig();
  buildCounterDiagnosticConfig++;
  if (buildCounterDiagnosticConfig < 3) {
    o.enableCopyHomeFilesFlag = true;
    o.enablePacketCaptureFlag = true;
    o.enableRepairFlag = true;
    o.gcsBucket = 'foo';
    o.relativePath = 'foo';
  }
  buildCounterDiagnosticConfig--;
  return o;
}

void checkDiagnosticConfig(api.DiagnosticConfig o) {
  buildCounterDiagnosticConfig++;
  if (buildCounterDiagnosticConfig < 3) {
    unittest.expect(o.enableCopyHomeFilesFlag!, unittest.isTrue);
    unittest.expect(o.enablePacketCaptureFlag!, unittest.isTrue);
    unittest.expect(o.enableRepairFlag!, unittest.isTrue);
    unittest.expect(o.gcsBucket!, unittest.equals('foo'));
    unittest.expect(o.relativePath!, unittest.equals('foo'));
  }
  buildCounterDiagnosticConfig--;
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

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.details = buildUnnamed4();
    o.reportTime = 'foo';
    o.type = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkUnnamed4(o.details!);
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEvent--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGPUDriverConfig = 0;
api.GPUDriverConfig buildGPUDriverConfig() {
  final o = api.GPUDriverConfig();
  buildCounterGPUDriverConfig++;
  if (buildCounterGPUDriverConfig < 3) {
    o.customGpuDriverPath = 'foo';
    o.enableGpuDriver = true;
  }
  buildCounterGPUDriverConfig--;
  return o;
}

void checkGPUDriverConfig(api.GPUDriverConfig o) {
  buildCounterGPUDriverConfig++;
  if (buildCounterGPUDriverConfig < 3) {
    unittest.expect(o.customGpuDriverPath!, unittest.equals('foo'));
    unittest.expect(o.enableGpuDriver!, unittest.isTrue);
  }
  buildCounterGPUDriverConfig--;
}

core.List<api.AcceleratorConfig> buildUnnamed5() => [
  buildAcceleratorConfig(),
  buildAcceleratorConfig(),
];

void checkUnnamed5(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

core.List<api.DataDisk> buildUnnamed6() => [buildDataDisk(), buildDataDisk()];

void checkUnnamed6(core.List<api.DataDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDisk(o[0]);
  checkDataDisk(o[1]);
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.List<api.ServiceAccount> buildUnnamed9() => [
  buildServiceAccount(),
  buildServiceAccount(),
];

void checkUnnamed9(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceSetup = 0;
api.GceSetup buildGceSetup() {
  final o = api.GceSetup();
  buildCounterGceSetup++;
  if (buildCounterGceSetup < 3) {
    o.acceleratorConfigs = buildUnnamed5();
    o.bootDisk = buildBootDisk();
    o.confidentialInstanceConfig = buildConfidentialInstanceConfig();
    o.containerImage = buildContainerImage();
    o.dataDisks = buildUnnamed6();
    o.disablePublicIp = true;
    o.enableIpForwarding = true;
    o.gpuDriverConfig = buildGPUDriverConfig();
    o.instanceId = 'foo';
    o.machineType = 'foo';
    o.metadata = buildUnnamed7();
    o.minCpuPlatform = 'foo';
    o.networkInterfaces = buildUnnamed8();
    o.reservationAffinity = buildReservationAffinity();
    o.serviceAccounts = buildUnnamed9();
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.tags = buildUnnamed10();
    o.vmImage = buildVmImage();
  }
  buildCounterGceSetup--;
  return o;
}

void checkGceSetup(api.GceSetup o) {
  buildCounterGceSetup++;
  if (buildCounterGceSetup < 3) {
    checkUnnamed5(o.acceleratorConfigs!);
    checkBootDisk(o.bootDisk!);
    checkConfidentialInstanceConfig(o.confidentialInstanceConfig!);
    checkContainerImage(o.containerImage!);
    checkUnnamed6(o.dataDisks!);
    unittest.expect(o.disablePublicIp!, unittest.isTrue);
    unittest.expect(o.enableIpForwarding!, unittest.isTrue);
    checkGPUDriverConfig(o.gpuDriverConfig!);
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    checkUnnamed7(o.metadata!);
    unittest.expect(o.minCpuPlatform!, unittest.equals('foo'));
    checkUnnamed8(o.networkInterfaces!);
    checkReservationAffinity(o.reservationAffinity!);
    checkUnnamed9(o.serviceAccounts!);
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    checkUnnamed10(o.tags!);
    checkVmImage(o.vmImage!);
  }
  buildCounterGceSetup--;
}

core.int buildCounterGenerateAccessTokenRequest = 0;
api.GenerateAccessTokenRequest buildGenerateAccessTokenRequest() {
  final o = api.GenerateAccessTokenRequest();
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    o.vmToken = 'foo';
  }
  buildCounterGenerateAccessTokenRequest--;
  return o;
}

void checkGenerateAccessTokenRequest(api.GenerateAccessTokenRequest o) {
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    unittest.expect(o.vmToken!, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenRequest--;
}

core.int buildCounterGenerateAccessTokenResponse = 0;
api.GenerateAccessTokenResponse buildGenerateAccessTokenResponse() {
  final o = api.GenerateAccessTokenResponse();
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    o.accessToken = 'foo';
    o.expiresIn = 42;
    o.scope = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterGenerateAccessTokenResponse--;
  return o;
}

void checkGenerateAccessTokenResponse(api.GenerateAccessTokenResponse o) {
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    unittest.expect(o.accessToken!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals(42));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.tokenType!, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenResponse--;
}

core.int buildCounterImageRelease = 0;
api.ImageRelease buildImageRelease() {
  final o = api.ImageRelease();
  buildCounterImageRelease++;
  if (buildCounterImageRelease < 3) {
    o.imageName = 'foo';
    o.releaseName = 'foo';
  }
  buildCounterImageRelease--;
  return o;
}

void checkImageRelease(api.ImageRelease o) {
  buildCounterImageRelease++;
  if (buildCounterImageRelease < 3) {
    unittest.expect(o.imageName!, unittest.equals('foo'));
    unittest.expect(o.releaseName!, unittest.equals('foo'));
  }
  buildCounterImageRelease--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.UpgradeHistoryEntry> buildUnnamed14() => [
  buildUpgradeHistoryEntry(),
  buildUpgradeHistoryEntry(),
];

void checkUnnamed14(core.List<api.UpgradeHistoryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeHistoryEntry(o[0]);
  checkUpgradeHistoryEntry(o[1]);
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.creator = 'foo';
    o.disableProxyAccess = true;
    o.enableDeletionProtection = true;
    o.enableManagedEuc = true;
    o.enableThirdPartyIdentity = true;
    o.gceSetup = buildGceSetup();
    o.healthInfo = buildUnnamed11();
    o.healthState = 'foo';
    o.id = 'foo';
    o.instanceOwners = buildUnnamed12();
    o.labels = buildUnnamed13();
    o.name = 'foo';
    o.proxyUri = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.thirdPartyProxyUrl = 'foo';
    o.updateTime = 'foo';
    o.upgradeHistory = buildUnnamed14();
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    unittest.expect(o.disableProxyAccess!, unittest.isTrue);
    unittest.expect(o.enableDeletionProtection!, unittest.isTrue);
    unittest.expect(o.enableManagedEuc!, unittest.isTrue);
    unittest.expect(o.enableThirdPartyIdentity!, unittest.isTrue);
    checkGceSetup(o.gceSetup!);
    checkUnnamed11(o.healthInfo!);
    unittest.expect(o.healthState!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed12(o.instanceOwners!);
    checkUnnamed13(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.proxyUri!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.thirdPartyProxyUrl!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed14(o.upgradeHistory!);
  }
  buildCounterInstance--;
}

core.List<api.Instance> buildUnnamed15() => [buildInstance(), buildInstance()];

void checkUnnamed15(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed16();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed15(o.instances!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed17() => [buildLocation(), buildLocation()];

void checkUnnamed17(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed17();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed17(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed18() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed18(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed18();
    o.unreachable = buildUnnamed19();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.operations!);
    checkUnnamed19(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed20() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed20(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed20();
    o.locationId = 'foo';
    o.metadata = buildUnnamed21();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed20(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed21(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.AccessConfig> buildUnnamed22() => [
  buildAccessConfig(),
  buildAccessConfig(),
];

void checkUnnamed22(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

core.int buildCounterNetworkInterface = 0;
api.NetworkInterface buildNetworkInterface() {
  final o = api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.accessConfigs = buildUnnamed22();
    o.network = 'foo';
    o.nicType = 'foo';
    o.subnet = 'foo';
  }
  buildCounterNetworkInterface--;
  return o;
}

void checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    checkUnnamed22(o.accessConfigs!);
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.nicType!, unittest.equals('foo'));
    unittest.expect(o.subnet!, unittest.equals('foo'));
  }
  buildCounterNetworkInterface--;
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

core.Map<core.String, core.Object?> buildUnnamed24() => {
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

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed23();
    o.name = 'foo';
    o.response = buildUnnamed24();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed23(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed24(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Binding> buildUnnamed25() => [buildBinding(), buildBinding()];

void checkUnnamed25(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed25();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed25(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterReportInstanceInfoSystemRequest = 0;
api.ReportInstanceInfoSystemRequest buildReportInstanceInfoSystemRequest() {
  final o = api.ReportInstanceInfoSystemRequest();
  buildCounterReportInstanceInfoSystemRequest++;
  if (buildCounterReportInstanceInfoSystemRequest < 3) {
    o.event = buildEvent();
    o.vmId = 'foo';
  }
  buildCounterReportInstanceInfoSystemRequest--;
  return o;
}

void checkReportInstanceInfoSystemRequest(
  api.ReportInstanceInfoSystemRequest o,
) {
  buildCounterReportInstanceInfoSystemRequest++;
  if (buildCounterReportInstanceInfoSystemRequest < 3) {
    checkEvent(o.event!);
    unittest.expect(o.vmId!, unittest.equals('foo'));
  }
  buildCounterReportInstanceInfoSystemRequest--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  final o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed26();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(o.consumeReservationType!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed26(o.values!);
  }
  buildCounterReservationAffinity--;
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

core.int buildCounterResizeDiskRequest = 0;
api.ResizeDiskRequest buildResizeDiskRequest() {
  final o = api.ResizeDiskRequest();
  buildCounterResizeDiskRequest++;
  if (buildCounterResizeDiskRequest < 3) {
    o.bootDisk = buildBootDisk();
    o.dataDisk = buildDataDisk();
  }
  buildCounterResizeDiskRequest--;
  return o;
}

void checkResizeDiskRequest(api.ResizeDiskRequest o) {
  buildCounterResizeDiskRequest++;
  if (buildCounterResizeDiskRequest < 3) {
    checkBootDisk(o.bootDisk!);
    checkDataDisk(o.dataDisk!);
  }
  buildCounterResizeDiskRequest--;
}

core.int buildCounterRestoreInstanceRequest = 0;
api.RestoreInstanceRequest buildRestoreInstanceRequest() {
  final o = api.RestoreInstanceRequest();
  buildCounterRestoreInstanceRequest++;
  if (buildCounterRestoreInstanceRequest < 3) {
    o.snapshot = buildSnapshot();
  }
  buildCounterRestoreInstanceRequest--;
  return o;
}

void checkRestoreInstanceRequest(api.RestoreInstanceRequest o) {
  buildCounterRestoreInstanceRequest++;
  if (buildCounterRestoreInstanceRequest < 3) {
    checkSnapshot(o.snapshot!);
  }
  buildCounterRestoreInstanceRequest--;
}

core.int buildCounterRollbackInstanceRequest = 0;
api.RollbackInstanceRequest buildRollbackInstanceRequest() {
  final o = api.RollbackInstanceRequest();
  buildCounterRollbackInstanceRequest++;
  if (buildCounterRollbackInstanceRequest < 3) {
    o.revisionId = 'foo';
    o.targetSnapshot = 'foo';
  }
  buildCounterRollbackInstanceRequest--;
  return o;
}

void checkRollbackInstanceRequest(api.RollbackInstanceRequest o) {
  buildCounterRollbackInstanceRequest++;
  if (buildCounterRollbackInstanceRequest < 3) {
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.targetSnapshot!, unittest.equals('foo'));
  }
  buildCounterRollbackInstanceRequest--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scopes = buildUnnamed27();
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    checkUnnamed27(o.scopes!);
  }
  buildCounterServiceAccount--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  final o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
    o.enableVtpm = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
    unittest.expect(o.enableVtpm!, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterSnapshot = 0;
api.Snapshot buildSnapshot() {
  final o = api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.projectId = 'foo';
    o.snapshotId = 'foo';
  }
  buildCounterSnapshot--;
  return o;
}

void checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.snapshotId!, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
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

core.Map<core.String, core.Object?> buildUnnamed28() => {
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

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed29() => [
  buildUnnamed28(),
  buildUnnamed28(),
];

void checkUnnamed29(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed28(o[0]);
  checkUnnamed28(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed29();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed29(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSupportedValues = 0;
api.SupportedValues buildSupportedValues() {
  final o = api.SupportedValues();
  buildCounterSupportedValues++;
  if (buildCounterSupportedValues < 3) {
    o.acceleratorTypes = buildUnnamed30();
    o.machineTypes = buildUnnamed31();
  }
  buildCounterSupportedValues--;
  return o;
}

void checkSupportedValues(api.SupportedValues o) {
  buildCounterSupportedValues++;
  if (buildCounterSupportedValues < 3) {
    checkUnnamed30(o.acceleratorTypes!);
    checkUnnamed31(o.machineTypes!);
  }
  buildCounterSupportedValues--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed32();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed32(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed33();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed33(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpgradeHistoryEntry = 0;
api.UpgradeHistoryEntry buildUpgradeHistoryEntry() {
  final o = api.UpgradeHistoryEntry();
  buildCounterUpgradeHistoryEntry++;
  if (buildCounterUpgradeHistoryEntry < 3) {
    o.action = 'foo';
    o.containerImage = 'foo';
    o.createTime = 'foo';
    o.framework = 'foo';
    o.snapshot = 'foo';
    o.state = 'foo';
    o.targetVersion = 'foo';
    o.version = 'foo';
    o.vmImage = 'foo';
  }
  buildCounterUpgradeHistoryEntry--;
  return o;
}

void checkUpgradeHistoryEntry(api.UpgradeHistoryEntry o) {
  buildCounterUpgradeHistoryEntry++;
  if (buildCounterUpgradeHistoryEntry < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.containerImage!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.framework!, unittest.equals('foo'));
    unittest.expect(o.snapshot!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetVersion!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.vmImage!, unittest.equals('foo'));
  }
  buildCounterUpgradeHistoryEntry--;
}

core.int buildCounterUpgradeInstanceRequest = 0;
api.UpgradeInstanceRequest buildUpgradeInstanceRequest() {
  final o = api.UpgradeInstanceRequest();
  buildCounterUpgradeInstanceRequest++;
  if (buildCounterUpgradeInstanceRequest < 3) {}
  buildCounterUpgradeInstanceRequest--;
  return o;
}

void checkUpgradeInstanceRequest(api.UpgradeInstanceRequest o) {
  buildCounterUpgradeInstanceRequest++;
  if (buildCounterUpgradeInstanceRequest < 3) {}
  buildCounterUpgradeInstanceRequest--;
}

core.int buildCounterUpgradeInstanceSystemRequest = 0;
api.UpgradeInstanceSystemRequest buildUpgradeInstanceSystemRequest() {
  final o = api.UpgradeInstanceSystemRequest();
  buildCounterUpgradeInstanceSystemRequest++;
  if (buildCounterUpgradeInstanceSystemRequest < 3) {
    o.vmId = 'foo';
  }
  buildCounterUpgradeInstanceSystemRequest--;
  return o;
}

void checkUpgradeInstanceSystemRequest(api.UpgradeInstanceSystemRequest o) {
  buildCounterUpgradeInstanceSystemRequest++;
  if (buildCounterUpgradeInstanceSystemRequest < 3) {
    unittest.expect(o.vmId!, unittest.equals('foo'));
  }
  buildCounterUpgradeInstanceSystemRequest--;
}

core.int buildCounterVmImage = 0;
api.VmImage buildVmImage() {
  final o = api.VmImage();
  buildCounterVmImage++;
  if (buildCounterVmImage < 3) {
    o.family = 'foo';
    o.name = 'foo';
    o.project = 'foo';
  }
  buildCounterVmImage--;
  return o;
}

void checkVmImage(api.VmImage o) {
  buildCounterVmImage++;
  if (buildCounterVmImage < 3) {
    unittest.expect(o.family!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.project!, unittest.equals('foo'));
  }
  buildCounterVmImage--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-AccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-BootDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBootDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BootDisk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBootDisk(od);
    });
  });

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

  unittest.group('obj-schema-CheckAuthorizationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckAuthorizationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckAuthorizationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckAuthorizationRequest(od);
    });
  });

  unittest.group('obj-schema-CheckAuthorizationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckAuthorizationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckAuthorizationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckAuthorizationResponse(od);
    });
  });

  unittest.group('obj-schema-CheckInstanceUpgradabilityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckInstanceUpgradabilityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckInstanceUpgradabilityResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckInstanceUpgradabilityResponse(od);
    });
  });

  unittest.group('obj-schema-ConfidentialInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfidentialInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfidentialInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfidentialInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfig(od);
    });
  });

  unittest.group('obj-schema-ContainerImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContainerImage(od);
    });
  });

  unittest.group('obj-schema-DataDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataDisk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataDisk(od);
    });
  });

  unittest.group('obj-schema-DefaultValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultValues(od);
    });
  });

  unittest.group('obj-schema-DiagnoseInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnoseInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnoseInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiagnoseInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-DiagnosticConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnosticConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnosticConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiagnosticConfig(od);
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

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Event.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GPUDriverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGPUDriverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GPUDriverConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGPUDriverConfig(od);
    });
  });

  unittest.group('obj-schema-GceSetup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceSetup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceSetup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceSetup(od);
    });
  });

  unittest.group('obj-schema-GenerateAccessTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateAccessTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateAccessTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateAccessTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateAccessTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateAccessTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateAccessTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateAccessTokenResponse(od);
    });
  });

  unittest.group('obj-schema-ImageRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageRelease.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageRelease(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Instance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInstancesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-NetworkInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInterface.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkInterface(od);
    });
  });

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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ReportInstanceInfoSystemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportInstanceInfoSystemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportInstanceInfoSystemRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportInstanceInfoSystemRequest(od);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationAffinity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReservationAffinity(od);
    });
  });

  unittest.group('obj-schema-ResetInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ResizeDiskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResizeDiskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResizeDiskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResizeDiskRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-RollbackInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceAccount(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-ShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShieldedInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Snapshot.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSnapshot(od);
    });
  });

  unittest.group('obj-schema-StartInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartInstanceRequest(od);
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

  unittest.group('obj-schema-StopInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-SupportedValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupportedValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupportedValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSupportedValues(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-UpgradeHistoryEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeHistoryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeHistoryEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeHistoryEntry(od);
    });
  });

  unittest.group('obj-schema-UpgradeInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeInstanceSystemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeInstanceSystemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeInstanceSystemRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeInstanceSystemRequest(od);
    });
  });

  unittest.group('obj-schema-VmImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVmImage(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed34();
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--checkAuthorization', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildCheckAuthorizationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CheckAuthorizationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCheckAuthorizationRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCheckAuthorizationResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkAuthorization(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCheckAuthorizationResponse(
        response as api.CheckAuthorizationResponse,
      );
    });

    unittest.test('method--checkUpgradability', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_notebookInstance = 'foo';
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildCheckInstanceUpgradabilityResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkUpgradability(
        arg_notebookInstance,
        $fields: arg_$fields,
      );
      checkCheckInstanceUpgradabilityResponse(
        response as api.CheckInstanceUpgradabilityResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_parent = 'foo';
      final arg_instanceId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Instance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            queryMap['instanceId']!.first,
            unittest.equals(arg_instanceId),
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
        instanceId: arg_instanceId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_name = 'foo';
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
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--diagnose', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildDiagnoseInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DiagnoseInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDiagnoseInstanceRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.diagnose(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--generateAccessToken', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildGenerateAccessTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAccessTokenRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGenerateAccessTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateAccessToken(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateAccessTokenResponse(
        response as api.GenerateAccessTokenResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInstance());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkConfig(response as api.Config);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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
          final resp = convert.json.encode(buildListInstancesResponse());
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
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Instance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reportInfoSystem', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildReportInstanceInfoSystemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReportInstanceInfoSystemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReportInstanceInfoSystemRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reportInfoSystem(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildResetInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResetInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reset(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resizeDisk', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildResizeDiskRequest();
      final arg_notebookInstance = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResizeDiskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResizeDiskRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resizeDisk(
        arg_request,
        arg_notebookInstance,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildRestoreInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreInstanceRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildRollbackInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollbackInstanceRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rollback(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildStartInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StartInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.start(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildStopInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StopInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stop(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--upgrade', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpgradeInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpgradeInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpgradeInstanceRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upgrade(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upgradeSystem', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpgradeInstanceSystemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpgradeInstanceSystemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpgradeInstanceSystemRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upgradeSystem(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.AIPlatformNotebooksApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.AIPlatformNotebooksApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.AIPlatformNotebooksApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
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
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
