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

import 'package:googleapis/managedkafka/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.NetworkConfig> buildUnnamed0() => [
  buildNetworkConfig(),
  buildNetworkConfig(),
];

void checkUnnamed0(core.List<api.NetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfig(o[0]);
  checkNetworkConfig(o[1]);
}

core.int buildCounterAccessConfig = 0;
api.AccessConfig buildAccessConfig() {
  final o = api.AccessConfig();
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    o.networkConfigs = buildUnnamed0();
  }
  buildCounterAccessConfig--;
  return o;
}

void checkAccessConfig(api.AccessConfig o) {
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    checkUnnamed0(o.networkConfigs!);
  }
  buildCounterAccessConfig--;
}

core.List<api.AclEntry> buildUnnamed1() => [buildAclEntry(), buildAclEntry()];

void checkUnnamed1(core.List<api.AclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAclEntry(o[0]);
  checkAclEntry(o[1]);
}

core.int buildCounterAcl = 0;
api.Acl buildAcl() {
  final o = api.Acl();
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    o.aclEntries = buildUnnamed1();
    o.etag = 'foo';
    o.name = 'foo';
    o.patternType = 'foo';
    o.resourceName = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterAcl--;
  return o;
}

void checkAcl(api.Acl o) {
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    checkUnnamed1(o.aclEntries!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.patternType!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterAcl--;
}

core.int buildCounterAclEntry = 0;
api.AclEntry buildAclEntry() {
  final o = api.AclEntry();
  buildCounterAclEntry++;
  if (buildCounterAclEntry < 3) {
    o.host = 'foo';
    o.operation = 'foo';
    o.permissionType = 'foo';
    o.principal = 'foo';
  }
  buildCounterAclEntry--;
  return o;
}

void checkAclEntry(api.AclEntry o) {
  buildCounterAclEntry++;
  if (buildCounterAclEntry < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.permissionType!, unittest.equals('foo'));
    unittest.expect(o.principal!, unittest.equals('foo'));
  }
  buildCounterAclEntry--;
}

core.int buildCounterAddAclEntryResponse = 0;
api.AddAclEntryResponse buildAddAclEntryResponse() {
  final o = api.AddAclEntryResponse();
  buildCounterAddAclEntryResponse++;
  if (buildCounterAddAclEntryResponse < 3) {
    o.acl = buildAcl();
    o.aclCreated = true;
  }
  buildCounterAddAclEntryResponse--;
  return o;
}

