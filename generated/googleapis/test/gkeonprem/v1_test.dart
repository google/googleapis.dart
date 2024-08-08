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

import 'package:googleapis/gkeonprem/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ClusterUser> buildUnnamed0() => [
      buildClusterUser(),
      buildClusterUser(),
    ];

void checkUnnamed0(core.List<api.ClusterUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUser(o[0]);
  checkClusterUser(o[1]);
}

core.int buildCounterAuthorization = 0;
api.Authorization buildAuthorization() {
  final o = api.Authorization();
  buildCounterAuthorization++;
  if (buildCounterAuthorization < 3) {
    o.adminUsers = buildUnnamed0();
  }
  buildCounterAuthorization--;
  return o;
}

void checkAuthorization(api.Authorization o) {
  buildCounterAuthorization++;
  if (buildCounterAuthorization < 3) {
    checkUnnamed0(o.adminUsers!);
  }
  buildCounterAuthorization--;
}

core.int buildCounterBareMetalAdminApiServerArgument = 0;
api.BareMetalAdminApiServerArgument buildBareMetalAdminApiServerArgument() {
  final o = api.BareMetalAdminApiServerArgument();
  buildCounterBareMetalAdminApiServerArgument++;
  if (buildCounterBareMetalAdminApiServerArgument < 3) {
    o.argument = 'foo';
    o.value = 'foo';
  }
  buildCounterBareMetalAdminApiServerArgument--;
  return o;
}

