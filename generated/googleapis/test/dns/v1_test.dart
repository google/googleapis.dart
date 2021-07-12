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

import 'package:googleapis/dns/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ResourceRecordSet> buildUnnamed2250() {
  final o = <api.ResourceRecordSet>[];
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

void checkUnnamed2250(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.List<api.ResourceRecordSet> buildUnnamed2251() {
  final o = <api.ResourceRecordSet>[];
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

void checkUnnamed2251(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterChange = 0;
api.Change buildChange() {
  final o = api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.additions = buildUnnamed2250();
    o.deletions = buildUnnamed2251();
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
    checkUnnamed2250(o.additions!);
    checkUnnamed2251(o.deletions!);
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

core.List<api.Change> buildUnnamed2252() {
  final o = <api.Change>[];
  o.add(buildChange());
  o.add(buildChange());
  return o;
}

void checkUnnamed2252(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangesListResponse = 0;
api.ChangesListResponse buildChangesListResponse() {
  final o = api.ChangesListResponse();
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    o.changes = buildUnnamed2252();
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
    checkUnnamed2252(o.changes!);
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

core.List<api.DnsKeyDigest> buildUnnamed2253() {
  final o = <api.DnsKeyDigest>[];
  o.add(buildDnsKeyDigest());
  o.add(buildDnsKeyDigest());
  return o;
}

void checkUnnamed2253(core.List<api.DnsKeyDigest> o) {
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
    o.digests = buildUnnamed2253();
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
    checkUnnamed2253(o.digests!);
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

core.List<api.DnsKey> buildUnnamed2254() {
  final o = <api.DnsKey>[];
  o.add(buildDnsKey());
  o.add(buildDnsKey());
  return o;
}

void checkUnnamed2254(core.List<api.DnsKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKey(o[0]);
  checkDnsKey(o[1]);
}

core.int buildCounterDnsKeysListResponse = 0;
api.DnsKeysListResponse buildDnsKeysListResponse() {
  final o = api.DnsKeysListResponse();
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    o.dnsKeys = buildUnnamed2254();
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
    checkUnnamed2254(o.dnsKeys!);
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

core.Map<core.String, core.String> buildUnnamed2255() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2255(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed2256() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2256(core.List<core.String> o) {
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
    o.creationTime = 'foo';
    o.description = 'foo';
    o.dnsName = 'foo';
    o.dnssecConfig = buildManagedZoneDnsSecConfig();
    o.forwardingConfig = buildManagedZoneForwardingConfig();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed2255();
    o.name = 'foo';
    o.nameServerSet = 'foo';
    o.nameServers = buildUnnamed2256();
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
    checkUnnamed2255(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nameServerSet!,
      unittest.equals('foo'),
    );
    checkUnnamed2256(o.nameServers!);
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

core.List<api.DnsKeySpec> buildUnnamed2257() {
  final o = <api.DnsKeySpec>[];
  o.add(buildDnsKeySpec());
  o.add(buildDnsKeySpec());
  return o;
}

void checkUnnamed2257(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterManagedZoneDnsSecConfig = 0;
api.ManagedZoneDnsSecConfig buildManagedZoneDnsSecConfig() {
  final o = api.ManagedZoneDnsSecConfig();
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    o.defaultKeySpecs = buildUnnamed2257();
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
    checkUnnamed2257(o.defaultKeySpecs!);
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

core.List<api.ManagedZoneForwardingConfigNameServerTarget> buildUnnamed2258() {
  final o = <api.ManagedZoneForwardingConfigNameServerTarget>[];
  o.add(buildManagedZoneForwardingConfigNameServerTarget());
  o.add(buildManagedZoneForwardingConfigNameServerTarget());
  return o;
}

void checkUnnamed2258(
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
    o.targetNameServers = buildUnnamed2258();
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
    checkUnnamed2258(o.targetNameServers!);
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

core.List<api.Operation> buildUnnamed2259() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed2259(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2259();
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
    checkUnnamed2259(o.operations!);
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

core.List<api.ManagedZonePrivateVisibilityConfigNetwork> buildUnnamed2260() {
  final o = <api.ManagedZonePrivateVisibilityConfigNetwork>[];
  o.add(buildManagedZonePrivateVisibilityConfigNetwork());
  o.add(buildManagedZonePrivateVisibilityConfigNetwork());
  return o;
}

void checkUnnamed2260(
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
    o.kind = 'foo';
    o.networks = buildUnnamed2260();
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
  return o;
}

void checkManagedZonePrivateVisibilityConfig(
    api.ManagedZonePrivateVisibilityConfig o) {
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2260(o.networks!);
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
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

core.List<api.ManagedZone> buildUnnamed2261() {
  final o = <api.ManagedZone>[];
  o.add(buildManagedZone());
  o.add(buildManagedZone());
  return o;
}

void checkUnnamed2261(core.List<api.ManagedZone> o) {
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
    o.managedZones = buildUnnamed2261();
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
    checkUnnamed2261(o.managedZones!);
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

core.List<api.Policy> buildUnnamed2262() {
  final o = <api.Policy>[];
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

void checkUnnamed2262(core.List<api.Policy> o) {
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
    o.policies = buildUnnamed2262();
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
    checkUnnamed2262(o.policies!);
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

core.List<api.PolicyNetwork> buildUnnamed2263() {
  final o = <api.PolicyNetwork>[];
  o.add(buildPolicyNetwork());
  o.add(buildPolicyNetwork());
  return o;
}

void checkUnnamed2263(core.List<api.PolicyNetwork> o) {
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
    o.networks = buildUnnamed2263();
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
    checkUnnamed2263(o.networks!);
  }
  buildCounterPolicy--;
}

core.List<api.PolicyAlternativeNameServerConfigTargetNameServer>
    buildUnnamed2264() {
  final o = <api.PolicyAlternativeNameServerConfigTargetNameServer>[];
  o.add(buildPolicyAlternativeNameServerConfigTargetNameServer());
  o.add(buildPolicyAlternativeNameServerConfigTargetNameServer());
  return o;
}

void checkUnnamed2264(
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
    o.targetNameServers = buildUnnamed2264();
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
    checkUnnamed2264(o.targetNameServers!);
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

core.List<api.DnsKeySpec> buildUnnamed2265() {
  final o = <api.DnsKeySpec>[];
  o.add(buildDnsKeySpec());
  o.add(buildDnsKeySpec());
  return o;
}

void checkUnnamed2265(core.List<api.DnsKeySpec> o) {
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
    o.kind = 'foo';
    o.managedZones = 42;
    o.managedZonesPerNetwork = 42;
    o.networksPerManagedZone = 42;
    o.networksPerPolicy = 42;
    o.policies = 42;
    o.resourceRecordsPerRrset = 42;
    o.rrsetAdditionsPerChange = 42;
    o.rrsetDeletionsPerChange = 42;
    o.rrsetsPerManagedZone = 42;
    o.targetNameServersPerManagedZone = 42;
    o.targetNameServersPerPolicy = 42;
    o.totalRrdataSizePerChange = 42;
    o.whitelistedKeySpecs = buildUnnamed2265();
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
    checkUnnamed2265(o.whitelistedKeySpecs!);
  }
  buildCounterQuota--;
}

core.List<core.String> buildUnnamed2266() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2266(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2267() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2267(core.List<core.String> o) {
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
    o.rrdatas = buildUnnamed2266();
    o.signatureRrdatas = buildUnnamed2267();
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
    checkUnnamed2266(o.rrdatas!);
    checkUnnamed2267(o.signatureRrdatas!);
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

core.int buildCounterResourceRecordSetsDeleteResponse = 0;
api.ResourceRecordSetsDeleteResponse buildResourceRecordSetsDeleteResponse() {
  final o = api.ResourceRecordSetsDeleteResponse();
  buildCounterResourceRecordSetsDeleteResponse++;
  if (buildCounterResourceRecordSetsDeleteResponse < 3) {}
  buildCounterResourceRecordSetsDeleteResponse--;
  return o;
}

void checkResourceRecordSetsDeleteResponse(
    api.ResourceRecordSetsDeleteResponse o) {
  buildCounterResourceRecordSetsDeleteResponse++;
  if (buildCounterResourceRecordSetsDeleteResponse < 3) {}
  buildCounterResourceRecordSetsDeleteResponse--;
}

core.List<api.ResourceRecordSet> buildUnnamed2268() {
  final o = <api.ResourceRecordSet>[];
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

void checkUnnamed2268(core.List<api.ResourceRecordSet> o) {
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
    o.rrsets = buildUnnamed2268();
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
    checkUnnamed2268(o.rrsets!);
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

  unittest.group('obj-schema-ResourceRecordSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecordSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecordSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRecordSet(od);
    });
  });

  unittest.group('obj-schema-ResourceRecordSetsDeleteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecordSetsDeleteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecordSetsDeleteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRecordSetsDeleteResponse(od);
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

  unittest.group('resource-ChangesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).changes;
      final arg_request = buildChange();
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
          arg_request, arg_project, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkChange(response as api.Change);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).changes;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.get(arg_project, arg_managedZone, arg_changeId,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkChange(response as api.Change);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).changes;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.list(arg_project, arg_managedZone,
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.get(arg_project, arg_managedZone, arg_dnsKeyId,
          clientOperationId: arg_clientOperationId,
          digestType: arg_digestType,
          $fields: arg_$fields);
      checkDnsKey(response as api.DnsKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).dnsKeys;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.list(arg_project, arg_managedZone,
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
          arg_project, arg_managedZone, arg_operation,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZoneOperations;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.list(arg_project, arg_managedZone,
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.create(arg_request, arg_project,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkManagedZone(response as api.ManagedZone);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      await res.delete(arg_project, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.get(arg_project, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkManagedZone(response as api.ManagedZone);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.list(arg_project,
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
          arg_request, arg_project, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).managedZones;
      final arg_request = buildManagedZone();
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
          arg_request, arg_project, arg_managedZone,
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/policies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.create(arg_request, arg_project,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      await res.delete(arg_project, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.get(arg_project, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/policies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.list(arg_project,
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.patch(arg_request, arg_project, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPoliciesPatchResponse(response as api.PoliciesPatchResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).policies;
      final arg_request = buildPolicy();
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.update(arg_request, arg_project, arg_policy,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkPoliciesUpdateResponse(response as api.PoliciesUpdateResponse);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).projects;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.get(arg_project,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkProject(response as api.Project);
    });
  });

  unittest.group('resource-ProjectsManagedZonesRrsetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).projects.managedZones.rrsets;
      final arg_request = buildResourceRecordSet();
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
          arg_request, arg_project, arg_managedZone,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSet(response as api.ResourceRecordSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).projects.managedZones.rrsets;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
        final resp =
            convert.json.encode(buildResourceRecordSetsDeleteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          arg_project, arg_managedZone, arg_name, arg_type,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSetsDeleteResponse(
          response as api.ResourceRecordSetsDeleteResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).projects.managedZones.rrsets;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
          arg_project, arg_managedZone, arg_name, arg_type,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSet(response as api.ResourceRecordSet);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).projects.managedZones.rrsets;
      final arg_request = buildResourceRecordSet();
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.patch(
          arg_request, arg_project, arg_managedZone, arg_name, arg_type,
          clientOperationId: arg_clientOperationId, $fields: arg_$fields);
      checkResourceRecordSet(response as api.ResourceRecordSet);
    });
  });

  unittest.group('resource-ResourceRecordSetsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DnsApi(mock).resourceRecordSets;
      final arg_project = 'foo';
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
          unittest.equals('dns/v1/projects/'),
        );
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
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
      final response = await res.list(arg_project, arg_managedZone,
          maxResults: arg_maxResults,
          name: arg_name,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkResourceRecordSetsListResponse(
          response as api.ResourceRecordSetsListResponse);
    });
  });
}