void checkAddAclEntryResponse(api.AddAclEntryResponse o) {
  buildCounterAddAclEntryResponse++;
  if (buildCounterAddAclEntryResponse < 3) {
    checkAcl(o.acl!);
    unittest.expect(o.aclCreated!, unittest.isTrue);
  }
  buildCounterAddAclEntryResponse--;
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

core.int buildCounterCapacityConfig = 0;
api.CapacityConfig buildCapacityConfig() {
  final o = api.CapacityConfig();
  buildCounterCapacityConfig++;
  if (buildCounterCapacityConfig < 3) {
    o.memoryBytes = 'foo';
    o.vcpuCount = 'foo';
  }
  buildCounterCapacityConfig--;
  return o;
}

void checkCapacityConfig(api.CapacityConfig o) {
  buildCounterCapacityConfig++;
  if (buildCounterCapacityConfig < 3) {
    unittest.expect(o.memoryBytes!, unittest.equals('foo'));
    unittest.expect(o.vcpuCount!, unittest.equals('foo'));
  }
  buildCounterCapacityConfig--;
}

core.int buildCounterCertificateAuthorityServiceConfig = 0;
api.CertificateAuthorityServiceConfig buildCertificateAuthorityServiceConfig() {
  final o = api.CertificateAuthorityServiceConfig();
  buildCounterCertificateAuthorityServiceConfig++;
  if (buildCounterCertificateAuthorityServiceConfig < 3) {
    o.caPool = 'foo';
  }
  buildCounterCertificateAuthorityServiceConfig--;
  return o;
}

void checkCertificateAuthorityServiceConfig(
  api.CertificateAuthorityServiceConfig o,
) {
  buildCounterCertificateAuthorityServiceConfig++;
  if (buildCounterCertificateAuthorityServiceConfig < 3) {
    unittest.expect(o.caPool!, unittest.equals('foo'));
  }
  buildCounterCertificateAuthorityServiceConfig--;
}

core.List<api.SchemaReference> buildUnnamed2() => [
  buildSchemaReference(),
  buildSchemaReference(),
];

void checkUnnamed2(core.List<api.SchemaReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaReference(o[0]);
  checkSchemaReference(o[1]);
}

core.int buildCounterCheckCompatibilityRequest = 0;
api.CheckCompatibilityRequest buildCheckCompatibilityRequest() {
  final o = api.CheckCompatibilityRequest();
  buildCounterCheckCompatibilityRequest++;
  if (buildCounterCheckCompatibilityRequest < 3) {
    o.references = buildUnnamed2();
    o.schema = 'foo';
    o.schemaType = 'foo';
    o.verbose = true;
  }
  buildCounterCheckCompatibilityRequest--;
  return o;
}

void checkCheckCompatibilityRequest(api.CheckCompatibilityRequest o) {
  buildCounterCheckCompatibilityRequest++;
  if (buildCounterCheckCompatibilityRequest < 3) {
    checkUnnamed2(o.references!);
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.schemaType!, unittest.equals('foo'));
    unittest.expect(o.verbose!, unittest.isTrue);
  }
  buildCounterCheckCompatibilityRequest--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCheckCompatibilityResponse = 0;
api.CheckCompatibilityResponse buildCheckCompatibilityResponse() {
  final o = api.CheckCompatibilityResponse();
  buildCounterCheckCompatibilityResponse++;
  if (buildCounterCheckCompatibilityResponse < 3) {
    o.isCompatible = true;
    o.messages = buildUnnamed3();
  }
  buildCounterCheckCompatibilityResponse--;
  return o;
}

void checkCheckCompatibilityResponse(api.CheckCompatibilityResponse o) {
  buildCounterCheckCompatibilityResponse++;
  if (buildCounterCheckCompatibilityResponse < 3) {
    unittest.expect(o.isCompatible!, unittest.isTrue);
    checkUnnamed3(o.messages!);
  }
  buildCounterCheckCompatibilityResponse--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.capacityConfig = buildCapacityConfig();
    o.createTime = 'foo';
    o.gcpConfig = buildGcpConfig();
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.rebalanceConfig = buildRebalanceConfig();
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.tlsConfig = buildTlsConfig();
    o.updateTime = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkCapacityConfig(o.capacityConfig!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGcpConfig(o.gcpConfig!);
    checkUnnamed4(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRebalanceConfig(o.rebalanceConfig!);
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTlsConfig(o.tlsConfig!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.List<api.ConnectNetworkConfig> buildUnnamed5() => [
  buildConnectNetworkConfig(),
  buildConnectNetworkConfig(),
];

void checkUnnamed5(core.List<api.ConnectNetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectNetworkConfig(o[0]);
  checkConnectNetworkConfig(o[1]);
}

core.int buildCounterConnectAccessConfig = 0;
api.ConnectAccessConfig buildConnectAccessConfig() {
  final o = api.ConnectAccessConfig();
  buildCounterConnectAccessConfig++;
  if (buildCounterConnectAccessConfig < 3) {
    o.networkConfigs = buildUnnamed5();
  }
  buildCounterConnectAccessConfig--;
  return o;
}

void checkConnectAccessConfig(api.ConnectAccessConfig o) {
  buildCounterConnectAccessConfig++;
  if (buildCounterConnectAccessConfig < 3) {
    checkUnnamed5(o.networkConfigs!);
  }
  buildCounterConnectAccessConfig--;
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConnectCluster = 0;
api.ConnectCluster buildConnectCluster() {
  final o = api.ConnectCluster();
  buildCounterConnectCluster++;
  if (buildCounterConnectCluster < 3) {
    o.capacityConfig = buildCapacityConfig();
    o.config = buildUnnamed6();
    o.createTime = 'foo';
    o.gcpConfig = buildConnectGcpConfig();
    o.kafkaCluster = 'foo';
    o.labels = buildUnnamed7();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnectCluster--;
  return o;
}

void checkConnectCluster(api.ConnectCluster o) {
  buildCounterConnectCluster++;
  if (buildCounterConnectCluster < 3) {
    checkCapacityConfig(o.capacityConfig!);
    checkUnnamed6(o.config!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkConnectGcpConfig(o.gcpConfig!);
    unittest.expect(o.kafkaCluster!, unittest.equals('foo'));
    checkUnnamed7(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterConnectCluster--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConnectGcpConfig = 0;
api.ConnectGcpConfig buildConnectGcpConfig() {
  final o = api.ConnectGcpConfig();
  buildCounterConnectGcpConfig++;
  if (buildCounterConnectGcpConfig < 3) {
    o.accessConfig = buildConnectAccessConfig();
    o.secretPaths = buildUnnamed8();
  }
  buildCounterConnectGcpConfig--;
  return o;
}

void checkConnectGcpConfig(api.ConnectGcpConfig o) {
  buildCounterConnectGcpConfig++;
  if (buildCounterConnectGcpConfig < 3) {
    checkConnectAccessConfig(o.accessConfig!);
    checkUnnamed8(o.secretPaths!);
  }
  buildCounterConnectGcpConfig--;
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

core.int buildCounterConnectNetworkConfig = 0;
api.ConnectNetworkConfig buildConnectNetworkConfig() {
  final o = api.ConnectNetworkConfig();
  buildCounterConnectNetworkConfig++;
  if (buildCounterConnectNetworkConfig < 3) {
    o.additionalSubnets = buildUnnamed9();
    o.dnsDomainNames = buildUnnamed10();
    o.primarySubnet = 'foo';
  }
  buildCounterConnectNetworkConfig--;
  return o;
}

void checkConnectNetworkConfig(api.ConnectNetworkConfig o) {
  buildCounterConnectNetworkConfig++;
  if (buildCounterConnectNetworkConfig < 3) {
    checkUnnamed9(o.additionalSubnets!);
    checkUnnamed10(o.dnsDomainNames!);
    unittest.expect(o.primarySubnet!, unittest.equals('foo'));
  }
  buildCounterConnectNetworkConfig--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConnector = 0;
api.Connector buildConnector() {
  final o = api.Connector();
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    o.configs = buildUnnamed11();
    o.name = 'foo';
    o.state = 'foo';
    o.taskRestartPolicy = buildTaskRetryPolicy();
  }
  buildCounterConnector--;
  return o;
}

void checkConnector(api.Connector o) {
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    checkUnnamed11(o.configs!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTaskRetryPolicy(o.taskRestartPolicy!);
  }
  buildCounterConnector--;
}

core.Map<core.String, api.ConsumerTopicMetadata> buildUnnamed12() => {
  'x': buildConsumerTopicMetadata(),
  'y': buildConsumerTopicMetadata(),
};

void checkUnnamed12(core.Map<core.String, api.ConsumerTopicMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerTopicMetadata(o['x']!);
  checkConsumerTopicMetadata(o['y']!);
}

core.int buildCounterConsumerGroup = 0;
api.ConsumerGroup buildConsumerGroup() {
  final o = api.ConsumerGroup();
  buildCounterConsumerGroup++;
  if (buildCounterConsumerGroup < 3) {
    o.name = 'foo';
    o.topics = buildUnnamed12();
  }
  buildCounterConsumerGroup--;
  return o;
}

void checkConsumerGroup(api.ConsumerGroup o) {
  buildCounterConsumerGroup++;
  if (buildCounterConsumerGroup < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed12(o.topics!);
  }
  buildCounterConsumerGroup--;
}

core.int buildCounterConsumerPartitionMetadata = 0;
api.ConsumerPartitionMetadata buildConsumerPartitionMetadata() {
  final o = api.ConsumerPartitionMetadata();
  buildCounterConsumerPartitionMetadata++;
  if (buildCounterConsumerPartitionMetadata < 3) {
    o.metadata = 'foo';
    o.offset = 'foo';
  }
  buildCounterConsumerPartitionMetadata--;
  return o;
}

void checkConsumerPartitionMetadata(api.ConsumerPartitionMetadata o) {
  buildCounterConsumerPartitionMetadata++;
  if (buildCounterConsumerPartitionMetadata < 3) {
    unittest.expect(o.metadata!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals('foo'));
  }
  buildCounterConsumerPartitionMetadata--;
}

core.Map<core.String, api.ConsumerPartitionMetadata> buildUnnamed13() => {
  'x': buildConsumerPartitionMetadata(),
  'y': buildConsumerPartitionMetadata(),
};

void checkUnnamed13(core.Map<core.String, api.ConsumerPartitionMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerPartitionMetadata(o['x']!);
  checkConsumerPartitionMetadata(o['y']!);
}

core.int buildCounterConsumerTopicMetadata = 0;
api.ConsumerTopicMetadata buildConsumerTopicMetadata() {
  final o = api.ConsumerTopicMetadata();
  buildCounterConsumerTopicMetadata++;
  if (buildCounterConsumerTopicMetadata < 3) {
    o.partitions = buildUnnamed13();
  }
  buildCounterConsumerTopicMetadata--;
  return o;
}

void checkConsumerTopicMetadata(api.ConsumerTopicMetadata o) {
  buildCounterConsumerTopicMetadata++;
  if (buildCounterConsumerTopicMetadata < 3) {
    checkUnnamed13(o.partitions!);
  }
  buildCounterConsumerTopicMetadata--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContext = 0;
api.Context buildContext() {
  final o = api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.name = 'foo';
    o.subjects = buildUnnamed14();
  }
  buildCounterContext--;
  return o;
}

void checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed14(o.subjects!);
  }
  buildCounterContext--;
}

core.int buildCounterCreateSchemaRegistryRequest = 0;
api.CreateSchemaRegistryRequest buildCreateSchemaRegistryRequest() {
  final o = api.CreateSchemaRegistryRequest();
  buildCounterCreateSchemaRegistryRequest++;
  if (buildCounterCreateSchemaRegistryRequest < 3) {
    o.schemaRegistry = buildSchemaRegistry();
    o.schemaRegistryId = 'foo';
  }
  buildCounterCreateSchemaRegistryRequest--;
  return o;
}

void checkCreateSchemaRegistryRequest(api.CreateSchemaRegistryRequest o) {
  buildCounterCreateSchemaRegistryRequest++;
  if (buildCounterCreateSchemaRegistryRequest < 3) {
    checkSchemaRegistry(o.schemaRegistry!);
    unittest.expect(o.schemaRegistryId!, unittest.equals('foo'));
  }
  buildCounterCreateSchemaRegistryRequest--;
}

core.List<api.SchemaReference> buildUnnamed15() => [
  buildSchemaReference(),
  buildSchemaReference(),
];

void checkUnnamed15(core.List<api.SchemaReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaReference(o[0]);
  checkSchemaReference(o[1]);
}

core.int buildCounterCreateVersionRequest = 0;
api.CreateVersionRequest buildCreateVersionRequest() {
  final o = api.CreateVersionRequest();
  buildCounterCreateVersionRequest++;
  if (buildCounterCreateVersionRequest < 3) {
    o.id = 42;
    o.normalize = true;
    o.references = buildUnnamed15();
    o.schema = 'foo';
    o.schemaType = 'foo';
    o.version = 42;
  }
  buildCounterCreateVersionRequest--;
  return o;
}

void checkCreateVersionRequest(api.CreateVersionRequest o) {
  buildCounterCreateVersionRequest++;
  if (buildCounterCreateVersionRequest < 3) {
    unittest.expect(o.id!, unittest.equals(42));
    unittest.expect(o.normalize!, unittest.isTrue);
    checkUnnamed15(o.references!);
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.schemaType!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterCreateVersionRequest--;
}

core.int buildCounterCreateVersionResponse = 0;
api.CreateVersionResponse buildCreateVersionResponse() {
  final o = api.CreateVersionResponse();
  buildCounterCreateVersionResponse++;
  if (buildCounterCreateVersionResponse < 3) {
    o.id = 42;
  }
  buildCounterCreateVersionResponse--;
  return o;
}

void checkCreateVersionResponse(api.CreateVersionResponse o) {
  buildCounterCreateVersionResponse++;
  if (buildCounterCreateVersionResponse < 3) {
    unittest.expect(o.id!, unittest.equals(42));
  }
  buildCounterCreateVersionResponse--;
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

core.int buildCounterGcpConfig = 0;
api.GcpConfig buildGcpConfig() {
  final o = api.GcpConfig();
  buildCounterGcpConfig++;
  if (buildCounterGcpConfig < 3) {
    o.accessConfig = buildAccessConfig();
    o.kmsKey = 'foo';
  }
  buildCounterGcpConfig--;
  return o;
}

void checkGcpConfig(api.GcpConfig o) {
  buildCounterGcpConfig++;
  if (buildCounterGcpConfig < 3) {
    checkAccessConfig(o.accessConfig!);
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
  }
  buildCounterGcpConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed17() => [
  buildUnnamed16(),
  buildUnnamed16(),
];

void checkUnnamed17(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed16(o[0]);
  checkUnnamed16(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed17();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed17(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.List<api.Acl> buildUnnamed18() => [buildAcl(), buildAcl()];

void checkUnnamed18(core.List<api.Acl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcl(o[0]);
  checkAcl(o[1]);
}

core.int buildCounterListAclsResponse = 0;
api.ListAclsResponse buildListAclsResponse() {
  final o = api.ListAclsResponse();
  buildCounterListAclsResponse++;
  if (buildCounterListAclsResponse < 3) {
    o.acls = buildUnnamed18();
    o.nextPageToken = 'foo';
  }
  buildCounterListAclsResponse--;
  return o;
}

void checkListAclsResponse(api.ListAclsResponse o) {
  buildCounterListAclsResponse++;
  if (buildCounterListAclsResponse < 3) {
    checkUnnamed18(o.acls!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAclsResponse--;
}

core.List<api.Cluster> buildUnnamed19() => [buildCluster(), buildCluster()];

void checkUnnamed19(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed19(o.clusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.ConnectCluster> buildUnnamed21() => [
  buildConnectCluster(),
  buildConnectCluster(),
];

void checkUnnamed21(core.List<api.ConnectCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectCluster(o[0]);
  checkConnectCluster(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectClustersResponse = 0;
api.ListConnectClustersResponse buildListConnectClustersResponse() {
  final o = api.ListConnectClustersResponse();
  buildCounterListConnectClustersResponse++;
  if (buildCounterListConnectClustersResponse < 3) {
    o.connectClusters = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListConnectClustersResponse--;
  return o;
}

void checkListConnectClustersResponse(api.ListConnectClustersResponse o) {
  buildCounterListConnectClustersResponse++;
  if (buildCounterListConnectClustersResponse < 3) {
    checkUnnamed21(o.connectClusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListConnectClustersResponse--;
}

core.List<api.Connector> buildUnnamed23() => [
  buildConnector(),
  buildConnector(),
];

void checkUnnamed23(core.List<api.Connector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnector(o[0]);
  checkConnector(o[1]);
}

core.int buildCounterListConnectorsResponse = 0;
api.ListConnectorsResponse buildListConnectorsResponse() {
  final o = api.ListConnectorsResponse();
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    o.connectors = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListConnectorsResponse--;
  return o;
}

void checkListConnectorsResponse(api.ListConnectorsResponse o) {
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    checkUnnamed23(o.connectors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConnectorsResponse--;
}

core.List<api.ConsumerGroup> buildUnnamed24() => [
  buildConsumerGroup(),
  buildConsumerGroup(),
];

void checkUnnamed24(core.List<api.ConsumerGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerGroup(o[0]);
  checkConsumerGroup(o[1]);
}

core.int buildCounterListConsumerGroupsResponse = 0;
api.ListConsumerGroupsResponse buildListConsumerGroupsResponse() {
  final o = api.ListConsumerGroupsResponse();
  buildCounterListConsumerGroupsResponse++;
  if (buildCounterListConsumerGroupsResponse < 3) {
    o.consumerGroups = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsumerGroupsResponse--;
  return o;
}

void checkListConsumerGroupsResponse(api.ListConsumerGroupsResponse o) {
  buildCounterListConsumerGroupsResponse++;
  if (buildCounterListConsumerGroupsResponse < 3) {
    checkUnnamed24(o.consumerGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConsumerGroupsResponse--;
}

core.List<api.Location> buildUnnamed25() => [buildLocation(), buildLocation()];

void checkUnnamed25(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed25(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed26() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed26(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed26();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SchemaRegistry> buildUnnamed27() => [
  buildSchemaRegistry(),
  buildSchemaRegistry(),
];

void checkUnnamed27(core.List<api.SchemaRegistry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaRegistry(o[0]);
  checkSchemaRegistry(o[1]);
}

core.int buildCounterListSchemaRegistriesResponse = 0;
api.ListSchemaRegistriesResponse buildListSchemaRegistriesResponse() {
  final o = api.ListSchemaRegistriesResponse();
  buildCounterListSchemaRegistriesResponse++;
  if (buildCounterListSchemaRegistriesResponse < 3) {
    o.schemaRegistries = buildUnnamed27();
  }
  buildCounterListSchemaRegistriesResponse--;
  return o;
}

void checkListSchemaRegistriesResponse(api.ListSchemaRegistriesResponse o) {
  buildCounterListSchemaRegistriesResponse++;
  if (buildCounterListSchemaRegistriesResponse < 3) {
    checkUnnamed27(o.schemaRegistries!);
  }
  buildCounterListSchemaRegistriesResponse--;
}

core.List<api.Topic> buildUnnamed28() => [buildTopic(), buildTopic()];

void checkUnnamed28(core.List<api.Topic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTopic(o[0]);
  checkTopic(o[1]);
}

core.int buildCounterListTopicsResponse = 0;
api.ListTopicsResponse buildListTopicsResponse() {
  final o = api.ListTopicsResponse();
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    o.nextPageToken = 'foo';
    o.topics = buildUnnamed28();
  }
  buildCounterListTopicsResponse--;
  return o;
}

void checkListTopicsResponse(api.ListTopicsResponse o) {
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.topics!);
  }
  buildCounterListTopicsResponse--;
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed29(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed30(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.SchemaReference> buildUnnamed31() => [
  buildSchemaReference(),
  buildSchemaReference(),
];

void checkUnnamed31(core.List<api.SchemaReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaReference(o[0]);
  checkSchemaReference(o[1]);
}

core.int buildCounterLookupVersionRequest = 0;
api.LookupVersionRequest buildLookupVersionRequest() {
  final o = api.LookupVersionRequest();
  buildCounterLookupVersionRequest++;
  if (buildCounterLookupVersionRequest < 3) {
    o.deleted = true;
    o.normalize = true;
    o.references = buildUnnamed31();
    o.schema = 'foo';
    o.schemaType = 'foo';
  }
  buildCounterLookupVersionRequest--;
  return o;
}

void checkLookupVersionRequest(api.LookupVersionRequest o) {
  buildCounterLookupVersionRequest++;
  if (buildCounterLookupVersionRequest < 3) {
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(o.normalize!, unittest.isTrue);
    checkUnnamed31(o.references!);
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.schemaType!, unittest.equals('foo'));
  }
  buildCounterLookupVersionRequest--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.subnet = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(o.subnet!, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed32();
    o.name = 'foo';
    o.response = buildUnnamed33();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed32(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed33(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPauseConnectorRequest = 0;
api.PauseConnectorRequest buildPauseConnectorRequest() {
  final o = api.PauseConnectorRequest();
  buildCounterPauseConnectorRequest++;
  if (buildCounterPauseConnectorRequest < 3) {}
  buildCounterPauseConnectorRequest--;
  return o;
}

void checkPauseConnectorRequest(api.PauseConnectorRequest o) {
  buildCounterPauseConnectorRequest++;
  if (buildCounterPauseConnectorRequest < 3) {}
  buildCounterPauseConnectorRequest--;
}

core.int buildCounterPauseConnectorResponse = 0;
api.PauseConnectorResponse buildPauseConnectorResponse() {
  final o = api.PauseConnectorResponse();
  buildCounterPauseConnectorResponse++;
  if (buildCounterPauseConnectorResponse < 3) {}
  buildCounterPauseConnectorResponse--;
  return o;
}

void checkPauseConnectorResponse(api.PauseConnectorResponse o) {
  buildCounterPauseConnectorResponse++;
  if (buildCounterPauseConnectorResponse < 3) {}
  buildCounterPauseConnectorResponse--;
}

core.int buildCounterRebalanceConfig = 0;
api.RebalanceConfig buildRebalanceConfig() {
  final o = api.RebalanceConfig();
  buildCounterRebalanceConfig++;
  if (buildCounterRebalanceConfig < 3) {
    o.mode = 'foo';
  }
  buildCounterRebalanceConfig--;
  return o;
}

void checkRebalanceConfig(api.RebalanceConfig o) {
  buildCounterRebalanceConfig++;
  if (buildCounterRebalanceConfig < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterRebalanceConfig--;
}

core.int buildCounterRemoveAclEntryResponse = 0;
api.RemoveAclEntryResponse buildRemoveAclEntryResponse() {
  final o = api.RemoveAclEntryResponse();
  buildCounterRemoveAclEntryResponse++;
  if (buildCounterRemoveAclEntryResponse < 3) {
    o.acl = buildAcl();
    o.aclDeleted = true;
  }
  buildCounterRemoveAclEntryResponse--;
  return o;
}

void checkRemoveAclEntryResponse(api.RemoveAclEntryResponse o) {
  buildCounterRemoveAclEntryResponse++;
  if (buildCounterRemoveAclEntryResponse < 3) {
    checkAcl(o.acl!);
    unittest.expect(o.aclDeleted!, unittest.isTrue);
  }
  buildCounterRemoveAclEntryResponse--;
}

core.int buildCounterRestartConnectorRequest = 0;
api.RestartConnectorRequest buildRestartConnectorRequest() {
  final o = api.RestartConnectorRequest();
  buildCounterRestartConnectorRequest++;
  if (buildCounterRestartConnectorRequest < 3) {}
  buildCounterRestartConnectorRequest--;
  return o;
}

void checkRestartConnectorRequest(api.RestartConnectorRequest o) {
  buildCounterRestartConnectorRequest++;
  if (buildCounterRestartConnectorRequest < 3) {}
  buildCounterRestartConnectorRequest--;
}

core.int buildCounterRestartConnectorResponse = 0;
api.RestartConnectorResponse buildRestartConnectorResponse() {
  final o = api.RestartConnectorResponse();
  buildCounterRestartConnectorResponse++;
  if (buildCounterRestartConnectorResponse < 3) {}
  buildCounterRestartConnectorResponse--;
  return o;
}

void checkRestartConnectorResponse(api.RestartConnectorResponse o) {
  buildCounterRestartConnectorResponse++;
  if (buildCounterRestartConnectorResponse < 3) {}
  buildCounterRestartConnectorResponse--;
}

core.int buildCounterResumeConnectorRequest = 0;
api.ResumeConnectorRequest buildResumeConnectorRequest() {
  final o = api.ResumeConnectorRequest();
  buildCounterResumeConnectorRequest++;
  if (buildCounterResumeConnectorRequest < 3) {}
  buildCounterResumeConnectorRequest--;
  return o;
}

void checkResumeConnectorRequest(api.ResumeConnectorRequest o) {
  buildCounterResumeConnectorRequest++;
  if (buildCounterResumeConnectorRequest < 3) {}
  buildCounterResumeConnectorRequest--;
}

core.int buildCounterResumeConnectorResponse = 0;
api.ResumeConnectorResponse buildResumeConnectorResponse() {
  final o = api.ResumeConnectorResponse();
  buildCounterResumeConnectorResponse++;
  if (buildCounterResumeConnectorResponse < 3) {}
  buildCounterResumeConnectorResponse--;
  return o;
}

void checkResumeConnectorResponse(api.ResumeConnectorResponse o) {
  buildCounterResumeConnectorResponse++;
  if (buildCounterResumeConnectorResponse < 3) {}
  buildCounterResumeConnectorResponse--;
}

core.List<api.SchemaReference> buildUnnamed34() => [
  buildSchemaReference(),
  buildSchemaReference(),
];

void checkUnnamed34(core.List<api.SchemaReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaReference(o[0]);
  checkSchemaReference(o[1]);
}

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  final o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.references = buildUnnamed34();
    o.schema = 'foo';
    o.schemaType = 'foo';
  }
  buildCounterSchema--;
  return o;
}

void checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    checkUnnamed34(o.references!);
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.schemaType!, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.int buildCounterSchemaConfig = 0;
api.SchemaConfig buildSchemaConfig() {
  final o = api.SchemaConfig();
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    o.alias = 'foo';
    o.compatibility = 'foo';
    o.normalize = true;
  }
  buildCounterSchemaConfig--;
  return o;
}

void checkSchemaConfig(api.SchemaConfig o) {
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    unittest.expect(o.alias!, unittest.equals('foo'));
    unittest.expect(o.compatibility!, unittest.equals('foo'));
    unittest.expect(o.normalize!, unittest.isTrue);
  }
  buildCounterSchemaConfig--;
}

core.int buildCounterSchemaMode = 0;
api.SchemaMode buildSchemaMode() {
  final o = api.SchemaMode();
  buildCounterSchemaMode++;
  if (buildCounterSchemaMode < 3) {
    o.mode = 'foo';
  }
  buildCounterSchemaMode--;
  return o;
}

void checkSchemaMode(api.SchemaMode o) {
  buildCounterSchemaMode++;
  if (buildCounterSchemaMode < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterSchemaMode--;
}

core.int buildCounterSchemaReference = 0;
api.SchemaReference buildSchemaReference() {
  final o = api.SchemaReference();
  buildCounterSchemaReference++;
  if (buildCounterSchemaReference < 3) {
    o.name = 'foo';
    o.subject = 'foo';
    o.version = 42;
  }
  buildCounterSchemaReference--;
  return o;
}

void checkSchemaReference(api.SchemaReference o) {
  buildCounterSchemaReference++;
  if (buildCounterSchemaReference < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterSchemaReference--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSchemaRegistry = 0;
api.SchemaRegistry buildSchemaRegistry() {
  final o = api.SchemaRegistry();
  buildCounterSchemaRegistry++;
  if (buildCounterSchemaRegistry < 3) {
    o.contexts = buildUnnamed35();
    o.name = 'foo';
  }
  buildCounterSchemaRegistry--;
  return o;
}

void checkSchemaRegistry(api.SchemaRegistry o) {
  buildCounterSchemaRegistry++;
  if (buildCounterSchemaRegistry < 3) {
    checkUnnamed35(o.contexts!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSchemaRegistry--;
}

core.List<api.SchemaReference> buildUnnamed36() => [
  buildSchemaReference(),
  buildSchemaReference(),
];

void checkUnnamed36(core.List<api.SchemaReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaReference(o[0]);
  checkSchemaReference(o[1]);
}

core.int buildCounterSchemaVersion = 0;
api.SchemaVersion buildSchemaVersion() {
  final o = api.SchemaVersion();
  buildCounterSchemaVersion++;
  if (buildCounterSchemaVersion < 3) {
    o.id = 42;
    o.references = buildUnnamed36();
    o.schema = 'foo';
    o.schemaType = 'foo';
    o.subject = 'foo';
    o.version = 42;
  }
  buildCounterSchemaVersion--;
  return o;
}

void checkSchemaVersion(api.SchemaVersion o) {
  buildCounterSchemaVersion++;
  if (buildCounterSchemaVersion < 3) {
    unittest.expect(o.id!, unittest.equals(42));
    checkUnnamed36(o.references!);
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.schemaType!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterSchemaVersion--;
}

core.Map<core.String, core.Object?> buildUnnamed37() => {
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

void checkUnnamed37(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed38() => [
  buildUnnamed37(),
  buildUnnamed37(),
];

void checkUnnamed38(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed37(o[0]);
  checkUnnamed37(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed38();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed38(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStopConnectorRequest = 0;
api.StopConnectorRequest buildStopConnectorRequest() {
  final o = api.StopConnectorRequest();
  buildCounterStopConnectorRequest++;
  if (buildCounterStopConnectorRequest < 3) {}
  buildCounterStopConnectorRequest--;
  return o;
}

void checkStopConnectorRequest(api.StopConnectorRequest o) {
  buildCounterStopConnectorRequest++;
  if (buildCounterStopConnectorRequest < 3) {}
  buildCounterStopConnectorRequest--;
}

core.int buildCounterStopConnectorResponse = 0;
api.StopConnectorResponse buildStopConnectorResponse() {
  final o = api.StopConnectorResponse();
  buildCounterStopConnectorResponse++;
  if (buildCounterStopConnectorResponse < 3) {}
  buildCounterStopConnectorResponse--;
  return o;
}

void checkStopConnectorResponse(api.StopConnectorResponse o) {
  buildCounterStopConnectorResponse++;
  if (buildCounterStopConnectorResponse < 3) {}
  buildCounterStopConnectorResponse--;
}

core.int buildCounterTaskRetryPolicy = 0;
api.TaskRetryPolicy buildTaskRetryPolicy() {
  final o = api.TaskRetryPolicy();
  buildCounterTaskRetryPolicy++;
  if (buildCounterTaskRetryPolicy < 3) {
    o.maximumBackoff = 'foo';
    o.minimumBackoff = 'foo';
  }
  buildCounterTaskRetryPolicy--;
  return o;
}

void checkTaskRetryPolicy(api.TaskRetryPolicy o) {
  buildCounterTaskRetryPolicy++;
  if (buildCounterTaskRetryPolicy < 3) {
    unittest.expect(o.maximumBackoff!, unittest.equals('foo'));
    unittest.expect(o.minimumBackoff!, unittest.equals('foo'));
  }
  buildCounterTaskRetryPolicy--;
}

core.int buildCounterTlsConfig = 0;
api.TlsConfig buildTlsConfig() {
  final o = api.TlsConfig();
  buildCounterTlsConfig++;
  if (buildCounterTlsConfig < 3) {
    o.sslPrincipalMappingRules = 'foo';
    o.trustConfig = buildTrustConfig();
  }
  buildCounterTlsConfig--;
  return o;
}

void checkTlsConfig(api.TlsConfig o) {
  buildCounterTlsConfig++;
  if (buildCounterTlsConfig < 3) {
    unittest.expect(o.sslPrincipalMappingRules!, unittest.equals('foo'));
    checkTrustConfig(o.trustConfig!);
  }
  buildCounterTlsConfig--;
}

core.Map<core.String, core.String> buildUnnamed39() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed39(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  final o = api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.configs = buildUnnamed39();
    o.name = 'foo';
    o.partitionCount = 42;
    o.replicationFactor = 42;
  }
  buildCounterTopic--;
  return o;
}

void checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    checkUnnamed39(o.configs!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partitionCount!, unittest.equals(42));
    unittest.expect(o.replicationFactor!, unittest.equals(42));
  }
  buildCounterTopic--;
}

core.List<api.CertificateAuthorityServiceConfig> buildUnnamed40() => [
  buildCertificateAuthorityServiceConfig(),
  buildCertificateAuthorityServiceConfig(),
];

void checkUnnamed40(core.List<api.CertificateAuthorityServiceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateAuthorityServiceConfig(o[0]);
  checkCertificateAuthorityServiceConfig(o[1]);
}

core.int buildCounterTrustConfig = 0;
api.TrustConfig buildTrustConfig() {
  final o = api.TrustConfig();
  buildCounterTrustConfig++;
  if (buildCounterTrustConfig < 3) {
    o.casConfigs = buildUnnamed40();
  }
  buildCounterTrustConfig--;
  return o;
}

void checkTrustConfig(api.TrustConfig o) {
  buildCounterTrustConfig++;
  if (buildCounterTrustConfig < 3) {
    checkUnnamed40(o.casConfigs!);
  }
  buildCounterTrustConfig--;
}

core.int buildCounterUpdateSchemaConfigRequest = 0;
api.UpdateSchemaConfigRequest buildUpdateSchemaConfigRequest() {
  final o = api.UpdateSchemaConfigRequest();
  buildCounterUpdateSchemaConfigRequest++;
  if (buildCounterUpdateSchemaConfigRequest < 3) {
    o.compatibility = 'foo';
    o.normalize = true;
  }
  buildCounterUpdateSchemaConfigRequest--;
  return o;
}

void checkUpdateSchemaConfigRequest(api.UpdateSchemaConfigRequest o) {
  buildCounterUpdateSchemaConfigRequest++;
  if (buildCounterUpdateSchemaConfigRequest < 3) {
    unittest.expect(o.compatibility!, unittest.equals('foo'));
    unittest.expect(o.normalize!, unittest.isTrue);
  }
  buildCounterUpdateSchemaConfigRequest--;
}

core.int buildCounterUpdateSchemaModeRequest = 0;
api.UpdateSchemaModeRequest buildUpdateSchemaModeRequest() {
  final o = api.UpdateSchemaModeRequest();
  buildCounterUpdateSchemaModeRequest++;
  if (buildCounterUpdateSchemaModeRequest < 3) {
    o.mode = 'foo';
  }
  buildCounterUpdateSchemaModeRequest--;
  return o;
}

void checkUpdateSchemaModeRequest(api.UpdateSchemaModeRequest o) {
  buildCounterUpdateSchemaModeRequest++;
  if (buildCounterUpdateSchemaModeRequest < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterUpdateSchemaModeRequest--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
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

  unittest.group('obj-schema-Acl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Acl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAcl(od);
    });
  });

  unittest.group('obj-schema-AclEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAclEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AclEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAclEntry(od);
    });
  });

  unittest.group('obj-schema-AddAclEntryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddAclEntryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddAclEntryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddAclEntryResponse(od);
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

  unittest.group('obj-schema-CapacityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCapacityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CapacityConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCapacityConfig(od);
    });
  });

  unittest.group('obj-schema-CertificateAuthorityServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateAuthorityServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateAuthorityServiceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCertificateAuthorityServiceConfig(od);
    });
  });

  unittest.group('obj-schema-CheckCompatibilityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckCompatibilityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckCompatibilityRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckCompatibilityRequest(od);
    });
  });

  unittest.group('obj-schema-CheckCompatibilityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckCompatibilityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckCompatibilityResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckCompatibilityResponse(od);
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

  unittest.group('obj-schema-ConnectAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectAccessConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectAccessConfig(od);
    });
  });

  unittest.group('obj-schema-ConnectCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectCluster(od);
    });
  });

  unittest.group('obj-schema-ConnectGcpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectGcpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectGcpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectGcpConfig(od);
    });
  });

  unittest.group('obj-schema-ConnectNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-Connector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Connector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnector(od);
    });
  });

  unittest.group('obj-schema-ConsumerGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsumerGroup(od);
    });
  });

  unittest.group('obj-schema-ConsumerPartitionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerPartitionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerPartitionMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsumerPartitionMetadata(od);
    });
  });

  unittest.group('obj-schema-ConsumerTopicMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerTopicMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerTopicMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsumerTopicMetadata(od);
    });
  });

  unittest.group('obj-schema-Context', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Context.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContext(od);
    });
  });

  unittest.group('obj-schema-CreateSchemaRegistryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSchemaRegistryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSchemaRegistryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateSchemaRegistryRequest(od);
    });
  });

  unittest.group('obj-schema-CreateVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateVersionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateVersionRequest(od);
    });
  });

  unittest.group('obj-schema-CreateVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateVersionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateVersionResponse(od);
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

  unittest.group('obj-schema-GcpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcpConfig(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-ListAclsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAclsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAclsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAclsResponse(od);
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

  unittest.group('obj-schema-ListConnectClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsumerGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsumerGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsumerGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsumerGroupsResponse(od);
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

  unittest.group('obj-schema-ListSchemaRegistriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSchemaRegistriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSchemaRegistriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSchemaRegistriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTopicsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTopicsResponse(od);
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

  unittest.group('obj-schema-LookupVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupVersionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupVersionRequest(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfig(od);
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

  unittest.group('obj-schema-PauseConnectorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseConnectorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseConnectorRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPauseConnectorRequest(od);
    });
  });

  unittest.group('obj-schema-PauseConnectorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseConnectorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseConnectorResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPauseConnectorResponse(od);
    });
  });

  unittest.group('obj-schema-RebalanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRebalanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RebalanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRebalanceConfig(od);
    });
  });

  unittest.group('obj-schema-RemoveAclEntryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAclEntryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAclEntryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAclEntryResponse(od);
    });
  });

  unittest.group('obj-schema-RestartConnectorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestartConnectorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestartConnectorRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestartConnectorRequest(od);
    });
  });

  unittest.group('obj-schema-RestartConnectorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestartConnectorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestartConnectorResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestartConnectorResponse(od);
    });
  });

  unittest.group('obj-schema-ResumeConnectorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeConnectorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeConnectorRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResumeConnectorRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeConnectorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeConnectorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeConnectorResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResumeConnectorResponse(od);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Schema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchema(od);
    });
  });

  unittest.group('obj-schema-SchemaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaConfig(od);
    });
  });

  unittest.group('obj-schema-SchemaMode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaMode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaMode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaMode(od);
    });
  });

  unittest.group('obj-schema-SchemaReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaReference(od);
    });
  });

  unittest.group('obj-schema-SchemaRegistry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaRegistry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaRegistry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaRegistry(od);
    });
  });

  unittest.group('obj-schema-SchemaVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaVersion(od);
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

  unittest.group('obj-schema-StopConnectorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopConnectorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopConnectorRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopConnectorRequest(od);
    });
  });

  unittest.group('obj-schema-StopConnectorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopConnectorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopConnectorResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopConnectorResponse(od);
    });
  });

  unittest.group('obj-schema-TaskRetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskRetryPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-TlsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsConfig(od);
    });
  });

  unittest.group('obj-schema-Topic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Topic.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTopic(od);
    });
  });

  unittest.group('obj-schema-TrustConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrustConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrustConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrustConfig(od);
    });
  });

  unittest.group('obj-schema-UpdateSchemaConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSchemaConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSchemaConfigRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateSchemaConfigRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSchemaModeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSchemaModeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSchemaModeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateSchemaModeRequest(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations;
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
      final res = api.ManagedKafkaApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed41();
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters;
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

  unittest.group('resource-ProjectsLocationsClustersAclsResource', () {
    unittest.test('method--addAclEntry', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
      final arg_request = buildAclEntry();
      final arg_acl = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AclEntry.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAclEntry(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildAddAclEntryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addAclEntry(
        arg_request,
        arg_acl,
        $fields: arg_$fields,
      );
      checkAddAclEntryResponse(response as api.AddAclEntryResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
      final arg_request = buildAcl();
      final arg_parent = 'foo';
      final arg_aclId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Acl.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAcl(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          unittest.expect(queryMap['aclId']!.first, unittest.equals(arg_aclId));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAcl());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        aclId: arg_aclId,
        $fields: arg_$fields,
      );
      checkAcl(response as api.Acl);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
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
          final resp = convert.json.encode(buildAcl());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAcl(response as api.Acl);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAclsResponse());
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
      checkListAclsResponse(response as api.ListAclsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
      final arg_request = buildAcl();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Acl.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAcl(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAcl());
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
      checkAcl(response as api.Acl);
    });

    unittest.test('method--removeAclEntry', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.acls;
      final arg_request = buildAclEntry();
      final arg_acl = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AclEntry.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAclEntry(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildRemoveAclEntryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeAclEntry(
        arg_request,
        arg_acl,
        $fields: arg_$fields,
      );
      checkRemoveAclEntryResponse(response as api.RemoveAclEntryResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersConsumerGroupsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.clusters.consumerGroups;
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
          api.ManagedKafkaApi(mock).projects.locations.clusters.consumerGroups;
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
          final resp = convert.json.encode(buildConsumerGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsumerGroup(response as api.ConsumerGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.clusters.consumerGroups;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListConsumerGroupsResponse());
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
      checkListConsumerGroupsResponse(
        response as api.ListConsumerGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.clusters.consumerGroups;
      final arg_request = buildConsumerGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConsumerGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConsumerGroup(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConsumerGroup());
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
      checkConsumerGroup(response as api.ConsumerGroup);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersTopicsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.topics;
      final arg_request = buildTopic();
      final arg_parent = 'foo';
      final arg_topicId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Topic.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTopic(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['topicId']!.first,
            unittest.equals(arg_topicId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTopic());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        topicId: arg_topicId,
        $fields: arg_$fields,
      );
      checkTopic(response as api.Topic);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.topics;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.topics;
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
          final resp = convert.json.encode(buildTopic());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.topics;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTopicsResponse());
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
      checkListTopicsResponse(response as api.ListTopicsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.clusters.topics;
      final arg_request = buildTopic();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Topic.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTopic(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTopic());
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
      checkTopic(response as api.Topic);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.connectClusters;
      final arg_request = buildConnectCluster();
      final arg_parent = 'foo';
      final arg_connectClusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConnectCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnectCluster(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['connectClusterId']!.first,
            unittest.equals(arg_connectClusterId),
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
        connectClusterId: arg_connectClusterId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.connectClusters;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.connectClusters;
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
          final resp = convert.json.encode(buildConnectCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnectCluster(response as api.ConnectCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.connectClusters;
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
          final resp = convert.json.encode(buildListConnectClustersResponse());
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
      checkListConnectClustersResponse(
        response as api.ListConnectClustersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.connectClusters;
      final arg_request = buildConnectCluster();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConnectCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnectCluster(obj);

          final path = req.url.path;
          var pathOffset = 0;
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

  unittest.group('resource-ProjectsLocationsConnectClustersConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
      final arg_request = buildConnector();
      final arg_parent = 'foo';
      final arg_connectorId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnector(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['connectorId']!.first,
            unittest.equals(arg_connectorId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConnector());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        connectorId: arg_connectorId,
        $fields: arg_$fields,
      );
      checkConnector(response as api.Connector);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
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
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
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
          final resp = convert.json.encode(buildConnector());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnector(response as api.Connector);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListConnectorsResponse());
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
      checkListConnectorsResponse(response as api.ListConnectorsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
      final arg_request = buildConnector();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnector(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConnector());
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
      checkConnector(response as api.Connector);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
      final arg_request = buildPauseConnectorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PauseConnectorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPauseConnectorRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildPauseConnectorResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pause(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPauseConnectorResponse(response as api.PauseConnectorResponse);
    });

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
      final arg_request = buildRestartConnectorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestartConnectorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestartConnectorRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildRestartConnectorResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restart(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRestartConnectorResponse(response as api.RestartConnectorResponse);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
      final arg_request = buildResumeConnectorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResumeConnectorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResumeConnectorRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildResumeConnectorResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkResumeConnectorResponse(response as api.ResumeConnectorResponse);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.connectClusters.connectors;
      final arg_request = buildStopConnectorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StopConnectorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStopConnectorRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildStopConnectorResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stop(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkStopConnectorResponse(response as api.StopConnectorResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.operations;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.operations;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.operations;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsSchemaRegistriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.schemaRegistries;
      final arg_request = buildCreateSchemaRegistryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateSchemaRegistryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateSchemaRegistryRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildSchemaRegistry());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSchemaRegistry(response as api.SchemaRegistry);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.schemaRegistries;
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
      final res = api.ManagedKafkaApi(mock).projects.locations.schemaRegistries;
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
          final resp = convert.json.encode(buildSchemaRegistry());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSchemaRegistry(response as api.SchemaRegistry);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedKafkaApi(mock).projects.locations.schemaRegistries;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListSchemaRegistriesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListSchemaRegistriesResponse(
        response as api.ListSchemaRegistriesResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesCompatibilityResource',
    () {
      unittest.test('method--checkCompatibility', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.compatibility;
        final arg_request = buildCheckCompatibilityRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.CheckCompatibilityRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkCheckCompatibilityRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildCheckCompatibilityResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.checkCompatibility(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkCheckCompatibilityResponse(
          response as api.CheckCompatibilityResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsSchemaRegistriesConfigResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.config;
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
          final resp = convert.json.encode(buildSchemaConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSchemaConfig(response as api.SchemaConfig);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.config;
      final arg_name = 'foo';
      final arg_defaultToGlobal = true;
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
            queryMap['defaultToGlobal']!.first,
            unittest.equals('$arg_defaultToGlobal'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSchemaConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        defaultToGlobal: arg_defaultToGlobal,
        $fields: arg_$fields,
      );
      checkSchemaConfig(response as api.SchemaConfig);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.config;
      final arg_request = buildUpdateSchemaConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateSchemaConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateSchemaConfigRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildSchemaConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSchemaConfig(response as api.SchemaConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsSchemaRegistriesContextsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.schemaRegistries.contexts;
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
          final resp = convert.json.encode(buildContext());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkContext(response as api.Context);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.schemaRegistries.contexts;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsCompatibilityResource',
    () {
      unittest.test('method--checkCompatibility', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.compatibility;
        final arg_request = buildCheckCompatibilityRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.CheckCompatibilityRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkCheckCompatibilityRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildCheckCompatibilityResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.checkCompatibility(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkCheckCompatibilityResponse(
          response as api.CheckCompatibilityResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsConfigResource',
    () {
      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.config;
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
            final resp = convert.json.encode(buildSchemaConfig());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkSchemaConfig(response as api.SchemaConfig);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.config;
        final arg_name = 'foo';
        final arg_defaultToGlobal = true;
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
              queryMap['defaultToGlobal']!.first,
              unittest.equals('$arg_defaultToGlobal'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildSchemaConfig());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_name,
          defaultToGlobal: arg_defaultToGlobal,
          $fields: arg_$fields,
        );
        checkSchemaConfig(response as api.SchemaConfig);
      });

      unittest.test('method--update', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.config;
        final arg_request = buildUpdateSchemaConfigRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.UpdateSchemaConfigRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkUpdateSchemaConfigRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildSchemaConfig());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.update(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkSchemaConfig(response as api.SchemaConfig);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsModeResource',
    () {
      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.mode;
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
            final resp = convert.json.encode(buildSchemaMode());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkSchemaMode(response as api.SchemaMode);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.mode;
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
            final resp = convert.json.encode(buildSchemaMode());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkSchemaMode(response as api.SchemaMode);
      });

      unittest.test('method--update', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.mode;
        final arg_request = buildUpdateSchemaModeRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.UpdateSchemaModeRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkUpdateSchemaModeRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildSchemaMode());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.update(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkSchemaMode(response as api.SchemaMode);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSchemasResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.schemas;
        final arg_name = 'foo';
        final arg_subject = 'foo';
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
              queryMap['subject']!.first,
              unittest.equals(arg_subject),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildSchema());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_name,
          subject: arg_subject,
          $fields: arg_$fields,
        );
        checkSchema(response as api.Schema);
      });

      unittest.test('method--getSchema', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.schemas;
        final arg_name = 'foo';
        final arg_subject = 'foo';
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
              queryMap['subject']!.first,
              unittest.equals(arg_subject),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getSchema(
          arg_name,
          subject: arg_subject,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSchemasSubjectsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.schemas.subjects;
        final arg_parent = 'foo';
        final arg_deleted = true;
        final arg_subject = 'foo';
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['subject']!.first,
              unittest.equals(arg_subject),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          subject: arg_subject,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSchemasTypesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.schemas.types;
        final arg_parent = 'foo';
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(arg_parent, $fields: arg_$fields);
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSchemasVersionsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.schemas.versions;
        final arg_parent = 'foo';
        final arg_deleted = true;
        final arg_subject = 'foo';
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['subject']!.first,
              unittest.equals(arg_subject),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          subject: arg_subject,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSubjectsResource',
    () {
      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects;
        final arg_name = 'foo';
        final arg_permanent = true;
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
              queryMap['permanent']!.first,
              unittest.equals('$arg_permanent'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          permanent: arg_permanent,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects;
        final arg_parent = 'foo';
        final arg_deleted = true;
        final arg_subjectPrefix = 'foo';
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['subjectPrefix']!.first,
              unittest.equals(arg_subjectPrefix),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          subjectPrefix: arg_subjectPrefix,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--lookupVersion', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects;
        final arg_request = buildLookupVersionRequest();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.LookupVersionRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkLookupVersionRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildSchemaVersion());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.lookupVersion(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkSchemaVersion(response as api.SchemaVersion);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects.versions;
        final arg_request = buildCreateVersionRequest();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.CreateVersionRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkCreateVersionRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildCreateVersionResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkCreateVersionResponse(response as api.CreateVersionResponse);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects.versions;
        final arg_name = 'foo';
        final arg_permanent = true;
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
              queryMap['permanent']!.first,
              unittest.equals('$arg_permanent'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          permanent: arg_permanent,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects.versions;
        final arg_name = 'foo';
        final arg_deleted = true;
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildSchemaVersion());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_name,
          deleted: arg_deleted,
          $fields: arg_$fields,
        );
        checkSchemaVersion(response as api.SchemaVersion);
      });

      unittest.test('method--getSchema', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects.versions;
        final arg_name = 'foo';
        final arg_deleted = true;
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getSchema(
          arg_name,
          deleted: arg_deleted,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.contexts.subjects.versions;
        final arg_parent = 'foo';
        final arg_deleted = true;
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsReferencedbyResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(mock)
                .projects
                .locations
                .schemaRegistries
                .contexts
                .subjects
                .versions
                .referencedby;
        final arg_parent = 'foo';
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(arg_parent, $fields: arg_$fields);
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsSchemaRegistriesModeResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.mode;
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
          final resp = convert.json.encode(buildSchemaMode());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSchemaMode(response as api.SchemaMode);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.mode;
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
          final resp = convert.json.encode(buildSchemaMode());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSchemaMode(response as api.SchemaMode);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.mode;
      final arg_request = buildUpdateSchemaModeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateSchemaModeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateSchemaModeRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildSchemaMode());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSchemaMode(response as api.SchemaMode);
    });
  });

  unittest.group('resource-ProjectsLocationsSchemaRegistriesSchemasResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.schemas;
      final arg_name = 'foo';
      final arg_subject = 'foo';
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
            queryMap['subject']!.first,
            unittest.equals(arg_subject),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        subject: arg_subject,
        $fields: arg_$fields,
      );
      checkSchema(response as api.Schema);
    });

    unittest.test('method--getSchema', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(mock).projects.locations.schemaRegistries.schemas;
      final arg_name = 'foo';
      final arg_subject = 'foo';
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
            queryMap['subject']!.first,
            unittest.equals(arg_subject),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSchema(
        arg_name,
        subject: arg_subject,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesSchemasSubjectsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.schemas.subjects;
        final arg_parent = 'foo';
        final arg_deleted = true;
        final arg_subject = 'foo';
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['subject']!.first,
              unittest.equals(arg_subject),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          subject: arg_subject,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesSchemasTypesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.schemas.types;
        final arg_parent = 'foo';
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(arg_parent, $fields: arg_$fields);
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesSchemasVersionsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.schemas.versions;
        final arg_parent = 'foo';
        final arg_deleted = true;
        final arg_subject = 'foo';
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['subject']!.first,
              unittest.equals(arg_subject),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          subject: arg_subject,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsSchemaRegistriesSubjectsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.schemaRegistries.subjects;
      final arg_name = 'foo';
      final arg_permanent = true;
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
            queryMap['permanent']!.first,
            unittest.equals('$arg_permanent'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        permanent: arg_permanent,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.schemaRegistries.subjects;
      final arg_parent = 'foo';
      final arg_deleted = true;
      final arg_subjectPrefix = 'foo';
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
            queryMap['deleted']!.first,
            unittest.equals('$arg_deleted'),
          );
          unittest.expect(
            queryMap['subjectPrefix']!.first,
            unittest.equals(arg_subjectPrefix),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        deleted: arg_deleted,
        subjectPrefix: arg_subjectPrefix,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--lookupVersion', () async {
      final mock = HttpServerMock();
      final res =
          api.ManagedKafkaApi(
            mock,
          ).projects.locations.schemaRegistries.subjects;
      final arg_request = buildLookupVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LookupVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLookupVersionRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
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
          final resp = convert.json.encode(buildSchemaVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupVersion(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSchemaVersion(response as api.SchemaVersion);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesSubjectsVersionsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.subjects.versions;
        final arg_request = buildCreateVersionRequest();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.CreateVersionRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkCreateVersionRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
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
            final resp = convert.json.encode(buildCreateVersionResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkCreateVersionResponse(response as api.CreateVersionResponse);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.subjects.versions;
        final arg_name = 'foo';
        final arg_permanent = true;
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
              queryMap['permanent']!.first,
              unittest.equals('$arg_permanent'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          permanent: arg_permanent,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.subjects.versions;
        final arg_name = 'foo';
        final arg_deleted = true;
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildSchemaVersion());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_name,
          deleted: arg_deleted,
          $fields: arg_$fields,
        );
        checkSchemaVersion(response as api.SchemaVersion);
      });

      unittest.test('method--getSchema', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.subjects.versions;
        final arg_name = 'foo';
        final arg_deleted = true;
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getSchema(
          arg_name,
          deleted: arg_deleted,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(
              mock,
            ).projects.locations.schemaRegistries.subjects.versions;
        final arg_parent = 'foo';
        final arg_deleted = true;
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
              queryMap['deleted']!.first,
              unittest.equals('$arg_deleted'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          deleted: arg_deleted,
          $fields: arg_$fields,
        );
        checkHttpBody(response as api.HttpBody);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsSchemaRegistriesSubjectsVersionsReferencedbyResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ManagedKafkaApi(mock)
                .projects
                .locations
                .schemaRegistries
                .subjects
                .versions
                .referencedby;
        final arg_parent = 'foo';
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
            final resp = convert.json.encode(buildHttpBody());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(arg_parent, $fields: arg_$fields);
        checkHttpBody(response as api.HttpBody);
      });
    },
  );
}