void checkBareMetalAdminApiServerArgument(
    api.BareMetalAdminApiServerArgument o) {
  buildCounterBareMetalAdminApiServerArgument++;
  if (buildCounterBareMetalAdminApiServerArgument < 3) {
    unittest.expect(
      o.argument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalAdminApiServerArgument--;
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

core.int buildCounterBareMetalAdminCluster = 0;
api.BareMetalAdminCluster buildBareMetalAdminCluster() {
  final o = api.BareMetalAdminCluster();
  buildCounterBareMetalAdminCluster++;
  if (buildCounterBareMetalAdminCluster < 3) {
    o.annotations = buildUnnamed1();
    o.bareMetalVersion = 'foo';
    o.binaryAuthorization = buildBinaryAuthorization();
    o.clusterOperations = buildBareMetalAdminClusterOperationsConfig();
    o.controlPlane = buildBareMetalAdminControlPlaneConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.endpoint = 'foo';
    o.etag = 'foo';
    o.fleet = buildFleet();
    o.loadBalancer = buildBareMetalAdminLoadBalancerConfig();
    o.localName = 'foo';
    o.maintenanceConfig = buildBareMetalAdminMaintenanceConfig();
    o.maintenanceStatus = buildBareMetalAdminMaintenanceStatus();
    o.name = 'foo';
    o.networkConfig = buildBareMetalAdminNetworkConfig();
    o.nodeAccessConfig = buildBareMetalAdminNodeAccessConfig();
    o.nodeConfig = buildBareMetalAdminWorkloadNodeConfig();
    o.osEnvironmentConfig = buildBareMetalAdminOsEnvironmentConfig();
    o.proxy = buildBareMetalAdminProxyConfig();
    o.reconciling = true;
    o.securityConfig = buildBareMetalAdminSecurityConfig();
    o.state = 'foo';
    o.status = buildResourceStatus();
    o.storage = buildBareMetalAdminStorageConfig();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.validationCheck = buildValidationCheck();
  }
  buildCounterBareMetalAdminCluster--;
  return o;
}

void checkBareMetalAdminCluster(api.BareMetalAdminCluster o) {
  buildCounterBareMetalAdminCluster++;
  if (buildCounterBareMetalAdminCluster < 3) {
    checkUnnamed1(o.annotations!);
    unittest.expect(
      o.bareMetalVersion!,
      unittest.equals('foo'),
    );
    checkBinaryAuthorization(o.binaryAuthorization!);
    checkBareMetalAdminClusterOperationsConfig(o.clusterOperations!);
    checkBareMetalAdminControlPlaneConfig(o.controlPlane!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkFleet(o.fleet!);
    checkBareMetalAdminLoadBalancerConfig(o.loadBalancer!);
    unittest.expect(
      o.localName!,
      unittest.equals('foo'),
    );
    checkBareMetalAdminMaintenanceConfig(o.maintenanceConfig!);
    checkBareMetalAdminMaintenanceStatus(o.maintenanceStatus!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkBareMetalAdminNetworkConfig(o.networkConfig!);
    checkBareMetalAdminNodeAccessConfig(o.nodeAccessConfig!);
    checkBareMetalAdminWorkloadNodeConfig(o.nodeConfig!);
    checkBareMetalAdminOsEnvironmentConfig(o.osEnvironmentConfig!);
    checkBareMetalAdminProxyConfig(o.proxy!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkBareMetalAdminSecurityConfig(o.securityConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
    checkBareMetalAdminStorageConfig(o.storage!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkValidationCheck(o.validationCheck!);
  }
  buildCounterBareMetalAdminCluster--;
}

core.int buildCounterBareMetalAdminClusterOperationsConfig = 0;
api.BareMetalAdminClusterOperationsConfig
    buildBareMetalAdminClusterOperationsConfig() {
  final o = api.BareMetalAdminClusterOperationsConfig();
  buildCounterBareMetalAdminClusterOperationsConfig++;
  if (buildCounterBareMetalAdminClusterOperationsConfig < 3) {
    o.enableApplicationLogs = true;
  }
  buildCounterBareMetalAdminClusterOperationsConfig--;
  return o;
}

void checkBareMetalAdminClusterOperationsConfig(
    api.BareMetalAdminClusterOperationsConfig o) {
  buildCounterBareMetalAdminClusterOperationsConfig++;
  if (buildCounterBareMetalAdminClusterOperationsConfig < 3) {
    unittest.expect(o.enableApplicationLogs!, unittest.isTrue);
  }
  buildCounterBareMetalAdminClusterOperationsConfig--;
}

core.List<api.BareMetalAdminApiServerArgument> buildUnnamed2() => [
      buildBareMetalAdminApiServerArgument(),
      buildBareMetalAdminApiServerArgument(),
    ];

void checkUnnamed2(core.List<api.BareMetalAdminApiServerArgument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalAdminApiServerArgument(o[0]);
  checkBareMetalAdminApiServerArgument(o[1]);
}

core.int buildCounterBareMetalAdminControlPlaneConfig = 0;
api.BareMetalAdminControlPlaneConfig buildBareMetalAdminControlPlaneConfig() {
  final o = api.BareMetalAdminControlPlaneConfig();
  buildCounterBareMetalAdminControlPlaneConfig++;
  if (buildCounterBareMetalAdminControlPlaneConfig < 3) {
    o.apiServerArgs = buildUnnamed2();
    o.controlPlaneNodePoolConfig =
        buildBareMetalAdminControlPlaneNodePoolConfig();
  }
  buildCounterBareMetalAdminControlPlaneConfig--;
  return o;
}

void checkBareMetalAdminControlPlaneConfig(
    api.BareMetalAdminControlPlaneConfig o) {
  buildCounterBareMetalAdminControlPlaneConfig++;
  if (buildCounterBareMetalAdminControlPlaneConfig < 3) {
    checkUnnamed2(o.apiServerArgs!);
    checkBareMetalAdminControlPlaneNodePoolConfig(
        o.controlPlaneNodePoolConfig!);
  }
  buildCounterBareMetalAdminControlPlaneConfig--;
}

core.int buildCounterBareMetalAdminControlPlaneNodePoolConfig = 0;
api.BareMetalAdminControlPlaneNodePoolConfig
    buildBareMetalAdminControlPlaneNodePoolConfig() {
  final o = api.BareMetalAdminControlPlaneNodePoolConfig();
  buildCounterBareMetalAdminControlPlaneNodePoolConfig++;
  if (buildCounterBareMetalAdminControlPlaneNodePoolConfig < 3) {
    o.nodePoolConfig = buildBareMetalNodePoolConfig();
  }
  buildCounterBareMetalAdminControlPlaneNodePoolConfig--;
  return o;
}

void checkBareMetalAdminControlPlaneNodePoolConfig(
    api.BareMetalAdminControlPlaneNodePoolConfig o) {
  buildCounterBareMetalAdminControlPlaneNodePoolConfig++;
  if (buildCounterBareMetalAdminControlPlaneNodePoolConfig < 3) {
    checkBareMetalNodePoolConfig(o.nodePoolConfig!);
  }
  buildCounterBareMetalAdminControlPlaneNodePoolConfig--;
}

core.int buildCounterBareMetalAdminDrainedMachine = 0;
api.BareMetalAdminDrainedMachine buildBareMetalAdminDrainedMachine() {
  final o = api.BareMetalAdminDrainedMachine();
  buildCounterBareMetalAdminDrainedMachine++;
  if (buildCounterBareMetalAdminDrainedMachine < 3) {
    o.nodeIp = 'foo';
  }
  buildCounterBareMetalAdminDrainedMachine--;
  return o;
}

void checkBareMetalAdminDrainedMachine(api.BareMetalAdminDrainedMachine o) {
  buildCounterBareMetalAdminDrainedMachine++;
  if (buildCounterBareMetalAdminDrainedMachine < 3) {
    unittest.expect(
      o.nodeIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalAdminDrainedMachine--;
}

core.int buildCounterBareMetalAdminDrainingMachine = 0;
api.BareMetalAdminDrainingMachine buildBareMetalAdminDrainingMachine() {
  final o = api.BareMetalAdminDrainingMachine();
  buildCounterBareMetalAdminDrainingMachine++;
  if (buildCounterBareMetalAdminDrainingMachine < 3) {
    o.nodeIp = 'foo';
    o.podCount = 42;
  }
  buildCounterBareMetalAdminDrainingMachine--;
  return o;
}

void checkBareMetalAdminDrainingMachine(api.BareMetalAdminDrainingMachine o) {
  buildCounterBareMetalAdminDrainingMachine++;
  if (buildCounterBareMetalAdminDrainingMachine < 3) {
    unittest.expect(
      o.nodeIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podCount!,
      unittest.equals(42),
    );
  }
  buildCounterBareMetalAdminDrainingMachine--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterBareMetalAdminIslandModeCidrConfig = 0;
api.BareMetalAdminIslandModeCidrConfig
    buildBareMetalAdminIslandModeCidrConfig() {
  final o = api.BareMetalAdminIslandModeCidrConfig();
  buildCounterBareMetalAdminIslandModeCidrConfig++;
  if (buildCounterBareMetalAdminIslandModeCidrConfig < 3) {
    o.podAddressCidrBlocks = buildUnnamed3();
    o.serviceAddressCidrBlocks = buildUnnamed4();
  }
  buildCounterBareMetalAdminIslandModeCidrConfig--;
  return o;
}

void checkBareMetalAdminIslandModeCidrConfig(
    api.BareMetalAdminIslandModeCidrConfig o) {
  buildCounterBareMetalAdminIslandModeCidrConfig++;
  if (buildCounterBareMetalAdminIslandModeCidrConfig < 3) {
    checkUnnamed3(o.podAddressCidrBlocks!);
    checkUnnamed4(o.serviceAddressCidrBlocks!);
  }
  buildCounterBareMetalAdminIslandModeCidrConfig--;
}

core.int buildCounterBareMetalAdminLoadBalancerConfig = 0;
api.BareMetalAdminLoadBalancerConfig buildBareMetalAdminLoadBalancerConfig() {
  final o = api.BareMetalAdminLoadBalancerConfig();
  buildCounterBareMetalAdminLoadBalancerConfig++;
  if (buildCounterBareMetalAdminLoadBalancerConfig < 3) {
    o.manualLbConfig = buildBareMetalAdminManualLbConfig();
    o.portConfig = buildBareMetalAdminPortConfig();
    o.vipConfig = buildBareMetalAdminVipConfig();
  }
  buildCounterBareMetalAdminLoadBalancerConfig--;
  return o;
}

void checkBareMetalAdminLoadBalancerConfig(
    api.BareMetalAdminLoadBalancerConfig o) {
  buildCounterBareMetalAdminLoadBalancerConfig++;
  if (buildCounterBareMetalAdminLoadBalancerConfig < 3) {
    checkBareMetalAdminManualLbConfig(o.manualLbConfig!);
    checkBareMetalAdminPortConfig(o.portConfig!);
    checkBareMetalAdminVipConfig(o.vipConfig!);
  }
  buildCounterBareMetalAdminLoadBalancerConfig--;
}

core.List<api.BareMetalAdminDrainedMachine> buildUnnamed5() => [
      buildBareMetalAdminDrainedMachine(),
      buildBareMetalAdminDrainedMachine(),
    ];

void checkUnnamed5(core.List<api.BareMetalAdminDrainedMachine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalAdminDrainedMachine(o[0]);
  checkBareMetalAdminDrainedMachine(o[1]);
}

core.List<api.BareMetalAdminDrainingMachine> buildUnnamed6() => [
      buildBareMetalAdminDrainingMachine(),
      buildBareMetalAdminDrainingMachine(),
    ];

void checkUnnamed6(core.List<api.BareMetalAdminDrainingMachine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalAdminDrainingMachine(o[0]);
  checkBareMetalAdminDrainingMachine(o[1]);
}

core.int buildCounterBareMetalAdminMachineDrainStatus = 0;
api.BareMetalAdminMachineDrainStatus buildBareMetalAdminMachineDrainStatus() {
  final o = api.BareMetalAdminMachineDrainStatus();
  buildCounterBareMetalAdminMachineDrainStatus++;
  if (buildCounterBareMetalAdminMachineDrainStatus < 3) {
    o.drainedMachines = buildUnnamed5();
    o.drainingMachines = buildUnnamed6();
  }
  buildCounterBareMetalAdminMachineDrainStatus--;
  return o;
}

void checkBareMetalAdminMachineDrainStatus(
    api.BareMetalAdminMachineDrainStatus o) {
  buildCounterBareMetalAdminMachineDrainStatus++;
  if (buildCounterBareMetalAdminMachineDrainStatus < 3) {
    checkUnnamed5(o.drainedMachines!);
    checkUnnamed6(o.drainingMachines!);
  }
  buildCounterBareMetalAdminMachineDrainStatus--;
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

core.int buildCounterBareMetalAdminMaintenanceConfig = 0;
api.BareMetalAdminMaintenanceConfig buildBareMetalAdminMaintenanceConfig() {
  final o = api.BareMetalAdminMaintenanceConfig();
  buildCounterBareMetalAdminMaintenanceConfig++;
  if (buildCounterBareMetalAdminMaintenanceConfig < 3) {
    o.maintenanceAddressCidrBlocks = buildUnnamed7();
  }
  buildCounterBareMetalAdminMaintenanceConfig--;
  return o;
}

void checkBareMetalAdminMaintenanceConfig(
    api.BareMetalAdminMaintenanceConfig o) {
  buildCounterBareMetalAdminMaintenanceConfig++;
  if (buildCounterBareMetalAdminMaintenanceConfig < 3) {
    checkUnnamed7(o.maintenanceAddressCidrBlocks!);
  }
  buildCounterBareMetalAdminMaintenanceConfig--;
}

core.int buildCounterBareMetalAdminMaintenanceStatus = 0;
api.BareMetalAdminMaintenanceStatus buildBareMetalAdminMaintenanceStatus() {
  final o = api.BareMetalAdminMaintenanceStatus();
  buildCounterBareMetalAdminMaintenanceStatus++;
  if (buildCounterBareMetalAdminMaintenanceStatus < 3) {
    o.machineDrainStatus = buildBareMetalAdminMachineDrainStatus();
  }
  buildCounterBareMetalAdminMaintenanceStatus--;
  return o;
}

void checkBareMetalAdminMaintenanceStatus(
    api.BareMetalAdminMaintenanceStatus o) {
  buildCounterBareMetalAdminMaintenanceStatus++;
  if (buildCounterBareMetalAdminMaintenanceStatus < 3) {
    checkBareMetalAdminMachineDrainStatus(o.machineDrainStatus!);
  }
  buildCounterBareMetalAdminMaintenanceStatus--;
}

core.int buildCounterBareMetalAdminManualLbConfig = 0;
api.BareMetalAdminManualLbConfig buildBareMetalAdminManualLbConfig() {
  final o = api.BareMetalAdminManualLbConfig();
  buildCounterBareMetalAdminManualLbConfig++;
  if (buildCounterBareMetalAdminManualLbConfig < 3) {
    o.enabled = true;
  }
  buildCounterBareMetalAdminManualLbConfig--;
  return o;
}

void checkBareMetalAdminManualLbConfig(api.BareMetalAdminManualLbConfig o) {
  buildCounterBareMetalAdminManualLbConfig++;
  if (buildCounterBareMetalAdminManualLbConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBareMetalAdminManualLbConfig--;
}

core.int buildCounterBareMetalAdminNetworkConfig = 0;
api.BareMetalAdminNetworkConfig buildBareMetalAdminNetworkConfig() {
  final o = api.BareMetalAdminNetworkConfig();
  buildCounterBareMetalAdminNetworkConfig++;
  if (buildCounterBareMetalAdminNetworkConfig < 3) {
    o.islandModeCidr = buildBareMetalAdminIslandModeCidrConfig();
  }
  buildCounterBareMetalAdminNetworkConfig--;
  return o;
}

void checkBareMetalAdminNetworkConfig(api.BareMetalAdminNetworkConfig o) {
  buildCounterBareMetalAdminNetworkConfig++;
  if (buildCounterBareMetalAdminNetworkConfig < 3) {
    checkBareMetalAdminIslandModeCidrConfig(o.islandModeCidr!);
  }
  buildCounterBareMetalAdminNetworkConfig--;
}

core.int buildCounterBareMetalAdminNodeAccessConfig = 0;
api.BareMetalAdminNodeAccessConfig buildBareMetalAdminNodeAccessConfig() {
  final o = api.BareMetalAdminNodeAccessConfig();
  buildCounterBareMetalAdminNodeAccessConfig++;
  if (buildCounterBareMetalAdminNodeAccessConfig < 3) {
    o.loginUser = 'foo';
  }
  buildCounterBareMetalAdminNodeAccessConfig--;
  return o;
}

void checkBareMetalAdminNodeAccessConfig(api.BareMetalAdminNodeAccessConfig o) {
  buildCounterBareMetalAdminNodeAccessConfig++;
  if (buildCounterBareMetalAdminNodeAccessConfig < 3) {
    unittest.expect(
      o.loginUser!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalAdminNodeAccessConfig--;
}

core.int buildCounterBareMetalAdminOsEnvironmentConfig = 0;
api.BareMetalAdminOsEnvironmentConfig buildBareMetalAdminOsEnvironmentConfig() {
  final o = api.BareMetalAdminOsEnvironmentConfig();
  buildCounterBareMetalAdminOsEnvironmentConfig++;
  if (buildCounterBareMetalAdminOsEnvironmentConfig < 3) {
    o.packageRepoExcluded = true;
  }
  buildCounterBareMetalAdminOsEnvironmentConfig--;
  return o;
}

void checkBareMetalAdminOsEnvironmentConfig(
    api.BareMetalAdminOsEnvironmentConfig o) {
  buildCounterBareMetalAdminOsEnvironmentConfig++;
  if (buildCounterBareMetalAdminOsEnvironmentConfig < 3) {
    unittest.expect(o.packageRepoExcluded!, unittest.isTrue);
  }
  buildCounterBareMetalAdminOsEnvironmentConfig--;
}

core.int buildCounterBareMetalAdminPortConfig = 0;
api.BareMetalAdminPortConfig buildBareMetalAdminPortConfig() {
  final o = api.BareMetalAdminPortConfig();
  buildCounterBareMetalAdminPortConfig++;
  if (buildCounterBareMetalAdminPortConfig < 3) {
    o.controlPlaneLoadBalancerPort = 42;
  }
  buildCounterBareMetalAdminPortConfig--;
  return o;
}

void checkBareMetalAdminPortConfig(api.BareMetalAdminPortConfig o) {
  buildCounterBareMetalAdminPortConfig++;
  if (buildCounterBareMetalAdminPortConfig < 3) {
    unittest.expect(
      o.controlPlaneLoadBalancerPort!,
      unittest.equals(42),
    );
  }
  buildCounterBareMetalAdminPortConfig--;
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

core.int buildCounterBareMetalAdminProxyConfig = 0;
api.BareMetalAdminProxyConfig buildBareMetalAdminProxyConfig() {
  final o = api.BareMetalAdminProxyConfig();
  buildCounterBareMetalAdminProxyConfig++;
  if (buildCounterBareMetalAdminProxyConfig < 3) {
    o.noProxy = buildUnnamed8();
    o.uri = 'foo';
  }
  buildCounterBareMetalAdminProxyConfig--;
  return o;
}

void checkBareMetalAdminProxyConfig(api.BareMetalAdminProxyConfig o) {
  buildCounterBareMetalAdminProxyConfig++;
  if (buildCounterBareMetalAdminProxyConfig < 3) {
    checkUnnamed8(o.noProxy!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalAdminProxyConfig--;
}

core.int buildCounterBareMetalAdminSecurityConfig = 0;
api.BareMetalAdminSecurityConfig buildBareMetalAdminSecurityConfig() {
  final o = api.BareMetalAdminSecurityConfig();
  buildCounterBareMetalAdminSecurityConfig++;
  if (buildCounterBareMetalAdminSecurityConfig < 3) {
    o.authorization = buildAuthorization();
  }
  buildCounterBareMetalAdminSecurityConfig--;
  return o;
}

void checkBareMetalAdminSecurityConfig(api.BareMetalAdminSecurityConfig o) {
  buildCounterBareMetalAdminSecurityConfig++;
  if (buildCounterBareMetalAdminSecurityConfig < 3) {
    checkAuthorization(o.authorization!);
  }
  buildCounterBareMetalAdminSecurityConfig--;
}

core.int buildCounterBareMetalAdminStorageConfig = 0;
api.BareMetalAdminStorageConfig buildBareMetalAdminStorageConfig() {
  final o = api.BareMetalAdminStorageConfig();
  buildCounterBareMetalAdminStorageConfig++;
  if (buildCounterBareMetalAdminStorageConfig < 3) {
    o.lvpNodeMountsConfig = buildBareMetalLvpConfig();
    o.lvpShareConfig = buildBareMetalLvpShareConfig();
  }
  buildCounterBareMetalAdminStorageConfig--;
  return o;
}

void checkBareMetalAdminStorageConfig(api.BareMetalAdminStorageConfig o) {
  buildCounterBareMetalAdminStorageConfig++;
  if (buildCounterBareMetalAdminStorageConfig < 3) {
    checkBareMetalLvpConfig(o.lvpNodeMountsConfig!);
    checkBareMetalLvpShareConfig(o.lvpShareConfig!);
  }
  buildCounterBareMetalAdminStorageConfig--;
}

core.int buildCounterBareMetalAdminVipConfig = 0;
api.BareMetalAdminVipConfig buildBareMetalAdminVipConfig() {
  final o = api.BareMetalAdminVipConfig();
  buildCounterBareMetalAdminVipConfig++;
  if (buildCounterBareMetalAdminVipConfig < 3) {
    o.controlPlaneVip = 'foo';
  }
  buildCounterBareMetalAdminVipConfig--;
  return o;
}

void checkBareMetalAdminVipConfig(api.BareMetalAdminVipConfig o) {
  buildCounterBareMetalAdminVipConfig++;
  if (buildCounterBareMetalAdminVipConfig < 3) {
    unittest.expect(
      o.controlPlaneVip!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalAdminVipConfig--;
}

core.int buildCounterBareMetalAdminWorkloadNodeConfig = 0;
api.BareMetalAdminWorkloadNodeConfig buildBareMetalAdminWorkloadNodeConfig() {
  final o = api.BareMetalAdminWorkloadNodeConfig();
  buildCounterBareMetalAdminWorkloadNodeConfig++;
  if (buildCounterBareMetalAdminWorkloadNodeConfig < 3) {
    o.maxPodsPerNode = 'foo';
  }
  buildCounterBareMetalAdminWorkloadNodeConfig--;
  return o;
}

void checkBareMetalAdminWorkloadNodeConfig(
    api.BareMetalAdminWorkloadNodeConfig o) {
  buildCounterBareMetalAdminWorkloadNodeConfig++;
  if (buildCounterBareMetalAdminWorkloadNodeConfig < 3) {
    unittest.expect(
      o.maxPodsPerNode!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalAdminWorkloadNodeConfig--;
}

core.int buildCounterBareMetalApiServerArgument = 0;
api.BareMetalApiServerArgument buildBareMetalApiServerArgument() {
  final o = api.BareMetalApiServerArgument();
  buildCounterBareMetalApiServerArgument++;
  if (buildCounterBareMetalApiServerArgument < 3) {
    o.argument = 'foo';
    o.value = 'foo';
  }
  buildCounterBareMetalApiServerArgument--;
  return o;
}

void checkBareMetalApiServerArgument(api.BareMetalApiServerArgument o) {
  buildCounterBareMetalApiServerArgument++;
  if (buildCounterBareMetalApiServerArgument < 3) {
    unittest.expect(
      o.argument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalApiServerArgument--;
}

core.List<api.BareMetalLoadBalancerAddressPool> buildUnnamed9() => [
      buildBareMetalLoadBalancerAddressPool(),
      buildBareMetalLoadBalancerAddressPool(),
    ];

void checkUnnamed9(core.List<api.BareMetalLoadBalancerAddressPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalLoadBalancerAddressPool(o[0]);
  checkBareMetalLoadBalancerAddressPool(o[1]);
}

core.List<api.BareMetalBgpPeerConfig> buildUnnamed10() => [
      buildBareMetalBgpPeerConfig(),
      buildBareMetalBgpPeerConfig(),
    ];

void checkUnnamed10(core.List<api.BareMetalBgpPeerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalBgpPeerConfig(o[0]);
  checkBareMetalBgpPeerConfig(o[1]);
}

core.int buildCounterBareMetalBgpLbConfig = 0;
api.BareMetalBgpLbConfig buildBareMetalBgpLbConfig() {
  final o = api.BareMetalBgpLbConfig();
  buildCounterBareMetalBgpLbConfig++;
  if (buildCounterBareMetalBgpLbConfig < 3) {
    o.addressPools = buildUnnamed9();
    o.asn = 'foo';
    o.bgpPeerConfigs = buildUnnamed10();
    o.loadBalancerNodePoolConfig = buildBareMetalLoadBalancerNodePoolConfig();
  }
  buildCounterBareMetalBgpLbConfig--;
  return o;
}

void checkBareMetalBgpLbConfig(api.BareMetalBgpLbConfig o) {
  buildCounterBareMetalBgpLbConfig++;
  if (buildCounterBareMetalBgpLbConfig < 3) {
    checkUnnamed9(o.addressPools!);
    unittest.expect(
      o.asn!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.bgpPeerConfigs!);
    checkBareMetalLoadBalancerNodePoolConfig(o.loadBalancerNodePoolConfig!);
  }
  buildCounterBareMetalBgpLbConfig--;
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

core.int buildCounterBareMetalBgpPeerConfig = 0;
api.BareMetalBgpPeerConfig buildBareMetalBgpPeerConfig() {
  final o = api.BareMetalBgpPeerConfig();
  buildCounterBareMetalBgpPeerConfig++;
  if (buildCounterBareMetalBgpPeerConfig < 3) {
    o.asn = 'foo';
    o.controlPlaneNodes = buildUnnamed11();
    o.ipAddress = 'foo';
  }
  buildCounterBareMetalBgpPeerConfig--;
  return o;
}

void checkBareMetalBgpPeerConfig(api.BareMetalBgpPeerConfig o) {
  buildCounterBareMetalBgpPeerConfig++;
  if (buildCounterBareMetalBgpPeerConfig < 3) {
    unittest.expect(
      o.asn!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.controlPlaneNodes!);
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalBgpPeerConfig--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.int buildCounterBareMetalCluster = 0;
api.BareMetalCluster buildBareMetalCluster() {
  final o = api.BareMetalCluster();
  buildCounterBareMetalCluster++;
  if (buildCounterBareMetalCluster < 3) {
    o.adminClusterMembership = 'foo';
    o.adminClusterName = 'foo';
    o.annotations = buildUnnamed12();
    o.bareMetalVersion = 'foo';
    o.binaryAuthorization = buildBinaryAuthorization();
    o.clusterOperations = buildBareMetalClusterOperationsConfig();
    o.controlPlane = buildBareMetalControlPlaneConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.endpoint = 'foo';
    o.etag = 'foo';
    o.fleet = buildFleet();
    o.loadBalancer = buildBareMetalLoadBalancerConfig();
    o.localName = 'foo';
    o.maintenanceConfig = buildBareMetalMaintenanceConfig();
    o.maintenanceStatus = buildBareMetalMaintenanceStatus();
    o.name = 'foo';
    o.networkConfig = buildBareMetalNetworkConfig();
    o.nodeAccessConfig = buildBareMetalNodeAccessConfig();
    o.nodeConfig = buildBareMetalWorkloadNodeConfig();
    o.osEnvironmentConfig = buildBareMetalOsEnvironmentConfig();
    o.proxy = buildBareMetalProxyConfig();
    o.reconciling = true;
    o.securityConfig = buildBareMetalSecurityConfig();
    o.state = 'foo';
    o.status = buildResourceStatus();
    o.storage = buildBareMetalStorageConfig();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.upgradePolicy = buildBareMetalClusterUpgradePolicy();
    o.validationCheck = buildValidationCheck();
  }
  buildCounterBareMetalCluster--;
  return o;
}

void checkBareMetalCluster(api.BareMetalCluster o) {
  buildCounterBareMetalCluster++;
  if (buildCounterBareMetalCluster < 3) {
    unittest.expect(
      o.adminClusterMembership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adminClusterName!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.annotations!);
    unittest.expect(
      o.bareMetalVersion!,
      unittest.equals('foo'),
    );
    checkBinaryAuthorization(o.binaryAuthorization!);
    checkBareMetalClusterOperationsConfig(o.clusterOperations!);
    checkBareMetalControlPlaneConfig(o.controlPlane!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkFleet(o.fleet!);
    checkBareMetalLoadBalancerConfig(o.loadBalancer!);
    unittest.expect(
      o.localName!,
      unittest.equals('foo'),
    );
    checkBareMetalMaintenanceConfig(o.maintenanceConfig!);
    checkBareMetalMaintenanceStatus(o.maintenanceStatus!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkBareMetalNetworkConfig(o.networkConfig!);
    checkBareMetalNodeAccessConfig(o.nodeAccessConfig!);
    checkBareMetalWorkloadNodeConfig(o.nodeConfig!);
    checkBareMetalOsEnvironmentConfig(o.osEnvironmentConfig!);
    checkBareMetalProxyConfig(o.proxy!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkBareMetalSecurityConfig(o.securityConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
    checkBareMetalStorageConfig(o.storage!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkBareMetalClusterUpgradePolicy(o.upgradePolicy!);
    checkValidationCheck(o.validationCheck!);
  }
  buildCounterBareMetalCluster--;
}

core.int buildCounterBareMetalClusterOperationsConfig = 0;
api.BareMetalClusterOperationsConfig buildBareMetalClusterOperationsConfig() {
  final o = api.BareMetalClusterOperationsConfig();
  buildCounterBareMetalClusterOperationsConfig++;
  if (buildCounterBareMetalClusterOperationsConfig < 3) {
    o.enableApplicationLogs = true;
  }
  buildCounterBareMetalClusterOperationsConfig--;
  return o;
}

void checkBareMetalClusterOperationsConfig(
    api.BareMetalClusterOperationsConfig o) {
  buildCounterBareMetalClusterOperationsConfig++;
  if (buildCounterBareMetalClusterOperationsConfig < 3) {
    unittest.expect(o.enableApplicationLogs!, unittest.isTrue);
  }
  buildCounterBareMetalClusterOperationsConfig--;
}

core.int buildCounterBareMetalClusterUpgradePolicy = 0;
api.BareMetalClusterUpgradePolicy buildBareMetalClusterUpgradePolicy() {
  final o = api.BareMetalClusterUpgradePolicy();
  buildCounterBareMetalClusterUpgradePolicy++;
  if (buildCounterBareMetalClusterUpgradePolicy < 3) {
    o.policy = 'foo';
  }
  buildCounterBareMetalClusterUpgradePolicy--;
  return o;
}

void checkBareMetalClusterUpgradePolicy(api.BareMetalClusterUpgradePolicy o) {
  buildCounterBareMetalClusterUpgradePolicy++;
  if (buildCounterBareMetalClusterUpgradePolicy < 3) {
    unittest.expect(
      o.policy!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalClusterUpgradePolicy--;
}

core.List<api.BareMetalApiServerArgument> buildUnnamed13() => [
      buildBareMetalApiServerArgument(),
      buildBareMetalApiServerArgument(),
    ];

void checkUnnamed13(core.List<api.BareMetalApiServerArgument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalApiServerArgument(o[0]);
  checkBareMetalApiServerArgument(o[1]);
}

core.int buildCounterBareMetalControlPlaneConfig = 0;
api.BareMetalControlPlaneConfig buildBareMetalControlPlaneConfig() {
  final o = api.BareMetalControlPlaneConfig();
  buildCounterBareMetalControlPlaneConfig++;
  if (buildCounterBareMetalControlPlaneConfig < 3) {
    o.apiServerArgs = buildUnnamed13();
    o.controlPlaneNodePoolConfig = buildBareMetalControlPlaneNodePoolConfig();
  }
  buildCounterBareMetalControlPlaneConfig--;
  return o;
}

void checkBareMetalControlPlaneConfig(api.BareMetalControlPlaneConfig o) {
  buildCounterBareMetalControlPlaneConfig++;
  if (buildCounterBareMetalControlPlaneConfig < 3) {
    checkUnnamed13(o.apiServerArgs!);
    checkBareMetalControlPlaneNodePoolConfig(o.controlPlaneNodePoolConfig!);
  }
  buildCounterBareMetalControlPlaneConfig--;
}

core.int buildCounterBareMetalControlPlaneNodePoolConfig = 0;
api.BareMetalControlPlaneNodePoolConfig
    buildBareMetalControlPlaneNodePoolConfig() {
  final o = api.BareMetalControlPlaneNodePoolConfig();
  buildCounterBareMetalControlPlaneNodePoolConfig++;
  if (buildCounterBareMetalControlPlaneNodePoolConfig < 3) {
    o.nodePoolConfig = buildBareMetalNodePoolConfig();
  }
  buildCounterBareMetalControlPlaneNodePoolConfig--;
  return o;
}

void checkBareMetalControlPlaneNodePoolConfig(
    api.BareMetalControlPlaneNodePoolConfig o) {
  buildCounterBareMetalControlPlaneNodePoolConfig++;
  if (buildCounterBareMetalControlPlaneNodePoolConfig < 3) {
    checkBareMetalNodePoolConfig(o.nodePoolConfig!);
  }
  buildCounterBareMetalControlPlaneNodePoolConfig--;
}

core.int buildCounterBareMetalDrainedMachine = 0;
api.BareMetalDrainedMachine buildBareMetalDrainedMachine() {
  final o = api.BareMetalDrainedMachine();
  buildCounterBareMetalDrainedMachine++;
  if (buildCounterBareMetalDrainedMachine < 3) {
    o.nodeIp = 'foo';
  }
  buildCounterBareMetalDrainedMachine--;
  return o;
}

void checkBareMetalDrainedMachine(api.BareMetalDrainedMachine o) {
  buildCounterBareMetalDrainedMachine++;
  if (buildCounterBareMetalDrainedMachine < 3) {
    unittest.expect(
      o.nodeIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalDrainedMachine--;
}

core.int buildCounterBareMetalDrainingMachine = 0;
api.BareMetalDrainingMachine buildBareMetalDrainingMachine() {
  final o = api.BareMetalDrainingMachine();
  buildCounterBareMetalDrainingMachine++;
  if (buildCounterBareMetalDrainingMachine < 3) {
    o.nodeIp = 'foo';
    o.podCount = 42;
  }
  buildCounterBareMetalDrainingMachine--;
  return o;
}

void checkBareMetalDrainingMachine(api.BareMetalDrainingMachine o) {
  buildCounterBareMetalDrainingMachine++;
  if (buildCounterBareMetalDrainingMachine < 3) {
    unittest.expect(
      o.nodeIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podCount!,
      unittest.equals(42),
    );
  }
  buildCounterBareMetalDrainingMachine--;
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

core.int buildCounterBareMetalIslandModeCidrConfig = 0;
api.BareMetalIslandModeCidrConfig buildBareMetalIslandModeCidrConfig() {
  final o = api.BareMetalIslandModeCidrConfig();
  buildCounterBareMetalIslandModeCidrConfig++;
  if (buildCounterBareMetalIslandModeCidrConfig < 3) {
    o.podAddressCidrBlocks = buildUnnamed14();
    o.serviceAddressCidrBlocks = buildUnnamed15();
  }
  buildCounterBareMetalIslandModeCidrConfig--;
  return o;
}

void checkBareMetalIslandModeCidrConfig(api.BareMetalIslandModeCidrConfig o) {
  buildCounterBareMetalIslandModeCidrConfig++;
  if (buildCounterBareMetalIslandModeCidrConfig < 3) {
    checkUnnamed14(o.podAddressCidrBlocks!);
    checkUnnamed15(o.serviceAddressCidrBlocks!);
  }
  buildCounterBareMetalIslandModeCidrConfig--;
}

core.int buildCounterBareMetalKubeletConfig = 0;
api.BareMetalKubeletConfig buildBareMetalKubeletConfig() {
  final o = api.BareMetalKubeletConfig();
  buildCounterBareMetalKubeletConfig++;
  if (buildCounterBareMetalKubeletConfig < 3) {
    o.registryBurst = 42;
    o.registryPullQps = 42;
    o.serializeImagePullsDisabled = true;
  }
  buildCounterBareMetalKubeletConfig--;
  return o;
}

void checkBareMetalKubeletConfig(api.BareMetalKubeletConfig o) {
  buildCounterBareMetalKubeletConfig++;
  if (buildCounterBareMetalKubeletConfig < 3) {
    unittest.expect(
      o.registryBurst!,
      unittest.equals(42),
    );
    unittest.expect(
      o.registryPullQps!,
      unittest.equals(42),
    );
    unittest.expect(o.serializeImagePullsDisabled!, unittest.isTrue);
  }
  buildCounterBareMetalKubeletConfig--;
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

core.int buildCounterBareMetalLoadBalancerAddressPool = 0;
api.BareMetalLoadBalancerAddressPool buildBareMetalLoadBalancerAddressPool() {
  final o = api.BareMetalLoadBalancerAddressPool();
  buildCounterBareMetalLoadBalancerAddressPool++;
  if (buildCounterBareMetalLoadBalancerAddressPool < 3) {
    o.addresses = buildUnnamed16();
    o.avoidBuggyIps = true;
    o.manualAssign = true;
    o.pool = 'foo';
  }
  buildCounterBareMetalLoadBalancerAddressPool--;
  return o;
}

void checkBareMetalLoadBalancerAddressPool(
    api.BareMetalLoadBalancerAddressPool o) {
  buildCounterBareMetalLoadBalancerAddressPool++;
  if (buildCounterBareMetalLoadBalancerAddressPool < 3) {
    checkUnnamed16(o.addresses!);
    unittest.expect(o.avoidBuggyIps!, unittest.isTrue);
    unittest.expect(o.manualAssign!, unittest.isTrue);
    unittest.expect(
      o.pool!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalLoadBalancerAddressPool--;
}

core.int buildCounterBareMetalLoadBalancerConfig = 0;
api.BareMetalLoadBalancerConfig buildBareMetalLoadBalancerConfig() {
  final o = api.BareMetalLoadBalancerConfig();
  buildCounterBareMetalLoadBalancerConfig++;
  if (buildCounterBareMetalLoadBalancerConfig < 3) {
    o.bgpLbConfig = buildBareMetalBgpLbConfig();
    o.manualLbConfig = buildBareMetalManualLbConfig();
    o.metalLbConfig = buildBareMetalMetalLbConfig();
    o.portConfig = buildBareMetalPortConfig();
    o.vipConfig = buildBareMetalVipConfig();
  }
  buildCounterBareMetalLoadBalancerConfig--;
  return o;
}

void checkBareMetalLoadBalancerConfig(api.BareMetalLoadBalancerConfig o) {
  buildCounterBareMetalLoadBalancerConfig++;
  if (buildCounterBareMetalLoadBalancerConfig < 3) {
    checkBareMetalBgpLbConfig(o.bgpLbConfig!);
    checkBareMetalManualLbConfig(o.manualLbConfig!);
    checkBareMetalMetalLbConfig(o.metalLbConfig!);
    checkBareMetalPortConfig(o.portConfig!);
    checkBareMetalVipConfig(o.vipConfig!);
  }
  buildCounterBareMetalLoadBalancerConfig--;
}

core.int buildCounterBareMetalLoadBalancerNodePoolConfig = 0;
api.BareMetalLoadBalancerNodePoolConfig
    buildBareMetalLoadBalancerNodePoolConfig() {
  final o = api.BareMetalLoadBalancerNodePoolConfig();
  buildCounterBareMetalLoadBalancerNodePoolConfig++;
  if (buildCounterBareMetalLoadBalancerNodePoolConfig < 3) {
    o.nodePoolConfig = buildBareMetalNodePoolConfig();
  }
  buildCounterBareMetalLoadBalancerNodePoolConfig--;
  return o;
}

void checkBareMetalLoadBalancerNodePoolConfig(
    api.BareMetalLoadBalancerNodePoolConfig o) {
  buildCounterBareMetalLoadBalancerNodePoolConfig++;
  if (buildCounterBareMetalLoadBalancerNodePoolConfig < 3) {
    checkBareMetalNodePoolConfig(o.nodePoolConfig!);
  }
  buildCounterBareMetalLoadBalancerNodePoolConfig--;
}

core.int buildCounterBareMetalLvpConfig = 0;
api.BareMetalLvpConfig buildBareMetalLvpConfig() {
  final o = api.BareMetalLvpConfig();
  buildCounterBareMetalLvpConfig++;
  if (buildCounterBareMetalLvpConfig < 3) {
    o.path = 'foo';
    o.storageClass = 'foo';
  }
  buildCounterBareMetalLvpConfig--;
  return o;
}

void checkBareMetalLvpConfig(api.BareMetalLvpConfig o) {
  buildCounterBareMetalLvpConfig++;
  if (buildCounterBareMetalLvpConfig < 3) {
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageClass!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalLvpConfig--;
}

core.int buildCounterBareMetalLvpShareConfig = 0;
api.BareMetalLvpShareConfig buildBareMetalLvpShareConfig() {
  final o = api.BareMetalLvpShareConfig();
  buildCounterBareMetalLvpShareConfig++;
  if (buildCounterBareMetalLvpShareConfig < 3) {
    o.lvpConfig = buildBareMetalLvpConfig();
    o.sharedPathPvCount = 42;
  }
  buildCounterBareMetalLvpShareConfig--;
  return o;
}

void checkBareMetalLvpShareConfig(api.BareMetalLvpShareConfig o) {
  buildCounterBareMetalLvpShareConfig++;
  if (buildCounterBareMetalLvpShareConfig < 3) {
    checkBareMetalLvpConfig(o.lvpConfig!);
    unittest.expect(
      o.sharedPathPvCount!,
      unittest.equals(42),
    );
  }
  buildCounterBareMetalLvpShareConfig--;
}

core.List<api.BareMetalDrainedMachine> buildUnnamed17() => [
      buildBareMetalDrainedMachine(),
      buildBareMetalDrainedMachine(),
    ];

void checkUnnamed17(core.List<api.BareMetalDrainedMachine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalDrainedMachine(o[0]);
  checkBareMetalDrainedMachine(o[1]);
}

core.List<api.BareMetalDrainingMachine> buildUnnamed18() => [
      buildBareMetalDrainingMachine(),
      buildBareMetalDrainingMachine(),
    ];

void checkUnnamed18(core.List<api.BareMetalDrainingMachine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalDrainingMachine(o[0]);
  checkBareMetalDrainingMachine(o[1]);
}

core.int buildCounterBareMetalMachineDrainStatus = 0;
api.BareMetalMachineDrainStatus buildBareMetalMachineDrainStatus() {
  final o = api.BareMetalMachineDrainStatus();
  buildCounterBareMetalMachineDrainStatus++;
  if (buildCounterBareMetalMachineDrainStatus < 3) {
    o.drainedMachines = buildUnnamed17();
    o.drainingMachines = buildUnnamed18();
  }
  buildCounterBareMetalMachineDrainStatus--;
  return o;
}

void checkBareMetalMachineDrainStatus(api.BareMetalMachineDrainStatus o) {
  buildCounterBareMetalMachineDrainStatus++;
  if (buildCounterBareMetalMachineDrainStatus < 3) {
    checkUnnamed17(o.drainedMachines!);
    checkUnnamed18(o.drainingMachines!);
  }
  buildCounterBareMetalMachineDrainStatus--;
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

core.int buildCounterBareMetalMaintenanceConfig = 0;
api.BareMetalMaintenanceConfig buildBareMetalMaintenanceConfig() {
  final o = api.BareMetalMaintenanceConfig();
  buildCounterBareMetalMaintenanceConfig++;
  if (buildCounterBareMetalMaintenanceConfig < 3) {
    o.maintenanceAddressCidrBlocks = buildUnnamed19();
  }
  buildCounterBareMetalMaintenanceConfig--;
  return o;
}

void checkBareMetalMaintenanceConfig(api.BareMetalMaintenanceConfig o) {
  buildCounterBareMetalMaintenanceConfig++;
  if (buildCounterBareMetalMaintenanceConfig < 3) {
    checkUnnamed19(o.maintenanceAddressCidrBlocks!);
  }
  buildCounterBareMetalMaintenanceConfig--;
}

core.int buildCounterBareMetalMaintenanceStatus = 0;
api.BareMetalMaintenanceStatus buildBareMetalMaintenanceStatus() {
  final o = api.BareMetalMaintenanceStatus();
  buildCounterBareMetalMaintenanceStatus++;
  if (buildCounterBareMetalMaintenanceStatus < 3) {
    o.machineDrainStatus = buildBareMetalMachineDrainStatus();
  }
  buildCounterBareMetalMaintenanceStatus--;
  return o;
}

void checkBareMetalMaintenanceStatus(api.BareMetalMaintenanceStatus o) {
  buildCounterBareMetalMaintenanceStatus++;
  if (buildCounterBareMetalMaintenanceStatus < 3) {
    checkBareMetalMachineDrainStatus(o.machineDrainStatus!);
  }
  buildCounterBareMetalMaintenanceStatus--;
}

core.int buildCounterBareMetalManualLbConfig = 0;
api.BareMetalManualLbConfig buildBareMetalManualLbConfig() {
  final o = api.BareMetalManualLbConfig();
  buildCounterBareMetalManualLbConfig++;
  if (buildCounterBareMetalManualLbConfig < 3) {
    o.enabled = true;
  }
  buildCounterBareMetalManualLbConfig--;
  return o;
}

void checkBareMetalManualLbConfig(api.BareMetalManualLbConfig o) {
  buildCounterBareMetalManualLbConfig++;
  if (buildCounterBareMetalManualLbConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBareMetalManualLbConfig--;
}

core.List<api.BareMetalLoadBalancerAddressPool> buildUnnamed20() => [
      buildBareMetalLoadBalancerAddressPool(),
      buildBareMetalLoadBalancerAddressPool(),
    ];

void checkUnnamed20(core.List<api.BareMetalLoadBalancerAddressPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalLoadBalancerAddressPool(o[0]);
  checkBareMetalLoadBalancerAddressPool(o[1]);
}

core.int buildCounterBareMetalMetalLbConfig = 0;
api.BareMetalMetalLbConfig buildBareMetalMetalLbConfig() {
  final o = api.BareMetalMetalLbConfig();
  buildCounterBareMetalMetalLbConfig++;
  if (buildCounterBareMetalMetalLbConfig < 3) {
    o.addressPools = buildUnnamed20();
    o.loadBalancerNodePoolConfig = buildBareMetalLoadBalancerNodePoolConfig();
  }
  buildCounterBareMetalMetalLbConfig--;
  return o;
}

void checkBareMetalMetalLbConfig(api.BareMetalMetalLbConfig o) {
  buildCounterBareMetalMetalLbConfig++;
  if (buildCounterBareMetalMetalLbConfig < 3) {
    checkUnnamed20(o.addressPools!);
    checkBareMetalLoadBalancerNodePoolConfig(o.loadBalancerNodePoolConfig!);
  }
  buildCounterBareMetalMetalLbConfig--;
}

core.int buildCounterBareMetalMultipleNetworkInterfacesConfig = 0;
api.BareMetalMultipleNetworkInterfacesConfig
    buildBareMetalMultipleNetworkInterfacesConfig() {
  final o = api.BareMetalMultipleNetworkInterfacesConfig();
  buildCounterBareMetalMultipleNetworkInterfacesConfig++;
  if (buildCounterBareMetalMultipleNetworkInterfacesConfig < 3) {
    o.enabled = true;
  }
  buildCounterBareMetalMultipleNetworkInterfacesConfig--;
  return o;
}

void checkBareMetalMultipleNetworkInterfacesConfig(
    api.BareMetalMultipleNetworkInterfacesConfig o) {
  buildCounterBareMetalMultipleNetworkInterfacesConfig++;
  if (buildCounterBareMetalMultipleNetworkInterfacesConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBareMetalMultipleNetworkInterfacesConfig--;
}

core.int buildCounterBareMetalNetworkConfig = 0;
api.BareMetalNetworkConfig buildBareMetalNetworkConfig() {
  final o = api.BareMetalNetworkConfig();
  buildCounterBareMetalNetworkConfig++;
  if (buildCounterBareMetalNetworkConfig < 3) {
    o.advancedNetworking = true;
    o.islandModeCidr = buildBareMetalIslandModeCidrConfig();
    o.multipleNetworkInterfacesConfig =
        buildBareMetalMultipleNetworkInterfacesConfig();
    o.srIovConfig = buildBareMetalSrIovConfig();
  }
  buildCounterBareMetalNetworkConfig--;
  return o;
}

void checkBareMetalNetworkConfig(api.BareMetalNetworkConfig o) {
  buildCounterBareMetalNetworkConfig++;
  if (buildCounterBareMetalNetworkConfig < 3) {
    unittest.expect(o.advancedNetworking!, unittest.isTrue);
    checkBareMetalIslandModeCidrConfig(o.islandModeCidr!);
    checkBareMetalMultipleNetworkInterfacesConfig(
        o.multipleNetworkInterfacesConfig!);
    checkBareMetalSrIovConfig(o.srIovConfig!);
  }
  buildCounterBareMetalNetworkConfig--;
}

core.int buildCounterBareMetalNodeAccessConfig = 0;
api.BareMetalNodeAccessConfig buildBareMetalNodeAccessConfig() {
  final o = api.BareMetalNodeAccessConfig();
  buildCounterBareMetalNodeAccessConfig++;
  if (buildCounterBareMetalNodeAccessConfig < 3) {
    o.loginUser = 'foo';
  }
  buildCounterBareMetalNodeAccessConfig--;
  return o;
}

void checkBareMetalNodeAccessConfig(api.BareMetalNodeAccessConfig o) {
  buildCounterBareMetalNodeAccessConfig++;
  if (buildCounterBareMetalNodeAccessConfig < 3) {
    unittest.expect(
      o.loginUser!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalNodeAccessConfig--;
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

core.int buildCounterBareMetalNodeConfig = 0;
api.BareMetalNodeConfig buildBareMetalNodeConfig() {
  final o = api.BareMetalNodeConfig();
  buildCounterBareMetalNodeConfig++;
  if (buildCounterBareMetalNodeConfig < 3) {
    o.labels = buildUnnamed21();
    o.nodeIp = 'foo';
  }
  buildCounterBareMetalNodeConfig--;
  return o;
}

void checkBareMetalNodeConfig(api.BareMetalNodeConfig o) {
  buildCounterBareMetalNodeConfig++;
  if (buildCounterBareMetalNodeConfig < 3) {
    checkUnnamed21(o.labels!);
    unittest.expect(
      o.nodeIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalNodeConfig--;
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

core.int buildCounterBareMetalNodePool = 0;
api.BareMetalNodePool buildBareMetalNodePool() {
  final o = api.BareMetalNodePool();
  buildCounterBareMetalNodePool++;
  if (buildCounterBareMetalNodePool < 3) {
    o.annotations = buildUnnamed22();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.nodePoolConfig = buildBareMetalNodePoolConfig();
    o.reconciling = true;
    o.state = 'foo';
    o.status = buildResourceStatus();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.upgradePolicy = buildBareMetalNodePoolUpgradePolicy();
  }
  buildCounterBareMetalNodePool--;
  return o;
}

void checkBareMetalNodePool(api.BareMetalNodePool o) {
  buildCounterBareMetalNodePool++;
  if (buildCounterBareMetalNodePool < 3) {
    checkUnnamed22(o.annotations!);
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
    checkBareMetalNodePoolConfig(o.nodePoolConfig!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkBareMetalNodePoolUpgradePolicy(o.upgradePolicy!);
  }
  buildCounterBareMetalNodePool--;
}

core.Map<core.String, core.String> buildUnnamed23() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed23(core.Map<core.String, core.String> o) {
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

core.List<api.BareMetalNodeConfig> buildUnnamed24() => [
      buildBareMetalNodeConfig(),
      buildBareMetalNodeConfig(),
    ];

void checkUnnamed24(core.List<api.BareMetalNodeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalNodeConfig(o[0]);
  checkBareMetalNodeConfig(o[1]);
}

core.List<api.NodeTaint> buildUnnamed25() => [
      buildNodeTaint(),
      buildNodeTaint(),
    ];

void checkUnnamed25(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterBareMetalNodePoolConfig = 0;
api.BareMetalNodePoolConfig buildBareMetalNodePoolConfig() {
  final o = api.BareMetalNodePoolConfig();
  buildCounterBareMetalNodePoolConfig++;
  if (buildCounterBareMetalNodePoolConfig < 3) {
    o.kubeletConfig = buildBareMetalKubeletConfig();
    o.labels = buildUnnamed23();
    o.nodeConfigs = buildUnnamed24();
    o.operatingSystem = 'foo';
    o.taints = buildUnnamed25();
  }
  buildCounterBareMetalNodePoolConfig--;
  return o;
}

void checkBareMetalNodePoolConfig(api.BareMetalNodePoolConfig o) {
  buildCounterBareMetalNodePoolConfig++;
  if (buildCounterBareMetalNodePoolConfig < 3) {
    checkBareMetalKubeletConfig(o.kubeletConfig!);
    checkUnnamed23(o.labels!);
    checkUnnamed24(o.nodeConfigs!);
    unittest.expect(
      o.operatingSystem!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.taints!);
  }
  buildCounterBareMetalNodePoolConfig--;
}

core.int buildCounterBareMetalNodePoolUpgradePolicy = 0;
api.BareMetalNodePoolUpgradePolicy buildBareMetalNodePoolUpgradePolicy() {
  final o = api.BareMetalNodePoolUpgradePolicy();
  buildCounterBareMetalNodePoolUpgradePolicy++;
  if (buildCounterBareMetalNodePoolUpgradePolicy < 3) {
    o.parallelUpgradeConfig = buildBareMetalParallelUpgradeConfig();
  }
  buildCounterBareMetalNodePoolUpgradePolicy--;
  return o;
}

void checkBareMetalNodePoolUpgradePolicy(api.BareMetalNodePoolUpgradePolicy o) {
  buildCounterBareMetalNodePoolUpgradePolicy++;
  if (buildCounterBareMetalNodePoolUpgradePolicy < 3) {
    checkBareMetalParallelUpgradeConfig(o.parallelUpgradeConfig!);
  }
  buildCounterBareMetalNodePoolUpgradePolicy--;
}

core.int buildCounterBareMetalOsEnvironmentConfig = 0;
api.BareMetalOsEnvironmentConfig buildBareMetalOsEnvironmentConfig() {
  final o = api.BareMetalOsEnvironmentConfig();
  buildCounterBareMetalOsEnvironmentConfig++;
  if (buildCounterBareMetalOsEnvironmentConfig < 3) {
    o.packageRepoExcluded = true;
  }
  buildCounterBareMetalOsEnvironmentConfig--;
  return o;
}

void checkBareMetalOsEnvironmentConfig(api.BareMetalOsEnvironmentConfig o) {
  buildCounterBareMetalOsEnvironmentConfig++;
  if (buildCounterBareMetalOsEnvironmentConfig < 3) {
    unittest.expect(o.packageRepoExcluded!, unittest.isTrue);
  }
  buildCounterBareMetalOsEnvironmentConfig--;
}

core.int buildCounterBareMetalParallelUpgradeConfig = 0;
api.BareMetalParallelUpgradeConfig buildBareMetalParallelUpgradeConfig() {
  final o = api.BareMetalParallelUpgradeConfig();
  buildCounterBareMetalParallelUpgradeConfig++;
  if (buildCounterBareMetalParallelUpgradeConfig < 3) {
    o.concurrentNodes = 42;
    o.minimumAvailableNodes = 42;
  }
  buildCounterBareMetalParallelUpgradeConfig--;
  return o;
}

void checkBareMetalParallelUpgradeConfig(api.BareMetalParallelUpgradeConfig o) {
  buildCounterBareMetalParallelUpgradeConfig++;
  if (buildCounterBareMetalParallelUpgradeConfig < 3) {
    unittest.expect(
      o.concurrentNodes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minimumAvailableNodes!,
      unittest.equals(42),
    );
  }
  buildCounterBareMetalParallelUpgradeConfig--;
}

core.int buildCounterBareMetalPortConfig = 0;
api.BareMetalPortConfig buildBareMetalPortConfig() {
  final o = api.BareMetalPortConfig();
  buildCounterBareMetalPortConfig++;
  if (buildCounterBareMetalPortConfig < 3) {
    o.controlPlaneLoadBalancerPort = 42;
  }
  buildCounterBareMetalPortConfig--;
  return o;
}

void checkBareMetalPortConfig(api.BareMetalPortConfig o) {
  buildCounterBareMetalPortConfig++;
  if (buildCounterBareMetalPortConfig < 3) {
    unittest.expect(
      o.controlPlaneLoadBalancerPort!,
      unittest.equals(42),
    );
  }
  buildCounterBareMetalPortConfig--;
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

core.int buildCounterBareMetalProxyConfig = 0;
api.BareMetalProxyConfig buildBareMetalProxyConfig() {
  final o = api.BareMetalProxyConfig();
  buildCounterBareMetalProxyConfig++;
  if (buildCounterBareMetalProxyConfig < 3) {
    o.noProxy = buildUnnamed26();
    o.uri = 'foo';
  }
  buildCounterBareMetalProxyConfig--;
  return o;
}

void checkBareMetalProxyConfig(api.BareMetalProxyConfig o) {
  buildCounterBareMetalProxyConfig++;
  if (buildCounterBareMetalProxyConfig < 3) {
    checkUnnamed26(o.noProxy!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalProxyConfig--;
}

core.int buildCounterBareMetalSecurityConfig = 0;
api.BareMetalSecurityConfig buildBareMetalSecurityConfig() {
  final o = api.BareMetalSecurityConfig();
  buildCounterBareMetalSecurityConfig++;
  if (buildCounterBareMetalSecurityConfig < 3) {
    o.authorization = buildAuthorization();
  }
  buildCounterBareMetalSecurityConfig--;
  return o;
}

void checkBareMetalSecurityConfig(api.BareMetalSecurityConfig o) {
  buildCounterBareMetalSecurityConfig++;
  if (buildCounterBareMetalSecurityConfig < 3) {
    checkAuthorization(o.authorization!);
  }
  buildCounterBareMetalSecurityConfig--;
}

core.int buildCounterBareMetalSrIovConfig = 0;
api.BareMetalSrIovConfig buildBareMetalSrIovConfig() {
  final o = api.BareMetalSrIovConfig();
  buildCounterBareMetalSrIovConfig++;
  if (buildCounterBareMetalSrIovConfig < 3) {
    o.enabled = true;
  }
  buildCounterBareMetalSrIovConfig--;
  return o;
}

void checkBareMetalSrIovConfig(api.BareMetalSrIovConfig o) {
  buildCounterBareMetalSrIovConfig++;
  if (buildCounterBareMetalSrIovConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBareMetalSrIovConfig--;
}

core.int buildCounterBareMetalStorageConfig = 0;
api.BareMetalStorageConfig buildBareMetalStorageConfig() {
  final o = api.BareMetalStorageConfig();
  buildCounterBareMetalStorageConfig++;
  if (buildCounterBareMetalStorageConfig < 3) {
    o.lvpNodeMountsConfig = buildBareMetalLvpConfig();
    o.lvpShareConfig = buildBareMetalLvpShareConfig();
  }
  buildCounterBareMetalStorageConfig--;
  return o;
}

void checkBareMetalStorageConfig(api.BareMetalStorageConfig o) {
  buildCounterBareMetalStorageConfig++;
  if (buildCounterBareMetalStorageConfig < 3) {
    checkBareMetalLvpConfig(o.lvpNodeMountsConfig!);
    checkBareMetalLvpShareConfig(o.lvpShareConfig!);
  }
  buildCounterBareMetalStorageConfig--;
}

core.List<api.UpgradeDependency> buildUnnamed27() => [
      buildUpgradeDependency(),
      buildUpgradeDependency(),
    ];

void checkUnnamed27(core.List<api.UpgradeDependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeDependency(o[0]);
  checkUpgradeDependency(o[1]);
}

core.int buildCounterBareMetalVersionInfo = 0;
api.BareMetalVersionInfo buildBareMetalVersionInfo() {
  final o = api.BareMetalVersionInfo();
  buildCounterBareMetalVersionInfo++;
  if (buildCounterBareMetalVersionInfo < 3) {
    o.dependencies = buildUnnamed27();
    o.hasDependencies = true;
    o.version = 'foo';
  }
  buildCounterBareMetalVersionInfo--;
  return o;
}

void checkBareMetalVersionInfo(api.BareMetalVersionInfo o) {
  buildCounterBareMetalVersionInfo++;
  if (buildCounterBareMetalVersionInfo < 3) {
    checkUnnamed27(o.dependencies!);
    unittest.expect(o.hasDependencies!, unittest.isTrue);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalVersionInfo--;
}

core.int buildCounterBareMetalVipConfig = 0;
api.BareMetalVipConfig buildBareMetalVipConfig() {
  final o = api.BareMetalVipConfig();
  buildCounterBareMetalVipConfig++;
  if (buildCounterBareMetalVipConfig < 3) {
    o.controlPlaneVip = 'foo';
    o.ingressVip = 'foo';
  }
  buildCounterBareMetalVipConfig--;
  return o;
}

void checkBareMetalVipConfig(api.BareMetalVipConfig o) {
  buildCounterBareMetalVipConfig++;
  if (buildCounterBareMetalVipConfig < 3) {
    unittest.expect(
      o.controlPlaneVip!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ingressVip!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalVipConfig--;
}

core.int buildCounterBareMetalWorkloadNodeConfig = 0;
api.BareMetalWorkloadNodeConfig buildBareMetalWorkloadNodeConfig() {
  final o = api.BareMetalWorkloadNodeConfig();
  buildCounterBareMetalWorkloadNodeConfig++;
  if (buildCounterBareMetalWorkloadNodeConfig < 3) {
    o.containerRuntime = 'foo';
    o.maxPodsPerNode = 'foo';
  }
  buildCounterBareMetalWorkloadNodeConfig--;
  return o;
}

void checkBareMetalWorkloadNodeConfig(api.BareMetalWorkloadNodeConfig o) {
  buildCounterBareMetalWorkloadNodeConfig++;
  if (buildCounterBareMetalWorkloadNodeConfig < 3) {
    unittest.expect(
      o.containerRuntime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxPodsPerNode!,
      unittest.equals('foo'),
    );
  }
  buildCounterBareMetalWorkloadNodeConfig--;
}

core.int buildCounterBinaryAuthorization = 0;
api.BinaryAuthorization buildBinaryAuthorization() {
  final o = api.BinaryAuthorization();
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    o.evaluationMode = 'foo';
  }
  buildCounterBinaryAuthorization--;
  return o;
}

void checkBinaryAuthorization(api.BinaryAuthorization o) {
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    unittest.expect(
      o.evaluationMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinaryAuthorization--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed28();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed28(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
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

core.int buildCounterClusterUser = 0;
api.ClusterUser buildClusterUser() {
  final o = api.ClusterUser();
  buildCounterClusterUser++;
  if (buildCounterClusterUser < 3) {
    o.username = 'foo';
  }
  buildCounterClusterUser--;
  return o;
}

void checkClusterUser(api.ClusterUser o) {
  buildCounterClusterUser++;
  if (buildCounterClusterUser < 3) {
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterUser--;
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

core.int buildCounterEnrollBareMetalAdminClusterRequest = 0;
api.EnrollBareMetalAdminClusterRequest
    buildEnrollBareMetalAdminClusterRequest() {
  final o = api.EnrollBareMetalAdminClusterRequest();
  buildCounterEnrollBareMetalAdminClusterRequest++;
  if (buildCounterEnrollBareMetalAdminClusterRequest < 3) {
    o.bareMetalAdminClusterId = 'foo';
    o.membership = 'foo';
  }
  buildCounterEnrollBareMetalAdminClusterRequest--;
  return o;
}

void checkEnrollBareMetalAdminClusterRequest(
    api.EnrollBareMetalAdminClusterRequest o) {
  buildCounterEnrollBareMetalAdminClusterRequest++;
  if (buildCounterEnrollBareMetalAdminClusterRequest < 3) {
    unittest.expect(
      o.bareMetalAdminClusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollBareMetalAdminClusterRequest--;
}

core.int buildCounterEnrollBareMetalClusterRequest = 0;
api.EnrollBareMetalClusterRequest buildEnrollBareMetalClusterRequest() {
  final o = api.EnrollBareMetalClusterRequest();
  buildCounterEnrollBareMetalClusterRequest++;
  if (buildCounterEnrollBareMetalClusterRequest < 3) {
    o.adminClusterMembership = 'foo';
    o.bareMetalClusterId = 'foo';
    o.localName = 'foo';
  }
  buildCounterEnrollBareMetalClusterRequest--;
  return o;
}

void checkEnrollBareMetalClusterRequest(api.EnrollBareMetalClusterRequest o) {
  buildCounterEnrollBareMetalClusterRequest++;
  if (buildCounterEnrollBareMetalClusterRequest < 3) {
    unittest.expect(
      o.adminClusterMembership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bareMetalClusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollBareMetalClusterRequest--;
}

core.int buildCounterEnrollBareMetalNodePoolRequest = 0;
api.EnrollBareMetalNodePoolRequest buildEnrollBareMetalNodePoolRequest() {
  final o = api.EnrollBareMetalNodePoolRequest();
  buildCounterEnrollBareMetalNodePoolRequest++;
  if (buildCounterEnrollBareMetalNodePoolRequest < 3) {
    o.bareMetalNodePoolId = 'foo';
    o.validateOnly = true;
  }
  buildCounterEnrollBareMetalNodePoolRequest--;
  return o;
}

void checkEnrollBareMetalNodePoolRequest(api.EnrollBareMetalNodePoolRequest o) {
  buildCounterEnrollBareMetalNodePoolRequest++;
  if (buildCounterEnrollBareMetalNodePoolRequest < 3) {
    unittest.expect(
      o.bareMetalNodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterEnrollBareMetalNodePoolRequest--;
}

core.int buildCounterEnrollVmwareAdminClusterRequest = 0;
api.EnrollVmwareAdminClusterRequest buildEnrollVmwareAdminClusterRequest() {
  final o = api.EnrollVmwareAdminClusterRequest();
  buildCounterEnrollVmwareAdminClusterRequest++;
  if (buildCounterEnrollVmwareAdminClusterRequest < 3) {
    o.membership = 'foo';
    o.vmwareAdminClusterId = 'foo';
  }
  buildCounterEnrollVmwareAdminClusterRequest--;
  return o;
}

void checkEnrollVmwareAdminClusterRequest(
    api.EnrollVmwareAdminClusterRequest o) {
  buildCounterEnrollVmwareAdminClusterRequest++;
  if (buildCounterEnrollVmwareAdminClusterRequest < 3) {
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmwareAdminClusterId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollVmwareAdminClusterRequest--;
}

core.int buildCounterEnrollVmwareClusterRequest = 0;
api.EnrollVmwareClusterRequest buildEnrollVmwareClusterRequest() {
  final o = api.EnrollVmwareClusterRequest();
  buildCounterEnrollVmwareClusterRequest++;
  if (buildCounterEnrollVmwareClusterRequest < 3) {
    o.adminClusterMembership = 'foo';
    o.localName = 'foo';
    o.validateOnly = true;
    o.vmwareClusterId = 'foo';
  }
  buildCounterEnrollVmwareClusterRequest--;
  return o;
}

void checkEnrollVmwareClusterRequest(api.EnrollVmwareClusterRequest o) {
  buildCounterEnrollVmwareClusterRequest++;
  if (buildCounterEnrollVmwareClusterRequest < 3) {
    unittest.expect(
      o.adminClusterMembership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
    unittest.expect(
      o.vmwareClusterId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollVmwareClusterRequest--;
}

core.int buildCounterEnrollVmwareNodePoolRequest = 0;
api.EnrollVmwareNodePoolRequest buildEnrollVmwareNodePoolRequest() {
  final o = api.EnrollVmwareNodePoolRequest();
  buildCounterEnrollVmwareNodePoolRequest++;
  if (buildCounterEnrollVmwareNodePoolRequest < 3) {
    o.vmwareNodePoolId = 'foo';
  }
  buildCounterEnrollVmwareNodePoolRequest--;
  return o;
}

void checkEnrollVmwareNodePoolRequest(api.EnrollVmwareNodePoolRequest o) {
  buildCounterEnrollVmwareNodePoolRequest++;
  if (buildCounterEnrollVmwareNodePoolRequest < 3) {
    unittest.expect(
      o.vmwareNodePoolId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollVmwareNodePoolRequest--;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterFleet = 0;
api.Fleet buildFleet() {
  final o = api.Fleet();
  buildCounterFleet++;
  if (buildCounterFleet < 3) {
    o.membership = 'foo';
  }
  buildCounterFleet--;
  return o;
}

void checkFleet(api.Fleet o) {
  buildCounterFleet++;
  if (buildCounterFleet < 3) {
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleet--;
}

core.List<api.BareMetalAdminCluster> buildUnnamed29() => [
      buildBareMetalAdminCluster(),
      buildBareMetalAdminCluster(),
    ];

void checkUnnamed29(core.List<api.BareMetalAdminCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalAdminCluster(o[0]);
  checkBareMetalAdminCluster(o[1]);
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.int buildCounterListBareMetalAdminClustersResponse = 0;
api.ListBareMetalAdminClustersResponse
    buildListBareMetalAdminClustersResponse() {
  final o = api.ListBareMetalAdminClustersResponse();
  buildCounterListBareMetalAdminClustersResponse++;
  if (buildCounterListBareMetalAdminClustersResponse < 3) {
    o.bareMetalAdminClusters = buildUnnamed29();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed30();
  }
  buildCounterListBareMetalAdminClustersResponse--;
  return o;
}

void checkListBareMetalAdminClustersResponse(
    api.ListBareMetalAdminClustersResponse o) {
  buildCounterListBareMetalAdminClustersResponse++;
  if (buildCounterListBareMetalAdminClustersResponse < 3) {
    checkUnnamed29(o.bareMetalAdminClusters!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.unreachable!);
  }
  buildCounterListBareMetalAdminClustersResponse--;
}

core.List<api.BareMetalCluster> buildUnnamed31() => [
      buildBareMetalCluster(),
      buildBareMetalCluster(),
    ];

void checkUnnamed31(core.List<api.BareMetalCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalCluster(o[0]);
  checkBareMetalCluster(o[1]);
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

core.int buildCounterListBareMetalClustersResponse = 0;
api.ListBareMetalClustersResponse buildListBareMetalClustersResponse() {
  final o = api.ListBareMetalClustersResponse();
  buildCounterListBareMetalClustersResponse++;
  if (buildCounterListBareMetalClustersResponse < 3) {
    o.bareMetalClusters = buildUnnamed31();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed32();
  }
  buildCounterListBareMetalClustersResponse--;
  return o;
}

void checkListBareMetalClustersResponse(api.ListBareMetalClustersResponse o) {
  buildCounterListBareMetalClustersResponse++;
  if (buildCounterListBareMetalClustersResponse < 3) {
    checkUnnamed31(o.bareMetalClusters!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.unreachable!);
  }
  buildCounterListBareMetalClustersResponse--;
}

core.List<api.BareMetalNodePool> buildUnnamed33() => [
      buildBareMetalNodePool(),
      buildBareMetalNodePool(),
    ];

void checkUnnamed33(core.List<api.BareMetalNodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalNodePool(o[0]);
  checkBareMetalNodePool(o[1]);
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

core.int buildCounterListBareMetalNodePoolsResponse = 0;
api.ListBareMetalNodePoolsResponse buildListBareMetalNodePoolsResponse() {
  final o = api.ListBareMetalNodePoolsResponse();
  buildCounterListBareMetalNodePoolsResponse++;
  if (buildCounterListBareMetalNodePoolsResponse < 3) {
    o.bareMetalNodePools = buildUnnamed33();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed34();
  }
  buildCounterListBareMetalNodePoolsResponse--;
  return o;
}

void checkListBareMetalNodePoolsResponse(api.ListBareMetalNodePoolsResponse o) {
  buildCounterListBareMetalNodePoolsResponse++;
  if (buildCounterListBareMetalNodePoolsResponse < 3) {
    checkUnnamed33(o.bareMetalNodePools!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListBareMetalNodePoolsResponse--;
}

core.List<api.Location> buildUnnamed35() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed35(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed35(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed36() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed36(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed36();
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
    checkUnnamed36(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.List<api.VmwareAdminCluster> buildUnnamed38() => [
      buildVmwareAdminCluster(),
      buildVmwareAdminCluster(),
    ];

void checkUnnamed38(core.List<api.VmwareAdminCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareAdminCluster(o[0]);
  checkVmwareAdminCluster(o[1]);
}

core.int buildCounterListVmwareAdminClustersResponse = 0;
api.ListVmwareAdminClustersResponse buildListVmwareAdminClustersResponse() {
  final o = api.ListVmwareAdminClustersResponse();
  buildCounterListVmwareAdminClustersResponse++;
  if (buildCounterListVmwareAdminClustersResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed37();
    o.vmwareAdminClusters = buildUnnamed38();
  }
  buildCounterListVmwareAdminClustersResponse--;
  return o;
}

void checkListVmwareAdminClustersResponse(
    api.ListVmwareAdminClustersResponse o) {
  buildCounterListVmwareAdminClustersResponse++;
  if (buildCounterListVmwareAdminClustersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.unreachable!);
    checkUnnamed38(o.vmwareAdminClusters!);
  }
  buildCounterListVmwareAdminClustersResponse--;
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.List<api.VmwareCluster> buildUnnamed40() => [
      buildVmwareCluster(),
      buildVmwareCluster(),
    ];

void checkUnnamed40(core.List<api.VmwareCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareCluster(o[0]);
  checkVmwareCluster(o[1]);
}

core.int buildCounterListVmwareClustersResponse = 0;
api.ListVmwareClustersResponse buildListVmwareClustersResponse() {
  final o = api.ListVmwareClustersResponse();
  buildCounterListVmwareClustersResponse++;
  if (buildCounterListVmwareClustersResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed39();
    o.vmwareClusters = buildUnnamed40();
  }
  buildCounterListVmwareClustersResponse--;
  return o;
}

void checkListVmwareClustersResponse(api.ListVmwareClustersResponse o) {
  buildCounterListVmwareClustersResponse++;
  if (buildCounterListVmwareClustersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.unreachable!);
    checkUnnamed40(o.vmwareClusters!);
  }
  buildCounterListVmwareClustersResponse--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.List<api.VmwareNodePool> buildUnnamed42() => [
      buildVmwareNodePool(),
      buildVmwareNodePool(),
    ];

void checkUnnamed42(core.List<api.VmwareNodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareNodePool(o[0]);
  checkVmwareNodePool(o[1]);
}

core.int buildCounterListVmwareNodePoolsResponse = 0;
api.ListVmwareNodePoolsResponse buildListVmwareNodePoolsResponse() {
  final o = api.ListVmwareNodePoolsResponse();
  buildCounterListVmwareNodePoolsResponse++;
  if (buildCounterListVmwareNodePoolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed41();
    o.vmwareNodePools = buildUnnamed42();
  }
  buildCounterListVmwareNodePoolsResponse--;
  return o;
}

void checkListVmwareNodePoolsResponse(api.ListVmwareNodePoolsResponse o) {
  buildCounterListVmwareNodePoolsResponse++;
  if (buildCounterListVmwareNodePoolsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.unreachable!);
    checkUnnamed42(o.vmwareNodePools!);
  }
  buildCounterListVmwareNodePoolsResponse--;
}

core.Map<core.String, core.String> buildUnnamed43() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed43(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed43();
    o.locationId = 'foo';
    o.metadata = buildUnnamed44();
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
    checkUnnamed43(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterNodeTaint = 0;
api.NodeTaint buildNodeTaint() {
  final o = api.NodeTaint();
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    o.effect = 'foo';
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterNodeTaint--;
  return o;
}

void checkNodeTaint(api.NodeTaint o) {
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    unittest.expect(
      o.effect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeTaint--;
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

core.List<api.Binding> buildUnnamed47() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed47(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed47();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed47(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.List<api.BareMetalVersionInfo> buildUnnamed48() => [
      buildBareMetalVersionInfo(),
      buildBareMetalVersionInfo(),
    ];

void checkUnnamed48(core.List<api.BareMetalVersionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalVersionInfo(o[0]);
  checkBareMetalVersionInfo(o[1]);
}

core.int buildCounterQueryBareMetalAdminVersionConfigResponse = 0;
api.QueryBareMetalAdminVersionConfigResponse
    buildQueryBareMetalAdminVersionConfigResponse() {
  final o = api.QueryBareMetalAdminVersionConfigResponse();
  buildCounterQueryBareMetalAdminVersionConfigResponse++;
  if (buildCounterQueryBareMetalAdminVersionConfigResponse < 3) {
    o.versions = buildUnnamed48();
  }
  buildCounterQueryBareMetalAdminVersionConfigResponse--;
  return o;
}

void checkQueryBareMetalAdminVersionConfigResponse(
    api.QueryBareMetalAdminVersionConfigResponse o) {
  buildCounterQueryBareMetalAdminVersionConfigResponse++;
  if (buildCounterQueryBareMetalAdminVersionConfigResponse < 3) {
    checkUnnamed48(o.versions!);
  }
  buildCounterQueryBareMetalAdminVersionConfigResponse--;
}

core.List<api.BareMetalVersionInfo> buildUnnamed49() => [
      buildBareMetalVersionInfo(),
      buildBareMetalVersionInfo(),
    ];

void checkUnnamed49(core.List<api.BareMetalVersionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBareMetalVersionInfo(o[0]);
  checkBareMetalVersionInfo(o[1]);
}

core.int buildCounterQueryBareMetalVersionConfigResponse = 0;
api.QueryBareMetalVersionConfigResponse
    buildQueryBareMetalVersionConfigResponse() {
  final o = api.QueryBareMetalVersionConfigResponse();
  buildCounterQueryBareMetalVersionConfigResponse++;
  if (buildCounterQueryBareMetalVersionConfigResponse < 3) {
    o.versions = buildUnnamed49();
  }
  buildCounterQueryBareMetalVersionConfigResponse--;
  return o;
}

void checkQueryBareMetalVersionConfigResponse(
    api.QueryBareMetalVersionConfigResponse o) {
  buildCounterQueryBareMetalVersionConfigResponse++;
  if (buildCounterQueryBareMetalVersionConfigResponse < 3) {
    checkUnnamed49(o.versions!);
  }
  buildCounterQueryBareMetalVersionConfigResponse--;
}

core.List<api.VmwareVersionInfo> buildUnnamed50() => [
      buildVmwareVersionInfo(),
      buildVmwareVersionInfo(),
    ];

void checkUnnamed50(core.List<api.VmwareVersionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareVersionInfo(o[0]);
  checkVmwareVersionInfo(o[1]);
}

core.int buildCounterQueryVmwareVersionConfigResponse = 0;
api.QueryVmwareVersionConfigResponse buildQueryVmwareVersionConfigResponse() {
  final o = api.QueryVmwareVersionConfigResponse();
  buildCounterQueryVmwareVersionConfigResponse++;
  if (buildCounterQueryVmwareVersionConfigResponse < 3) {
    o.versions = buildUnnamed50();
  }
  buildCounterQueryVmwareVersionConfigResponse--;
  return o;
}

void checkQueryVmwareVersionConfigResponse(
    api.QueryVmwareVersionConfigResponse o) {
  buildCounterQueryVmwareVersionConfigResponse++;
  if (buildCounterQueryVmwareVersionConfigResponse < 3) {
    checkUnnamed50(o.versions!);
  }
  buildCounterQueryVmwareVersionConfigResponse--;
}

core.int buildCounterResourceCondition = 0;
api.ResourceCondition buildResourceCondition() {
  final o = api.ResourceCondition();
  buildCounterResourceCondition++;
  if (buildCounterResourceCondition < 3) {
    o.lastTransitionTime = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterResourceCondition--;
  return o;
}

void checkResourceCondition(api.ResourceCondition o) {
  buildCounterResourceCondition++;
  if (buildCounterResourceCondition < 3) {
    unittest.expect(
      o.lastTransitionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
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
  }
  buildCounterResourceCondition--;
}

core.List<api.ResourceCondition> buildUnnamed51() => [
      buildResourceCondition(),
      buildResourceCondition(),
    ];

void checkUnnamed51(core.List<api.ResourceCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceCondition(o[0]);
  checkResourceCondition(o[1]);
}

core.int buildCounterResourceStatus = 0;
api.ResourceStatus buildResourceStatus() {
  final o = api.ResourceStatus();
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    o.conditions = buildUnnamed51();
    o.errorMessage = 'foo';
  }
  buildCounterResourceStatus--;
  return o;
}

void checkResourceStatus(api.ResourceStatus o) {
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    checkUnnamed51(o.conditions!);
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceStatus--;
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

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed53() => [
      buildUnnamed52(),
      buildUnnamed52(),
    ];

void checkUnnamed53(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed52(o[0]);
  checkUnnamed52(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed53();
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
    checkUnnamed53(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed54();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed54(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed55();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed55(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpgradeDependency = 0;
api.UpgradeDependency buildUpgradeDependency() {
  final o = api.UpgradeDependency();
  buildCounterUpgradeDependency++;
  if (buildCounterUpgradeDependency < 3) {
    o.currentVersion = 'foo';
    o.membership = 'foo';
    o.resourceName = 'foo';
    o.targetVersion = 'foo';
  }
  buildCounterUpgradeDependency--;
  return o;
}

void checkUpgradeDependency(api.UpgradeDependency o) {
  buildCounterUpgradeDependency++;
  if (buildCounterUpgradeDependency < 3) {
    unittest.expect(
      o.currentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeDependency--;
}

core.int buildCounterValidationCheck = 0;
api.ValidationCheck buildValidationCheck() {
  final o = api.ValidationCheck();
  buildCounterValidationCheck++;
  if (buildCounterValidationCheck < 3) {
    o.option = 'foo';
    o.scenario = 'foo';
    o.status = buildValidationCheckStatus();
  }
  buildCounterValidationCheck--;
  return o;
}

void checkValidationCheck(api.ValidationCheck o) {
  buildCounterValidationCheck++;
  if (buildCounterValidationCheck < 3) {
    unittest.expect(
      o.option!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scenario!,
      unittest.equals('foo'),
    );
    checkValidationCheckStatus(o.status!);
  }
  buildCounterValidationCheck--;
}

core.int buildCounterValidationCheckResult = 0;
api.ValidationCheckResult buildValidationCheckResult() {
  final o = api.ValidationCheckResult();
  buildCounterValidationCheckResult++;
  if (buildCounterValidationCheckResult < 3) {
    o.category = 'foo';
    o.description = 'foo';
    o.details = 'foo';
    o.reason = 'foo';
    o.state = 'foo';
  }
  buildCounterValidationCheckResult--;
  return o;
}

void checkValidationCheckResult(api.ValidationCheckResult o) {
  buildCounterValidationCheckResult++;
  if (buildCounterValidationCheckResult < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidationCheckResult--;
}

core.List<api.ValidationCheckResult> buildUnnamed56() => [
      buildValidationCheckResult(),
      buildValidationCheckResult(),
    ];

void checkUnnamed56(core.List<api.ValidationCheckResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValidationCheckResult(o[0]);
  checkValidationCheckResult(o[1]);
}

core.int buildCounterValidationCheckStatus = 0;
api.ValidationCheckStatus buildValidationCheckStatus() {
  final o = api.ValidationCheckStatus();
  buildCounterValidationCheckStatus++;
  if (buildCounterValidationCheckStatus < 3) {
    o.result = buildUnnamed56();
  }
  buildCounterValidationCheckStatus--;
  return o;
}

void checkValidationCheckStatus(api.ValidationCheckStatus o) {
  buildCounterValidationCheckStatus++;
  if (buildCounterValidationCheckStatus < 3) {
    checkUnnamed56(o.result!);
  }
  buildCounterValidationCheckStatus--;
}

core.int buildCounterVmwareAAGConfig = 0;
api.VmwareAAGConfig buildVmwareAAGConfig() {
  final o = api.VmwareAAGConfig();
  buildCounterVmwareAAGConfig++;
  if (buildCounterVmwareAAGConfig < 3) {
    o.aagConfigDisabled = true;
  }
  buildCounterVmwareAAGConfig--;
  return o;
}

void checkVmwareAAGConfig(api.VmwareAAGConfig o) {
  buildCounterVmwareAAGConfig++;
  if (buildCounterVmwareAAGConfig < 3) {
    unittest.expect(o.aagConfigDisabled!, unittest.isTrue);
  }
  buildCounterVmwareAAGConfig--;
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterVmwareAddressPool = 0;
api.VmwareAddressPool buildVmwareAddressPool() {
  final o = api.VmwareAddressPool();
  buildCounterVmwareAddressPool++;
  if (buildCounterVmwareAddressPool < 3) {
    o.addresses = buildUnnamed57();
    o.avoidBuggyIps = true;
    o.manualAssign = true;
    o.pool = 'foo';
  }
  buildCounterVmwareAddressPool--;
  return o;
}

void checkVmwareAddressPool(api.VmwareAddressPool o) {
  buildCounterVmwareAddressPool++;
  if (buildCounterVmwareAddressPool < 3) {
    checkUnnamed57(o.addresses!);
    unittest.expect(o.avoidBuggyIps!, unittest.isTrue);
    unittest.expect(o.manualAssign!, unittest.isTrue);
    unittest.expect(
      o.pool!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareAddressPool--;
}

core.int buildCounterVmwareAdminAddonNodeConfig = 0;
api.VmwareAdminAddonNodeConfig buildVmwareAdminAddonNodeConfig() {
  final o = api.VmwareAdminAddonNodeConfig();
  buildCounterVmwareAdminAddonNodeConfig++;
  if (buildCounterVmwareAdminAddonNodeConfig < 3) {
    o.autoResizeConfig = buildVmwareAutoResizeConfig();
  }
  buildCounterVmwareAdminAddonNodeConfig--;
  return o;
}

void checkVmwareAdminAddonNodeConfig(api.VmwareAdminAddonNodeConfig o) {
  buildCounterVmwareAdminAddonNodeConfig++;
  if (buildCounterVmwareAdminAddonNodeConfig < 3) {
    checkVmwareAutoResizeConfig(o.autoResizeConfig!);
  }
  buildCounterVmwareAdminAddonNodeConfig--;
}

core.List<api.ClusterUser> buildUnnamed58() => [
      buildClusterUser(),
      buildClusterUser(),
    ];

void checkUnnamed58(core.List<api.ClusterUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUser(o[0]);
  checkClusterUser(o[1]);
}

core.int buildCounterVmwareAdminAuthorizationConfig = 0;
api.VmwareAdminAuthorizationConfig buildVmwareAdminAuthorizationConfig() {
  final o = api.VmwareAdminAuthorizationConfig();
  buildCounterVmwareAdminAuthorizationConfig++;
  if (buildCounterVmwareAdminAuthorizationConfig < 3) {
    o.viewerUsers = buildUnnamed58();
  }
  buildCounterVmwareAdminAuthorizationConfig--;
  return o;
}

void checkVmwareAdminAuthorizationConfig(api.VmwareAdminAuthorizationConfig o) {
  buildCounterVmwareAdminAuthorizationConfig++;
  if (buildCounterVmwareAdminAuthorizationConfig < 3) {
    checkUnnamed58(o.viewerUsers!);
  }
  buildCounterVmwareAdminAuthorizationConfig--;
}

core.Map<core.String, core.String> buildUnnamed59() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed59(core.Map<core.String, core.String> o) {
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

core.int buildCounterVmwareAdminCluster = 0;
api.VmwareAdminCluster buildVmwareAdminCluster() {
  final o = api.VmwareAdminCluster();
  buildCounterVmwareAdminCluster++;
  if (buildCounterVmwareAdminCluster < 3) {
    o.addonNode = buildVmwareAdminAddonNodeConfig();
    o.annotations = buildUnnamed59();
    o.antiAffinityGroups = buildVmwareAAGConfig();
    o.authorization = buildVmwareAdminAuthorizationConfig();
    o.autoRepairConfig = buildVmwareAutoRepairConfig();
    o.bootstrapClusterMembership = 'foo';
    o.controlPlaneNode = buildVmwareAdminControlPlaneNodeConfig();
    o.createTime = 'foo';
    o.description = 'foo';
    o.endpoint = 'foo';
    o.etag = 'foo';
    o.fleet = buildFleet();
    o.imageType = 'foo';
    o.loadBalancer = buildVmwareAdminLoadBalancerConfig();
    o.localName = 'foo';
    o.name = 'foo';
    o.networkConfig = buildVmwareAdminNetworkConfig();
    o.onPremVersion = 'foo';
    o.platformConfig = buildVmwarePlatformConfig();
    o.preparedSecrets = buildVmwareAdminPreparedSecretsConfig();
    o.reconciling = true;
    o.state = 'foo';
    o.status = buildResourceStatus();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vcenter = buildVmwareAdminVCenterConfig();
  }
  buildCounterVmwareAdminCluster--;
  return o;
}

void checkVmwareAdminCluster(api.VmwareAdminCluster o) {
  buildCounterVmwareAdminCluster++;
  if (buildCounterVmwareAdminCluster < 3) {
    checkVmwareAdminAddonNodeConfig(o.addonNode!);
    checkUnnamed59(o.annotations!);
    checkVmwareAAGConfig(o.antiAffinityGroups!);
    checkVmwareAdminAuthorizationConfig(o.authorization!);
    checkVmwareAutoRepairConfig(o.autoRepairConfig!);
    unittest.expect(
      o.bootstrapClusterMembership!,
      unittest.equals('foo'),
    );
    checkVmwareAdminControlPlaneNodeConfig(o.controlPlaneNode!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkFleet(o.fleet!);
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkVmwareAdminLoadBalancerConfig(o.loadBalancer!);
    unittest.expect(
      o.localName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkVmwareAdminNetworkConfig(o.networkConfig!);
    unittest.expect(
      o.onPremVersion!,
      unittest.equals('foo'),
    );
    checkVmwarePlatformConfig(o.platformConfig!);
    checkVmwareAdminPreparedSecretsConfig(o.preparedSecrets!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVmwareAdminVCenterConfig(o.vcenter!);
  }
  buildCounterVmwareAdminCluster--;
}

core.int buildCounterVmwareAdminControlPlaneNodeConfig = 0;
api.VmwareAdminControlPlaneNodeConfig buildVmwareAdminControlPlaneNodeConfig() {
  final o = api.VmwareAdminControlPlaneNodeConfig();
  buildCounterVmwareAdminControlPlaneNodeConfig++;
  if (buildCounterVmwareAdminControlPlaneNodeConfig < 3) {
    o.cpus = 'foo';
    o.memory = 'foo';
    o.replicas = 'foo';
  }
  buildCounterVmwareAdminControlPlaneNodeConfig--;
  return o;
}

void checkVmwareAdminControlPlaneNodeConfig(
    api.VmwareAdminControlPlaneNodeConfig o) {
  buildCounterVmwareAdminControlPlaneNodeConfig++;
  if (buildCounterVmwareAdminControlPlaneNodeConfig < 3) {
    unittest.expect(
      o.cpus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicas!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareAdminControlPlaneNodeConfig--;
}

core.int buildCounterVmwareAdminF5BigIpConfig = 0;
api.VmwareAdminF5BigIpConfig buildVmwareAdminF5BigIpConfig() {
  final o = api.VmwareAdminF5BigIpConfig();
  buildCounterVmwareAdminF5BigIpConfig++;
  if (buildCounterVmwareAdminF5BigIpConfig < 3) {
    o.address = 'foo';
    o.partition = 'foo';
    o.snatPool = 'foo';
  }
  buildCounterVmwareAdminF5BigIpConfig--;
  return o;
}

void checkVmwareAdminF5BigIpConfig(api.VmwareAdminF5BigIpConfig o) {
  buildCounterVmwareAdminF5BigIpConfig++;
  if (buildCounterVmwareAdminF5BigIpConfig < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snatPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareAdminF5BigIpConfig--;
}

core.int buildCounterVmwareAdminHAControlPlaneConfig = 0;
api.VmwareAdminHAControlPlaneConfig buildVmwareAdminHAControlPlaneConfig() {
  final o = api.VmwareAdminHAControlPlaneConfig();
  buildCounterVmwareAdminHAControlPlaneConfig++;
  if (buildCounterVmwareAdminHAControlPlaneConfig < 3) {
    o.controlPlaneIpBlock = buildVmwareIpBlock();
  }
  buildCounterVmwareAdminHAControlPlaneConfig--;
  return o;
}

void checkVmwareAdminHAControlPlaneConfig(
    api.VmwareAdminHAControlPlaneConfig o) {
  buildCounterVmwareAdminHAControlPlaneConfig++;
  if (buildCounterVmwareAdminHAControlPlaneConfig < 3) {
    checkVmwareIpBlock(o.controlPlaneIpBlock!);
  }
  buildCounterVmwareAdminHAControlPlaneConfig--;
}

core.int buildCounterVmwareAdminLoadBalancerConfig = 0;
api.VmwareAdminLoadBalancerConfig buildVmwareAdminLoadBalancerConfig() {
  final o = api.VmwareAdminLoadBalancerConfig();
  buildCounterVmwareAdminLoadBalancerConfig++;
  if (buildCounterVmwareAdminLoadBalancerConfig < 3) {
    o.f5Config = buildVmwareAdminF5BigIpConfig();
    o.manualLbConfig = buildVmwareAdminManualLbConfig();
    o.metalLbConfig = buildVmwareAdminMetalLbConfig();
    o.seesawConfig = buildVmwareAdminSeesawConfig();
    o.vipConfig = buildVmwareAdminVipConfig();
  }
  buildCounterVmwareAdminLoadBalancerConfig--;
  return o;
}

void checkVmwareAdminLoadBalancerConfig(api.VmwareAdminLoadBalancerConfig o) {
  buildCounterVmwareAdminLoadBalancerConfig++;
  if (buildCounterVmwareAdminLoadBalancerConfig < 3) {
    checkVmwareAdminF5BigIpConfig(o.f5Config!);
    checkVmwareAdminManualLbConfig(o.manualLbConfig!);
    checkVmwareAdminMetalLbConfig(o.metalLbConfig!);
    checkVmwareAdminSeesawConfig(o.seesawConfig!);
    checkVmwareAdminVipConfig(o.vipConfig!);
  }
  buildCounterVmwareAdminLoadBalancerConfig--;
}

core.int buildCounterVmwareAdminManualLbConfig = 0;
api.VmwareAdminManualLbConfig buildVmwareAdminManualLbConfig() {
  final o = api.VmwareAdminManualLbConfig();
  buildCounterVmwareAdminManualLbConfig++;
  if (buildCounterVmwareAdminManualLbConfig < 3) {
    o.addonsNodePort = 42;
    o.controlPlaneNodePort = 42;
    o.ingressHttpNodePort = 42;
    o.ingressHttpsNodePort = 42;
    o.konnectivityServerNodePort = 42;
  }
  buildCounterVmwareAdminManualLbConfig--;
  return o;
}

void checkVmwareAdminManualLbConfig(api.VmwareAdminManualLbConfig o) {
  buildCounterVmwareAdminManualLbConfig++;
  if (buildCounterVmwareAdminManualLbConfig < 3) {
    unittest.expect(
      o.addonsNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.controlPlaneNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ingressHttpNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ingressHttpsNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.konnectivityServerNodePort!,
      unittest.equals(42),
    );
  }
  buildCounterVmwareAdminManualLbConfig--;
}

core.int buildCounterVmwareAdminMetalLbConfig = 0;
api.VmwareAdminMetalLbConfig buildVmwareAdminMetalLbConfig() {
  final o = api.VmwareAdminMetalLbConfig();
  buildCounterVmwareAdminMetalLbConfig++;
  if (buildCounterVmwareAdminMetalLbConfig < 3) {}
  buildCounterVmwareAdminMetalLbConfig--;
  return o;
}

void checkVmwareAdminMetalLbConfig(api.VmwareAdminMetalLbConfig o) {
  buildCounterVmwareAdminMetalLbConfig++;
  if (buildCounterVmwareAdminMetalLbConfig < 3) {}
  buildCounterVmwareAdminMetalLbConfig--;
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

core.int buildCounterVmwareAdminNetworkConfig = 0;
api.VmwareAdminNetworkConfig buildVmwareAdminNetworkConfig() {
  final o = api.VmwareAdminNetworkConfig();
  buildCounterVmwareAdminNetworkConfig++;
  if (buildCounterVmwareAdminNetworkConfig < 3) {
    o.dhcpIpConfig = buildVmwareDhcpIpConfig();
    o.haControlPlaneConfig = buildVmwareAdminHAControlPlaneConfig();
    o.hostConfig = buildVmwareHostConfig();
    o.podAddressCidrBlocks = buildUnnamed60();
    o.serviceAddressCidrBlocks = buildUnnamed61();
    o.staticIpConfig = buildVmwareStaticIpConfig();
    o.vcenterNetwork = 'foo';
  }
  buildCounterVmwareAdminNetworkConfig--;
  return o;
}

void checkVmwareAdminNetworkConfig(api.VmwareAdminNetworkConfig o) {
  buildCounterVmwareAdminNetworkConfig++;
  if (buildCounterVmwareAdminNetworkConfig < 3) {
    checkVmwareDhcpIpConfig(o.dhcpIpConfig!);
    checkVmwareAdminHAControlPlaneConfig(o.haControlPlaneConfig!);
    checkVmwareHostConfig(o.hostConfig!);
    checkUnnamed60(o.podAddressCidrBlocks!);
    checkUnnamed61(o.serviceAddressCidrBlocks!);
    checkVmwareStaticIpConfig(o.staticIpConfig!);
    unittest.expect(
      o.vcenterNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareAdminNetworkConfig--;
}

core.int buildCounterVmwareAdminPreparedSecretsConfig = 0;
api.VmwareAdminPreparedSecretsConfig buildVmwareAdminPreparedSecretsConfig() {
  final o = api.VmwareAdminPreparedSecretsConfig();
  buildCounterVmwareAdminPreparedSecretsConfig++;
  if (buildCounterVmwareAdminPreparedSecretsConfig < 3) {
    o.enabled = true;
  }
  buildCounterVmwareAdminPreparedSecretsConfig--;
  return o;
}

void checkVmwareAdminPreparedSecretsConfig(
    api.VmwareAdminPreparedSecretsConfig o) {
  buildCounterVmwareAdminPreparedSecretsConfig++;
  if (buildCounterVmwareAdminPreparedSecretsConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVmwareAdminPreparedSecretsConfig--;
}

core.List<api.VmwareIpBlock> buildUnnamed62() => [
      buildVmwareIpBlock(),
      buildVmwareIpBlock(),
    ];

void checkUnnamed62(core.List<api.VmwareIpBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareIpBlock(o[0]);
  checkVmwareIpBlock(o[1]);
}

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.int buildCounterVmwareAdminSeesawConfig = 0;
api.VmwareAdminSeesawConfig buildVmwareAdminSeesawConfig() {
  final o = api.VmwareAdminSeesawConfig();
  buildCounterVmwareAdminSeesawConfig++;
  if (buildCounterVmwareAdminSeesawConfig < 3) {
    o.enableHa = true;
    o.group = 'foo';
    o.ipBlocks = buildUnnamed62();
    o.masterIp = 'foo';
    o.stackdriverName = 'foo';
    o.vms = buildUnnamed63();
  }
  buildCounterVmwareAdminSeesawConfig--;
  return o;
}

void checkVmwareAdminSeesawConfig(api.VmwareAdminSeesawConfig o) {
  buildCounterVmwareAdminSeesawConfig++;
  if (buildCounterVmwareAdminSeesawConfig < 3) {
    unittest.expect(o.enableHa!, unittest.isTrue);
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.ipBlocks!);
    unittest.expect(
      o.masterIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stackdriverName!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.vms!);
  }
  buildCounterVmwareAdminSeesawConfig--;
}

core.int buildCounterVmwareAdminVCenterConfig = 0;
api.VmwareAdminVCenterConfig buildVmwareAdminVCenterConfig() {
  final o = api.VmwareAdminVCenterConfig();
  buildCounterVmwareAdminVCenterConfig++;
  if (buildCounterVmwareAdminVCenterConfig < 3) {
    o.address = 'foo';
    o.caCertData = 'foo';
    o.cluster = 'foo';
    o.dataDisk = 'foo';
    o.datacenter = 'foo';
    o.datastore = 'foo';
    o.folder = 'foo';
    o.resourcePool = 'foo';
    o.storagePolicyName = 'foo';
  }
  buildCounterVmwareAdminVCenterConfig--;
  return o;
}

void checkVmwareAdminVCenterConfig(api.VmwareAdminVCenterConfig o) {
  buildCounterVmwareAdminVCenterConfig++;
  if (buildCounterVmwareAdminVCenterConfig < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.caCertData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDisk!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datacenter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datastore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourcePool!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storagePolicyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareAdminVCenterConfig--;
}

core.int buildCounterVmwareAdminVipConfig = 0;
api.VmwareAdminVipConfig buildVmwareAdminVipConfig() {
  final o = api.VmwareAdminVipConfig();
  buildCounterVmwareAdminVipConfig++;
  if (buildCounterVmwareAdminVipConfig < 3) {
    o.addonsVip = 'foo';
    o.controlPlaneVip = 'foo';
  }
  buildCounterVmwareAdminVipConfig--;
  return o;
}

void checkVmwareAdminVipConfig(api.VmwareAdminVipConfig o) {
  buildCounterVmwareAdminVipConfig++;
  if (buildCounterVmwareAdminVipConfig < 3) {
    unittest.expect(
      o.addonsVip!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.controlPlaneVip!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareAdminVipConfig--;
}

core.int buildCounterVmwareAutoRepairConfig = 0;
api.VmwareAutoRepairConfig buildVmwareAutoRepairConfig() {
  final o = api.VmwareAutoRepairConfig();
  buildCounterVmwareAutoRepairConfig++;
  if (buildCounterVmwareAutoRepairConfig < 3) {
    o.enabled = true;
  }
  buildCounterVmwareAutoRepairConfig--;
  return o;
}

void checkVmwareAutoRepairConfig(api.VmwareAutoRepairConfig o) {
  buildCounterVmwareAutoRepairConfig++;
  if (buildCounterVmwareAutoRepairConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVmwareAutoRepairConfig--;
}

core.int buildCounterVmwareAutoResizeConfig = 0;
api.VmwareAutoResizeConfig buildVmwareAutoResizeConfig() {
  final o = api.VmwareAutoResizeConfig();
  buildCounterVmwareAutoResizeConfig++;
  if (buildCounterVmwareAutoResizeConfig < 3) {
    o.enabled = true;
  }
  buildCounterVmwareAutoResizeConfig--;
  return o;
}

void checkVmwareAutoResizeConfig(api.VmwareAutoResizeConfig o) {
  buildCounterVmwareAutoResizeConfig++;
  if (buildCounterVmwareAutoResizeConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVmwareAutoResizeConfig--;
}

core.int buildCounterVmwareBundleConfig = 0;
api.VmwareBundleConfig buildVmwareBundleConfig() {
  final o = api.VmwareBundleConfig();
  buildCounterVmwareBundleConfig++;
  if (buildCounterVmwareBundleConfig < 3) {
    o.status = buildResourceStatus();
    o.version = 'foo';
  }
  buildCounterVmwareBundleConfig--;
  return o;
}

void checkVmwareBundleConfig(api.VmwareBundleConfig o) {
  buildCounterVmwareBundleConfig++;
  if (buildCounterVmwareBundleConfig < 3) {
    checkResourceStatus(o.status!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareBundleConfig--;
}

core.Map<core.String, core.String> buildUnnamed64() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed64(core.Map<core.String, core.String> o) {
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

core.int buildCounterVmwareCluster = 0;
api.VmwareCluster buildVmwareCluster() {
  final o = api.VmwareCluster();
  buildCounterVmwareCluster++;
  if (buildCounterVmwareCluster < 3) {
    o.adminClusterMembership = 'foo';
    o.adminClusterName = 'foo';
    o.annotations = buildUnnamed64();
    o.antiAffinityGroups = buildVmwareAAGConfig();
    o.authorization = buildAuthorization();
    o.autoRepairConfig = buildVmwareAutoRepairConfig();
    o.binaryAuthorization = buildBinaryAuthorization();
    o.controlPlaneNode = buildVmwareControlPlaneNodeConfig();
    o.createTime = 'foo';
    o.dataplaneV2 = buildVmwareDataplaneV2Config();
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.disableBundledIngress = true;
    o.enableControlPlaneV2 = true;
    o.endpoint = 'foo';
    o.etag = 'foo';
    o.fleet = buildFleet();
    o.loadBalancer = buildVmwareLoadBalancerConfig();
    o.localName = 'foo';
    o.name = 'foo';
    o.networkConfig = buildVmwareNetworkConfig();
    o.onPremVersion = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.status = buildResourceStatus();
    o.storage = buildVmwareStorageConfig();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.upgradePolicy = buildVmwareClusterUpgradePolicy();
    o.validationCheck = buildValidationCheck();
    o.vcenter = buildVmwareVCenterConfig();
    o.vmTrackingEnabled = true;
  }
  buildCounterVmwareCluster--;
  return o;
}

void checkVmwareCluster(api.VmwareCluster o) {
  buildCounterVmwareCluster++;
  if (buildCounterVmwareCluster < 3) {
    unittest.expect(
      o.adminClusterMembership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adminClusterName!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.annotations!);
    checkVmwareAAGConfig(o.antiAffinityGroups!);
    checkAuthorization(o.authorization!);
    checkVmwareAutoRepairConfig(o.autoRepairConfig!);
    checkBinaryAuthorization(o.binaryAuthorization!);
    checkVmwareControlPlaneNodeConfig(o.controlPlaneNode!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkVmwareDataplaneV2Config(o.dataplaneV2!);
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableBundledIngress!, unittest.isTrue);
    unittest.expect(o.enableControlPlaneV2!, unittest.isTrue);
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkFleet(o.fleet!);
    checkVmwareLoadBalancerConfig(o.loadBalancer!);
    unittest.expect(
      o.localName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkVmwareNetworkConfig(o.networkConfig!);
    unittest.expect(
      o.onPremVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
    checkVmwareStorageConfig(o.storage!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVmwareClusterUpgradePolicy(o.upgradePolicy!);
    checkValidationCheck(o.validationCheck!);
    checkVmwareVCenterConfig(o.vcenter!);
    unittest.expect(o.vmTrackingEnabled!, unittest.isTrue);
  }
  buildCounterVmwareCluster--;
}

core.int buildCounterVmwareClusterUpgradePolicy = 0;
api.VmwareClusterUpgradePolicy buildVmwareClusterUpgradePolicy() {
  final o = api.VmwareClusterUpgradePolicy();
  buildCounterVmwareClusterUpgradePolicy++;
  if (buildCounterVmwareClusterUpgradePolicy < 3) {
    o.controlPlaneOnly = true;
  }
  buildCounterVmwareClusterUpgradePolicy--;
  return o;
}

void checkVmwareClusterUpgradePolicy(api.VmwareClusterUpgradePolicy o) {
  buildCounterVmwareClusterUpgradePolicy++;
  if (buildCounterVmwareClusterUpgradePolicy < 3) {
    unittest.expect(o.controlPlaneOnly!, unittest.isTrue);
  }
  buildCounterVmwareClusterUpgradePolicy--;
}

core.int buildCounterVmwareControlPlaneNodeConfig = 0;
api.VmwareControlPlaneNodeConfig buildVmwareControlPlaneNodeConfig() {
  final o = api.VmwareControlPlaneNodeConfig();
  buildCounterVmwareControlPlaneNodeConfig++;
  if (buildCounterVmwareControlPlaneNodeConfig < 3) {
    o.autoResizeConfig = buildVmwareAutoResizeConfig();
    o.cpus = 'foo';
    o.memory = 'foo';
    o.replicas = 'foo';
    o.vsphereConfig = buildVmwareControlPlaneVsphereConfig();
  }
  buildCounterVmwareControlPlaneNodeConfig--;
  return o;
}

void checkVmwareControlPlaneNodeConfig(api.VmwareControlPlaneNodeConfig o) {
  buildCounterVmwareControlPlaneNodeConfig++;
  if (buildCounterVmwareControlPlaneNodeConfig < 3) {
    checkVmwareAutoResizeConfig(o.autoResizeConfig!);
    unittest.expect(
      o.cpus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicas!,
      unittest.equals('foo'),
    );
    checkVmwareControlPlaneVsphereConfig(o.vsphereConfig!);
  }
  buildCounterVmwareControlPlaneNodeConfig--;
}

core.int buildCounterVmwareControlPlaneV2Config = 0;
api.VmwareControlPlaneV2Config buildVmwareControlPlaneV2Config() {
  final o = api.VmwareControlPlaneV2Config();
  buildCounterVmwareControlPlaneV2Config++;
  if (buildCounterVmwareControlPlaneV2Config < 3) {
    o.controlPlaneIpBlock = buildVmwareIpBlock();
  }
  buildCounterVmwareControlPlaneV2Config--;
  return o;
}

void checkVmwareControlPlaneV2Config(api.VmwareControlPlaneV2Config o) {
  buildCounterVmwareControlPlaneV2Config++;
  if (buildCounterVmwareControlPlaneV2Config < 3) {
    checkVmwareIpBlock(o.controlPlaneIpBlock!);
  }
  buildCounterVmwareControlPlaneV2Config--;
}

core.int buildCounterVmwareControlPlaneVsphereConfig = 0;
api.VmwareControlPlaneVsphereConfig buildVmwareControlPlaneVsphereConfig() {
  final o = api.VmwareControlPlaneVsphereConfig();
  buildCounterVmwareControlPlaneVsphereConfig++;
  if (buildCounterVmwareControlPlaneVsphereConfig < 3) {
    o.datastore = 'foo';
    o.storagePolicyName = 'foo';
  }
  buildCounterVmwareControlPlaneVsphereConfig--;
  return o;
}

void checkVmwareControlPlaneVsphereConfig(
    api.VmwareControlPlaneVsphereConfig o) {
  buildCounterVmwareControlPlaneVsphereConfig++;
  if (buildCounterVmwareControlPlaneVsphereConfig < 3) {
    unittest.expect(
      o.datastore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storagePolicyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareControlPlaneVsphereConfig--;
}

core.int buildCounterVmwareDataplaneV2Config = 0;
api.VmwareDataplaneV2Config buildVmwareDataplaneV2Config() {
  final o = api.VmwareDataplaneV2Config();
  buildCounterVmwareDataplaneV2Config++;
  if (buildCounterVmwareDataplaneV2Config < 3) {
    o.advancedNetworking = true;
    o.dataplaneV2Enabled = true;
    o.forwardMode = 'foo';
    o.windowsDataplaneV2Enabled = true;
  }
  buildCounterVmwareDataplaneV2Config--;
  return o;
}

void checkVmwareDataplaneV2Config(api.VmwareDataplaneV2Config o) {
  buildCounterVmwareDataplaneV2Config++;
  if (buildCounterVmwareDataplaneV2Config < 3) {
    unittest.expect(o.advancedNetworking!, unittest.isTrue);
    unittest.expect(o.dataplaneV2Enabled!, unittest.isTrue);
    unittest.expect(
      o.forwardMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.windowsDataplaneV2Enabled!, unittest.isTrue);
  }
  buildCounterVmwareDataplaneV2Config--;
}

core.int buildCounterVmwareDhcpIpConfig = 0;
api.VmwareDhcpIpConfig buildVmwareDhcpIpConfig() {
  final o = api.VmwareDhcpIpConfig();
  buildCounterVmwareDhcpIpConfig++;
  if (buildCounterVmwareDhcpIpConfig < 3) {
    o.enabled = true;
  }
  buildCounterVmwareDhcpIpConfig--;
  return o;
}

void checkVmwareDhcpIpConfig(api.VmwareDhcpIpConfig o) {
  buildCounterVmwareDhcpIpConfig++;
  if (buildCounterVmwareDhcpIpConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVmwareDhcpIpConfig--;
}

core.int buildCounterVmwareF5BigIpConfig = 0;
api.VmwareF5BigIpConfig buildVmwareF5BigIpConfig() {
  final o = api.VmwareF5BigIpConfig();
  buildCounterVmwareF5BigIpConfig++;
  if (buildCounterVmwareF5BigIpConfig < 3) {
    o.address = 'foo';
    o.partition = 'foo';
    o.snatPool = 'foo';
  }
  buildCounterVmwareF5BigIpConfig--;
  return o;
}

void checkVmwareF5BigIpConfig(api.VmwareF5BigIpConfig o) {
  buildCounterVmwareF5BigIpConfig++;
  if (buildCounterVmwareF5BigIpConfig < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snatPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareF5BigIpConfig--;
}

core.List<core.String> buildUnnamed65() => [
      'foo',
      'foo',
    ];

void checkUnnamed65(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
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

core.int buildCounterVmwareHostConfig = 0;
api.VmwareHostConfig buildVmwareHostConfig() {
  final o = api.VmwareHostConfig();
  buildCounterVmwareHostConfig++;
  if (buildCounterVmwareHostConfig < 3) {
    o.dnsSearchDomains = buildUnnamed65();
    o.dnsServers = buildUnnamed66();
    o.ntpServers = buildUnnamed67();
  }
  buildCounterVmwareHostConfig--;
  return o;
}

void checkVmwareHostConfig(api.VmwareHostConfig o) {
  buildCounterVmwareHostConfig++;
  if (buildCounterVmwareHostConfig < 3) {
    checkUnnamed65(o.dnsSearchDomains!);
    checkUnnamed66(o.dnsServers!);
    checkUnnamed67(o.ntpServers!);
  }
  buildCounterVmwareHostConfig--;
}

core.int buildCounterVmwareHostIp = 0;
api.VmwareHostIp buildVmwareHostIp() {
  final o = api.VmwareHostIp();
  buildCounterVmwareHostIp++;
  if (buildCounterVmwareHostIp < 3) {
    o.hostname = 'foo';
    o.ip = 'foo';
  }
  buildCounterVmwareHostIp--;
  return o;
}

void checkVmwareHostIp(api.VmwareHostIp o) {
  buildCounterVmwareHostIp++;
  if (buildCounterVmwareHostIp < 3) {
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ip!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareHostIp--;
}

core.List<api.VmwareHostIp> buildUnnamed68() => [
      buildVmwareHostIp(),
      buildVmwareHostIp(),
    ];

void checkUnnamed68(core.List<api.VmwareHostIp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareHostIp(o[0]);
  checkVmwareHostIp(o[1]);
}

core.int buildCounterVmwareIpBlock = 0;
api.VmwareIpBlock buildVmwareIpBlock() {
  final o = api.VmwareIpBlock();
  buildCounterVmwareIpBlock++;
  if (buildCounterVmwareIpBlock < 3) {
    o.gateway = 'foo';
    o.ips = buildUnnamed68();
    o.netmask = 'foo';
  }
  buildCounterVmwareIpBlock--;
  return o;
}

void checkVmwareIpBlock(api.VmwareIpBlock o) {
  buildCounterVmwareIpBlock++;
  if (buildCounterVmwareIpBlock < 3) {
    unittest.expect(
      o.gateway!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.ips!);
    unittest.expect(
      o.netmask!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareIpBlock--;
}

core.int buildCounterVmwareLoadBalancerConfig = 0;
api.VmwareLoadBalancerConfig buildVmwareLoadBalancerConfig() {
  final o = api.VmwareLoadBalancerConfig();
  buildCounterVmwareLoadBalancerConfig++;
  if (buildCounterVmwareLoadBalancerConfig < 3) {
    o.f5Config = buildVmwareF5BigIpConfig();
    o.manualLbConfig = buildVmwareManualLbConfig();
    o.metalLbConfig = buildVmwareMetalLbConfig();
    o.seesawConfig = buildVmwareSeesawConfig();
    o.vipConfig = buildVmwareVipConfig();
  }
  buildCounterVmwareLoadBalancerConfig--;
  return o;
}

void checkVmwareLoadBalancerConfig(api.VmwareLoadBalancerConfig o) {
  buildCounterVmwareLoadBalancerConfig++;
  if (buildCounterVmwareLoadBalancerConfig < 3) {
    checkVmwareF5BigIpConfig(o.f5Config!);
    checkVmwareManualLbConfig(o.manualLbConfig!);
    checkVmwareMetalLbConfig(o.metalLbConfig!);
    checkVmwareSeesawConfig(o.seesawConfig!);
    checkVmwareVipConfig(o.vipConfig!);
  }
  buildCounterVmwareLoadBalancerConfig--;
}

core.int buildCounterVmwareManualLbConfig = 0;
api.VmwareManualLbConfig buildVmwareManualLbConfig() {
  final o = api.VmwareManualLbConfig();
  buildCounterVmwareManualLbConfig++;
  if (buildCounterVmwareManualLbConfig < 3) {
    o.controlPlaneNodePort = 42;
    o.ingressHttpNodePort = 42;
    o.ingressHttpsNodePort = 42;
    o.konnectivityServerNodePort = 42;
  }
  buildCounterVmwareManualLbConfig--;
  return o;
}

void checkVmwareManualLbConfig(api.VmwareManualLbConfig o) {
  buildCounterVmwareManualLbConfig++;
  if (buildCounterVmwareManualLbConfig < 3) {
    unittest.expect(
      o.controlPlaneNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ingressHttpNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ingressHttpsNodePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.konnectivityServerNodePort!,
      unittest.equals(42),
    );
  }
  buildCounterVmwareManualLbConfig--;
}

core.List<api.VmwareAddressPool> buildUnnamed69() => [
      buildVmwareAddressPool(),
      buildVmwareAddressPool(),
    ];

void checkUnnamed69(core.List<api.VmwareAddressPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareAddressPool(o[0]);
  checkVmwareAddressPool(o[1]);
}

core.int buildCounterVmwareMetalLbConfig = 0;
api.VmwareMetalLbConfig buildVmwareMetalLbConfig() {
  final o = api.VmwareMetalLbConfig();
  buildCounterVmwareMetalLbConfig++;
  if (buildCounterVmwareMetalLbConfig < 3) {
    o.addressPools = buildUnnamed69();
  }
  buildCounterVmwareMetalLbConfig--;
  return o;
}

void checkVmwareMetalLbConfig(api.VmwareMetalLbConfig o) {
  buildCounterVmwareMetalLbConfig++;
  if (buildCounterVmwareMetalLbConfig < 3) {
    checkUnnamed69(o.addressPools!);
  }
  buildCounterVmwareMetalLbConfig--;
}

core.List<core.String> buildUnnamed70() => [
      'foo',
      'foo',
    ];

void checkUnnamed70(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.int buildCounterVmwareNetworkConfig = 0;
api.VmwareNetworkConfig buildVmwareNetworkConfig() {
  final o = api.VmwareNetworkConfig();
  buildCounterVmwareNetworkConfig++;
  if (buildCounterVmwareNetworkConfig < 3) {
    o.controlPlaneV2Config = buildVmwareControlPlaneV2Config();
    o.dhcpIpConfig = buildVmwareDhcpIpConfig();
    o.hostConfig = buildVmwareHostConfig();
    o.podAddressCidrBlocks = buildUnnamed70();
    o.serviceAddressCidrBlocks = buildUnnamed71();
    o.staticIpConfig = buildVmwareStaticIpConfig();
    o.vcenterNetwork = 'foo';
  }
  buildCounterVmwareNetworkConfig--;
  return o;
}

void checkVmwareNetworkConfig(api.VmwareNetworkConfig o) {
  buildCounterVmwareNetworkConfig++;
  if (buildCounterVmwareNetworkConfig < 3) {
    checkVmwareControlPlaneV2Config(o.controlPlaneV2Config!);
    checkVmwareDhcpIpConfig(o.dhcpIpConfig!);
    checkVmwareHostConfig(o.hostConfig!);
    checkUnnamed70(o.podAddressCidrBlocks!);
    checkUnnamed71(o.serviceAddressCidrBlocks!);
    checkVmwareStaticIpConfig(o.staticIpConfig!);
    unittest.expect(
      o.vcenterNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareNetworkConfig--;
}

core.Map<core.String, core.String> buildUnnamed72() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed72(core.Map<core.String, core.String> o) {
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

core.List<api.NodeTaint> buildUnnamed73() => [
      buildNodeTaint(),
      buildNodeTaint(),
    ];

void checkUnnamed73(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterVmwareNodeConfig = 0;
api.VmwareNodeConfig buildVmwareNodeConfig() {
  final o = api.VmwareNodeConfig();
  buildCounterVmwareNodeConfig++;
  if (buildCounterVmwareNodeConfig < 3) {
    o.bootDiskSizeGb = 'foo';
    o.cpus = 'foo';
    o.enableLoadBalancer = true;
    o.image = 'foo';
    o.imageType = 'foo';
    o.labels = buildUnnamed72();
    o.memoryMb = 'foo';
    o.replicas = 'foo';
    o.taints = buildUnnamed73();
    o.vsphereConfig = buildVmwareVsphereConfig();
  }
  buildCounterVmwareNodeConfig--;
  return o;
}

void checkVmwareNodeConfig(api.VmwareNodeConfig o) {
  buildCounterVmwareNodeConfig++;
  if (buildCounterVmwareNodeConfig < 3) {
    unittest.expect(
      o.bootDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableLoadBalancer!, unittest.isTrue);
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkUnnamed72(o.labels!);
    unittest.expect(
      o.memoryMb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicas!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.taints!);
    checkVmwareVsphereConfig(o.vsphereConfig!);
  }
  buildCounterVmwareNodeConfig--;
}

core.Map<core.String, core.String> buildUnnamed74() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed74(core.Map<core.String, core.String> o) {
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

core.int buildCounterVmwareNodePool = 0;
api.VmwareNodePool buildVmwareNodePool() {
  final o = api.VmwareNodePool();
  buildCounterVmwareNodePool++;
  if (buildCounterVmwareNodePool < 3) {
    o.annotations = buildUnnamed74();
    o.config = buildVmwareNodeConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.nodePoolAutoscaling = buildVmwareNodePoolAutoscalingConfig();
    o.onPremVersion = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.status = buildResourceStatus();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterVmwareNodePool--;
  return o;
}

void checkVmwareNodePool(api.VmwareNodePool o) {
  buildCounterVmwareNodePool++;
  if (buildCounterVmwareNodePool < 3) {
    checkUnnamed74(o.annotations!);
    checkVmwareNodeConfig(o.config!);
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
    checkVmwareNodePoolAutoscalingConfig(o.nodePoolAutoscaling!);
    unittest.expect(
      o.onPremVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareNodePool--;
}

core.int buildCounterVmwareNodePoolAutoscalingConfig = 0;
api.VmwareNodePoolAutoscalingConfig buildVmwareNodePoolAutoscalingConfig() {
  final o = api.VmwareNodePoolAutoscalingConfig();
  buildCounterVmwareNodePoolAutoscalingConfig++;
  if (buildCounterVmwareNodePoolAutoscalingConfig < 3) {
    o.maxReplicas = 42;
    o.minReplicas = 42;
  }
  buildCounterVmwareNodePoolAutoscalingConfig--;
  return o;
}

void checkVmwareNodePoolAutoscalingConfig(
    api.VmwareNodePoolAutoscalingConfig o) {
  buildCounterVmwareNodePoolAutoscalingConfig++;
  if (buildCounterVmwareNodePoolAutoscalingConfig < 3) {
    unittest.expect(
      o.maxReplicas!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minReplicas!,
      unittest.equals(42),
    );
  }
  buildCounterVmwareNodePoolAutoscalingConfig--;
}

core.List<api.VmwareBundleConfig> buildUnnamed75() => [
      buildVmwareBundleConfig(),
      buildVmwareBundleConfig(),
    ];

void checkUnnamed75(core.List<api.VmwareBundleConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareBundleConfig(o[0]);
  checkVmwareBundleConfig(o[1]);
}

core.int buildCounterVmwarePlatformConfig = 0;
api.VmwarePlatformConfig buildVmwarePlatformConfig() {
  final o = api.VmwarePlatformConfig();
  buildCounterVmwarePlatformConfig++;
  if (buildCounterVmwarePlatformConfig < 3) {
    o.bundles = buildUnnamed75();
    o.platformVersion = 'foo';
    o.requiredPlatformVersion = 'foo';
    o.status = buildResourceStatus();
  }
  buildCounterVmwarePlatformConfig--;
  return o;
}

void checkVmwarePlatformConfig(api.VmwarePlatformConfig o) {
  buildCounterVmwarePlatformConfig++;
  if (buildCounterVmwarePlatformConfig < 3) {
    checkUnnamed75(o.bundles!);
    unittest.expect(
      o.platformVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requiredPlatformVersion!,
      unittest.equals('foo'),
    );
    checkResourceStatus(o.status!);
  }
  buildCounterVmwarePlatformConfig--;
}

core.List<api.VmwareIpBlock> buildUnnamed76() => [
      buildVmwareIpBlock(),
      buildVmwareIpBlock(),
    ];

void checkUnnamed76(core.List<api.VmwareIpBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareIpBlock(o[0]);
  checkVmwareIpBlock(o[1]);
}

core.List<core.String> buildUnnamed77() => [
      'foo',
      'foo',
    ];

void checkUnnamed77(core.List<core.String> o) {
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

core.int buildCounterVmwareSeesawConfig = 0;
api.VmwareSeesawConfig buildVmwareSeesawConfig() {
  final o = api.VmwareSeesawConfig();
  buildCounterVmwareSeesawConfig++;
  if (buildCounterVmwareSeesawConfig < 3) {
    o.enableHa = true;
    o.group = 'foo';
    o.ipBlocks = buildUnnamed76();
    o.masterIp = 'foo';
    o.stackdriverName = 'foo';
    o.vms = buildUnnamed77();
  }
  buildCounterVmwareSeesawConfig--;
  return o;
}

void checkVmwareSeesawConfig(api.VmwareSeesawConfig o) {
  buildCounterVmwareSeesawConfig++;
  if (buildCounterVmwareSeesawConfig < 3) {
    unittest.expect(o.enableHa!, unittest.isTrue);
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.ipBlocks!);
    unittest.expect(
      o.masterIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stackdriverName!,
      unittest.equals('foo'),
    );
    checkUnnamed77(o.vms!);
  }
  buildCounterVmwareSeesawConfig--;
}

core.List<api.VmwareIpBlock> buildUnnamed78() => [
      buildVmwareIpBlock(),
      buildVmwareIpBlock(),
    ];

void checkUnnamed78(core.List<api.VmwareIpBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareIpBlock(o[0]);
  checkVmwareIpBlock(o[1]);
}

core.int buildCounterVmwareStaticIpConfig = 0;
api.VmwareStaticIpConfig buildVmwareStaticIpConfig() {
  final o = api.VmwareStaticIpConfig();
  buildCounterVmwareStaticIpConfig++;
  if (buildCounterVmwareStaticIpConfig < 3) {
    o.ipBlocks = buildUnnamed78();
  }
  buildCounterVmwareStaticIpConfig--;
  return o;
}

void checkVmwareStaticIpConfig(api.VmwareStaticIpConfig o) {
  buildCounterVmwareStaticIpConfig++;
  if (buildCounterVmwareStaticIpConfig < 3) {
    checkUnnamed78(o.ipBlocks!);
  }
  buildCounterVmwareStaticIpConfig--;
}

core.int buildCounterVmwareStorageConfig = 0;
api.VmwareStorageConfig buildVmwareStorageConfig() {
  final o = api.VmwareStorageConfig();
  buildCounterVmwareStorageConfig++;
  if (buildCounterVmwareStorageConfig < 3) {
    o.vsphereCsiDisabled = true;
  }
  buildCounterVmwareStorageConfig--;
  return o;
}

void checkVmwareStorageConfig(api.VmwareStorageConfig o) {
  buildCounterVmwareStorageConfig++;
  if (buildCounterVmwareStorageConfig < 3) {
    unittest.expect(o.vsphereCsiDisabled!, unittest.isTrue);
  }
  buildCounterVmwareStorageConfig--;
}

core.int buildCounterVmwareVCenterConfig = 0;
api.VmwareVCenterConfig buildVmwareVCenterConfig() {
  final o = api.VmwareVCenterConfig();
  buildCounterVmwareVCenterConfig++;
  if (buildCounterVmwareVCenterConfig < 3) {
    o.address = 'foo';
    o.caCertData = 'foo';
    o.cluster = 'foo';
    o.datacenter = 'foo';
    o.datastore = 'foo';
    o.folder = 'foo';
    o.resourcePool = 'foo';
    o.storagePolicyName = 'foo';
  }
  buildCounterVmwareVCenterConfig--;
  return o;
}

void checkVmwareVCenterConfig(api.VmwareVCenterConfig o) {
  buildCounterVmwareVCenterConfig++;
  if (buildCounterVmwareVCenterConfig < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.caCertData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datacenter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datastore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourcePool!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storagePolicyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareVCenterConfig--;
}

core.List<api.UpgradeDependency> buildUnnamed79() => [
      buildUpgradeDependency(),
      buildUpgradeDependency(),
    ];

void checkUnnamed79(core.List<api.UpgradeDependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeDependency(o[0]);
  checkUpgradeDependency(o[1]);
}

core.int buildCounterVmwareVersionInfo = 0;
api.VmwareVersionInfo buildVmwareVersionInfo() {
  final o = api.VmwareVersionInfo();
  buildCounterVmwareVersionInfo++;
  if (buildCounterVmwareVersionInfo < 3) {
    o.dependencies = buildUnnamed79();
    o.hasDependencies = true;
    o.isInstalled = true;
    o.version = 'foo';
  }
  buildCounterVmwareVersionInfo--;
  return o;
}

void checkVmwareVersionInfo(api.VmwareVersionInfo o) {
  buildCounterVmwareVersionInfo++;
  if (buildCounterVmwareVersionInfo < 3) {
    checkUnnamed79(o.dependencies!);
    unittest.expect(o.hasDependencies!, unittest.isTrue);
    unittest.expect(o.isInstalled!, unittest.isTrue);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareVersionInfo--;
}

core.int buildCounterVmwareVipConfig = 0;
api.VmwareVipConfig buildVmwareVipConfig() {
  final o = api.VmwareVipConfig();
  buildCounterVmwareVipConfig++;
  if (buildCounterVmwareVipConfig < 3) {
    o.controlPlaneVip = 'foo';
    o.ingressVip = 'foo';
  }
  buildCounterVmwareVipConfig--;
  return o;
}

void checkVmwareVipConfig(api.VmwareVipConfig o) {
  buildCounterVmwareVipConfig++;
  if (buildCounterVmwareVipConfig < 3) {
    unittest.expect(
      o.controlPlaneVip!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ingressVip!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareVipConfig--;
}

core.List<core.String> buildUnnamed80() => [
      'foo',
      'foo',
    ];

void checkUnnamed80(core.List<core.String> o) {
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

core.List<api.VmwareVsphereTag> buildUnnamed81() => [
      buildVmwareVsphereTag(),
      buildVmwareVsphereTag(),
    ];

void checkUnnamed81(core.List<api.VmwareVsphereTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareVsphereTag(o[0]);
  checkVmwareVsphereTag(o[1]);
}

core.int buildCounterVmwareVsphereConfig = 0;
api.VmwareVsphereConfig buildVmwareVsphereConfig() {
  final o = api.VmwareVsphereConfig();
  buildCounterVmwareVsphereConfig++;
  if (buildCounterVmwareVsphereConfig < 3) {
    o.datastore = 'foo';
    o.hostGroups = buildUnnamed80();
    o.tags = buildUnnamed81();
  }
  buildCounterVmwareVsphereConfig--;
  return o;
}

void checkVmwareVsphereConfig(api.VmwareVsphereConfig o) {
  buildCounterVmwareVsphereConfig++;
  if (buildCounterVmwareVsphereConfig < 3) {
    unittest.expect(
      o.datastore!,
      unittest.equals('foo'),
    );
    checkUnnamed80(o.hostGroups!);
    checkUnnamed81(o.tags!);
  }
  buildCounterVmwareVsphereConfig--;
}

core.int buildCounterVmwareVsphereTag = 0;
api.VmwareVsphereTag buildVmwareVsphereTag() {
  final o = api.VmwareVsphereTag();
  buildCounterVmwareVsphereTag++;
  if (buildCounterVmwareVsphereTag < 3) {
    o.category = 'foo';
    o.tag = 'foo';
  }
  buildCounterVmwareVsphereTag--;
  return o;
}

void checkVmwareVsphereTag(api.VmwareVsphereTag o) {
  buildCounterVmwareVsphereTag++;
  if (buildCounterVmwareVsphereTag < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareVsphereTag--;
}

void main() {
  unittest.group('obj-schema-Authorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authorization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorization(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminApiServerArgument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminApiServerArgument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminApiServerArgument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminApiServerArgument(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminCluster(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminClusterOperationsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminClusterOperationsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminClusterOperationsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminClusterOperationsConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminControlPlaneConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminControlPlaneConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminControlPlaneConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminControlPlaneConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminControlPlaneNodePoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminControlPlaneNodePoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminControlPlaneNodePoolConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminControlPlaneNodePoolConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminDrainedMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminDrainedMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminDrainedMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminDrainedMachine(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminDrainingMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminDrainingMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminDrainingMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminDrainingMachine(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminIslandModeCidrConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminIslandModeCidrConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminIslandModeCidrConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminIslandModeCidrConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminLoadBalancerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminLoadBalancerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminLoadBalancerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminLoadBalancerConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminMachineDrainStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminMachineDrainStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminMachineDrainStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminMachineDrainStatus(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminMaintenanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminMaintenanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminMaintenanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminMaintenanceConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminMaintenanceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminMaintenanceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminMaintenanceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminMaintenanceStatus(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminManualLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminManualLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminManualLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminManualLbConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminNodeAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminNodeAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminNodeAccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminNodeAccessConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminOsEnvironmentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminOsEnvironmentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminOsEnvironmentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminOsEnvironmentConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminPortConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminPortConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminPortConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminPortConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminProxyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminProxyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminProxyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminProxyConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminSecurityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminSecurityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminSecurityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminSecurityConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminStorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminStorageConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminVipConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminVipConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminVipConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminVipConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalAdminWorkloadNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalAdminWorkloadNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalAdminWorkloadNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalAdminWorkloadNodeConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalApiServerArgument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalApiServerArgument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalApiServerArgument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalApiServerArgument(od);
    });
  });

  unittest.group('obj-schema-BareMetalBgpLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalBgpLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalBgpLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalBgpLbConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalBgpPeerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalBgpPeerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalBgpPeerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalBgpPeerConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalCluster(od);
    });
  });

  unittest.group('obj-schema-BareMetalClusterOperationsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalClusterOperationsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalClusterOperationsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalClusterOperationsConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalClusterUpgradePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalClusterUpgradePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalClusterUpgradePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalClusterUpgradePolicy(od);
    });
  });

  unittest.group('obj-schema-BareMetalControlPlaneConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalControlPlaneConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalControlPlaneConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalControlPlaneConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalControlPlaneNodePoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalControlPlaneNodePoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalControlPlaneNodePoolConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalControlPlaneNodePoolConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalDrainedMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalDrainedMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalDrainedMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalDrainedMachine(od);
    });
  });

  unittest.group('obj-schema-BareMetalDrainingMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalDrainingMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalDrainingMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalDrainingMachine(od);
    });
  });

  unittest.group('obj-schema-BareMetalIslandModeCidrConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalIslandModeCidrConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalIslandModeCidrConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalIslandModeCidrConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalKubeletConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalKubeletConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalKubeletConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalKubeletConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalLoadBalancerAddressPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalLoadBalancerAddressPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalLoadBalancerAddressPool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalLoadBalancerAddressPool(od);
    });
  });

  unittest.group('obj-schema-BareMetalLoadBalancerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalLoadBalancerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalLoadBalancerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalLoadBalancerConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalLoadBalancerNodePoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalLoadBalancerNodePoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalLoadBalancerNodePoolConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalLoadBalancerNodePoolConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalLvpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalLvpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalLvpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalLvpConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalLvpShareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalLvpShareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalLvpShareConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalLvpShareConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalMachineDrainStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalMachineDrainStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalMachineDrainStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalMachineDrainStatus(od);
    });
  });

  unittest.group('obj-schema-BareMetalMaintenanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalMaintenanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalMaintenanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalMaintenanceConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalMaintenanceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalMaintenanceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalMaintenanceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalMaintenanceStatus(od);
    });
  });

  unittest.group('obj-schema-BareMetalManualLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalManualLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalManualLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalManualLbConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalMetalLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalMetalLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalMetalLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalMetalLbConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalMultipleNetworkInterfacesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalMultipleNetworkInterfacesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalMultipleNetworkInterfacesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalMultipleNetworkInterfacesConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalNodeAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalNodeAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalNodeAccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalNodeAccessConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalNodeConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalNodePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalNodePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalNodePool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalNodePool(od);
    });
  });

  unittest.group('obj-schema-BareMetalNodePoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalNodePoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalNodePoolConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalNodePoolConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalNodePoolUpgradePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalNodePoolUpgradePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalNodePoolUpgradePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalNodePoolUpgradePolicy(od);
    });
  });

  unittest.group('obj-schema-BareMetalOsEnvironmentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalOsEnvironmentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalOsEnvironmentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalOsEnvironmentConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalParallelUpgradeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalParallelUpgradeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalParallelUpgradeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalParallelUpgradeConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalPortConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalPortConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalPortConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalPortConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalProxyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalProxyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalProxyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalProxyConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalSecurityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalSecurityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalSecurityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalSecurityConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalSrIovConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalSrIovConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalSrIovConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalSrIovConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalStorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalStorageConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalVersionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalVersionInfo(od);
    });
  });

  unittest.group('obj-schema-BareMetalVipConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalVipConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalVipConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalVipConfig(od);
    });
  });

  unittest.group('obj-schema-BareMetalWorkloadNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBareMetalWorkloadNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BareMetalWorkloadNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBareMetalWorkloadNodeConfig(od);
    });
  });

  unittest.group('obj-schema-BinaryAuthorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryAuthorization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryAuthorization(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
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

  unittest.group('obj-schema-ClusterUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUser(od);
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

  unittest.group('obj-schema-EnrollBareMetalAdminClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollBareMetalAdminClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollBareMetalAdminClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollBareMetalAdminClusterRequest(od);
    });
  });

  unittest.group('obj-schema-EnrollBareMetalClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollBareMetalClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollBareMetalClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollBareMetalClusterRequest(od);
    });
  });

  unittest.group('obj-schema-EnrollBareMetalNodePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollBareMetalNodePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollBareMetalNodePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollBareMetalNodePoolRequest(od);
    });
  });

  unittest.group('obj-schema-EnrollVmwareAdminClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollVmwareAdminClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollVmwareAdminClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollVmwareAdminClusterRequest(od);
    });
  });

  unittest.group('obj-schema-EnrollVmwareClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollVmwareClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollVmwareClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollVmwareClusterRequest(od);
    });
  });

  unittest.group('obj-schema-EnrollVmwareNodePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollVmwareNodePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollVmwareNodePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollVmwareNodePoolRequest(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-Fleet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Fleet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFleet(od);
    });
  });

  unittest.group('obj-schema-ListBareMetalAdminClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBareMetalAdminClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBareMetalAdminClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBareMetalAdminClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListBareMetalClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBareMetalClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBareMetalClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBareMetalClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListBareMetalNodePoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBareMetalNodePoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBareMetalNodePoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBareMetalNodePoolsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVmwareAdminClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVmwareAdminClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVmwareAdminClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVmwareAdminClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListVmwareClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVmwareClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVmwareClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVmwareClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListVmwareNodePoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVmwareNodePoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVmwareNodePoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVmwareNodePoolsResponse(od);
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

  unittest.group('obj-schema-NodeTaint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeTaint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeTaint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeTaint(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-QueryBareMetalAdminVersionConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryBareMetalAdminVersionConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryBareMetalAdminVersionConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryBareMetalAdminVersionConfigResponse(od);
    });
  });

  unittest.group('obj-schema-QueryBareMetalVersionConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryBareMetalVersionConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryBareMetalVersionConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryBareMetalVersionConfigResponse(od);
    });
  });

  unittest.group('obj-schema-QueryVmwareVersionConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryVmwareVersionConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryVmwareVersionConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryVmwareVersionConfigResponse(od);
    });
  });

  unittest.group('obj-schema-ResourceCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceCondition(od);
    });
  });

  unittest.group('obj-schema-ResourceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceStatus(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
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

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-UpgradeDependency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeDependency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeDependency.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeDependency(od);
    });
  });

  unittest.group('obj-schema-ValidationCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationCheck.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidationCheck(od);
    });
  });

  unittest.group('obj-schema-ValidationCheckResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationCheckResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationCheckResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidationCheckResult(od);
    });
  });

  unittest.group('obj-schema-ValidationCheckStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationCheckStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationCheckStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidationCheckStatus(od);
    });
  });

  unittest.group('obj-schema-VmwareAAGConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAAGConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAAGConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAAGConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAddressPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAddressPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAddressPool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAddressPool(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminAddonNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminAddonNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminAddonNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminAddonNodeConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminAuthorizationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminAuthorizationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminAuthorizationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminAuthorizationConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminCluster(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminControlPlaneNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminControlPlaneNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminControlPlaneNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminControlPlaneNodeConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminF5BigIpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminF5BigIpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminF5BigIpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminF5BigIpConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminHAControlPlaneConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminHAControlPlaneConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminHAControlPlaneConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminHAControlPlaneConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminLoadBalancerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminLoadBalancerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminLoadBalancerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminLoadBalancerConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminManualLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminManualLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminManualLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminManualLbConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminMetalLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminMetalLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminMetalLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminMetalLbConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminPreparedSecretsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminPreparedSecretsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminPreparedSecretsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminPreparedSecretsConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminSeesawConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminSeesawConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminSeesawConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminSeesawConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminVCenterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminVCenterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminVCenterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminVCenterConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAdminVipConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAdminVipConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAdminVipConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAdminVipConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAutoRepairConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAutoRepairConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAutoRepairConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAutoRepairConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareAutoResizeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareAutoResizeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareAutoResizeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareAutoResizeConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareBundleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareBundleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareBundleConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareBundleConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareCluster(od);
    });
  });

  unittest.group('obj-schema-VmwareClusterUpgradePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareClusterUpgradePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareClusterUpgradePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareClusterUpgradePolicy(od);
    });
  });

  unittest.group('obj-schema-VmwareControlPlaneNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareControlPlaneNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareControlPlaneNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareControlPlaneNodeConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareControlPlaneV2Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareControlPlaneV2Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareControlPlaneV2Config.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareControlPlaneV2Config(od);
    });
  });

  unittest.group('obj-schema-VmwareControlPlaneVsphereConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareControlPlaneVsphereConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareControlPlaneVsphereConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareControlPlaneVsphereConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareDataplaneV2Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareDataplaneV2Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareDataplaneV2Config.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareDataplaneV2Config(od);
    });
  });

  unittest.group('obj-schema-VmwareDhcpIpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareDhcpIpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareDhcpIpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareDhcpIpConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareF5BigIpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareF5BigIpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareF5BigIpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareF5BigIpConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareHostConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareHostConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareHostConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareHostConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareHostIp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareHostIp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareHostIp.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareHostIp(od);
    });
  });

  unittest.group('obj-schema-VmwareIpBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareIpBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareIpBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareIpBlock(od);
    });
  });

  unittest.group('obj-schema-VmwareLoadBalancerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareLoadBalancerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareLoadBalancerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareLoadBalancerConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareManualLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareManualLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareManualLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareManualLbConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareMetalLbConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareMetalLbConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareMetalLbConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareMetalLbConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareNodeConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareNodePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareNodePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareNodePool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareNodePool(od);
    });
  });

  unittest.group('obj-schema-VmwareNodePoolAutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareNodePoolAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareNodePoolAutoscalingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareNodePoolAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-VmwarePlatformConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwarePlatformConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwarePlatformConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwarePlatformConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareSeesawConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareSeesawConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareSeesawConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareSeesawConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareStaticIpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareStaticIpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareStaticIpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareStaticIpConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareStorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareStorageConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareVCenterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVCenterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVCenterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVCenterConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVersionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVersionInfo(od);
    });
  });

  unittest.group('obj-schema-VmwareVipConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVipConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVipConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVipConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareVsphereConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVsphereConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVsphereConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVsphereConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareVsphereTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareVsphereTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareVsphereTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareVsphereTag(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations;
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
      final res = api.GKEOnPremApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsBareMetalAdminClustersResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_request = buildBareMetalAdminCluster();
      final arg_parent = 'foo';
      final arg_bareMetalAdminClusterId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BareMetalAdminCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBareMetalAdminCluster(obj);

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
          queryMap['bareMetalAdminClusterId']!.first,
          unittest.equals(arg_bareMetalAdminClusterId),
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
      final response = await res.create(arg_request, arg_parent,
          bareMetalAdminClusterId: arg_bareMetalAdminClusterId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_request = buildEnrollBareMetalAdminClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollBareMetalAdminClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollBareMetalAdminClusterRequest(obj);

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
          await res.enroll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
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
        final resp = convert.json.encode(buildBareMetalAdminCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkBareMetalAdminCluster(response as api.BareMetalAdminCluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_parent = 'foo';
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
        final resp =
            convert.json.encode(buildListBareMetalAdminClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListBareMetalAdminClustersResponse(
          response as api.ListBareMetalAdminClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_request = buildBareMetalAdminCluster();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BareMetalAdminCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBareMetalAdminCluster(obj);

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

    unittest.test('method--queryVersionConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_parent = 'foo';
      final arg_upgradeConfig_clusterName = 'foo';
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
          queryMap['upgradeConfig.clusterName']!.first,
          unittest.equals(arg_upgradeConfig_clusterName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildQueryBareMetalAdminVersionConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryVersionConfig(arg_parent,
          upgradeConfig_clusterName: arg_upgradeConfig_clusterName,
          $fields: arg_$fields);
      checkQueryBareMetalAdminVersionConfigResponse(
          response as api.QueryBareMetalAdminVersionConfigResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.bareMetalAdminClusters;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_ignoreErrors = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['ignoreErrors']!.first,
          unittest.equals('$arg_ignoreErrors'),
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
      final response = await res.unenroll(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          ignoreErrors: arg_ignoreErrors,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsBareMetalAdminClustersOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalAdminClusters
          .operations;
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
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalAdminClusters
          .operations;
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

  unittest.group('resource-ProjectsLocationsBareMetalClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_request = buildBareMetalCluster();
      final arg_parent = 'foo';
      final arg_bareMetalClusterId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BareMetalCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBareMetalCluster(obj);

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
          queryMap['bareMetalClusterId']!.first,
          unittest.equals(arg_bareMetalClusterId),
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
      final response = await res.create(arg_request, arg_parent,
          bareMetalClusterId: arg_bareMetalClusterId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_ignoreErrors = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['ignoreErrors']!.first,
          unittest.equals('$arg_ignoreErrors'),
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
          force: arg_force,
          ignoreErrors: arg_ignoreErrors,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_request = buildEnrollBareMetalClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollBareMetalClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollBareMetalClusterRequest(obj);

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
          await res.enroll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
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
        final resp = convert.json.encode(buildBareMetalCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkBareMetalCluster(response as api.BareMetalCluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
        final resp = convert.json.encode(buildListBareMetalClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListBareMetalClustersResponse(
          response as api.ListBareMetalClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_request = buildBareMetalCluster();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BareMetalCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBareMetalCluster(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--queryVersionConfig', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_parent = 'foo';
      final arg_createConfig_adminClusterMembership = 'foo';
      final arg_createConfig_adminClusterName = 'foo';
      final arg_upgradeConfig_clusterName = 'foo';
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
          queryMap['createConfig.adminClusterMembership']!.first,
          unittest.equals(arg_createConfig_adminClusterMembership),
        );
        unittest.expect(
          queryMap['createConfig.adminClusterName']!.first,
          unittest.equals(arg_createConfig_adminClusterName),
        );
        unittest.expect(
          queryMap['upgradeConfig.clusterName']!.first,
          unittest.equals(arg_upgradeConfig_clusterName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildQueryBareMetalVersionConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryVersionConfig(arg_parent,
          createConfig_adminClusterMembership:
              arg_createConfig_adminClusterMembership,
          createConfig_adminClusterName: arg_createConfig_adminClusterName,
          upgradeConfig_clusterName: arg_upgradeConfig_clusterName,
          $fields: arg_$fields);
      checkQueryBareMetalVersionConfigResponse(
          response as api.QueryBareMetalVersionConfigResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.bareMetalClusters;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.unenroll(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          force: arg_force,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsBareMetalClustersBareMetalNodePoolsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_request = buildBareMetalNodePool();
      final arg_parent = 'foo';
      final arg_bareMetalNodePoolId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BareMetalNodePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBareMetalNodePool(obj);

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
          queryMap['bareMetalNodePoolId']!.first,
          unittest.equals(arg_bareMetalNodePoolId),
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
      final response = await res.create(arg_request, arg_parent,
          bareMetalNodePoolId: arg_bareMetalNodePoolId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_ignoreErrors = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['ignoreErrors']!.first,
          unittest.equals('$arg_ignoreErrors'),
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
          ignoreErrors: arg_ignoreErrors,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_request = buildEnrollBareMetalNodePoolRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollBareMetalNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollBareMetalNodePoolRequest(obj);

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
          await res.enroll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
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
        final resp = convert.json.encode(buildBareMetalNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkBareMetalNodePool(response as api.BareMetalNodePool);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListBareMetalNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListBareMetalNodePoolsResponse(
          response as api.ListBareMetalNodePoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_request = buildBareMetalNodePool();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BareMetalNodePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBareMetalNodePool(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
      final response = await res.unenroll(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsBareMetalClustersBareMetalNodePoolsOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools
          .operations;
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
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .bareMetalNodePools
          .operations;
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

  unittest.group(
      'resource-ProjectsLocationsBareMetalClustersOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .operations;
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
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .bareMetalClusters
          .operations;
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.operations;
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
      final res = api.GKEOnPremApi(mock).projects.locations.operations;
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
      final res = api.GKEOnPremApi(mock).projects.locations.operations;
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
      final res = api.GKEOnPremApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsVmwareAdminClustersResource', () {
    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_request = buildEnrollVmwareAdminClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollVmwareAdminClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollVmwareAdminClusterRequest(obj);

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
          await res.enroll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
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
        final resp = convert.json.encode(buildVmwareAdminCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkVmwareAdminCluster(response as api.VmwareAdminCluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_parent = 'foo';
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
        final resp =
            convert.json.encode(buildListVmwareAdminClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListVmwareAdminClustersResponse(
          response as api.ListVmwareAdminClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_request = buildVmwareAdminCluster();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VmwareAdminCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVmwareAdminCluster(obj);

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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareAdminClusters;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
      final response = await res.unenroll(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsVmwareAdminClustersOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareAdminClusters
          .operations;
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
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareAdminClusters
          .operations;
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

  unittest.group('resource-ProjectsLocationsVmwareClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_request = buildVmwareCluster();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_vmwareClusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VmwareCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVmwareCluster(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['vmwareClusterId']!.first,
          unittest.equals(arg_vmwareClusterId),
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
          vmwareClusterId: arg_vmwareClusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_ignoreErrors = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['ignoreErrors']!.first,
          unittest.equals('$arg_ignoreErrors'),
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
          force: arg_force,
          ignoreErrors: arg_ignoreErrors,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_request = buildEnrollVmwareClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollVmwareClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollVmwareClusterRequest(obj);

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
          await res.enroll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
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
        final resp = convert.json.encode(buildVmwareCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkVmwareCluster(response as api.VmwareCluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
        final resp = convert.json.encode(buildListVmwareClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListVmwareClustersResponse(
          response as api.ListVmwareClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_request = buildVmwareCluster();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VmwareCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVmwareCluster(obj);

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

    unittest.test('method--queryVersionConfig', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_parent = 'foo';
      final arg_createConfig_adminClusterMembership = 'foo';
      final arg_createConfig_adminClusterName = 'foo';
      final arg_upgradeConfig_clusterName = 'foo';
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
          queryMap['createConfig.adminClusterMembership']!.first,
          unittest.equals(arg_createConfig_adminClusterMembership),
        );
        unittest.expect(
          queryMap['createConfig.adminClusterName']!.first,
          unittest.equals(arg_createConfig_adminClusterName),
        );
        unittest.expect(
          queryMap['upgradeConfig.clusterName']!.first,
          unittest.equals(arg_upgradeConfig_clusterName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildQueryVmwareVersionConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryVersionConfig(arg_parent,
          createConfig_adminClusterMembership:
              arg_createConfig_adminClusterMembership,
          createConfig_adminClusterName: arg_createConfig_adminClusterName,
          upgradeConfig_clusterName: arg_upgradeConfig_clusterName,
          $fields: arg_$fields);
      checkQueryVmwareVersionConfigResponse(
          response as api.QueryVmwareVersionConfigResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock).projects.locations.vmwareClusters;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.unenroll(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          force: arg_force,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsVmwareClustersOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEOnPremApi(mock).projects.locations.vmwareClusters.operations;
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
      final res =
          api.GKEOnPremApi(mock).projects.locations.vmwareClusters.operations;
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

  unittest.group(
      'resource-ProjectsLocationsVmwareClustersVmwareNodePoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_request = buildVmwareNodePool();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_vmwareNodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VmwareNodePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVmwareNodePool(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['vmwareNodePoolId']!.first,
          unittest.equals(arg_vmwareNodePoolId),
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
          vmwareNodePoolId: arg_vmwareNodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_ignoreErrors = true;
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['ignoreErrors']!.first,
          unittest.equals('$arg_ignoreErrors'),
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
          ignoreErrors: arg_ignoreErrors,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_request = buildEnrollVmwareNodePoolRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollVmwareNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollVmwareNodePoolRequest(obj);

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
          await res.enroll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
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
        final resp = convert.json.encode(buildVmwareNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkVmwareNodePool(response as api.VmwareNodePool);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListVmwareNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListVmwareNodePoolsResponse(
          response as api.ListVmwareNodePoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_request = buildVmwareNodePool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VmwareNodePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVmwareNodePool(obj);

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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
      final response = await res.unenroll(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsVmwareClustersVmwareNodePoolsOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools
          .operations;
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
      final res = api.GKEOnPremApi(mock)
          .projects
          .locations
          .vmwareClusters
          .vmwareNodePools
          .operations;
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
}
