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

import 'package:googleapis/workstations/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccelerator = 0;
api.Accelerator buildAccelerator() {
  final o = api.Accelerator();
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    o.count = 42;
    o.type = 'foo';
  }
  buildCounterAccelerator--;
  return o;
}

void checkAccelerator(api.Accelerator o) {
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterAccelerator--;
}

core.List<api.AuditLogConfig> buildUnnamed0() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
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
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.List<api.Accelerator> buildUnnamed3() => [
  buildAccelerator(),
  buildAccelerator(),
];

void checkUnnamed3(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0]);
  checkAccelerator(o[1]);
}

core.int buildCounterBoostConfig = 0;
api.BoostConfig buildBoostConfig() {
  final o = api.BoostConfig();
  buildCounterBoostConfig++;
  if (buildCounterBoostConfig < 3) {
    o.accelerators = buildUnnamed3();
    o.bootDiskSizeGb = 42;
    o.enableNestedVirtualization = true;
    o.id = 'foo';
    o.machineType = 'foo';
    o.poolSize = 42;
    o.reservationAffinity = buildReservationAffinity();
  }
  buildCounterBoostConfig--;
  return o;
}

void checkBoostConfig(api.BoostConfig o) {
  buildCounterBoostConfig++;
  if (buildCounterBoostConfig < 3) {
    checkUnnamed3(o.accelerators!);
    unittest.expect(o.bootDiskSizeGb!, unittest.equals(42));
    unittest.expect(o.enableNestedVirtualization!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.poolSize!, unittest.equals(42));
    checkReservationAffinity(o.reservationAffinity!);
  }
  buildCounterBoostConfig--;
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

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  final o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.args = buildUnnamed4();
    o.command = buildUnnamed5();
    o.env = buildUnnamed6();
    o.image = 'foo';
    o.runAsUser = 42;
    o.workingDir = 'foo';
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    checkUnnamed4(o.args!);
    checkUnnamed5(o.command!);
    checkUnnamed6(o.env!);
    unittest.expect(o.image!, unittest.equals('foo'));
    unittest.expect(o.runAsUser!, unittest.equals(42));
    unittest.expect(o.workingDir!, unittest.equals('foo'));
  }
  buildCounterContainer--;
}

core.int buildCounterCustomerEncryptionKey = 0;
api.CustomerEncryptionKey buildCustomerEncryptionKey() {
  final o = api.CustomerEncryptionKey();
  buildCounterCustomerEncryptionKey++;
  if (buildCounterCustomerEncryptionKey < 3) {
    o.kmsKey = 'foo';
    o.kmsKeyServiceAccount = 'foo';
  }
  buildCounterCustomerEncryptionKey--;
  return o;
}

void checkCustomerEncryptionKey(api.CustomerEncryptionKey o) {
  buildCounterCustomerEncryptionKey++;
  if (buildCounterCustomerEncryptionKey < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyServiceAccount!, unittest.equals('foo'));
  }
  buildCounterCustomerEncryptionKey--;
}

core.int buildCounterDomainConfig = 0;
api.DomainConfig buildDomainConfig() {
  final o = api.DomainConfig();
  buildCounterDomainConfig++;
  if (buildCounterDomainConfig < 3) {
    o.domain = 'foo';
  }
  buildCounterDomainConfig--;
  return o;
}

void checkDomainConfig(api.DomainConfig o) {
  buildCounterDomainConfig++;
  if (buildCounterDomainConfig < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
  }
  buildCounterDomainConfig--;
}

core.int buildCounterEphemeralDirectory = 0;
api.EphemeralDirectory buildEphemeralDirectory() {
  final o = api.EphemeralDirectory();
  buildCounterEphemeralDirectory++;
  if (buildCounterEphemeralDirectory < 3) {
    o.gcePd = buildGcePersistentDisk();
    o.mountPath = 'foo';
  }
  buildCounterEphemeralDirectory--;
  return o;
}

void checkEphemeralDirectory(api.EphemeralDirectory o) {
  buildCounterEphemeralDirectory++;
  if (buildCounterEphemeralDirectory < 3) {
    checkGcePersistentDisk(o.gcePd!);
    unittest.expect(o.mountPath!, unittest.equals('foo'));
  }
  buildCounterEphemeralDirectory--;
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

core.int buildCounterGatewayConfig = 0;
api.GatewayConfig buildGatewayConfig() {
  final o = api.GatewayConfig();
  buildCounterGatewayConfig++;
  if (buildCounterGatewayConfig < 3) {
    o.http2Enabled = true;
  }
  buildCounterGatewayConfig--;
  return o;
}

void checkGatewayConfig(api.GatewayConfig o) {
  buildCounterGatewayConfig++;
  if (buildCounterGatewayConfig < 3) {
    unittest.expect(o.http2Enabled!, unittest.isTrue);
  }
  buildCounterGatewayConfig--;
}

core.int buildCounterGceConfidentialInstanceConfig = 0;
api.GceConfidentialInstanceConfig buildGceConfidentialInstanceConfig() {
  final o = api.GceConfidentialInstanceConfig();
  buildCounterGceConfidentialInstanceConfig++;
  if (buildCounterGceConfidentialInstanceConfig < 3) {
    o.enableConfidentialCompute = true;
  }
  buildCounterGceConfidentialInstanceConfig--;
  return o;
}

void checkGceConfidentialInstanceConfig(api.GceConfidentialInstanceConfig o) {
  buildCounterGceConfidentialInstanceConfig++;
  if (buildCounterGceConfidentialInstanceConfig < 3) {
    unittest.expect(o.enableConfidentialCompute!, unittest.isTrue);
  }
  buildCounterGceConfidentialInstanceConfig--;
}

core.List<api.Accelerator> buildUnnamed7() => [
  buildAccelerator(),
  buildAccelerator(),
];

void checkUnnamed7(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0]);
  checkAccelerator(o[1]);
}

