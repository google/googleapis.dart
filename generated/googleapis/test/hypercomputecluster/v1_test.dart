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

import 'package:googleapis/hypercomputecluster/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBootDisk = 0;
api.BootDisk buildBootDisk() {
  final o = api.BootDisk();
  buildCounterBootDisk++;
  if (buildCounterBootDisk < 3) {
    o.sizeGb = 'foo';
    o.type = 'foo';
  }
  buildCounterBootDisk--;
  return o;
}

void checkBootDisk(api.BootDisk o) {
  buildCounterBootDisk++;
  if (buildCounterBootDisk < 3) {
    unittest.expect(o.sizeGb!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterBootDisk--;
}

core.int buildCounterBucketReference = 0;
api.BucketReference buildBucketReference() {
  final o = api.BucketReference();
  buildCounterBucketReference++;
  if (buildCounterBucketReference < 3) {
    o.bucket = 'foo';
  }
  buildCounterBucketReference--;
  return o;
}

void checkBucketReference(api.BucketReference o) {
  buildCounterBucketReference++;
  if (buildCounterBucketReference < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
  }
  buildCounterBucketReference--;
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

core.Map<core.String, api.ComputeResource> buildUnnamed0() => {
  'x': buildComputeResource(),
  'y': buildComputeResource(),
};

void checkUnnamed0(core.Map<core.String, api.ComputeResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputeResource(o['x']!);
  checkComputeResource(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.NetworkResource> buildUnnamed2() => {
  'x': buildNetworkResource(),
  'y': buildNetworkResource(),
};

void checkUnnamed2(core.Map<core.String, api.NetworkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkResource(o['x']!);
  checkNetworkResource(o['y']!);
}

core.Map<core.String, api.StorageResource> buildUnnamed3() => {
  'x': buildStorageResource(),
  'y': buildStorageResource(),
};

void checkUnnamed3(core.Map<core.String, api.StorageResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorageResource(o['x']!);
  checkStorageResource(o['y']!);
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.computeResources = buildUnnamed0();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.networkResources = buildUnnamed2();
    o.orchestrator = buildOrchestrator();
    o.reconciling = true;
    o.storageResources = buildUnnamed3();
    o.updateTime = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkUnnamed0(o.computeResources!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.networkResources!);
    checkOrchestrator(o.orchestrator!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkUnnamed3(o.storageResources!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.int buildCounterComputeInstance = 0;
api.ComputeInstance buildComputeInstance() {
  final o = api.ComputeInstance();
  buildCounterComputeInstance++;
  if (buildCounterComputeInstance < 3) {
    o.instance = 'foo';
  }
  buildCounterComputeInstance--;
  return o;
}

void checkComputeInstance(api.ComputeInstance o) {
  buildCounterComputeInstance++;
  if (buildCounterComputeInstance < 3) {
    unittest.expect(o.instance!, unittest.equals('foo'));
  }
  buildCounterComputeInstance--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterComputeInstanceSlurmNodeSet = 0;
api.ComputeInstanceSlurmNodeSet buildComputeInstanceSlurmNodeSet() {
  final o = api.ComputeInstanceSlurmNodeSet();
  buildCounterComputeInstanceSlurmNodeSet++;
  if (buildCounterComputeInstanceSlurmNodeSet < 3) {
    o.bootDisk = buildBootDisk();
    o.labels = buildUnnamed4();
    o.startupScript = 'foo';
  }
  buildCounterComputeInstanceSlurmNodeSet--;
  return o;
}

void checkComputeInstanceSlurmNodeSet(api.ComputeInstanceSlurmNodeSet o) {
  buildCounterComputeInstanceSlurmNodeSet++;
  if (buildCounterComputeInstanceSlurmNodeSet < 3) {
    checkBootDisk(o.bootDisk!);
    checkUnnamed4(o.labels!);
    unittest.expect(o.startupScript!, unittest.equals('foo'));
  }
  buildCounterComputeInstanceSlurmNodeSet--;
}

core.int buildCounterComputeResource = 0;
api.ComputeResource buildComputeResource() {
  final o = api.ComputeResource();
  buildCounterComputeResource++;
  if (buildCounterComputeResource < 3) {
    o.config = buildComputeResourceConfig();
  }
  buildCounterComputeResource--;
  return o;
}

void checkComputeResource(api.ComputeResource o) {
  buildCounterComputeResource++;
  if (buildCounterComputeResource < 3) {
    checkComputeResourceConfig(o.config!);
  }
  buildCounterComputeResource--;
}

core.int buildCounterComputeResourceConfig = 0;
api.ComputeResourceConfig buildComputeResourceConfig() {
  final o = api.ComputeResourceConfig();
  buildCounterComputeResourceConfig++;
  if (buildCounterComputeResourceConfig < 3) {
    o.newFlexStartInstances = buildNewFlexStartInstancesConfig();
    o.newOnDemandInstances = buildNewOnDemandInstancesConfig();
    o.newReservedInstances = buildNewReservedInstancesConfig();
    o.newSpotInstances = buildNewSpotInstancesConfig();
  }
  buildCounterComputeResourceConfig--;
  return o;
}

void checkComputeResourceConfig(api.ComputeResourceConfig o) {
  buildCounterComputeResourceConfig++;
  if (buildCounterComputeResourceConfig < 3) {
    checkNewFlexStartInstancesConfig(o.newFlexStartInstances!);
    checkNewOnDemandInstancesConfig(o.newOnDemandInstances!);
    checkNewReservedInstancesConfig(o.newReservedInstances!);
    checkNewSpotInstancesConfig(o.newSpotInstances!);
  }
  buildCounterComputeResourceConfig--;
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

core.int buildCounterExistingBucketConfig = 0;
api.ExistingBucketConfig buildExistingBucketConfig() {
  final o = api.ExistingBucketConfig();
  buildCounterExistingBucketConfig++;
  if (buildCounterExistingBucketConfig < 3) {
    o.bucket = 'foo';
  }
  buildCounterExistingBucketConfig--;
  return o;
}

void checkExistingBucketConfig(api.ExistingBucketConfig o) {
  buildCounterExistingBucketConfig++;
  if (buildCounterExistingBucketConfig < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
  }
  buildCounterExistingBucketConfig--;
}

core.int buildCounterExistingFilestoreConfig = 0;
api.ExistingFilestoreConfig buildExistingFilestoreConfig() {
  final o = api.ExistingFilestoreConfig();
  buildCounterExistingFilestoreConfig++;
  if (buildCounterExistingFilestoreConfig < 3) {
    o.filestore = 'foo';
  }
  buildCounterExistingFilestoreConfig--;
  return o;
}

void checkExistingFilestoreConfig(api.ExistingFilestoreConfig o) {
  buildCounterExistingFilestoreConfig++;
  if (buildCounterExistingFilestoreConfig < 3) {
    unittest.expect(o.filestore!, unittest.equals('foo'));
  }
  buildCounterExistingFilestoreConfig--;
}

core.int buildCounterExistingLustreConfig = 0;
api.ExistingLustreConfig buildExistingLustreConfig() {
  final o = api.ExistingLustreConfig();
  buildCounterExistingLustreConfig++;
  if (buildCounterExistingLustreConfig < 3) {
    o.lustre = 'foo';
  }
  buildCounterExistingLustreConfig--;
  return o;
}

void checkExistingLustreConfig(api.ExistingLustreConfig o) {
  buildCounterExistingLustreConfig++;
  if (buildCounterExistingLustreConfig < 3) {
    unittest.expect(o.lustre!, unittest.equals('foo'));
  }
  buildCounterExistingLustreConfig--;
}

core.int buildCounterExistingNetworkConfig = 0;
api.ExistingNetworkConfig buildExistingNetworkConfig() {
  final o = api.ExistingNetworkConfig();
  buildCounterExistingNetworkConfig++;
  if (buildCounterExistingNetworkConfig < 3) {
    o.network = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterExistingNetworkConfig--;
  return o;
}

void checkExistingNetworkConfig(api.ExistingNetworkConfig o) {
  buildCounterExistingNetworkConfig++;
  if (buildCounterExistingNetworkConfig < 3) {
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
  }
  buildCounterExistingNetworkConfig--;
}

core.int buildCounterFileShareConfig = 0;
api.FileShareConfig buildFileShareConfig() {
  final o = api.FileShareConfig();
  buildCounterFileShareConfig++;
  if (buildCounterFileShareConfig < 3) {
    o.capacityGb = 'foo';
    o.fileShare = 'foo';
  }
  buildCounterFileShareConfig--;
  return o;
}

void checkFileShareConfig(api.FileShareConfig o) {
  buildCounterFileShareConfig++;
  if (buildCounterFileShareConfig < 3) {
    unittest.expect(o.capacityGb!, unittest.equals('foo'));
    unittest.expect(o.fileShare!, unittest.equals('foo'));
  }
  buildCounterFileShareConfig--;
}

core.int buildCounterFilestoreReference = 0;
api.FilestoreReference buildFilestoreReference() {
  final o = api.FilestoreReference();
  buildCounterFilestoreReference++;
  if (buildCounterFilestoreReference < 3) {
    o.filestore = 'foo';
  }
  buildCounterFilestoreReference--;
  return o;
}

void checkFilestoreReference(api.FilestoreReference o) {
  buildCounterFilestoreReference++;
  if (buildCounterFilestoreReference < 3) {
    unittest.expect(o.filestore!, unittest.equals('foo'));
  }
  buildCounterFilestoreReference--;
}

core.int buildCounterGcsAutoclassConfig = 0;
api.GcsAutoclassConfig buildGcsAutoclassConfig() {
  final o = api.GcsAutoclassConfig();
  buildCounterGcsAutoclassConfig++;
  if (buildCounterGcsAutoclassConfig < 3) {
    o.enabled = true;
    o.terminalStorageClass = 'foo';
  }
  buildCounterGcsAutoclassConfig--;
  return o;
}

void checkGcsAutoclassConfig(api.GcsAutoclassConfig o) {
  buildCounterGcsAutoclassConfig++;
  if (buildCounterGcsAutoclassConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.terminalStorageClass!, unittest.equals('foo'));
  }
  buildCounterGcsAutoclassConfig--;
}

core.int buildCounterGcsHierarchicalNamespaceConfig = 0;
api.GcsHierarchicalNamespaceConfig buildGcsHierarchicalNamespaceConfig() {
  final o = api.GcsHierarchicalNamespaceConfig();
  buildCounterGcsHierarchicalNamespaceConfig++;
  if (buildCounterGcsHierarchicalNamespaceConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcsHierarchicalNamespaceConfig--;
  return o;
}

void checkGcsHierarchicalNamespaceConfig(api.GcsHierarchicalNamespaceConfig o) {
  buildCounterGcsHierarchicalNamespaceConfig++;
  if (buildCounterGcsHierarchicalNamespaceConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcsHierarchicalNamespaceConfig--;
}

core.List<api.Cluster> buildUnnamed5() => [buildCluster(), buildCluster()];

void checkUnnamed5(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed5();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed5(o.clusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.unreachable!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.Location> buildUnnamed7() => [buildLocation(), buildLocation()];

void checkUnnamed7(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed8(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
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
    o.operations = buildUnnamed8();
    o.unreachable = buildUnnamed9();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.operations!);
    checkUnnamed9(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed10();
    o.locationId = 'foo';
    o.metadata = buildUnnamed11();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed10(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed11(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLustreReference = 0;
api.LustreReference buildLustreReference() {
  final o = api.LustreReference();
  buildCounterLustreReference++;
  if (buildCounterLustreReference < 3) {
    o.lustre = 'foo';
  }
  buildCounterLustreReference--;
  return o;
}

void checkLustreReference(api.LustreReference o) {
  buildCounterLustreReference++;
  if (buildCounterLustreReference < 3) {
    unittest.expect(o.lustre!, unittest.equals('foo'));
  }
  buildCounterLustreReference--;
}

core.int buildCounterNetworkReference = 0;
api.NetworkReference buildNetworkReference() {
  final o = api.NetworkReference();
  buildCounterNetworkReference++;
  if (buildCounterNetworkReference < 3) {
    o.network = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterNetworkReference--;
  return o;
}

void checkNetworkReference(api.NetworkReference o) {
  buildCounterNetworkReference++;
  if (buildCounterNetworkReference < 3) {
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
  }
  buildCounterNetworkReference--;
}

core.int buildCounterNetworkResource = 0;
api.NetworkResource buildNetworkResource() {
  final o = api.NetworkResource();
  buildCounterNetworkResource++;
  if (buildCounterNetworkResource < 3) {
    o.config = buildNetworkResourceConfig();
    o.network = buildNetworkReference();
  }
  buildCounterNetworkResource--;
  return o;
}

void checkNetworkResource(api.NetworkResource o) {
  buildCounterNetworkResource++;
  if (buildCounterNetworkResource < 3) {
    checkNetworkResourceConfig(o.config!);
    checkNetworkReference(o.network!);
  }
  buildCounterNetworkResource--;
}

core.int buildCounterNetworkResourceConfig = 0;
api.NetworkResourceConfig buildNetworkResourceConfig() {
  final o = api.NetworkResourceConfig();
  buildCounterNetworkResourceConfig++;
  if (buildCounterNetworkResourceConfig < 3) {
    o.existingNetwork = buildExistingNetworkConfig();
    o.newNetwork = buildNewNetworkConfig();
  }
  buildCounterNetworkResourceConfig--;
  return o;
}

void checkNetworkResourceConfig(api.NetworkResourceConfig o) {
  buildCounterNetworkResourceConfig++;
  if (buildCounterNetworkResourceConfig < 3) {
    checkExistingNetworkConfig(o.existingNetwork!);
    checkNewNetworkConfig(o.newNetwork!);
  }
  buildCounterNetworkResourceConfig--;
}

core.int buildCounterNewBucketConfig = 0;
api.NewBucketConfig buildNewBucketConfig() {
  final o = api.NewBucketConfig();
  buildCounterNewBucketConfig++;
  if (buildCounterNewBucketConfig < 3) {
    o.autoclass = buildGcsAutoclassConfig();
    o.bucket = 'foo';
    o.hierarchicalNamespace = buildGcsHierarchicalNamespaceConfig();
    o.storageClass = 'foo';
  }
  buildCounterNewBucketConfig--;
  return o;
}

void checkNewBucketConfig(api.NewBucketConfig o) {
  buildCounterNewBucketConfig++;
  if (buildCounterNewBucketConfig < 3) {
    checkGcsAutoclassConfig(o.autoclass!);
    unittest.expect(o.bucket!, unittest.equals('foo'));
    checkGcsHierarchicalNamespaceConfig(o.hierarchicalNamespace!);
    unittest.expect(o.storageClass!, unittest.equals('foo'));
  }
  buildCounterNewBucketConfig--;
}

core.List<api.FileShareConfig> buildUnnamed12() => [
  buildFileShareConfig(),
  buildFileShareConfig(),
];

void checkUnnamed12(core.List<api.FileShareConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileShareConfig(o[0]);
  checkFileShareConfig(o[1]);
}

core.int buildCounterNewFilestoreConfig = 0;
api.NewFilestoreConfig buildNewFilestoreConfig() {
  final o = api.NewFilestoreConfig();
  buildCounterNewFilestoreConfig++;
  if (buildCounterNewFilestoreConfig < 3) {
    o.description = 'foo';
    o.fileShares = buildUnnamed12();
    o.filestore = 'foo';
    o.protocol = 'foo';
    o.tier = 'foo';
  }
  buildCounterNewFilestoreConfig--;
  return o;
}

void checkNewFilestoreConfig(api.NewFilestoreConfig o) {
  buildCounterNewFilestoreConfig++;
  if (buildCounterNewFilestoreConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed12(o.fileShares!);
    unittest.expect(o.filestore!, unittest.equals('foo'));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.tier!, unittest.equals('foo'));
  }
  buildCounterNewFilestoreConfig--;
}

core.int buildCounterNewFlexStartInstancesConfig = 0;
api.NewFlexStartInstancesConfig buildNewFlexStartInstancesConfig() {
  final o = api.NewFlexStartInstancesConfig();
  buildCounterNewFlexStartInstancesConfig++;
  if (buildCounterNewFlexStartInstancesConfig < 3) {
    o.machineType = 'foo';
    o.maxDuration = 'foo';
    o.zone = 'foo';
  }
  buildCounterNewFlexStartInstancesConfig--;
  return o;
}

void checkNewFlexStartInstancesConfig(api.NewFlexStartInstancesConfig o) {
  buildCounterNewFlexStartInstancesConfig++;
  if (buildCounterNewFlexStartInstancesConfig < 3) {
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.maxDuration!, unittest.equals('foo'));
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterNewFlexStartInstancesConfig--;
}

core.int buildCounterNewLustreConfig = 0;
api.NewLustreConfig buildNewLustreConfig() {
  final o = api.NewLustreConfig();
  buildCounterNewLustreConfig++;
  if (buildCounterNewLustreConfig < 3) {
    o.capacityGb = 'foo';
    o.description = 'foo';
    o.filesystem = 'foo';
    o.lustre = 'foo';
  }
  buildCounterNewLustreConfig--;
  return o;
}

void checkNewLustreConfig(api.NewLustreConfig o) {
  buildCounterNewLustreConfig++;
  if (buildCounterNewLustreConfig < 3) {
    unittest.expect(o.capacityGb!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.filesystem!, unittest.equals('foo'));
    unittest.expect(o.lustre!, unittest.equals('foo'));
  }
  buildCounterNewLustreConfig--;
}

core.int buildCounterNewNetworkConfig = 0;
api.NewNetworkConfig buildNewNetworkConfig() {
  final o = api.NewNetworkConfig();
  buildCounterNewNetworkConfig++;
  if (buildCounterNewNetworkConfig < 3) {
    o.description = 'foo';
    o.network = 'foo';
  }
  buildCounterNewNetworkConfig--;
  return o;
}

void checkNewNetworkConfig(api.NewNetworkConfig o) {
  buildCounterNewNetworkConfig++;
  if (buildCounterNewNetworkConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
  }
  buildCounterNewNetworkConfig--;
}

core.int buildCounterNewOnDemandInstancesConfig = 0;
api.NewOnDemandInstancesConfig buildNewOnDemandInstancesConfig() {
  final o = api.NewOnDemandInstancesConfig();
  buildCounterNewOnDemandInstancesConfig++;
  if (buildCounterNewOnDemandInstancesConfig < 3) {
    o.machineType = 'foo';
    o.zone = 'foo';
  }
  buildCounterNewOnDemandInstancesConfig--;
  return o;
}

void checkNewOnDemandInstancesConfig(api.NewOnDemandInstancesConfig o) {
  buildCounterNewOnDemandInstancesConfig++;
  if (buildCounterNewOnDemandInstancesConfig < 3) {
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterNewOnDemandInstancesConfig--;
}

core.int buildCounterNewReservedInstancesConfig = 0;
api.NewReservedInstancesConfig buildNewReservedInstancesConfig() {
  final o = api.NewReservedInstancesConfig();
  buildCounterNewReservedInstancesConfig++;
  if (buildCounterNewReservedInstancesConfig < 3) {
    o.reservation = 'foo';
  }
  buildCounterNewReservedInstancesConfig--;
  return o;
}

void checkNewReservedInstancesConfig(api.NewReservedInstancesConfig o) {
  buildCounterNewReservedInstancesConfig++;
  if (buildCounterNewReservedInstancesConfig < 3) {
    unittest.expect(o.reservation!, unittest.equals('foo'));
  }
  buildCounterNewReservedInstancesConfig--;
}

core.int buildCounterNewSpotInstancesConfig = 0;
api.NewSpotInstancesConfig buildNewSpotInstancesConfig() {
  final o = api.NewSpotInstancesConfig();
  buildCounterNewSpotInstancesConfig++;
  if (buildCounterNewSpotInstancesConfig < 3) {
    o.machineType = 'foo';
    o.terminationAction = 'foo';
    o.zone = 'foo';
  }
  buildCounterNewSpotInstancesConfig--;
  return o;
}

void checkNewSpotInstancesConfig(api.NewSpotInstancesConfig o) {
  buildCounterNewSpotInstancesConfig++;
  if (buildCounterNewSpotInstancesConfig < 3) {
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.terminationAction!, unittest.equals('foo'));
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterNewSpotInstancesConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.response = buildUnnamed14();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed13(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed14(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOrchestrator = 0;
api.Orchestrator buildOrchestrator() {
  final o = api.Orchestrator();
  buildCounterOrchestrator++;
  if (buildCounterOrchestrator < 3) {
    o.slurm = buildSlurmOrchestrator();
  }
  buildCounterOrchestrator--;
  return o;
}

void checkOrchestrator(api.Orchestrator o) {
  buildCounterOrchestrator++;
  if (buildCounterOrchestrator < 3) {
    checkSlurmOrchestrator(o.slurm!);
  }
  buildCounterOrchestrator--;
}

core.List<api.ComputeInstance> buildUnnamed15() => [
  buildComputeInstance(),
  buildComputeInstance(),
];

void checkUnnamed15(core.List<api.ComputeInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputeInstance(o[0]);
  checkComputeInstance(o[1]);
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.StorageConfig> buildUnnamed17() => [
  buildStorageConfig(),
  buildStorageConfig(),
];

void checkUnnamed17(core.List<api.StorageConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorageConfig(o[0]);
  checkStorageConfig(o[1]);
}

core.int buildCounterSlurmLoginNodes = 0;
api.SlurmLoginNodes buildSlurmLoginNodes() {
  final o = api.SlurmLoginNodes();
  buildCounterSlurmLoginNodes++;
  if (buildCounterSlurmLoginNodes < 3) {
    o.bootDisk = buildBootDisk();
    o.count = 'foo';
    o.enableOsLogin = true;
    o.enablePublicIps = true;
    o.instances = buildUnnamed15();
    o.labels = buildUnnamed16();
    o.machineType = 'foo';
    o.startupScript = 'foo';
    o.storageConfigs = buildUnnamed17();
    o.zone = 'foo';
  }
  buildCounterSlurmLoginNodes--;
  return o;
}

void checkSlurmLoginNodes(api.SlurmLoginNodes o) {
  buildCounterSlurmLoginNodes++;
  if (buildCounterSlurmLoginNodes < 3) {
    checkBootDisk(o.bootDisk!);
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.enableOsLogin!, unittest.isTrue);
    unittest.expect(o.enablePublicIps!, unittest.isTrue);
    checkUnnamed15(o.instances!);
    checkUnnamed16(o.labels!);
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.startupScript!, unittest.equals('foo'));
    checkUnnamed17(o.storageConfigs!);
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterSlurmLoginNodes--;
}

core.List<api.StorageConfig> buildUnnamed18() => [
  buildStorageConfig(),
  buildStorageConfig(),
];

void checkUnnamed18(core.List<api.StorageConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorageConfig(o[0]);
  checkStorageConfig(o[1]);
}

core.int buildCounterSlurmNodeSet = 0;
api.SlurmNodeSet buildSlurmNodeSet() {
  final o = api.SlurmNodeSet();
  buildCounterSlurmNodeSet++;
  if (buildCounterSlurmNodeSet < 3) {
    o.computeId = 'foo';
    o.computeInstance = buildComputeInstanceSlurmNodeSet();
    o.id = 'foo';
    o.maxDynamicNodeCount = 'foo';
    o.staticNodeCount = 'foo';
    o.storageConfigs = buildUnnamed18();
  }
  buildCounterSlurmNodeSet--;
  return o;
}

void checkSlurmNodeSet(api.SlurmNodeSet o) {
  buildCounterSlurmNodeSet++;
  if (buildCounterSlurmNodeSet < 3) {
    unittest.expect(o.computeId!, unittest.equals('foo'));
    checkComputeInstanceSlurmNodeSet(o.computeInstance!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.maxDynamicNodeCount!, unittest.equals('foo'));
    unittest.expect(o.staticNodeCount!, unittest.equals('foo'));
    checkUnnamed18(o.storageConfigs!);
  }
  buildCounterSlurmNodeSet--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SlurmNodeSet> buildUnnamed20() => [
  buildSlurmNodeSet(),
  buildSlurmNodeSet(),
];

void checkUnnamed20(core.List<api.SlurmNodeSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSlurmNodeSet(o[0]);
  checkSlurmNodeSet(o[1]);
}

core.List<api.SlurmPartition> buildUnnamed21() => [
  buildSlurmPartition(),
  buildSlurmPartition(),
];

void checkUnnamed21(core.List<api.SlurmPartition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSlurmPartition(o[0]);
  checkSlurmPartition(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSlurmOrchestrator = 0;
api.SlurmOrchestrator buildSlurmOrchestrator() {
  final o = api.SlurmOrchestrator();
  buildCounterSlurmOrchestrator++;
  if (buildCounterSlurmOrchestrator < 3) {
    o.defaultPartition = 'foo';
    o.epilogBashScripts = buildUnnamed19();
    o.loginNodes = buildSlurmLoginNodes();
    o.nodeSets = buildUnnamed20();
    o.partitions = buildUnnamed21();
    o.prologBashScripts = buildUnnamed22();
  }
  buildCounterSlurmOrchestrator--;
  return o;
}

void checkSlurmOrchestrator(api.SlurmOrchestrator o) {
  buildCounterSlurmOrchestrator++;
  if (buildCounterSlurmOrchestrator < 3) {
    unittest.expect(o.defaultPartition!, unittest.equals('foo'));
    checkUnnamed19(o.epilogBashScripts!);
    checkSlurmLoginNodes(o.loginNodes!);
    checkUnnamed20(o.nodeSets!);
    checkUnnamed21(o.partitions!);
    checkUnnamed22(o.prologBashScripts!);
  }
  buildCounterSlurmOrchestrator--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSlurmPartition = 0;
api.SlurmPartition buildSlurmPartition() {
  final o = api.SlurmPartition();
  buildCounterSlurmPartition++;
  if (buildCounterSlurmPartition < 3) {
    o.id = 'foo';
    o.nodeSetIds = buildUnnamed23();
  }
  buildCounterSlurmPartition--;
  return o;
}

void checkSlurmPartition(api.SlurmPartition o) {
  buildCounterSlurmPartition++;
  if (buildCounterSlurmPartition < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed23(o.nodeSetIds!);
  }
  buildCounterSlurmPartition--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed25() => [
  buildUnnamed24(),
  buildUnnamed24(),
];

void checkUnnamed25(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed24(o[0]);
  checkUnnamed24(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed25();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed25(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStorageConfig = 0;
api.StorageConfig buildStorageConfig() {
  final o = api.StorageConfig();
  buildCounterStorageConfig++;
  if (buildCounterStorageConfig < 3) {
    o.id = 'foo';
    o.localMount = 'foo';
  }
  buildCounterStorageConfig--;
  return o;
}

void checkStorageConfig(api.StorageConfig o) {
  buildCounterStorageConfig++;
  if (buildCounterStorageConfig < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.localMount!, unittest.equals('foo'));
  }
  buildCounterStorageConfig--;
}

core.int buildCounterStorageResource = 0;
api.StorageResource buildStorageResource() {
  final o = api.StorageResource();
  buildCounterStorageResource++;
  if (buildCounterStorageResource < 3) {
    o.bucket = buildBucketReference();
    o.config = buildStorageResourceConfig();
    o.filestore = buildFilestoreReference();
    o.lustre = buildLustreReference();
  }
  buildCounterStorageResource--;
  return o;
}

void checkStorageResource(api.StorageResource o) {
  buildCounterStorageResource++;
  if (buildCounterStorageResource < 3) {
    checkBucketReference(o.bucket!);
    checkStorageResourceConfig(o.config!);
    checkFilestoreReference(o.filestore!);
    checkLustreReference(o.lustre!);
  }
  buildCounterStorageResource--;
}

core.int buildCounterStorageResourceConfig = 0;
api.StorageResourceConfig buildStorageResourceConfig() {
  final o = api.StorageResourceConfig();
  buildCounterStorageResourceConfig++;
  if (buildCounterStorageResourceConfig < 3) {
    o.existingBucket = buildExistingBucketConfig();
    o.existingFilestore = buildExistingFilestoreConfig();
    o.existingLustre = buildExistingLustreConfig();
    o.newBucket = buildNewBucketConfig();
    o.newFilestore = buildNewFilestoreConfig();
    o.newLustre = buildNewLustreConfig();
  }
  buildCounterStorageResourceConfig--;
  return o;
}

void checkStorageResourceConfig(api.StorageResourceConfig o) {
  buildCounterStorageResourceConfig++;
  if (buildCounterStorageResourceConfig < 3) {
    checkExistingBucketConfig(o.existingBucket!);
    checkExistingFilestoreConfig(o.existingFilestore!);
    checkExistingLustreConfig(o.existingLustre!);
    checkNewBucketConfig(o.newBucket!);
    checkNewFilestoreConfig(o.newFilestore!);
    checkNewLustreConfig(o.newLustre!);
  }
  buildCounterStorageResourceConfig--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
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

  unittest.group('obj-schema-BucketReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBucketReference(od);
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

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ComputeInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeInstance(od);
    });
  });

  unittest.group('obj-schema-ComputeInstanceSlurmNodeSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInstanceSlurmNodeSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInstanceSlurmNodeSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeInstanceSlurmNodeSet(od);
    });
  });

  unittest.group('obj-schema-ComputeResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeResource(od);
    });
  });

  unittest.group('obj-schema-ComputeResourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeResourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeResourceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeResourceConfig(od);
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

  unittest.group('obj-schema-ExistingBucketConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistingBucketConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistingBucketConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExistingBucketConfig(od);
    });
  });

  unittest.group('obj-schema-ExistingFilestoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistingFilestoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistingFilestoreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExistingFilestoreConfig(od);
    });
  });

  unittest.group('obj-schema-ExistingLustreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistingLustreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistingLustreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExistingLustreConfig(od);
    });
  });

  unittest.group('obj-schema-ExistingNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistingNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistingNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExistingNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-FileShareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileShareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileShareConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileShareConfig(od);
    });
  });

  unittest.group('obj-schema-FilestoreReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilestoreReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilestoreReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilestoreReference(od);
    });
  });

  unittest.group('obj-schema-GcsAutoclassConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsAutoclassConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsAutoclassConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsAutoclassConfig(od);
    });
  });

  unittest.group('obj-schema-GcsHierarchicalNamespaceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsHierarchicalNamespaceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsHierarchicalNamespaceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsHierarchicalNamespaceConfig(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListClustersResponse(od);
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

  unittest.group('obj-schema-LustreReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLustreReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LustreReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLustreReference(od);
    });
  });

  unittest.group('obj-schema-NetworkReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkReference(od);
    });
  });

  unittest.group('obj-schema-NetworkResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkResource(od);
    });
  });

  unittest.group('obj-schema-NetworkResourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkResourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkResourceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkResourceConfig(od);
    });
  });

  unittest.group('obj-schema-NewBucketConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewBucketConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewBucketConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewBucketConfig(od);
    });
  });

  unittest.group('obj-schema-NewFilestoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewFilestoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewFilestoreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewFilestoreConfig(od);
    });
  });

  unittest.group('obj-schema-NewFlexStartInstancesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewFlexStartInstancesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewFlexStartInstancesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewFlexStartInstancesConfig(od);
    });
  });

  unittest.group('obj-schema-NewLustreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewLustreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewLustreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewLustreConfig(od);
    });
  });

  unittest.group('obj-schema-NewNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NewOnDemandInstancesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewOnDemandInstancesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewOnDemandInstancesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewOnDemandInstancesConfig(od);
    });
  });

  unittest.group('obj-schema-NewReservedInstancesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewReservedInstancesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewReservedInstancesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewReservedInstancesConfig(od);
    });
  });

  unittest.group('obj-schema-NewSpotInstancesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewSpotInstancesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewSpotInstancesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewSpotInstancesConfig(od);
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

  unittest.group('obj-schema-Orchestrator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrchestrator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Orchestrator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrchestrator(od);
    });
  });

  unittest.group('obj-schema-SlurmLoginNodes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlurmLoginNodes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlurmLoginNodes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlurmLoginNodes(od);
    });
  });

  unittest.group('obj-schema-SlurmNodeSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlurmNodeSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlurmNodeSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlurmNodeSet(od);
    });
  });

  unittest.group('obj-schema-SlurmOrchestrator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlurmOrchestrator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlurmOrchestrator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlurmOrchestrator(od);
    });
  });

  unittest.group('obj-schema-SlurmPartition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlurmPartition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlurmPartition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlurmPartition(od);
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

  unittest.group('obj-schema-StorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageConfig(od);
    });
  });

  unittest.group('obj-schema-StorageResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageResource(od);
    });
  });

  unittest.group('obj-schema-StorageResourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageResourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageResourceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageResourceConfig(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.HypercomputeClusterApi(mock).projects.locations;
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
      final res = api.HypercomputeClusterApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed26();
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

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.HypercomputeClusterApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
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
            queryMap['clusterId']!.first,
            unittest.equals(arg_clusterId),
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
        clusterId: arg_clusterId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.HypercomputeClusterApi(mock).projects.locations.clusters;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.HypercomputeClusterApi(mock).projects.locations.clusters;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.HypercomputeClusterApi(mock).projects.locations.clusters;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListClustersResponse());
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
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.HypercomputeClusterApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
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
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.HypercomputeClusterApi(mock).projects.locations.operations;
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
      final res =
          api.HypercomputeClusterApi(mock).projects.locations.operations;
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
      final res =
          api.HypercomputeClusterApi(mock).projects.locations.operations;
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
      final res =
          api.HypercomputeClusterApi(mock).projects.locations.operations;
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
