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

import 'package:googleapis/dns/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ResourceRecordSet> buildUnnamed0() => [
      buildResourceRecordSet(),
      buildResourceRecordSet(),
    ];

void checkUnnamed0(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.List<api.ResourceRecordSet> buildUnnamed1() => [
      buildResourceRecordSet(),
      buildResourceRecordSet(),
    ];

void checkUnnamed1(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterChange = 0;
api.Change buildChange() {
  final o = api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.additions = buildUnnamed0();
    o.deletions = buildUnnamed1();
    o.id = 'foo';
    o.isServing = true;
    o.kind = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
  }
  buildCounterChange--;
  return o;
}

void checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    checkUnnamed0(o.additions!);
    checkUnnamed1(o.deletions!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isServing!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterChange--;
}

core.List<api.Change> buildUnnamed2() => [
      buildChange(),
      buildChange(),
    ];

void checkUnnamed2(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangesListResponse = 0;
api.ChangesListResponse buildChangesListResponse() {
  final o = api.ChangesListResponse();
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    o.changes = buildUnnamed2();
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterChangesListResponse--;
  return o;
}

void checkChangesListResponse(api.ChangesListResponse o) {
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    checkUnnamed2(o.changes!);
    checkResponseHeader(o.header!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangesListResponse--;
}

core.List<api.DnsKeyDigest> buildUnnamed3() => [
      buildDnsKeyDigest(),
      buildDnsKeyDigest(),
    ];

void checkUnnamed3(core.List<api.DnsKeyDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeyDigest(o[0]);
  checkDnsKeyDigest(o[1]);
}

core.int buildCounterDnsKey = 0;
api.DnsKey buildDnsKey() {
  final o = api.DnsKey();
  buildCounterDnsKey++;
  if (buildCounterDnsKey < 3) {
    o.algorithm = 'foo';
    o.creationTime = 'foo';
    o.description = 'foo';
    o.digests = buildUnnamed3();
    o.id = 'foo';
    o.isActive = true;
    o.keyLength = 42;
    o.keyTag = 42;
    o.kind = 'foo';
    o.publicKey = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsKey--;
  return o;
}

void checkDnsKey(api.DnsKey o) {
  buildCounterDnsKey++;
  if (buildCounterDnsKey < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.digests!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(
      o.keyLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.keyTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsKey--;
}

core.int buildCounterDnsKeyDigest = 0;
api.DnsKeyDigest buildDnsKeyDigest() {
  final o = api.DnsKeyDigest();
  buildCounterDnsKeyDigest++;
  if (buildCounterDnsKeyDigest < 3) {
    o.digest = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsKeyDigest--;
  return o;
}

void checkDnsKeyDigest(api.DnsKeyDigest o) {
  buildCounterDnsKeyDigest++;
  if (buildCounterDnsKeyDigest < 3) {
    unittest.expect(
      o.digest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsKeyDigest--;
}

core.int buildCounterDnsKeySpec = 0;
api.DnsKeySpec buildDnsKeySpec() {
  final o = api.DnsKeySpec();
  buildCounterDnsKeySpec++;
  if (buildCounterDnsKeySpec < 3) {
    o.algorithm = 'foo';
    o.keyLength = 42;
    o.keyType = 'foo';
    o.kind = 'foo';
  }
  buildCounterDnsKeySpec--;
  return o;
}

void checkDnsKeySpec(api.DnsKeySpec o) {
  buildCounterDnsKeySpec++;
  if (buildCounterDnsKeySpec < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.keyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsKeySpec--;
}

core.List<api.DnsKey> buildUnnamed4() => [
      buildDnsKey(),
      buildDnsKey(),
    ];

void checkUnnamed4(core.List<api.DnsKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKey(o[0]);
  checkDnsKey(o[1]);
}

core.int buildCounterDnsKeysListResponse = 0;
api.DnsKeysListResponse buildDnsKeysListResponse() {
  final o = api.DnsKeysListResponse();
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    o.dnsKeys = buildUnnamed4();
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDnsKeysListResponse--;
  return o;
}

void checkDnsKeysListResponse(api.DnsKeysListResponse o) {
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    checkUnnamed4(o.dnsKeys!);
    checkResponseHeader(o.header!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsKeysListResponse--;
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

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterManagedZone = 0;
api.ManagedZone buildManagedZone() {
  final o = api.ManagedZone();
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    o.cloudLoggingConfig = buildManagedZoneCloudLoggingConfig();
    o.creationTime = 'foo';
    o.description = 'foo';
    o.dnsName = 'foo';
    o.dnssecConfig = buildManagedZoneDnsSecConfig();
    o.forwardingConfig = buildManagedZoneForwardingConfig();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed5();
    o.name = 'foo';
    o.nameServerSet = 'foo';
    o.nameServers = buildUnnamed6();
    o.peeringConfig = buildManagedZonePeeringConfig();
    o.privateVisibilityConfig = buildManagedZonePrivateVisibilityConfig();
    o.reverseLookupConfig = buildManagedZoneReverseLookupConfig();
    o.serviceDirectoryConfig = buildManagedZoneServiceDirectoryConfig();
    o.visibility = 'foo';
  }
  buildCounterManagedZone--;
  return o;
}

void checkManagedZone(api.ManagedZone o) {
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    checkManagedZoneCloudLoggingConfig(o.cloudLoggingConfig!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dnsName!,
      unittest.equals('foo'),
    );
    checkManagedZoneDnsSecConfig(o.dnssecConfig!);
    checkManagedZoneForwardingConfig(o.forwardingConfig!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nameServerSet!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.nameServers!);
    checkManagedZonePeeringConfig(o.peeringConfig!);
    checkManagedZonePrivateVisibilityConfig(o.privateVisibilityConfig!);
    checkManagedZoneReverseLookupConfig(o.reverseLookupConfig!);
    checkManagedZoneServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZone--;
}

core.int buildCounterManagedZoneCloudLoggingConfig = 0;
api.ManagedZoneCloudLoggingConfig buildManagedZoneCloudLoggingConfig() {
  final o = api.ManagedZoneCloudLoggingConfig();
  buildCounterManagedZoneCloudLoggingConfig++;
  if (buildCounterManagedZoneCloudLoggingConfig < 3) {
    o.enableLogging = true;
    o.kind = 'foo';
  }
  buildCounterManagedZoneCloudLoggingConfig--;
  return o;
}

void checkManagedZoneCloudLoggingConfig(api.ManagedZoneCloudLoggingConfig o) {
  buildCounterManagedZoneCloudLoggingConfig++;
  if (buildCounterManagedZoneCloudLoggingConfig < 3) {
    unittest.expect(o.enableLogging!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZoneCloudLoggingConfig--;
}

core.List<api.DnsKeySpec> buildUnnamed7() => [
      buildDnsKeySpec(),
      buildDnsKeySpec(),
    ];

void checkUnnamed7(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterManagedZoneDnsSecConfig = 0;
api.ManagedZoneDnsSecConfig buildManagedZoneDnsSecConfig() {
  final o = api.ManagedZoneDnsSecConfig();
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    o.defaultKeySpecs = buildUnnamed7();
    o.kind = 'foo';
    o.nonExistence = 'foo';
    o.state = 'foo';
  }
  buildCounterManagedZoneDnsSecConfig--;
  return o;
}

void checkManagedZoneDnsSecConfig(api.ManagedZoneDnsSecConfig o) {
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    checkUnnamed7(o.defaultKeySpecs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonExistence!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZoneDnsSecConfig--;
}

core.List<api.ManagedZoneForwardingConfigNameServerTarget> buildUnnamed8() => [
      buildManagedZoneForwardingConfigNameServerTarget(),
      buildManagedZoneForwardingConfigNameServerTarget(),
    ];

void checkUnnamed8(
    core.List<api.ManagedZoneForwardingConfigNameServerTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZoneForwardingConfigNameServerTarget(o[0]);
  checkManagedZoneForwardingConfigNameServerTarget(o[1]);
}

core.int buildCounterManagedZoneForwardingConfig = 0;
api.ManagedZoneForwardingConfig buildManagedZoneForwardingConfig() {
  final o = api.ManagedZoneForwardingConfig();
  buildCounterManagedZoneForwardingConfig++;
  if (buildCounterManagedZoneForwardingConfig < 3) {
    o.kind = 'foo';
    o.targetNameServers = buildUnnamed8();
  }
  buildCounterManagedZoneForwardingConfig--;
  return o;
}

void checkManagedZoneForwardingConfig(api.ManagedZoneForwardingConfig o) {
  buildCounterManagedZoneForwardingConfig++;
  if (buildCounterManagedZoneForwardingConfig < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.targetNameServers!);
  }
  buildCounterManagedZoneForwardingConfig--;
}

core.int buildCounterManagedZoneForwardingConfigNameServerTarget = 0;
api.ManagedZoneForwardingConfigNameServerTarget
    buildManagedZoneForwardingConfigNameServerTarget() {
  final o = api.ManagedZoneForwardingConfigNameServerTarget();
  buildCounterManagedZoneForwardingConfigNameServerTarget++;
  if (buildCounterManagedZoneForwardingConfigNameServerTarget < 3) {
    o.forwardingPath = 'foo';
    o.ipv4Address = 'foo';
    o.kind = 'foo';
  }
  buildCounterManagedZoneForwardingConfigNameServerTarget--;
  return o;
}

void checkManagedZoneForwardingConfigNameServerTarget(
    api.ManagedZoneForwardingConfigNameServerTarget o) {
  buildCounterManagedZoneForwardingConfigNameServerTarget++;
  if (buildCounterManagedZoneForwardingConfigNameServerTarget < 3) {
    unittest.expect(
      o.forwardingPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipv4Address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZoneForwardingConfigNameServerTarget--;
}

core.List<api.Operation> buildUnnamed9() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed9(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterManagedZoneOperationsListResponse = 0;
api.ManagedZoneOperationsListResponse buildManagedZoneOperationsListResponse() {
  final o = api.ManagedZoneOperationsListResponse();
  buildCounterManagedZoneOperationsListResponse++;
  if (buildCounterManagedZoneOperationsListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed9();
  }
  buildCounterManagedZoneOperationsListResponse--;
  return o;
}

void checkManagedZoneOperationsListResponse(
    api.ManagedZoneOperationsListResponse o) {
  buildCounterManagedZoneOperationsListResponse++;
  if (buildCounterManagedZoneOperationsListResponse < 3) {
    checkResponseHeader(o.header!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.operations!);
  }
  buildCounterManagedZoneOperationsListResponse--;
}

core.int buildCounterManagedZonePeeringConfig = 0;
api.ManagedZonePeeringConfig buildManagedZonePeeringConfig() {
  final o = api.ManagedZonePeeringConfig();
  buildCounterManagedZonePeeringConfig++;
  if (buildCounterManagedZonePeeringConfig < 3) {
    o.kind = 'foo';
    o.targetNetwork = buildManagedZonePeeringConfigTargetNetwork();
  }
  buildCounterManagedZonePeeringConfig--;
  return o;
}

void checkManagedZonePeeringConfig(api.ManagedZonePeeringConfig o) {
  buildCounterManagedZonePeeringConfig++;
  if (buildCounterManagedZonePeeringConfig < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkManagedZonePeeringConfigTargetNetwork(o.targetNetwork!);
  }
  buildCounterManagedZonePeeringConfig--;
}

core.int buildCounterManagedZonePeeringConfigTargetNetwork = 0;
api.ManagedZonePeeringConfigTargetNetwork
    buildManagedZonePeeringConfigTargetNetwork() {
  final o = api.ManagedZonePeeringConfigTargetNetwork();
  buildCounterManagedZonePeeringConfigTargetNetwork++;
  if (buildCounterManagedZonePeeringConfigTargetNetwork < 3) {
    o.deactivateTime = 'foo';
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterManagedZonePeeringConfigTargetNetwork--;
  return o;
}

void checkManagedZonePeeringConfigTargetNetwork(
    api.ManagedZonePeeringConfigTargetNetwork o) {
  buildCounterManagedZonePeeringConfigTargetNetwork++;
  if (buildCounterManagedZonePeeringConfigTargetNetwork < 3) {
    unittest.expect(
      o.deactivateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZonePeeringConfigTargetNetwork--;
}

core.List<api.ManagedZonePrivateVisibilityConfigGKECluster> buildUnnamed10() =>
    [
      buildManagedZonePrivateVisibilityConfigGKECluster(),
      buildManagedZonePrivateVisibilityConfigGKECluster(),
    ];

void checkUnnamed10(
    core.List<api.ManagedZonePrivateVisibilityConfigGKECluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZonePrivateVisibilityConfigGKECluster(o[0]);
  checkManagedZonePrivateVisibilityConfigGKECluster(o[1]);
}

core.List<api.ManagedZonePrivateVisibilityConfigNetwork> buildUnnamed11() => [
      buildManagedZonePrivateVisibilityConfigNetwork(),
      buildManagedZonePrivateVisibilityConfigNetwork(),
    ];

void checkUnnamed11(
    core.List<api.ManagedZonePrivateVisibilityConfigNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZonePrivateVisibilityConfigNetwork(o[0]);
  checkManagedZonePrivateVisibilityConfigNetwork(o[1]);
}

core.int buildCounterManagedZonePrivateVisibilityConfig = 0;
api.ManagedZonePrivateVisibilityConfig
    buildManagedZonePrivateVisibilityConfig() {
  final o = api.ManagedZonePrivateVisibilityConfig();
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    o.gkeClusters = buildUnnamed10();
    o.kind = 'foo';
    o.networks = buildUnnamed11();
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
  return o;
}

void checkManagedZonePrivateVisibilityConfig(
    api.ManagedZonePrivateVisibilityConfig o) {
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    checkUnnamed10(o.gkeClusters!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.networks!);
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
}

core.int buildCounterManagedZonePrivateVisibilityConfigGKECluster = 0;
api.ManagedZonePrivateVisibilityConfigGKECluster
    buildManagedZonePrivateVisibilityConfigGKECluster() {
  final o = api.ManagedZonePrivateVisibilityConfigGKECluster();
  buildCounterManagedZonePrivateVisibilityConfigGKECluster++;
  if (buildCounterManagedZonePrivateVisibilityConfigGKECluster < 3) {
    o.gkeClusterName = 'foo';
    o.kind = 'foo';
  }
  buildCounterManagedZonePrivateVisibilityConfigGKECluster--;
  return o;
}

void checkManagedZonePrivateVisibilityConfigGKECluster(
    api.ManagedZonePrivateVisibilityConfigGKECluster o) {
  buildCounterManagedZonePrivateVisibilityConfigGKECluster++;
  if (buildCounterManagedZonePrivateVisibilityConfigGKECluster < 3) {
    unittest.expect(
      o.gkeClusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZonePrivateVisibilityConfigGKECluster--;
}

core.int buildCounterManagedZonePrivateVisibilityConfigNetwork = 0;
api.ManagedZonePrivateVisibilityConfigNetwork
    buildManagedZonePrivateVisibilityConfigNetwork() {
  final o = api.ManagedZonePrivateVisibilityConfigNetwork();
  buildCounterManagedZonePrivateVisibilityConfigNetwork++;
  if (buildCounterManagedZonePrivateVisibilityConfigNetwork < 3) {
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterManagedZonePrivateVisibilityConfigNetwork--;
  return o;
}

void checkManagedZonePrivateVisibilityConfigNetwork(
    api.ManagedZonePrivateVisibilityConfigNetwork o) {
  buildCounterManagedZonePrivateVisibilityConfigNetwork++;
  if (buildCounterManagedZonePrivateVisibilityConfigNetwork < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZonePrivateVisibilityConfigNetwork--;
}

core.int buildCounterManagedZoneReverseLookupConfig = 0;
api.ManagedZoneReverseLookupConfig buildManagedZoneReverseLookupConfig() {
  final o = api.ManagedZoneReverseLookupConfig();
  buildCounterManagedZoneReverseLookupConfig++;
  if (buildCounterManagedZoneReverseLookupConfig < 3) {
    o.kind = 'foo';
  }
  buildCounterManagedZoneReverseLookupConfig--;
  return o;
}

void checkManagedZoneReverseLookupConfig(api.ManagedZoneReverseLookupConfig o) {
  buildCounterManagedZoneReverseLookupConfig++;
  if (buildCounterManagedZoneReverseLookupConfig < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZoneReverseLookupConfig--;
}

core.int buildCounterManagedZoneServiceDirectoryConfig = 0;
api.ManagedZoneServiceDirectoryConfig buildManagedZoneServiceDirectoryConfig() {
  final o = api.ManagedZoneServiceDirectoryConfig();
  buildCounterManagedZoneServiceDirectoryConfig++;
  if (buildCounterManagedZoneServiceDirectoryConfig < 3) {
    o.kind = 'foo';
    o.namespace = buildManagedZoneServiceDirectoryConfigNamespace();
  }
  buildCounterManagedZoneServiceDirectoryConfig--;
  return o;
}

void checkManagedZoneServiceDirectoryConfig(
    api.ManagedZoneServiceDirectoryConfig o) {
  buildCounterManagedZoneServiceDirectoryConfig++;
  if (buildCounterManagedZoneServiceDirectoryConfig < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkManagedZoneServiceDirectoryConfigNamespace(o.namespace!);
  }
  buildCounterManagedZoneServiceDirectoryConfig--;
}

core.int buildCounterManagedZoneServiceDirectoryConfigNamespace = 0;
api.ManagedZoneServiceDirectoryConfigNamespace
    buildManagedZoneServiceDirectoryConfigNamespace() {
  final o = api.ManagedZoneServiceDirectoryConfigNamespace();
  buildCounterManagedZoneServiceDirectoryConfigNamespace++;
  if (buildCounterManagedZoneServiceDirectoryConfigNamespace < 3) {
    o.deletionTime = 'foo';
    o.kind = 'foo';
    o.namespaceUrl = 'foo';
  }
  buildCounterManagedZoneServiceDirectoryConfigNamespace--;
  return o;
}

void checkManagedZoneServiceDirectoryConfigNamespace(
    api.ManagedZoneServiceDirectoryConfigNamespace o) {
  buildCounterManagedZoneServiceDirectoryConfigNamespace++;
  if (buildCounterManagedZoneServiceDirectoryConfigNamespace < 3) {
    unittest.expect(
      o.deletionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespaceUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZoneServiceDirectoryConfigNamespace--;
}

core.List<api.ManagedZone> buildUnnamed12() => [
      buildManagedZone(),
      buildManagedZone(),
    ];

void checkUnnamed12(core.List<api.ManagedZone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZone(o[0]);
  checkManagedZone(o[1]);
}

core.int buildCounterManagedZonesListResponse = 0;
api.ManagedZonesListResponse buildManagedZonesListResponse() {
  final o = api.ManagedZonesListResponse();
  buildCounterManagedZonesListResponse++;
  if (buildCounterManagedZonesListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.managedZones = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterManagedZonesListResponse--;
  return o;
}

void checkManagedZonesListResponse(api.ManagedZonesListResponse o) {
  buildCounterManagedZonesListResponse++;
  if (buildCounterManagedZonesListResponse < 3) {
    checkResponseHeader(o.header!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.managedZones!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZonesListResponse--;
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.dnsKeyContext = buildOperationDnsKeyContext();
    o.id = 'foo';
    o.kind = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.user = 'foo';
    o.zoneContext = buildOperationManagedZoneContext();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkOperationDnsKeyContext(o.dnsKeyContext!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
    checkOperationManagedZoneContext(o.zoneContext!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationDnsKeyContext = 0;
api.OperationDnsKeyContext buildOperationDnsKeyContext() {
  final o = api.OperationDnsKeyContext();
  buildCounterOperationDnsKeyContext++;
  if (buildCounterOperationDnsKeyContext < 3) {
    o.newValue = buildDnsKey();
    o.oldValue = buildDnsKey();
  }
  buildCounterOperationDnsKeyContext--;
  return o;
}

void checkOperationDnsKeyContext(api.OperationDnsKeyContext o) {
  buildCounterOperationDnsKeyContext++;
  if (buildCounterOperationDnsKeyContext < 3) {
    checkDnsKey(o.newValue!);
    checkDnsKey(o.oldValue!);
  }
  buildCounterOperationDnsKeyContext--;
}

core.int buildCounterOperationManagedZoneContext = 0;
api.OperationManagedZoneContext buildOperationManagedZoneContext() {
  final o = api.OperationManagedZoneContext();
  buildCounterOperationManagedZoneContext++;
  if (buildCounterOperationManagedZoneContext < 3) {
    o.newValue = buildManagedZone();
    o.oldValue = buildManagedZone();
  }
  buildCounterOperationManagedZoneContext--;
  return o;
}

void checkOperationManagedZoneContext(api.OperationManagedZoneContext o) {
  buildCounterOperationManagedZoneContext++;
  if (buildCounterOperationManagedZoneContext < 3) {
    checkManagedZone(o.newValue!);
    checkManagedZone(o.oldValue!);
  }
  buildCounterOperationManagedZoneContext--;
}

core.List<api.Policy> buildUnnamed13() => [
      buildPolicy(),
      buildPolicy(),
    ];

void checkUnnamed13(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterPoliciesListResponse = 0;
api.PoliciesListResponse buildPoliciesListResponse() {
  final o = api.PoliciesListResponse();
  buildCounterPoliciesListResponse++;
  if (buildCounterPoliciesListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed13();
  }
  buildCounterPoliciesListResponse--;
  return o;
}

void checkPoliciesListResponse(api.PoliciesListResponse o) {
  buildCounterPoliciesListResponse++;
  if (buildCounterPoliciesListResponse < 3) {
    checkResponseHeader(o.header!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.policies!);
  }
  buildCounterPoliciesListResponse--;
}

core.int buildCounterPoliciesPatchResponse = 0;
api.PoliciesPatchResponse buildPoliciesPatchResponse() {
  final o = api.PoliciesPatchResponse();
  buildCounterPoliciesPatchResponse++;
  if (buildCounterPoliciesPatchResponse < 3) {
    o.header = buildResponseHeader();
    o.policy = buildPolicy();
  }
  buildCounterPoliciesPatchResponse--;
  return o;
}

void checkPoliciesPatchResponse(api.PoliciesPatchResponse o) {
  buildCounterPoliciesPatchResponse++;
  if (buildCounterPoliciesPatchResponse < 3) {
    checkResponseHeader(o.header!);
    checkPolicy(o.policy!);
  }
  buildCounterPoliciesPatchResponse--;
}

core.int buildCounterPoliciesUpdateResponse = 0;
api.PoliciesUpdateResponse buildPoliciesUpdateResponse() {
  final o = api.PoliciesUpdateResponse();
  buildCounterPoliciesUpdateResponse++;
  if (buildCounterPoliciesUpdateResponse < 3) {
    o.header = buildResponseHeader();
    o.policy = buildPolicy();
  }
  buildCounterPoliciesUpdateResponse--;
  return o;
}

void checkPoliciesUpdateResponse(api.PoliciesUpdateResponse o) {
  buildCounterPoliciesUpdateResponse++;
  if (buildCounterPoliciesUpdateResponse < 3) {
    checkResponseHeader(o.header!);
    checkPolicy(o.policy!);
  }
  buildCounterPoliciesUpdateResponse--;
}

core.List<api.PolicyNetwork> buildUnnamed14() => [
      buildPolicyNetwork(),
      buildPolicyNetwork(),
    ];

void checkUnnamed14(core.List<api.PolicyNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyNetwork(o[0]);
  checkPolicyNetwork(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.alternativeNameServerConfig = buildPolicyAlternativeNameServerConfig();
    o.description = 'foo';
    o.enableInboundForwarding = true;
    o.enableLogging = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed14();
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkPolicyAlternativeNameServerConfig(o.alternativeNameServerConfig!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableInboundForwarding!, unittest.isTrue);
    unittest.expect(o.enableLogging!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.networks!);
  }
  buildCounterPolicy--;
}

core.List<api.PolicyAlternativeNameServerConfigTargetNameServer>
    buildUnnamed15() => [
          buildPolicyAlternativeNameServerConfigTargetNameServer(),
          buildPolicyAlternativeNameServerConfigTargetNameServer(),
        ];

void checkUnnamed15(
    core.List<api.PolicyAlternativeNameServerConfigTargetNameServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyAlternativeNameServerConfigTargetNameServer(o[0]);
  checkPolicyAlternativeNameServerConfigTargetNameServer(o[1]);
}

core.int buildCounterPolicyAlternativeNameServerConfig = 0;
api.PolicyAlternativeNameServerConfig buildPolicyAlternativeNameServerConfig() {
  final o = api.PolicyAlternativeNameServerConfig();
  buildCounterPolicyAlternativeNameServerConfig++;
  if (buildCounterPolicyAlternativeNameServerConfig < 3) {
    o.kind = 'foo';
    o.targetNameServers = buildUnnamed15();
  }
  buildCounterPolicyAlternativeNameServerConfig--;
  return o;
}

void checkPolicyAlternativeNameServerConfig(
    api.PolicyAlternativeNameServerConfig o) {
  buildCounterPolicyAlternativeNameServerConfig++;
  if (buildCounterPolicyAlternativeNameServerConfig < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.targetNameServers!);
  }
  buildCounterPolicyAlternativeNameServerConfig--;
}

core.int buildCounterPolicyAlternativeNameServerConfigTargetNameServer = 0;
api.PolicyAlternativeNameServerConfigTargetNameServer
    buildPolicyAlternativeNameServerConfigTargetNameServer() {
  final o = api.PolicyAlternativeNameServerConfigTargetNameServer();
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer++;
  if (buildCounterPolicyAlternativeNameServerConfigTargetNameServer < 3) {
    o.forwardingPath = 'foo';
    o.ipv4Address = 'foo';
    o.kind = 'foo';
  }
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer--;
  return o;
}

void checkPolicyAlternativeNameServerConfigTargetNameServer(
    api.PolicyAlternativeNameServerConfigTargetNameServer o) {
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer++;
  if (buildCounterPolicyAlternativeNameServerConfigTargetNameServer < 3) {
    unittest.expect(
      o.forwardingPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipv4Address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer--;
}

core.int buildCounterPolicyNetwork = 0;
api.PolicyNetwork buildPolicyNetwork() {
  final o = api.PolicyNetwork();
  buildCounterPolicyNetwork++;
  if (buildCounterPolicyNetwork < 3) {
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterPolicyNetwork--;
  return o;
}

void checkPolicyNetwork(api.PolicyNetwork o) {
  buildCounterPolicyNetwork++;
  if (buildCounterPolicyNetwork < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyNetwork--;
}

core.int buildCounterProject = 0;
api.Project buildProject() {
  final o = api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.number = 'foo';
    o.quota = buildQuota();
  }
  buildCounterProject--;
  return o;
}

void checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals('foo'),
    );
    checkQuota(o.quota!);
  }
  buildCounterProject--;
}

core.List<api.DnsKeySpec> buildUnnamed16() => [
      buildDnsKeySpec(),
      buildDnsKeySpec(),
    ];

void checkUnnamed16(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  final o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.dnsKeysPerManagedZone = 42;
    o.itemsPerRoutingPolicy = 42;
    o.kind = 'foo';
    o.managedZones = 42;
    o.managedZonesPerNetwork = 42;
    o.networksPerManagedZone = 42;
    o.networksPerPolicy = 42;
    o.peeringZonesPerTargetNetwork = 42;
    o.policies = 42;
    o.resourceRecordsPerRrset = 42;
    o.rrsetAdditionsPerChange = 42;
    o.rrsetDeletionsPerChange = 42;
    o.rrsetsPerManagedZone = 42;
    o.targetNameServersPerManagedZone = 42;
    o.targetNameServersPerPolicy = 42;
    o.totalRrdataSizePerChange = 42;
    o.whitelistedKeySpecs = buildUnnamed16();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    unittest.expect(
      o.dnsKeysPerManagedZone!,
      unittest.equals(42),
    );
    unittest.expect(
      o.itemsPerRoutingPolicy!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managedZones!,
      unittest.equals(42),
    );
    unittest.expect(
      o.managedZonesPerNetwork!,
      unittest.equals(42),
    );
    unittest.expect(
      o.networksPerManagedZone!,
      unittest.equals(42),
    );
    unittest.expect(
      o.networksPerPolicy!,
      unittest.equals(42),
    );
    unittest.expect(
      o.peeringZonesPerTargetNetwork!,
      unittest.equals(42),
    );
    unittest.expect(
      o.policies!,
      unittest.equals(42),
    );
    unittest.expect(
      o.resourceRecordsPerRrset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rrsetAdditionsPerChange!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rrsetDeletionsPerChange!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rrsetsPerManagedZone!,
      unittest.equals(42),
    );
    unittest.expect(
      o.targetNameServersPerManagedZone!,
      unittest.equals(42),
    );
    unittest.expect(
      o.targetNameServersPerPolicy!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalRrdataSizePerChange!,
      unittest.equals(42),
    );
    checkUnnamed16(o.whitelistedKeySpecs!);
  }
  buildCounterQuota--;
}

core.int buildCounterRRSetRoutingPolicy = 0;
api.RRSetRoutingPolicy buildRRSetRoutingPolicy() {
  final o = api.RRSetRoutingPolicy();
  buildCounterRRSetRoutingPolicy++;
  if (buildCounterRRSetRoutingPolicy < 3) {
    o.geo = buildRRSetRoutingPolicyGeoPolicy();
    o.kind = 'foo';
    o.wrr = buildRRSetRoutingPolicyWrrPolicy();
  }
  buildCounterRRSetRoutingPolicy--;
  return o;
}

void checkRRSetRoutingPolicy(api.RRSetRoutingPolicy o) {
  buildCounterRRSetRoutingPolicy++;
  if (buildCounterRRSetRoutingPolicy < 3) {
    checkRRSetRoutingPolicyGeoPolicy(o.geo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkRRSetRoutingPolicyWrrPolicy(o.wrr!);
  }
  buildCounterRRSetRoutingPolicy--;
}

core.List<api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem> buildUnnamed17() => [
      buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem(),
      buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem(),
    ];

void checkUnnamed17(core.List<api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(o[0]);
  checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(o[1]);
}

core.int buildCounterRRSetRoutingPolicyGeoPolicy = 0;
api.RRSetRoutingPolicyGeoPolicy buildRRSetRoutingPolicyGeoPolicy() {
  final o = api.RRSetRoutingPolicyGeoPolicy();
  buildCounterRRSetRoutingPolicyGeoPolicy++;
  if (buildCounterRRSetRoutingPolicyGeoPolicy < 3) {
    o.items = buildUnnamed17();
    o.kind = 'foo';
  }
  buildCounterRRSetRoutingPolicyGeoPolicy--;
  return o;
}

void checkRRSetRoutingPolicyGeoPolicy(api.RRSetRoutingPolicyGeoPolicy o) {
  buildCounterRRSetRoutingPolicyGeoPolicy++;
  if (buildCounterRRSetRoutingPolicyGeoPolicy < 3) {
    checkUnnamed17(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterRRSetRoutingPolicyGeoPolicy--;
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

core.int buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem = 0;
api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem
    buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem() {
  final o = api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem();
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem++;
  if (buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem < 3) {
    o.kind = 'foo';
    o.location = 'foo';
    o.rrdatas = buildUnnamed18();
    o.signatureRrdatas = buildUnnamed19();
  }
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem--;
  return o;
}

void checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(
    api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem o) {
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem++;
  if (buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.rrdatas!);
    checkUnnamed19(o.signatureRrdatas!);
  }
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem--;
}

core.List<api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem> buildUnnamed20() => [
      buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem(),
      buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem(),
    ];

void checkUnnamed20(core.List<api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(o[0]);
  checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(o[1]);
}

core.int buildCounterRRSetRoutingPolicyWrrPolicy = 0;
api.RRSetRoutingPolicyWrrPolicy buildRRSetRoutingPolicyWrrPolicy() {
  final o = api.RRSetRoutingPolicyWrrPolicy();
  buildCounterRRSetRoutingPolicyWrrPolicy++;
  if (buildCounterRRSetRoutingPolicyWrrPolicy < 3) {
    o.items = buildUnnamed20();
    o.kind = 'foo';
  }
  buildCounterRRSetRoutingPolicyWrrPolicy--;
  return o;
}

void checkRRSetRoutingPolicyWrrPolicy(api.RRSetRoutingPolicyWrrPolicy o) {
  buildCounterRRSetRoutingPolicyWrrPolicy++;
  if (buildCounterRRSetRoutingPolicyWrrPolicy < 3) {
    checkUnnamed20(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterRRSetRoutingPolicyWrrPolicy--;
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

core.int buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem = 0;
api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem
    buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem() {
  final o = api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem();
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem++;
  if (buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem < 3) {
    o.kind = 'foo';
    o.rrdatas = buildUnnamed21();
    o.signatureRrdatas = buildUnnamed22();
    o.weight = 42.0;
  }
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem--;
  return o;
}

void checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(
    api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem o) {
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem++;
  if (buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.rrdatas!);
    checkUnnamed22(o.signatureRrdatas!);
    unittest.expect(
      o.weight!,
      unittest.equals(42.0),
    );
  }
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.int buildCounterResourceRecordSet = 0;
api.ResourceRecordSet buildResourceRecordSet() {
  final o = api.ResourceRecordSet();
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.routingPolicy = buildRRSetRoutingPolicy();
    o.rrdatas = buildUnnamed23();
    o.signatureRrdatas = buildUnnamed24();
    o.ttl = 42;
    o.type = 'foo';
  }
  buildCounterResourceRecordSet--;
  return o;
}

void checkResourceRecordSet(api.ResourceRecordSet o) {
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRRSetRoutingPolicy(o.routingPolicy!);
    checkUnnamed23(o.rrdatas!);
    checkUnnamed24(o.signatureRrdatas!);
    unittest.expect(
      o.ttl!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceRecordSet--;
}

core.List<api.ResourceRecordSet> buildUnnamed25() => [
      buildResourceRecordSet(),
      buildResourceRecordSet(),
    ];

void checkUnnamed25(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterResourceRecordSetsListResponse = 0;
api.ResourceRecordSetsListResponse buildResourceRecordSetsListResponse() {
  final o = api.ResourceRecordSetsListResponse();
  buildCounterResourceRecordSetsListResponse++;
  if (buildCounterResourceRecordSetsListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.rrsets = buildUnnamed25();
  }
  buildCounterResourceRecordSetsListResponse--;
  return o;
}

void checkResourceRecordSetsListResponse(api.ResourceRecordSetsListResponse o) {
  buildCounterResourceRecordSetsListResponse++;
  if (buildCounterResourceRecordSetsListResponse < 3) {
    checkResponseHeader(o.header!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.rrsets!);
  }
  buildCounterResourceRecordSetsListResponse--;
}

core.int buildCounterResponseHeader = 0;
api.ResponseHeader buildResponseHeader() {
  final o = api.ResponseHeader();
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    o.operationId = 'foo';
  }
  buildCounterResponseHeader--;
  return o;
}

void checkResponseHeader(api.ResponseHeader o) {
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponseHeader--;
}

core.List<api.ResponsePolicy> buildUnnamed26() => [
      buildResponsePolicy(),
      buildResponsePolicy(),
    ];

void checkUnnamed26(core.List<api.ResponsePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponsePolicy(o[0]);
  checkResponsePolicy(o[1]);
}

core.int buildCounterResponsePoliciesListResponse = 0;
api.ResponsePoliciesListResponse buildResponsePoliciesListResponse() {
  final o = api.ResponsePoliciesListResponse();
  buildCounterResponsePoliciesListResponse++;
  if (buildCounterResponsePoliciesListResponse < 3) {
    o.header = buildResponseHeader();
    o.nextPageToken = 'foo';
    o.responsePolicies = buildUnnamed26();
  }
  buildCounterResponsePoliciesListResponse--;
  return o;
}

void checkResponsePoliciesListResponse(api.ResponsePoliciesListResponse o) {
  buildCounterResponsePoliciesListResponse++;
  if (buildCounterResponsePoliciesListResponse < 3) {
    checkResponseHeader(o.header!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.responsePolicies!);
  }
  buildCounterResponsePoliciesListResponse--;
}

core.int buildCounterResponsePoliciesPatchResponse = 0;
api.ResponsePoliciesPatchResponse buildResponsePoliciesPatchResponse() {
  final o = api.ResponsePoliciesPatchResponse();
  buildCounterResponsePoliciesPatchResponse++;
  if (buildCounterResponsePoliciesPatchResponse < 3) {
    o.header = buildResponseHeader();
    o.responsePolicy = buildResponsePolicy();
  }
  buildCounterResponsePoliciesPatchResponse--;
  return o;
}

void checkResponsePoliciesPatchResponse(api.ResponsePoliciesPatchResponse o) {
  buildCounterResponsePoliciesPatchResponse++;
  if (buildCounterResponsePoliciesPatchResponse < 3) {
    checkResponseHeader(o.header!);
    checkResponsePolicy(o.responsePolicy!);
  }
  buildCounterResponsePoliciesPatchResponse--;
}

core.int buildCounterResponsePoliciesUpdateResponse = 0;
api.ResponsePoliciesUpdateResponse buildResponsePoliciesUpdateResponse() {
  final o = api.ResponsePoliciesUpdateResponse();
  buildCounterResponsePoliciesUpdateResponse++;
  if (buildCounterResponsePoliciesUpdateResponse < 3) {
    o.header = buildResponseHeader();
    o.responsePolicy = buildResponsePolicy();
  }
  buildCounterResponsePoliciesUpdateResponse--;
  return o;
}

void checkResponsePoliciesUpdateResponse(api.ResponsePoliciesUpdateResponse o) {
  buildCounterResponsePoliciesUpdateResponse++;
  if (buildCounterResponsePoliciesUpdateResponse < 3) {
    checkResponseHeader(o.header!);
    checkResponsePolicy(o.responsePolicy!);
  }
  buildCounterResponsePoliciesUpdateResponse--;
}

core.List<api.ResponsePolicyGKECluster> buildUnnamed27() => [
      buildResponsePolicyGKECluster(),
      buildResponsePolicyGKECluster(),
    ];

void checkUnnamed27(core.List<api.ResponsePolicyGKECluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponsePolicyGKECluster(o[0]);
  checkResponsePolicyGKECluster(o[1]);
}

core.List<api.ResponsePolicyNetwork> buildUnnamed28() => [
      buildResponsePolicyNetwork(),
      buildResponsePolicyNetwork(),
    ];

void checkUnnamed28(core.List<api.ResponsePolicyNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponsePolicyNetwork(o[0]);
  checkResponsePolicyNetwork(o[1]);
}

core.int buildCounterResponsePolicy = 0;
api.ResponsePolicy buildResponsePolicy() {
  final o = api.ResponsePolicy();
  buildCounterResponsePolicy++;
  if (buildCounterResponsePolicy < 3) {
    o.description = 'foo';
    o.gkeClusters = buildUnnamed27();
    o.id = 'foo';
    o.kind = 'foo';
    o.networks = buildUnnamed28();
    o.responsePolicyName = 'foo';
  }
  buildCounterResponsePolicy--;
  return o;
}

void checkResponsePolicy(api.ResponsePolicy o) {
  buildCounterResponsePolicy++;
  if (buildCounterResponsePolicy < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.gkeClusters!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.networks!);
    unittest.expect(
      o.responsePolicyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponsePolicy--;
}

core.int buildCounterResponsePolicyGKECluster = 0;
api.ResponsePolicyGKECluster buildResponsePolicyGKECluster() {
  final o = api.ResponsePolicyGKECluster();
  buildCounterResponsePolicyGKECluster++;
  if (buildCounterResponsePolicyGKECluster < 3) {
    o.gkeClusterName = 'foo';
    o.kind = 'foo';
  }
  buildCounterResponsePolicyGKECluster--;
  return o;
}

void checkResponsePolicyGKECluster(api.ResponsePolicyGKECluster o) {
  buildCounterResponsePolicyGKECluster++;
  if (buildCounterResponsePolicyGKECluster < 3) {
    unittest.expect(
      o.gkeClusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponsePolicyGKECluster--;
}

core.int buildCounterResponsePolicyNetwork = 0;
api.ResponsePolicyNetwork buildResponsePolicyNetwork() {
  final o = api.ResponsePolicyNetwork();
  buildCounterResponsePolicyNetwork++;
  if (buildCounterResponsePolicyNetwork < 3) {
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterResponsePolicyNetwork--;
  return o;
}

void checkResponsePolicyNetwork(api.ResponsePolicyNetwork o) {
  buildCounterResponsePolicyNetwork++;
  if (buildCounterResponsePolicyNetwork < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponsePolicyNetwork--;
}

core.int buildCounterResponsePolicyRule = 0;
api.ResponsePolicyRule buildResponsePolicyRule() {
  final o = api.ResponsePolicyRule();
  buildCounterResponsePolicyRule++;
  if (buildCounterResponsePolicyRule < 3) {
    o.behavior = 'foo';
    o.dnsName = 'foo';
    o.kind = 'foo';
    o.localData = buildResponsePolicyRuleLocalData();
    o.ruleName = 'foo';
  }
  buildCounterResponsePolicyRule--;
  return o;
}

void checkResponsePolicyRule(api.ResponsePolicyRule o) {
  buildCounterResponsePolicyRule++;
  if (buildCounterResponsePolicyRule < 3) {
    unittest.expect(
      o.behavior!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dnsName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkResponsePolicyRuleLocalData(o.localData!);
    unittest.expect(
      o.ruleName!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponsePolicyRule--;
}

core.List<api.ResourceRecordSet> buildUnnamed29() => [
      buildResourceRecordSet(),
      buildResourceRecordSet(),
    ];

void checkUnnamed29(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterResponsePolicyRuleLocalData = 0;
api.ResponsePolicyRuleLocalData buildResponsePolicyRuleLocalData() {
  final o = api.ResponsePolicyRuleLocalData();
  buildCounterResponsePolicyRuleLocalData++;
  if (buildCounterResponsePolicyRuleLocalData < 3) {
    o.localDatas = buildUnnamed29();
  }
  buildCounterResponsePolicyRuleLocalData--;
  return o;
}

void checkResponsePolicyRuleLocalData(api.ResponsePolicyRuleLocalData o) {
  buildCounterResponsePolicyRuleLocalData++;
  if (buildCounterResponsePolicyRuleLocalData < 3) {
    checkUnnamed29(o.localDatas!);
  }
  buildCounterResponsePolicyRuleLocalData--;
}

core.List<api.ResponsePolicyRule> buildUnnamed30() => [
      buildResponsePolicyRule(),
      buildResponsePolicyRule(),
    ];

void checkUnnamed30(core.List<api.ResponsePolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponsePolicyRule(o[0]);
  checkResponsePolicyRule(o[1]);
}

core.int buildCounterResponsePolicyRulesListResponse = 0;
api.ResponsePolicyRulesListResponse buildResponsePolicyRulesListResponse() {
  final o = api.ResponsePolicyRulesListResponse();
  buildCounterResponsePolicyRulesListResponse++;
  if (buildCounterResponsePolicyRulesListResponse < 3) {
    o.header = buildResponseHeader();
    o.nextPageToken = 'foo';
    o.responsePolicyRules = buildUnnamed30();
  }
  buildCounterResponsePolicyRulesListResponse--;
  return o;
}

void checkResponsePolicyRulesListResponse(
    api.ResponsePolicyRulesListResponse o) {
  buildCounterResponsePolicyRulesListResponse++;
  if (buildCounterResponsePolicyRulesListResponse < 3) {
    checkResponseHeader(o.header!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.responsePolicyRules!);
  }
  buildCounterResponsePolicyRulesListResponse--;
}

core.int buildCounterResponsePolicyRulesPatchResponse = 0;
api.ResponsePolicyRulesPatchResponse buildResponsePolicyRulesPatchResponse() {
  final o = api.ResponsePolicyRulesPatchResponse();
  buildCounterResponsePolicyRulesPatchResponse++;
  if (buildCounterResponsePolicyRulesPatchResponse < 3) {
    o.header = buildResponseHeader();
    o.responsePolicyRule = buildResponsePolicyRule();
  }
  buildCounterResponsePolicyRulesPatchResponse--;
  return o;
}

void checkResponsePolicyRulesPatchResponse(
    api.ResponsePolicyRulesPatchResponse o) {
  buildCounterResponsePolicyRulesPatchResponse++;
  if (buildCounterResponsePolicyRulesPatchResponse < 3) {
    checkResponseHeader(o.header!);
    checkResponsePolicyRule(o.responsePolicyRule!);
  }
  buildCounterResponsePolicyRulesPatchResponse--;
}

core.int buildCounterResponsePolicyRulesUpdateResponse = 0;
api.ResponsePolicyRulesUpdateResponse buildResponsePolicyRulesUpdateResponse() {
  final o = api.ResponsePolicyRulesUpdateResponse();
  buildCounterResponsePolicyRulesUpdateResponse++;
  if (buildCounterResponsePolicyRulesUpdateResponse < 3) {
    o.header = buildResponseHeader();
    o.responsePolicyRule = buildResponsePolicyRule();
  }
  buildCounterResponsePolicyRulesUpdateResponse--;
  return o;
}

void checkResponsePolicyRulesUpdateResponse(
    api.ResponsePolicyRulesUpdateResponse o) {
  buildCounterResponsePolicyRulesUpdateResponse++;
  if (buildCounterResponsePolicyRulesUpdateResponse < 3) {
    checkResponseHeader(o.header!);
    checkResponsePolicyRule(o.responsePolicyRule!);
  }
  buildCounterResponsePolicyRulesUpdateResponse--;
}

void main() {
  unittest.group('obj-schema-Change', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Change.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChange(od);
    });
  });

  unittest.group('obj-schema-ChangesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChangesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangesListResponse(od);
    });
  });

  unittest.group('obj-schema-DnsKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DnsKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDnsKey(od);
    });
  });

  unittest.group('obj-schema-DnsKeyDigest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsKeyDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsKeyDigest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsKeyDigest(od);
    });
  });

  unittest.group('obj-schema-DnsKeySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsKeySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DnsKeySpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDnsKeySpec(od);
    });
  });

  unittest.group('obj-schema-DnsKeysListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsKeysListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsKeysListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsKeysListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZone(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneCloudLoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneCloudLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneCloudLoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneCloudLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneDnsSecConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneDnsSecConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneDnsSecConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneDnsSecConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneForwardingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneForwardingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneForwardingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneForwardingConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneForwardingConfigNameServerTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneForwardingConfigNameServerTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneForwardingConfigNameServerTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneForwardingConfigNameServerTarget(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneOperationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneOperationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneOperationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneOperationsListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePeeringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZonePeeringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZonePeeringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZonePeeringConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePeeringConfigTargetNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZonePeeringConfigTargetNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZonePeeringConfigTargetNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZonePeeringConfigTargetNetwork(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePrivateVisibilityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZonePrivateVisibilityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZonePrivateVisibilityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZonePrivateVisibilityConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePrivateVisibilityConfigGKECluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZonePrivateVisibilityConfigGKECluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZonePrivateVisibilityConfigGKECluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZonePrivateVisibilityConfigGKECluster(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePrivateVisibilityConfigNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZonePrivateVisibilityConfigNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZonePrivateVisibilityConfigNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZonePrivateVisibilityConfigNetwork(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneReverseLookupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneReverseLookupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneReverseLookupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneReverseLookupConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneServiceDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneServiceDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneServiceDirectoryConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneServiceDirectoryConfigNamespace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZoneServiceDirectoryConfigNamespace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZoneServiceDirectoryConfigNamespace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZoneServiceDirectoryConfigNamespace(od);
    });
  });

  unittest.group('obj-schema-ManagedZonesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZonesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZonesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZonesListResponse(od);
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

  unittest.group('obj-schema-OperationDnsKeyContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationDnsKeyContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationDnsKeyContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationDnsKeyContext(od);
    });
  });

  unittest.group('obj-schema-OperationManagedZoneContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationManagedZoneContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationManagedZoneContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationManagedZoneContext(od);
    });
  });

  unittest.group('obj-schema-PoliciesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoliciesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoliciesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPoliciesListResponse(od);
    });
  });

  unittest.group('obj-schema-PoliciesPatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoliciesPatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoliciesPatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPoliciesPatchResponse(od);
    });
  });

  unittest.group('obj-schema-PoliciesUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoliciesUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoliciesUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPoliciesUpdateResponse(od);
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

  unittest.group('obj-schema-PolicyAlternativeNameServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyAlternativeNameServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyAlternativeNameServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyAlternativeNameServerConfig(od);
    });
  });

  unittest.group('obj-schema-PolicyAlternativeNameServerConfigTargetNameServer',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyAlternativeNameServerConfigTargetNameServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyAlternativeNameServerConfigTargetNameServer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyAlternativeNameServerConfigTargetNameServer(od);
    });
  });

  unittest.group('obj-schema-PolicyNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyNetwork(od);
    });
  });

  unittest.group('obj-schema-Project', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Project.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProject(od);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Quota.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuota(od);
    });
  });

  unittest.group('obj-schema-RRSetRoutingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRRSetRoutingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RRSetRoutingPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRRSetRoutingPolicy(od);
    });
  });

  unittest.group('obj-schema-RRSetRoutingPolicyGeoPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRRSetRoutingPolicyGeoPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RRSetRoutingPolicyGeoPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRRSetRoutingPolicyGeoPolicy(od);
    });
  });

  unittest.group('obj-schema-RRSetRoutingPolicyGeoPolicyGeoPolicyItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(od);
    });
  });

  unittest.group('obj-schema-RRSetRoutingPolicyWrrPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRRSetRoutingPolicyWrrPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RRSetRoutingPolicyWrrPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRRSetRoutingPolicyWrrPolicy(od);
    });
  });

  unittest.group('obj-schema-RRSetRoutingPolicyWrrPolicyWrrPolicyItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(od);
    });
  });

  unittest.group('obj-schema-ResourceRecordSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecordSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecordSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRecordSet(od);
    });
  });

  unittest.group('obj-schema-ResourceRecordSetsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecordSetsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecordSetsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRecordSetsListResponse(od);
    });
  });

  unittest.group('obj-schema-ResponseHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponseHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponseHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponseHeader(od);
    });
  });

  unittest.group('obj-schema-ResponsePoliciesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePoliciesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePoliciesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePoliciesListResponse(od);
    });
  });

  unittest.group('obj-schema-ResponsePoliciesPatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePoliciesPatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePoliciesPatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePoliciesPatchResponse(od);
    });
  });

  unittest.group('obj-schema-ResponsePoliciesUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePoliciesUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePoliciesUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePoliciesUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicy(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyGKECluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyGKECluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyGKECluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyGKECluster(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyNetwork(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyRule(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyRuleLocalData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyRuleLocalData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyRuleLocalData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyRuleLocalData(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyRulesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyRulesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyRulesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyRulesListResponse(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyRulesPatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyRulesPatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyRulesPatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyRulesPatchResponse(od);
    });
  });

  unittest.group('obj-schema-ResponsePolicyRulesUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponsePolicyRulesUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponsePolicyRulesUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponsePolicyRulesUpdateResponse(od);
    });
  });

  unittest.group('resource-ChangesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).changes;
      final arg_request = buildChange();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Change.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChange(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/changes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/changes'),
        );
        pathOffset += 8;

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_project, arg_location, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkChange(response as api.Change);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).changes;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_changeId = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/changes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/changes/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_changeId'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_location, arg_managedZone, arg_changeId,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkChange(response as api.Change);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).changes;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_sortBy = 'foo';
      final arg_sortOrder = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/changes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/changes'),
        );
        pathOffset += 8;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortBy']!.first,
          unittest.equals(arg_sortBy),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChangesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_project, arg_location, arg_managedZone,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          sortBy: arg_sortBy,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkChangesListResponse(response as api.ChangesListResponse);
    });
  });

  unittest.group('resource-DnsKeysResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).dnsKeys;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_dnsKeyId = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_digestType = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/dnsKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/dnsKeys/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_dnsKeyId'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['digestType']!.first,
          unittest.equals(arg_digestType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDnsKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_location, arg_managedZone, arg_dnsKeyId,
          clientOperationId: arg_clientOperationId,
          digestType: arg_digestType,
          $fields: arg_$fields);
      checkDnsKey(response as api.DnsKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).dnsKeys;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_digestType = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/dnsKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/dnsKeys'),
        );
        pathOffset += 8;

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
          queryMap['digestType']!.first,
          unittest.equals(arg_digestType),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildDnsKeysListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_project, arg_location, arg_managedZone,
          digestType: arg_digestType,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkDnsKeysListResponse(response as api.DnsKeysListResponse);
    });
  });

  unittest.group('resource-ManagedZoneOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZoneOperations;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_operation = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operation'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
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
      final response = await res.get(
          arg_project, arg_location, arg_managedZone, arg_operation,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZoneOperations;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_sortBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/operations'),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortBy']!.first,
          unittest.equals(arg_sortBy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildManagedZoneOperationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_project, arg_location, arg_managedZone,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          sortBy: arg_sortBy,
          $fields: arg_$fields);
      checkManagedZoneOperationsListResponse(
          response as api.ManagedZoneOperationsListResponse);
    });
  });

  unittest.group('resource-ManagedZonesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_request = buildManagedZone();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedZone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedZone(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/managedZones'),
        );
        pathOffset += 13;

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildManagedZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_project, arg_location,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkManagedZone(response as api.ManagedZone);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_project, arg_location, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildManagedZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_location, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkManagedZone(response as api.ManagedZone);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_dnsName = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/managedZones'),
        );
        pathOffset += 13;

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
          queryMap['dnsName']!.first,
          unittest.equals(arg_dnsName),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildManagedZonesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_location,
          dnsName: arg_dnsName,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkManagedZonesListResponse(response as api.ManagedZonesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_request = buildManagedZone();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedZone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedZone(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
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
      final response = await res.patch(
          arg_request, arg_project, arg_location, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_request = buildManagedZone();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedZone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedZone(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
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
      final response = await res.update(
          arg_request, arg_project, arg_location, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-PoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_request = buildPolicy();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/policies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/policies'),
        );
        pathOffset += 9;

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
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
      final response = await res.create(arg_request, arg_project, arg_location,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_policy = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/policies/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_policy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_project, arg_location, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_policy = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/policies/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_policy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
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
      final response = await res.get(arg_project, arg_location, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/policies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/policies'),
        );
        pathOffset += 9;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildPoliciesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_location,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkPoliciesListResponse(response as api.PoliciesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_request = buildPolicy();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_policy = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/policies/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_policy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPoliciesPatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_project, arg_location, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPoliciesPatchResponse(response as api.PoliciesPatchResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_request = buildPolicy();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_policy = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/policies/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_policy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPoliciesUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_project, arg_location, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPoliciesUpdateResponse(response as api.PoliciesUpdateResponse);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).projects;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_location,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkProject(response as api.Project);
    });
  });

  unittest.group('resource-ResourceRecordSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).resourceRecordSets;
      final arg_request = buildResourceRecordSet();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResourceRecordSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResourceRecordSet(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/rrsets', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rrsets'),
        );
        pathOffset += 7;

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResourceRecordSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_project, arg_location, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSet(response as api.ResourceRecordSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).resourceRecordSets;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_name = 'foo';
      final arg_type = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/rrsets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/rrsets/'),
        );
        pathOffset += 8;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_type'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_project, arg_location, arg_managedZone, arg_name, arg_type,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).resourceRecordSets;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_name = 'foo';
      final arg_type = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/rrsets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/rrsets/'),
        );
        pathOffset += 8;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_type'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResourceRecordSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_location, arg_managedZone, arg_name, arg_type,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSet(response as api.ResourceRecordSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).resourceRecordSets;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_maxResults = 42;
      final arg_name = 'foo';
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/rrsets', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rrsets'),
        );
        pathOffset += 7;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResourceRecordSetsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_project, arg_location, arg_managedZone,
          maxResults: arg_maxResults,
          name: arg_name,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkResourceRecordSetsListResponse(
          response as api.ResourceRecordSetsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).resourceRecordSets;
      final arg_request = buildResourceRecordSet();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_managedZone = 'foo';
      final arg_name = 'foo';
      final arg_type = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResourceRecordSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResourceRecordSet(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/managedZones/'),
        );
        pathOffset += 14;
        index = path.indexOf('/rrsets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedZone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/rrsets/'),
        );
        pathOffset += 8;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_type'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResourceRecordSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_project, arg_location,
          arg_managedZone, arg_name, arg_type,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSet(response as api.ResourceRecordSet);
    });
  });

  unittest.group('resource-ResponsePoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicies;
      final arg_request = buildResponsePolicy();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResponsePolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResponsePolicy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/responsePolicies'),
        );
        pathOffset += 17;

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponsePolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_project, arg_location,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePolicy(response as api.ResponsePolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicies;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_project, arg_location, arg_responsePolicy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicies;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponsePolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_location, arg_responsePolicy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePolicy(response as api.ResponsePolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicies;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/responsePolicies'),
        );
        pathOffset += 17;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildResponsePoliciesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_location,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkResponsePoliciesListResponse(
          response as api.ResponsePoliciesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicies;
      final arg_request = buildResponsePolicy();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResponsePolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResponsePolicy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponsePoliciesPatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_project, arg_location, arg_responsePolicy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePoliciesPatchResponse(
          response as api.ResponsePoliciesPatchResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicies;
      final arg_request = buildResponsePolicy();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResponsePolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResponsePolicy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponsePoliciesUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_project, arg_location, arg_responsePolicy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePoliciesUpdateResponse(
          response as api.ResponsePoliciesUpdateResponse);
    });
  });

  unittest.group('resource-ResponsePolicyRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicyRules;
      final arg_request = buildResponsePolicyRule();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResponsePolicyRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResponsePolicyRule(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        index = path.indexOf('/rules', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/rules'),
        );
        pathOffset += 6;

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponsePolicyRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_project, arg_location, arg_responsePolicy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePolicyRule(response as api.ResponsePolicyRule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicyRules;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_responsePolicyRule = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        index = path.indexOf('/rules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rules/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicyRule'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_project, arg_location, arg_responsePolicy, arg_responsePolicyRule,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicyRules;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_responsePolicyRule = 'foo';
      final arg_clientOperationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        index = path.indexOf('/rules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rules/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicyRule'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponsePolicyRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_location, arg_responsePolicy, arg_responsePolicyRule,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePolicyRule(response as api.ResponsePolicyRule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicyRules;
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        index = path.indexOf('/rules', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/rules'),
        );
        pathOffset += 6;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
            convert.json.encode(buildResponsePolicyRulesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_project, arg_location, arg_responsePolicy,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkResponsePolicyRulesListResponse(
          response as api.ResponsePolicyRulesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicyRules;
      final arg_request = buildResponsePolicyRule();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_responsePolicyRule = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResponsePolicyRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResponsePolicyRule(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        index = path.indexOf('/rules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rules/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicyRule'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildResponsePolicyRulesPatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_project, arg_location,
          arg_responsePolicy, arg_responsePolicyRule,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePolicyRulesPatchResponse(
          response as api.ResponsePolicyRulesPatchResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).responsePolicyRules;
      final arg_request = buildResponsePolicyRule();
      final arg_project = 'foo';
      final arg_location = 'foo';
      final arg_responsePolicy = 'foo';
      final arg_responsePolicyRule = 'foo';
      final arg_clientOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResponsePolicyRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResponsePolicyRule(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dns/v2/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/responsePolicies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/responsePolicies/'),
        );
        pathOffset += 18;
        index = path.indexOf('/rules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicy'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rules/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responsePolicyRule'),
        );

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
          queryMap['clientOperationId']!.first,
          unittest.equals(arg_clientOperationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildResponsePolicyRulesUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_project, arg_location,
          arg_responsePolicy, arg_responsePolicyRule,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResponsePolicyRulesUpdateResponse(
          response as api.ResponsePolicyRulesUpdateResponse);
    });
  });
}