core.List<api.BoostConfig> buildUnnamed8() => [
  buildBoostConfig(),
  buildBoostConfig(),
];

void checkUnnamed8(core.List<api.BoostConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBoostConfig(o[0]);
  checkBoostConfig(o[1]);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGceInstance = 0;
api.GceInstance buildGceInstance() {
  final o = api.GceInstance();
  buildCounterGceInstance++;
  if (buildCounterGceInstance < 3) {
    o.accelerators = buildUnnamed7();
    o.boostConfigs = buildUnnamed8();
    o.bootDiskSizeGb = 42;
    o.confidentialInstanceConfig = buildGceConfidentialInstanceConfig();
    o.disablePublicIpAddresses = true;
    o.disableSsh = true;
    o.enableNestedVirtualization = true;
    o.machineType = 'foo';
    o.poolSize = 42;
    o.pooledInstances = 42;
    o.reservationAffinity = buildReservationAffinity();
    o.serviceAccount = 'foo';
    o.serviceAccountScopes = buildUnnamed9();
    o.shieldedInstanceConfig = buildGceShieldedInstanceConfig();
    o.tags = buildUnnamed10();
    o.vmTags = buildUnnamed11();
  }
  buildCounterGceInstance--;
  return o;
}

void checkGceInstance(api.GceInstance o) {
  buildCounterGceInstance++;
  if (buildCounterGceInstance < 3) {
    checkUnnamed7(o.accelerators!);
    checkUnnamed8(o.boostConfigs!);
    unittest.expect(o.bootDiskSizeGb!, unittest.equals(42));
    checkGceConfidentialInstanceConfig(o.confidentialInstanceConfig!);
    unittest.expect(o.disablePublicIpAddresses!, unittest.isTrue);
    unittest.expect(o.disableSsh!, unittest.isTrue);
    unittest.expect(o.enableNestedVirtualization!, unittest.isTrue);
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.poolSize!, unittest.equals(42));
    unittest.expect(o.pooledInstances!, unittest.equals(42));
    checkReservationAffinity(o.reservationAffinity!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    checkUnnamed9(o.serviceAccountScopes!);
    checkGceShieldedInstanceConfig(o.shieldedInstanceConfig!);
    checkUnnamed10(o.tags!);
    checkUnnamed11(o.vmTags!);
  }
  buildCounterGceInstance--;
}

core.int buildCounterGceInstanceHost = 0;
api.GceInstanceHost buildGceInstanceHost() {
  final o = api.GceInstanceHost();
  buildCounterGceInstanceHost++;
  if (buildCounterGceInstanceHost < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.zone = 'foo';
  }
  buildCounterGceInstanceHost--;
  return o;
}

void checkGceInstanceHost(api.GceInstanceHost o) {
  buildCounterGceInstanceHost++;
  if (buildCounterGceInstanceHost < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterGceInstanceHost--;
}

core.int buildCounterGcePersistentDisk = 0;
api.GcePersistentDisk buildGcePersistentDisk() {
  final o = api.GcePersistentDisk();
  buildCounterGcePersistentDisk++;
  if (buildCounterGcePersistentDisk < 3) {
    o.diskType = 'foo';
    o.readOnly = true;
    o.sourceImage = 'foo';
    o.sourceSnapshot = 'foo';
  }
  buildCounterGcePersistentDisk--;
  return o;
}

void checkGcePersistentDisk(api.GcePersistentDisk o) {
  buildCounterGcePersistentDisk++;
  if (buildCounterGcePersistentDisk < 3) {
    unittest.expect(o.diskType!, unittest.equals('foo'));
    unittest.expect(o.readOnly!, unittest.isTrue);
    unittest.expect(o.sourceImage!, unittest.equals('foo'));
    unittest.expect(o.sourceSnapshot!, unittest.equals('foo'));
  }
  buildCounterGcePersistentDisk--;
}

core.int buildCounterGceRegionalPersistentDisk = 0;
api.GceRegionalPersistentDisk buildGceRegionalPersistentDisk() {
  final o = api.GceRegionalPersistentDisk();
  buildCounterGceRegionalPersistentDisk++;
  if (buildCounterGceRegionalPersistentDisk < 3) {
    o.diskType = 'foo';
    o.fsType = 'foo';
    o.reclaimPolicy = 'foo';
    o.sizeGb = 42;
    o.sourceSnapshot = 'foo';
  }
  buildCounterGceRegionalPersistentDisk--;
  return o;
}

void checkGceRegionalPersistentDisk(api.GceRegionalPersistentDisk o) {
  buildCounterGceRegionalPersistentDisk++;
  if (buildCounterGceRegionalPersistentDisk < 3) {
    unittest.expect(o.diskType!, unittest.equals('foo'));
    unittest.expect(o.fsType!, unittest.equals('foo'));
    unittest.expect(o.reclaimPolicy!, unittest.equals('foo'));
    unittest.expect(o.sizeGb!, unittest.equals(42));
    unittest.expect(o.sourceSnapshot!, unittest.equals('foo'));
  }
  buildCounterGceRegionalPersistentDisk--;
}

core.int buildCounterGceShieldedInstanceConfig = 0;
api.GceShieldedInstanceConfig buildGceShieldedInstanceConfig() {
  final o = api.GceShieldedInstanceConfig();
  buildCounterGceShieldedInstanceConfig++;
  if (buildCounterGceShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
    o.enableVtpm = true;
  }
  buildCounterGceShieldedInstanceConfig--;
  return o;
}

void checkGceShieldedInstanceConfig(api.GceShieldedInstanceConfig o) {
  buildCounterGceShieldedInstanceConfig++;
  if (buildCounterGceShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
    unittest.expect(o.enableVtpm!, unittest.isTrue);
  }
  buildCounterGceShieldedInstanceConfig--;
}

core.int buildCounterGenerateAccessTokenRequest = 0;
api.GenerateAccessTokenRequest buildGenerateAccessTokenRequest() {
  final o = api.GenerateAccessTokenRequest();
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    o.expireTime = 'foo';
    o.port = 42;
    o.ttl = 'foo';
  }
  buildCounterGenerateAccessTokenRequest--;
  return o;
}

void checkGenerateAccessTokenRequest(api.GenerateAccessTokenRequest o) {
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.ttl!, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenRequest--;
}

core.int buildCounterGenerateAccessTokenResponse = 0;
api.GenerateAccessTokenResponse buildGenerateAccessTokenResponse() {
  final o = api.GenerateAccessTokenResponse();
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    o.accessToken = 'foo';
    o.expireTime = 'foo';
  }
  buildCounterGenerateAccessTokenResponse--;
  return o;
}

void checkGenerateAccessTokenResponse(api.GenerateAccessTokenResponse o) {
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    unittest.expect(o.accessToken!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenResponse--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.int buildCounterHost = 0;
api.Host buildHost() {
  final o = api.Host();
  buildCounterHost++;
  if (buildCounterHost < 3) {
    o.gceInstance = buildGceInstance();
  }
  buildCounterHost--;
  return o;
}

void checkHost(api.Host o) {
  buildCounterHost++;
  if (buildCounterHost < 3) {
    checkGceInstance(o.gceInstance!);
  }
  buildCounterHost--;
}

core.int buildCounterHttpOptions = 0;
api.HttpOptions buildHttpOptions() {
  final o = api.HttpOptions();
  buildCounterHttpOptions++;
  if (buildCounterHttpOptions < 3) {
    o.allowedUnauthenticatedCorsPreflightRequests = true;
    o.disableLocalhostReplacement = true;
  }
  buildCounterHttpOptions--;
  return o;
}

void checkHttpOptions(api.HttpOptions o) {
  buildCounterHttpOptions++;
  if (buildCounterHttpOptions < 3) {
    unittest.expect(
      o.allowedUnauthenticatedCorsPreflightRequests!,
      unittest.isTrue,
    );
    unittest.expect(o.disableLocalhostReplacement!, unittest.isTrue);
  }
  buildCounterHttpOptions--;
}

core.List<api.Operation> buildUnnamed12() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed12(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed12();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WorkstationConfig> buildUnnamed14() => [
  buildWorkstationConfig(),
  buildWorkstationConfig(),
];

void checkUnnamed14(core.List<api.WorkstationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkstationConfig(o[0]);
  checkWorkstationConfig(o[1]);
}

core.int buildCounterListUsableWorkstationConfigsResponse = 0;
api.ListUsableWorkstationConfigsResponse
buildListUsableWorkstationConfigsResponse() {
  final o = api.ListUsableWorkstationConfigsResponse();
  buildCounterListUsableWorkstationConfigsResponse++;
  if (buildCounterListUsableWorkstationConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed13();
    o.workstationConfigs = buildUnnamed14();
  }
  buildCounterListUsableWorkstationConfigsResponse--;
  return o;
}

void checkListUsableWorkstationConfigsResponse(
  api.ListUsableWorkstationConfigsResponse o,
) {
  buildCounterListUsableWorkstationConfigsResponse++;
  if (buildCounterListUsableWorkstationConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.unreachable!);
    checkUnnamed14(o.workstationConfigs!);
  }
  buildCounterListUsableWorkstationConfigsResponse--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Workstation> buildUnnamed16() => [
  buildWorkstation(),
  buildWorkstation(),
];

void checkUnnamed16(core.List<api.Workstation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkstation(o[0]);
  checkWorkstation(o[1]);
}

core.int buildCounterListUsableWorkstationsResponse = 0;
api.ListUsableWorkstationsResponse buildListUsableWorkstationsResponse() {
  final o = api.ListUsableWorkstationsResponse();
  buildCounterListUsableWorkstationsResponse++;
  if (buildCounterListUsableWorkstationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed15();
    o.workstations = buildUnnamed16();
  }
  buildCounterListUsableWorkstationsResponse--;
  return o;
}

void checkListUsableWorkstationsResponse(api.ListUsableWorkstationsResponse o) {
  buildCounterListUsableWorkstationsResponse++;
  if (buildCounterListUsableWorkstationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.unreachable!);
    checkUnnamed16(o.workstations!);
  }
  buildCounterListUsableWorkstationsResponse--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WorkstationCluster> buildUnnamed18() => [
  buildWorkstationCluster(),
  buildWorkstationCluster(),
];

void checkUnnamed18(core.List<api.WorkstationCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkstationCluster(o[0]);
  checkWorkstationCluster(o[1]);
}

core.int buildCounterListWorkstationClustersResponse = 0;
api.ListWorkstationClustersResponse buildListWorkstationClustersResponse() {
  final o = api.ListWorkstationClustersResponse();
  buildCounterListWorkstationClustersResponse++;
  if (buildCounterListWorkstationClustersResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed17();
    o.workstationClusters = buildUnnamed18();
  }
  buildCounterListWorkstationClustersResponse--;
  return o;
}

void checkListWorkstationClustersResponse(
  api.ListWorkstationClustersResponse o,
) {
  buildCounterListWorkstationClustersResponse++;
  if (buildCounterListWorkstationClustersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.unreachable!);
    checkUnnamed18(o.workstationClusters!);
  }
  buildCounterListWorkstationClustersResponse--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WorkstationConfig> buildUnnamed20() => [
  buildWorkstationConfig(),
  buildWorkstationConfig(),
];

void checkUnnamed20(core.List<api.WorkstationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkstationConfig(o[0]);
  checkWorkstationConfig(o[1]);
}

core.int buildCounterListWorkstationConfigsResponse = 0;
api.ListWorkstationConfigsResponse buildListWorkstationConfigsResponse() {
  final o = api.ListWorkstationConfigsResponse();
  buildCounterListWorkstationConfigsResponse++;
  if (buildCounterListWorkstationConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed19();
    o.workstationConfigs = buildUnnamed20();
  }
  buildCounterListWorkstationConfigsResponse--;
  return o;
}

void checkListWorkstationConfigsResponse(api.ListWorkstationConfigsResponse o) {
  buildCounterListWorkstationConfigsResponse++;
  if (buildCounterListWorkstationConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.unreachable!);
    checkUnnamed20(o.workstationConfigs!);
  }
  buildCounterListWorkstationConfigsResponse--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Workstation> buildUnnamed22() => [
  buildWorkstation(),
  buildWorkstation(),
];

void checkUnnamed22(core.List<api.Workstation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkstation(o[0]);
  checkWorkstation(o[1]);
}

core.int buildCounterListWorkstationsResponse = 0;
api.ListWorkstationsResponse buildListWorkstationsResponse() {
  final o = api.ListWorkstationsResponse();
  buildCounterListWorkstationsResponse++;
  if (buildCounterListWorkstationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed21();
    o.workstations = buildUnnamed22();
  }
  buildCounterListWorkstationsResponse--;
  return o;
}

void checkListWorkstationsResponse(api.ListWorkstationsResponse o) {
  buildCounterListWorkstationsResponse++;
  if (buildCounterListWorkstationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.unreachable!);
    checkUnnamed22(o.workstations!);
  }
  buildCounterListWorkstationsResponse--;
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

core.int buildCounterPersistentDirectory = 0;
api.PersistentDirectory buildPersistentDirectory() {
  final o = api.PersistentDirectory();
  buildCounterPersistentDirectory++;
  if (buildCounterPersistentDirectory < 3) {
    o.gcePd = buildGceRegionalPersistentDisk();
    o.mountPath = 'foo';
  }
  buildCounterPersistentDirectory--;
  return o;
}

void checkPersistentDirectory(api.PersistentDirectory o) {
  buildCounterPersistentDirectory++;
  if (buildCounterPersistentDirectory < 3) {
    checkGceRegionalPersistentDisk(o.gcePd!);
    unittest.expect(o.mountPath!, unittest.equals('foo'));
  }
  buildCounterPersistentDirectory--;
}

core.List<api.AuditConfig> buildUnnamed25() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed25(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed26() => [buildBinding(), buildBinding()];

void checkUnnamed26(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed25();
    o.bindings = buildUnnamed26();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed25(o.auditConfigs!);
    checkUnnamed26(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPortRange = 0;
api.PortRange buildPortRange() {
  final o = api.PortRange();
  buildCounterPortRange++;
  if (buildCounterPortRange < 3) {
    o.first = 42;
    o.last = 42;
  }
  buildCounterPortRange--;
  return o;
}

void checkPortRange(api.PortRange o) {
  buildCounterPortRange++;
  if (buildCounterPortRange < 3) {
    unittest.expect(o.first!, unittest.equals(42));
    unittest.expect(o.last!, unittest.equals(42));
  }
  buildCounterPortRange--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPrivateClusterConfig = 0;
api.PrivateClusterConfig buildPrivateClusterConfig() {
  final o = api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.allowedProjects = buildUnnamed27();
    o.clusterHostname = 'foo';
    o.enablePrivateEndpoint = true;
    o.serviceAttachmentUri = 'foo';
  }
  buildCounterPrivateClusterConfig--;
  return o;
}

void checkPrivateClusterConfig(api.PrivateClusterConfig o) {
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    checkUnnamed27(o.allowedProjects!);
    unittest.expect(o.clusterHostname!, unittest.equals('foo'));
    unittest.expect(o.enablePrivateEndpoint!, unittest.isTrue);
    unittest.expect(o.serviceAttachmentUri!, unittest.equals('foo'));
  }
  buildCounterPrivateClusterConfig--;
}

core.int buildCounterReadinessCheck = 0;
api.ReadinessCheck buildReadinessCheck() {
  final o = api.ReadinessCheck();
  buildCounterReadinessCheck++;
  if (buildCounterReadinessCheck < 3) {
    o.path = 'foo';
    o.port = 42;
  }
  buildCounterReadinessCheck--;
  return o;
}

void checkReadinessCheck(api.ReadinessCheck o) {
  buildCounterReadinessCheck++;
  if (buildCounterReadinessCheck < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
  }
  buildCounterReadinessCheck--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
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
    o.values = buildUnnamed28();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(o.consumeReservationType!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed28(o.values!);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterRuntimeHost = 0;
api.RuntimeHost buildRuntimeHost() {
  final o = api.RuntimeHost();
  buildCounterRuntimeHost++;
  if (buildCounterRuntimeHost < 3) {
    o.gceInstanceHost = buildGceInstanceHost();
  }
  buildCounterRuntimeHost--;
  return o;
}

void checkRuntimeHost(api.RuntimeHost o) {
  buildCounterRuntimeHost++;
  if (buildCounterRuntimeHost < 3) {
    checkGceInstanceHost(o.gceInstanceHost!);
  }
  buildCounterRuntimeHost--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStartWorkstationRequest = 0;
api.StartWorkstationRequest buildStartWorkstationRequest() {
  final o = api.StartWorkstationRequest();
  buildCounterStartWorkstationRequest++;
  if (buildCounterStartWorkstationRequest < 3) {
    o.boostConfig = 'foo';
    o.etag = 'foo';
    o.validateOnly = true;
  }
  buildCounterStartWorkstationRequest--;
  return o;
}

void checkStartWorkstationRequest(api.StartWorkstationRequest o) {
  buildCounterStartWorkstationRequest++;
  if (buildCounterStartWorkstationRequest < 3) {
    unittest.expect(o.boostConfig!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterStartWorkstationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed30() => [
  buildUnnamed29(),
  buildUnnamed29(),
];

void checkUnnamed30(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed29(o[0]);
  checkUnnamed29(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed30();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed30(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStopWorkstationRequest = 0;
api.StopWorkstationRequest buildStopWorkstationRequest() {
  final o = api.StopWorkstationRequest();
  buildCounterStopWorkstationRequest++;
  if (buildCounterStopWorkstationRequest < 3) {
    o.etag = 'foo';
    o.validateOnly = true;
  }
  buildCounterStopWorkstationRequest--;
  return o;
}

void checkStopWorkstationRequest(api.StopWorkstationRequest o) {
  buildCounterStopWorkstationRequest++;
  if (buildCounterStopWorkstationRequest < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterStopWorkstationRequest--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed31();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed31(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed32();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed32(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.WorkstationBoostConfig> buildUnnamed34() => [
  buildWorkstationBoostConfig(),
  buildWorkstationBoostConfig(),
];

void checkUnnamed34(core.List<api.WorkstationBoostConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkstationBoostConfig(o[0]);
  checkWorkstationBoostConfig(o[1]);
}

core.List<api.Status> buildUnnamed35() => [buildStatus(), buildStatus()];

void checkUnnamed35(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed37() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed37(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterWorkstation = 0;
api.Workstation buildWorkstation() {
  final o = api.Workstation();
  buildCounterWorkstation++;
  if (buildCounterWorkstation < 3) {
    o.annotations = buildUnnamed33();
    o.boostConfigs = buildUnnamed34();
    o.conditions = buildUnnamed35();
    o.createTime = 'foo';
    o.degraded = true;
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.env = buildUnnamed36();
    o.etag = 'foo';
    o.host = 'foo';
    o.kmsKey = 'foo';
    o.labels = buildUnnamed37();
    o.name = 'foo';
    o.reconciling = true;
    o.runtimeHost = buildRuntimeHost();
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.sourceWorkstation = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWorkstation--;
  return o;
}

void checkWorkstation(api.Workstation o) {
  buildCounterWorkstation++;
  if (buildCounterWorkstation < 3) {
    checkUnnamed33(o.annotations!);
    checkUnnamed34(o.boostConfigs!);
    checkUnnamed35(o.conditions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.degraded!, unittest.isTrue);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed36(o.env!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    checkUnnamed37(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkRuntimeHost(o.runtimeHost!);
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.sourceWorkstation!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWorkstation--;
}

core.int buildCounterWorkstationBoostConfig = 0;
api.WorkstationBoostConfig buildWorkstationBoostConfig() {
  final o = api.WorkstationBoostConfig();
  buildCounterWorkstationBoostConfig++;
  if (buildCounterWorkstationBoostConfig < 3) {
    o.id = 'foo';
    o.running = true;
  }
  buildCounterWorkstationBoostConfig--;
  return o;
}

void checkWorkstationBoostConfig(api.WorkstationBoostConfig o) {
  buildCounterWorkstationBoostConfig++;
  if (buildCounterWorkstationBoostConfig < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.running!, unittest.isTrue);
  }
  buildCounterWorkstationBoostConfig--;
}

core.Map<core.String, core.String> buildUnnamed38() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Status> buildUnnamed39() => [buildStatus(), buildStatus()];

void checkUnnamed39(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.Map<core.String, core.String> buildUnnamed40() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterWorkstationCluster = 0;
api.WorkstationCluster buildWorkstationCluster() {
  final o = api.WorkstationCluster();
  buildCounterWorkstationCluster++;
  if (buildCounterWorkstationCluster < 3) {
    o.annotations = buildUnnamed38();
    o.conditions = buildUnnamed39();
    o.controlPlaneIp = 'foo';
    o.createTime = 'foo';
    o.degraded = true;
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.domainConfig = buildDomainConfig();
    o.etag = 'foo';
    o.gatewayConfig = buildGatewayConfig();
    o.labels = buildUnnamed40();
    o.name = 'foo';
    o.network = 'foo';
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.reconciling = true;
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.subnetwork = 'foo';
    o.tags = buildUnnamed41();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWorkstationCluster--;
  return o;
}

void checkWorkstationCluster(api.WorkstationCluster o) {
  buildCounterWorkstationCluster++;
  if (buildCounterWorkstationCluster < 3) {
    checkUnnamed38(o.annotations!);
    checkUnnamed39(o.conditions!);
    unittest.expect(o.controlPlaneIp!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.degraded!, unittest.isTrue);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkDomainConfig(o.domainConfig!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGatewayConfig(o.gatewayConfig!);
    checkUnnamed40(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    checkPrivateClusterConfig(o.privateClusterConfig!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
    checkUnnamed41(o.tags!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWorkstationCluster--;
}

core.List<api.PortRange> buildUnnamed42() => [
  buildPortRange(),
  buildPortRange(),
];

void checkUnnamed42(core.List<api.PortRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPortRange(o[0]);
  checkPortRange(o[1]);
}

core.Map<core.String, core.String> buildUnnamed43() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed43(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Status> buildUnnamed44() => [buildStatus(), buildStatus()];

void checkUnnamed44(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.EphemeralDirectory> buildUnnamed45() => [
  buildEphemeralDirectory(),
  buildEphemeralDirectory(),
];

void checkUnnamed45(core.List<api.EphemeralDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEphemeralDirectory(o[0]);
  checkEphemeralDirectory(o[1]);
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PersistentDirectory> buildUnnamed47() => [
  buildPersistentDirectory(),
  buildPersistentDirectory(),
];

void checkUnnamed47(core.List<api.PersistentDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentDirectory(o[0]);
  checkPersistentDirectory(o[1]);
}

core.List<api.ReadinessCheck> buildUnnamed48() => [
  buildReadinessCheck(),
  buildReadinessCheck(),
];

void checkUnnamed48(core.List<api.ReadinessCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadinessCheck(o[0]);
  checkReadinessCheck(o[1]);
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWorkstationConfig = 0;
api.WorkstationConfig buildWorkstationConfig() {
  final o = api.WorkstationConfig();
  buildCounterWorkstationConfig++;
  if (buildCounterWorkstationConfig < 3) {
    o.allowedPorts = buildUnnamed42();
    o.annotations = buildUnnamed43();
    o.conditions = buildUnnamed44();
    o.container = buildContainer();
    o.createTime = 'foo';
    o.degraded = true;
    o.deleteTime = 'foo';
    o.disableTcpConnections = true;
    o.displayName = 'foo';
    o.enableAuditAgent = true;
    o.encryptionKey = buildCustomerEncryptionKey();
    o.ephemeralDirectories = buildUnnamed45();
    o.etag = 'foo';
    o.grantWorkstationAdminRoleOnCreate = true;
    o.host = buildHost();
    o.httpOptions = buildHttpOptions();
    o.idleTimeout = 'foo';
    o.labels = buildUnnamed46();
    o.maxUsableWorkstations = 42;
    o.name = 'foo';
    o.persistentDirectories = buildUnnamed47();
    o.readinessChecks = buildUnnamed48();
    o.reconciling = true;
    o.replicaZones = buildUnnamed49();
    o.runningTimeout = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWorkstationConfig--;
  return o;
}

void checkWorkstationConfig(api.WorkstationConfig o) {
  buildCounterWorkstationConfig++;
  if (buildCounterWorkstationConfig < 3) {
    checkUnnamed42(o.allowedPorts!);
    checkUnnamed43(o.annotations!);
    checkUnnamed44(o.conditions!);
    checkContainer(o.container!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.degraded!, unittest.isTrue);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.disableTcpConnections!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enableAuditAgent!, unittest.isTrue);
    checkCustomerEncryptionKey(o.encryptionKey!);
    checkUnnamed45(o.ephemeralDirectories!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.grantWorkstationAdminRoleOnCreate!, unittest.isTrue);
    checkHost(o.host!);
    checkHttpOptions(o.httpOptions!);
    unittest.expect(o.idleTimeout!, unittest.equals('foo'));
    checkUnnamed46(o.labels!);
    unittest.expect(o.maxUsableWorkstations!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed47(o.persistentDirectories!);
    checkUnnamed48(o.readinessChecks!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkUnnamed49(o.replicaZones!);
    unittest.expect(o.runningTimeout!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWorkstationConfig--;
}

void main() {
  unittest.group('obj-schema-Accelerator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccelerator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Accelerator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccelerator(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
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

  unittest.group('obj-schema-BoostConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBoostConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BoostConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBoostConfig(od);
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

  unittest.group('obj-schema-Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Container.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContainer(od);
    });
  });

  unittest.group('obj-schema-CustomerEncryptionKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerEncryptionKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerEncryptionKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomerEncryptionKey(od);
    });
  });

  unittest.group('obj-schema-DomainConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomainConfig(od);
    });
  });

  unittest.group('obj-schema-EphemeralDirectory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEphemeralDirectory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EphemeralDirectory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEphemeralDirectory(od);
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

  unittest.group('obj-schema-GatewayConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewayConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGatewayConfig(od);
    });
  });

  unittest.group('obj-schema-GceConfidentialInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceConfidentialInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceConfidentialInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceConfidentialInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-GceInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceInstance(od);
    });
  });

  unittest.group('obj-schema-GceInstanceHost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceInstanceHost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceInstanceHost.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceInstanceHost(od);
    });
  });

  unittest.group('obj-schema-GcePersistentDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcePersistentDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcePersistentDisk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcePersistentDisk(od);
    });
  });

  unittest.group('obj-schema-GceRegionalPersistentDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceRegionalPersistentDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceRegionalPersistentDisk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceRegionalPersistentDisk(od);
    });
  });

  unittest.group('obj-schema-GceShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceShieldedInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceShieldedInstanceConfig(od);
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

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-Host', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Host.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHost(od);
    });
  });

  unittest.group('obj-schema-HttpOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOptions(od);
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

  unittest.group('obj-schema-ListUsableWorkstationConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsableWorkstationConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsableWorkstationConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUsableWorkstationConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsableWorkstationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsableWorkstationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsableWorkstationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUsableWorkstationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkstationClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkstationClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkstationClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkstationClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkstationConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkstationConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkstationConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkstationConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkstationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkstationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkstationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkstationsResponse(od);
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

  unittest.group('obj-schema-PersistentDirectory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistentDirectory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistentDirectory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPersistentDirectory(od);
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

  unittest.group('obj-schema-PortRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPortRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PortRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPortRange(od);
    });
  });

  unittest.group('obj-schema-PrivateClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrivateClusterConfig(od);
    });
  });

  unittest.group('obj-schema-ReadinessCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadinessCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadinessCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReadinessCheck(od);
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

  unittest.group('obj-schema-RuntimeHost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeHost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeHost.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuntimeHost(od);
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

  unittest.group('obj-schema-StartWorkstationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartWorkstationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartWorkstationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartWorkstationRequest(od);
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

  unittest.group('obj-schema-StopWorkstationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopWorkstationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopWorkstationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopWorkstationRequest(od);
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

  unittest.group('obj-schema-Workstation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkstation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Workstation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkstation(od);
    });
  });

  unittest.group('obj-schema-WorkstationBoostConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkstationBoostConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkstationBoostConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkstationBoostConfig(od);
    });
  });

  unittest.group('obj-schema-WorkstationCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkstationCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkstationCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkstationCluster(od);
    });
  });

  unittest.group('obj-schema-WorkstationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkstationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkstationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkstationConfig(od);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudWorkstationsApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudWorkstationsApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudWorkstationsApi(mock).projects.locations.operations;
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
      final res = api.CloudWorkstationsApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsWorkstationClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(mock).projects.locations.workstationClusters;
      final arg_request = buildWorkstationCluster();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_workstationClusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkstationCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkstationCluster(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['workstationClusterId']!.first,
            unittest.equals(arg_workstationClusterId),
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
        validateOnly: arg_validateOnly,
        workstationClusterId: arg_workstationClusterId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(mock).projects.locations.workstationClusters;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        force: arg_force,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(mock).projects.locations.workstationClusters;
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
          final resp = convert.json.encode(buildWorkstationCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkstationCluster(response as api.WorkstationCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(mock).projects.locations.workstationClusters;
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
            buildListWorkstationClustersResponse(),
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
      checkListWorkstationClustersResponse(
        response as api.ListWorkstationClustersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(mock).projects.locations.workstationClusters;
      final arg_request = buildWorkstationCluster();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkstationCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkstationCluster(obj);

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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsWorkstationClustersWorkstationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
      final arg_request = buildWorkstationConfig();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_workstationConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkstationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkstationConfig(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['workstationConfigId']!.first,
            unittest.equals(arg_workstationConfigId),
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
        validateOnly: arg_validateOnly,
        workstationConfigId: arg_workstationConfigId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        force: arg_force,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
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
          final resp = convert.json.encode(buildWorkstationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkstationConfig(response as api.WorkstationConfig);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
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
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
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
            buildListWorkstationConfigsResponse(),
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
      checkListWorkstationConfigsResponse(
        response as api.ListWorkstationConfigsResponse,
      );
    });

    unittest.test('method--listUsable', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
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
          final resp = convert.json.encode(
            buildListUsableWorkstationConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listUsable(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListUsableWorkstationConfigsResponse(
        response as api.ListUsableWorkstationConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
      final arg_request = buildWorkstationConfig();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkstationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkstationConfig(obj);

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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
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

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudWorkstationsApi(
            mock,
          ).projects.locations.workstationClusters.workstationConfigs;
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
  });

  unittest.group(
    'resource-ProjectsLocationsWorkstationClustersWorkstationConfigsWorkstationsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
        final arg_request = buildWorkstation();
        final arg_parent = 'foo';
        final arg_validateOnly = true;
        final arg_workstationId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.Workstation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkWorkstation(obj);

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
              queryMap['validateOnly']!.first,
              unittest.equals('$arg_validateOnly'),
            );
            unittest.expect(
              queryMap['workstationId']!.first,
              unittest.equals(arg_workstationId),
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
          validateOnly: arg_validateOnly,
          workstationId: arg_workstationId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
        final arg_name = 'foo';
        final arg_etag = 'foo';
        final arg_validateOnly = true;
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
            unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
            unittest.expect(
              queryMap['validateOnly']!.first,
              unittest.equals('$arg_validateOnly'),
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
          validateOnly: arg_validateOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--generateAccessToken', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
        final arg_request = buildGenerateAccessTokenRequest();
        final arg_workstation = 'foo';
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
            final resp = convert.json.encode(
              buildGenerateAccessTokenResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.generateAccessToken(
          arg_request,
          arg_workstation,
          $fields: arg_$fields,
        );
        checkGenerateAccessTokenResponse(
          response as api.GenerateAccessTokenResponse,
        );
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
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
            final resp = convert.json.encode(buildWorkstation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkWorkstation(response as api.Workstation);
      });

      unittest.test('method--getIamPolicy', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
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
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
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
            final resp = convert.json.encode(buildListWorkstationsResponse());
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
        checkListWorkstationsResponse(response as api.ListWorkstationsResponse);
      });

      unittest.test('method--listUsable', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
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
            final resp = convert.json.encode(
              buildListUsableWorkstationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.listUsable(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListUsableWorkstationsResponse(
          response as api.ListUsableWorkstationsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
        final arg_request = buildWorkstation();
        final arg_name = 'foo';
        final arg_allowMissing = true;
        final arg_updateMask = 'foo';
        final arg_validateOnly = true;
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.Workstation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkWorkstation(obj);

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
              queryMap['allowMissing']!.first,
              unittest.equals('$arg_allowMissing'),
            );
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          allowMissing: arg_allowMissing,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--setIamPolicy', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
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
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
        final arg_request = buildStartWorkstationRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.StartWorkstationRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkStartWorkstationRequest(obj);

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
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
        final arg_request = buildStopWorkstationRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.StopWorkstationRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkStopWorkstationRequest(obj);

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
        final res =
            api.CloudWorkstationsApi(mock)
                .projects
                .locations
                .workstationClusters
                .workstationConfigs
                .workstations;
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
    },
  );
}
