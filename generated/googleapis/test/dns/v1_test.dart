library googleapis.dns.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dns/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3351() {
  var o = new core.List<api.ResourceRecordSet>();
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

checkUnnamed3351(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

buildUnnamed3352() {
  var o = new core.List<api.ResourceRecordSet>();
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

checkUnnamed3352(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterChange = 0;
buildChange() {
  var o = new api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.additions = buildUnnamed3351();
    o.deletions = buildUnnamed3352();
    o.id = "foo";
    o.isServing = true;
    o.kind = "foo";
    o.startTime = "foo";
    o.status = "foo";
  }
  buildCounterChange--;
  return o;
}

checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    checkUnnamed3351(o.additions);
    checkUnnamed3352(o.deletions);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isServing, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterChange--;
}

buildUnnamed3353() {
  var o = new core.List<api.Change>();
  o.add(buildChange());
  o.add(buildChange());
  return o;
}

checkUnnamed3353(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangesListResponse = 0;
buildChangesListResponse() {
  var o = new api.ChangesListResponse();
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    o.changes = buildUnnamed3353();
    o.header = buildResponseHeader();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterChangesListResponse--;
  return o;
}

checkChangesListResponse(api.ChangesListResponse o) {
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    checkUnnamed3353(o.changes);
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChangesListResponse--;
}

buildUnnamed3354() {
  var o = new core.List<api.DnsKeyDigest>();
  o.add(buildDnsKeyDigest());
  o.add(buildDnsKeyDigest());
  return o;
}

checkUnnamed3354(core.List<api.DnsKeyDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeyDigest(o[0]);
  checkDnsKeyDigest(o[1]);
}

core.int buildCounterDnsKey = 0;
buildDnsKey() {
  var o = new api.DnsKey();
  buildCounterDnsKey++;
  if (buildCounterDnsKey < 3) {
    o.algorithm = "foo";
    o.creationTime = "foo";
    o.description = "foo";
    o.digests = buildUnnamed3354();
    o.id = "foo";
    o.isActive = true;
    o.keyLength = 42;
    o.keyTag = 42;
    o.kind = "foo";
    o.publicKey = "foo";
    o.type = "foo";
  }
  buildCounterDnsKey--;
  return o;
}

checkDnsKey(api.DnsKey o) {
  buildCounterDnsKey++;
  if (buildCounterDnsKey < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3354(o.digests);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isActive, unittest.isTrue);
    unittest.expect(o.keyLength, unittest.equals(42));
    unittest.expect(o.keyTag, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.publicKey, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDnsKey--;
}

core.int buildCounterDnsKeyDigest = 0;
buildDnsKeyDigest() {
  var o = new api.DnsKeyDigest();
  buildCounterDnsKeyDigest++;
  if (buildCounterDnsKeyDigest < 3) {
    o.digest = "foo";
    o.type = "foo";
  }
  buildCounterDnsKeyDigest--;
  return o;
}

checkDnsKeyDigest(api.DnsKeyDigest o) {
  buildCounterDnsKeyDigest++;
  if (buildCounterDnsKeyDigest < 3) {
    unittest.expect(o.digest, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDnsKeyDigest--;
}

core.int buildCounterDnsKeySpec = 0;
buildDnsKeySpec() {
  var o = new api.DnsKeySpec();
  buildCounterDnsKeySpec++;
  if (buildCounterDnsKeySpec < 3) {
    o.algorithm = "foo";
    o.keyLength = 42;
    o.keyType = "foo";
    o.kind = "foo";
  }
  buildCounterDnsKeySpec--;
  return o;
}

checkDnsKeySpec(api.DnsKeySpec o) {
  buildCounterDnsKeySpec++;
  if (buildCounterDnsKeySpec < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.keyLength, unittest.equals(42));
    unittest.expect(o.keyType, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDnsKeySpec--;
}

buildUnnamed3355() {
  var o = new core.List<api.DnsKey>();
  o.add(buildDnsKey());
  o.add(buildDnsKey());
  return o;
}

checkUnnamed3355(core.List<api.DnsKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKey(o[0]);
  checkDnsKey(o[1]);
}

core.int buildCounterDnsKeysListResponse = 0;
buildDnsKeysListResponse() {
  var o = new api.DnsKeysListResponse();
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    o.dnsKeys = buildUnnamed3355();
    o.header = buildResponseHeader();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterDnsKeysListResponse--;
  return o;
}

checkDnsKeysListResponse(api.DnsKeysListResponse o) {
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    checkUnnamed3355(o.dnsKeys);
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDnsKeysListResponse--;
}

buildUnnamed3356() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3356(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3357() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterManagedZone = 0;
buildManagedZone() {
  var o = new api.ManagedZone();
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    o.creationTime = "foo";
    o.description = "foo";
    o.dnsName = "foo";
    o.dnssecConfig = buildManagedZoneDnsSecConfig();
    o.forwardingConfig = buildManagedZoneForwardingConfig();
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3356();
    o.name = "foo";
    o.nameServerSet = "foo";
    o.nameServers = buildUnnamed3357();
    o.peeringConfig = buildManagedZonePeeringConfig();
    o.privateVisibilityConfig = buildManagedZonePrivateVisibilityConfig();
    o.reverseLookupConfig = buildManagedZoneReverseLookupConfig();
    o.serviceDirectoryConfig = buildManagedZoneServiceDirectoryConfig();
    o.visibility = "foo";
  }
  buildCounterManagedZone--;
  return o;
}

checkManagedZone(api.ManagedZone o) {
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.dnsName, unittest.equals('foo'));
    checkManagedZoneDnsSecConfig(o.dnssecConfig);
    checkManagedZoneForwardingConfig(o.forwardingConfig);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3356(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nameServerSet, unittest.equals('foo'));
    checkUnnamed3357(o.nameServers);
    checkManagedZonePeeringConfig(o.peeringConfig);
    checkManagedZonePrivateVisibilityConfig(o.privateVisibilityConfig);
    checkManagedZoneReverseLookupConfig(o.reverseLookupConfig);
    checkManagedZoneServiceDirectoryConfig(o.serviceDirectoryConfig);
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterManagedZone--;
}

buildUnnamed3358() {
  var o = new core.List<api.DnsKeySpec>();
  o.add(buildDnsKeySpec());
  o.add(buildDnsKeySpec());
  return o;
}

checkUnnamed3358(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterManagedZoneDnsSecConfig = 0;
buildManagedZoneDnsSecConfig() {
  var o = new api.ManagedZoneDnsSecConfig();
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    o.defaultKeySpecs = buildUnnamed3358();
    o.kind = "foo";
    o.nonExistence = "foo";
    o.state = "foo";
  }
  buildCounterManagedZoneDnsSecConfig--;
  return o;
}

checkManagedZoneDnsSecConfig(api.ManagedZoneDnsSecConfig o) {
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    checkUnnamed3358(o.defaultKeySpecs);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nonExistence, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterManagedZoneDnsSecConfig--;
}

buildUnnamed3359() {
  var o = new core.List<api.ManagedZoneForwardingConfigNameServerTarget>();
  o.add(buildManagedZoneForwardingConfigNameServerTarget());
  o.add(buildManagedZoneForwardingConfigNameServerTarget());
  return o;
}

checkUnnamed3359(core.List<api.ManagedZoneForwardingConfigNameServerTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZoneForwardingConfigNameServerTarget(o[0]);
  checkManagedZoneForwardingConfigNameServerTarget(o[1]);
}

core.int buildCounterManagedZoneForwardingConfig = 0;
buildManagedZoneForwardingConfig() {
  var o = new api.ManagedZoneForwardingConfig();
  buildCounterManagedZoneForwardingConfig++;
  if (buildCounterManagedZoneForwardingConfig < 3) {
    o.kind = "foo";
    o.targetNameServers = buildUnnamed3359();
  }
  buildCounterManagedZoneForwardingConfig--;
  return o;
}

checkManagedZoneForwardingConfig(api.ManagedZoneForwardingConfig o) {
  buildCounterManagedZoneForwardingConfig++;
  if (buildCounterManagedZoneForwardingConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3359(o.targetNameServers);
  }
  buildCounterManagedZoneForwardingConfig--;
}

core.int buildCounterManagedZoneForwardingConfigNameServerTarget = 0;
buildManagedZoneForwardingConfigNameServerTarget() {
  var o = new api.ManagedZoneForwardingConfigNameServerTarget();
  buildCounterManagedZoneForwardingConfigNameServerTarget++;
  if (buildCounterManagedZoneForwardingConfigNameServerTarget < 3) {
    o.forwardingPath = "foo";
    o.ipv4Address = "foo";
    o.kind = "foo";
  }
  buildCounterManagedZoneForwardingConfigNameServerTarget--;
  return o;
}

checkManagedZoneForwardingConfigNameServerTarget(
    api.ManagedZoneForwardingConfigNameServerTarget o) {
  buildCounterManagedZoneForwardingConfigNameServerTarget++;
  if (buildCounterManagedZoneForwardingConfigNameServerTarget < 3) {
    unittest.expect(o.forwardingPath, unittest.equals('foo'));
    unittest.expect(o.ipv4Address, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterManagedZoneForwardingConfigNameServerTarget--;
}

buildUnnamed3360() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3360(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterManagedZoneOperationsListResponse = 0;
buildManagedZoneOperationsListResponse() {
  var o = new api.ManagedZoneOperationsListResponse();
  buildCounterManagedZoneOperationsListResponse++;
  if (buildCounterManagedZoneOperationsListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3360();
  }
  buildCounterManagedZoneOperationsListResponse--;
  return o;
}

checkManagedZoneOperationsListResponse(
    api.ManagedZoneOperationsListResponse o) {
  buildCounterManagedZoneOperationsListResponse++;
  if (buildCounterManagedZoneOperationsListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3360(o.operations);
  }
  buildCounterManagedZoneOperationsListResponse--;
}

core.int buildCounterManagedZonePeeringConfig = 0;
buildManagedZonePeeringConfig() {
  var o = new api.ManagedZonePeeringConfig();
  buildCounterManagedZonePeeringConfig++;
  if (buildCounterManagedZonePeeringConfig < 3) {
    o.kind = "foo";
    o.targetNetwork = buildManagedZonePeeringConfigTargetNetwork();
  }
  buildCounterManagedZonePeeringConfig--;
  return o;
}

checkManagedZonePeeringConfig(api.ManagedZonePeeringConfig o) {
  buildCounterManagedZonePeeringConfig++;
  if (buildCounterManagedZonePeeringConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkManagedZonePeeringConfigTargetNetwork(o.targetNetwork);
  }
  buildCounterManagedZonePeeringConfig--;
}

core.int buildCounterManagedZonePeeringConfigTargetNetwork = 0;
buildManagedZonePeeringConfigTargetNetwork() {
  var o = new api.ManagedZonePeeringConfigTargetNetwork();
  buildCounterManagedZonePeeringConfigTargetNetwork++;
  if (buildCounterManagedZonePeeringConfigTargetNetwork < 3) {
    o.deactivateTime = "foo";
    o.kind = "foo";
    o.networkUrl = "foo";
  }
  buildCounterManagedZonePeeringConfigTargetNetwork--;
  return o;
}

checkManagedZonePeeringConfigTargetNetwork(
    api.ManagedZonePeeringConfigTargetNetwork o) {
  buildCounterManagedZonePeeringConfigTargetNetwork++;
  if (buildCounterManagedZonePeeringConfigTargetNetwork < 3) {
    unittest.expect(o.deactivateTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterManagedZonePeeringConfigTargetNetwork--;
}

buildUnnamed3361() {
  var o = new core.List<api.ManagedZonePrivateVisibilityConfigNetwork>();
  o.add(buildManagedZonePrivateVisibilityConfigNetwork());
  o.add(buildManagedZonePrivateVisibilityConfigNetwork());
  return o;
}

checkUnnamed3361(core.List<api.ManagedZonePrivateVisibilityConfigNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZonePrivateVisibilityConfigNetwork(o[0]);
  checkManagedZonePrivateVisibilityConfigNetwork(o[1]);
}

core.int buildCounterManagedZonePrivateVisibilityConfig = 0;
buildManagedZonePrivateVisibilityConfig() {
  var o = new api.ManagedZonePrivateVisibilityConfig();
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    o.kind = "foo";
    o.networks = buildUnnamed3361();
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
  return o;
}

checkManagedZonePrivateVisibilityConfig(
    api.ManagedZonePrivateVisibilityConfig o) {
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3361(o.networks);
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
}

core.int buildCounterManagedZonePrivateVisibilityConfigNetwork = 0;
buildManagedZonePrivateVisibilityConfigNetwork() {
  var o = new api.ManagedZonePrivateVisibilityConfigNetwork();
  buildCounterManagedZonePrivateVisibilityConfigNetwork++;
  if (buildCounterManagedZonePrivateVisibilityConfigNetwork < 3) {
    o.kind = "foo";
    o.networkUrl = "foo";
  }
  buildCounterManagedZonePrivateVisibilityConfigNetwork--;
  return o;
}

checkManagedZonePrivateVisibilityConfigNetwork(
    api.ManagedZonePrivateVisibilityConfigNetwork o) {
  buildCounterManagedZonePrivateVisibilityConfigNetwork++;
  if (buildCounterManagedZonePrivateVisibilityConfigNetwork < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterManagedZonePrivateVisibilityConfigNetwork--;
}

core.int buildCounterManagedZoneReverseLookupConfig = 0;
buildManagedZoneReverseLookupConfig() {
  var o = new api.ManagedZoneReverseLookupConfig();
  buildCounterManagedZoneReverseLookupConfig++;
  if (buildCounterManagedZoneReverseLookupConfig < 3) {
    o.kind = "foo";
  }
  buildCounterManagedZoneReverseLookupConfig--;
  return o;
}

checkManagedZoneReverseLookupConfig(api.ManagedZoneReverseLookupConfig o) {
  buildCounterManagedZoneReverseLookupConfig++;
  if (buildCounterManagedZoneReverseLookupConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterManagedZoneReverseLookupConfig--;
}

core.int buildCounterManagedZoneServiceDirectoryConfig = 0;
buildManagedZoneServiceDirectoryConfig() {
  var o = new api.ManagedZoneServiceDirectoryConfig();
  buildCounterManagedZoneServiceDirectoryConfig++;
  if (buildCounterManagedZoneServiceDirectoryConfig < 3) {
    o.kind = "foo";
    o.namespace = buildManagedZoneServiceDirectoryConfigNamespace();
  }
  buildCounterManagedZoneServiceDirectoryConfig--;
  return o;
}

checkManagedZoneServiceDirectoryConfig(
    api.ManagedZoneServiceDirectoryConfig o) {
  buildCounterManagedZoneServiceDirectoryConfig++;
  if (buildCounterManagedZoneServiceDirectoryConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkManagedZoneServiceDirectoryConfigNamespace(o.namespace);
  }
  buildCounterManagedZoneServiceDirectoryConfig--;
}

core.int buildCounterManagedZoneServiceDirectoryConfigNamespace = 0;
buildManagedZoneServiceDirectoryConfigNamespace() {
  var o = new api.ManagedZoneServiceDirectoryConfigNamespace();
  buildCounterManagedZoneServiceDirectoryConfigNamespace++;
  if (buildCounterManagedZoneServiceDirectoryConfigNamespace < 3) {
    o.deletionTime = "foo";
    o.kind = "foo";
    o.namespaceUrl = "foo";
  }
  buildCounterManagedZoneServiceDirectoryConfigNamespace--;
  return o;
}

checkManagedZoneServiceDirectoryConfigNamespace(
    api.ManagedZoneServiceDirectoryConfigNamespace o) {
  buildCounterManagedZoneServiceDirectoryConfigNamespace++;
  if (buildCounterManagedZoneServiceDirectoryConfigNamespace < 3) {
    unittest.expect(o.deletionTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.namespaceUrl, unittest.equals('foo'));
  }
  buildCounterManagedZoneServiceDirectoryConfigNamespace--;
}

buildUnnamed3362() {
  var o = new core.List<api.ManagedZone>();
  o.add(buildManagedZone());
  o.add(buildManagedZone());
  return o;
}

checkUnnamed3362(core.List<api.ManagedZone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZone(o[0]);
  checkManagedZone(o[1]);
}

core.int buildCounterManagedZonesListResponse = 0;
buildManagedZonesListResponse() {
  var o = new api.ManagedZonesListResponse();
  buildCounterManagedZonesListResponse++;
  if (buildCounterManagedZonesListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = "foo";
    o.managedZones = buildUnnamed3362();
    o.nextPageToken = "foo";
  }
  buildCounterManagedZonesListResponse--;
  return o;
}

checkManagedZonesListResponse(api.ManagedZonesListResponse o) {
  buildCounterManagedZonesListResponse++;
  if (buildCounterManagedZonesListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3362(o.managedZones);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterManagedZonesListResponse--;
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.dnsKeyContext = buildOperationDnsKeyContext();
    o.id = "foo";
    o.kind = "foo";
    o.startTime = "foo";
    o.status = "foo";
    o.type = "foo";
    o.user = "foo";
    o.zoneContext = buildOperationManagedZoneContext();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkOperationDnsKeyContext(o.dnsKeyContext);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkOperationManagedZoneContext(o.zoneContext);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationDnsKeyContext = 0;
buildOperationDnsKeyContext() {
  var o = new api.OperationDnsKeyContext();
  buildCounterOperationDnsKeyContext++;
  if (buildCounterOperationDnsKeyContext < 3) {
    o.newValue = buildDnsKey();
    o.oldValue = buildDnsKey();
  }
  buildCounterOperationDnsKeyContext--;
  return o;
}

checkOperationDnsKeyContext(api.OperationDnsKeyContext o) {
  buildCounterOperationDnsKeyContext++;
  if (buildCounterOperationDnsKeyContext < 3) {
    checkDnsKey(o.newValue);
    checkDnsKey(o.oldValue);
  }
  buildCounterOperationDnsKeyContext--;
}

core.int buildCounterOperationManagedZoneContext = 0;
buildOperationManagedZoneContext() {
  var o = new api.OperationManagedZoneContext();
  buildCounterOperationManagedZoneContext++;
  if (buildCounterOperationManagedZoneContext < 3) {
    o.newValue = buildManagedZone();
    o.oldValue = buildManagedZone();
  }
  buildCounterOperationManagedZoneContext--;
  return o;
}

checkOperationManagedZoneContext(api.OperationManagedZoneContext o) {
  buildCounterOperationManagedZoneContext++;
  if (buildCounterOperationManagedZoneContext < 3) {
    checkManagedZone(o.newValue);
    checkManagedZone(o.oldValue);
  }
  buildCounterOperationManagedZoneContext--;
}

buildUnnamed3363() {
  var o = new core.List<api.Policy>();
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

checkUnnamed3363(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterPoliciesListResponse = 0;
buildPoliciesListResponse() {
  var o = new api.PoliciesListResponse();
  buildCounterPoliciesListResponse++;
  if (buildCounterPoliciesListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.policies = buildUnnamed3363();
  }
  buildCounterPoliciesListResponse--;
  return o;
}

checkPoliciesListResponse(api.PoliciesListResponse o) {
  buildCounterPoliciesListResponse++;
  if (buildCounterPoliciesListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3363(o.policies);
  }
  buildCounterPoliciesListResponse--;
}

core.int buildCounterPoliciesPatchResponse = 0;
buildPoliciesPatchResponse() {
  var o = new api.PoliciesPatchResponse();
  buildCounterPoliciesPatchResponse++;
  if (buildCounterPoliciesPatchResponse < 3) {
    o.header = buildResponseHeader();
    o.policy = buildPolicy();
  }
  buildCounterPoliciesPatchResponse--;
  return o;
}

checkPoliciesPatchResponse(api.PoliciesPatchResponse o) {
  buildCounterPoliciesPatchResponse++;
  if (buildCounterPoliciesPatchResponse < 3) {
    checkResponseHeader(o.header);
    checkPolicy(o.policy);
  }
  buildCounterPoliciesPatchResponse--;
}

core.int buildCounterPoliciesUpdateResponse = 0;
buildPoliciesUpdateResponse() {
  var o = new api.PoliciesUpdateResponse();
  buildCounterPoliciesUpdateResponse++;
  if (buildCounterPoliciesUpdateResponse < 3) {
    o.header = buildResponseHeader();
    o.policy = buildPolicy();
  }
  buildCounterPoliciesUpdateResponse--;
  return o;
}

checkPoliciesUpdateResponse(api.PoliciesUpdateResponse o) {
  buildCounterPoliciesUpdateResponse++;
  if (buildCounterPoliciesUpdateResponse < 3) {
    checkResponseHeader(o.header);
    checkPolicy(o.policy);
  }
  buildCounterPoliciesUpdateResponse--;
}

buildUnnamed3364() {
  var o = new core.List<api.PolicyNetwork>();
  o.add(buildPolicyNetwork());
  o.add(buildPolicyNetwork());
  return o;
}

checkUnnamed3364(core.List<api.PolicyNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyNetwork(o[0]);
  checkPolicyNetwork(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.alternativeNameServerConfig = buildPolicyAlternativeNameServerConfig();
    o.description = "foo";
    o.enableInboundForwarding = true;
    o.enableLogging = true;
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.networks = buildUnnamed3364();
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkPolicyAlternativeNameServerConfig(o.alternativeNameServerConfig);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableInboundForwarding, unittest.isTrue);
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3364(o.networks);
  }
  buildCounterPolicy--;
}

buildUnnamed3365() {
  var o =
      new core.List<api.PolicyAlternativeNameServerConfigTargetNameServer>();
  o.add(buildPolicyAlternativeNameServerConfigTargetNameServer());
  o.add(buildPolicyAlternativeNameServerConfigTargetNameServer());
  return o;
}

checkUnnamed3365(
    core.List<api.PolicyAlternativeNameServerConfigTargetNameServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyAlternativeNameServerConfigTargetNameServer(o[0]);
  checkPolicyAlternativeNameServerConfigTargetNameServer(o[1]);
}

core.int buildCounterPolicyAlternativeNameServerConfig = 0;
buildPolicyAlternativeNameServerConfig() {
  var o = new api.PolicyAlternativeNameServerConfig();
  buildCounterPolicyAlternativeNameServerConfig++;
  if (buildCounterPolicyAlternativeNameServerConfig < 3) {
    o.kind = "foo";
    o.targetNameServers = buildUnnamed3365();
  }
  buildCounterPolicyAlternativeNameServerConfig--;
  return o;
}

checkPolicyAlternativeNameServerConfig(
    api.PolicyAlternativeNameServerConfig o) {
  buildCounterPolicyAlternativeNameServerConfig++;
  if (buildCounterPolicyAlternativeNameServerConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3365(o.targetNameServers);
  }
  buildCounterPolicyAlternativeNameServerConfig--;
}

core.int buildCounterPolicyAlternativeNameServerConfigTargetNameServer = 0;
buildPolicyAlternativeNameServerConfigTargetNameServer() {
  var o = new api.PolicyAlternativeNameServerConfigTargetNameServer();
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer++;
  if (buildCounterPolicyAlternativeNameServerConfigTargetNameServer < 3) {
    o.forwardingPath = "foo";
    o.ipv4Address = "foo";
    o.kind = "foo";
  }
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer--;
  return o;
}

checkPolicyAlternativeNameServerConfigTargetNameServer(
    api.PolicyAlternativeNameServerConfigTargetNameServer o) {
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer++;
  if (buildCounterPolicyAlternativeNameServerConfigTargetNameServer < 3) {
    unittest.expect(o.forwardingPath, unittest.equals('foo'));
    unittest.expect(o.ipv4Address, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer--;
}

core.int buildCounterPolicyNetwork = 0;
buildPolicyNetwork() {
  var o = new api.PolicyNetwork();
  buildCounterPolicyNetwork++;
  if (buildCounterPolicyNetwork < 3) {
    o.kind = "foo";
    o.networkUrl = "foo";
  }
  buildCounterPolicyNetwork--;
  return o;
}

checkPolicyNetwork(api.PolicyNetwork o) {
  buildCounterPolicyNetwork++;
  if (buildCounterPolicyNetwork < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterPolicyNetwork--;
}

core.int buildCounterProject = 0;
buildProject() {
  var o = new api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.number = "foo";
    o.quota = buildQuota();
  }
  buildCounterProject--;
  return o;
}

checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    checkQuota(o.quota);
  }
  buildCounterProject--;
}

buildUnnamed3366() {
  var o = new core.List<api.DnsKeySpec>();
  o.add(buildDnsKeySpec());
  o.add(buildDnsKeySpec());
  return o;
}

checkUnnamed3366(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterQuota = 0;
buildQuota() {
  var o = new api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.dnsKeysPerManagedZone = 42;
    o.gkeClustersPerPolicy = 42;
    o.kind = "foo";
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
    o.whitelistedKeySpecs = buildUnnamed3366();
  }
  buildCounterQuota--;
  return o;
}

checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    unittest.expect(o.dnsKeysPerManagedZone, unittest.equals(42));
    unittest.expect(o.gkeClustersPerPolicy, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.managedZones, unittest.equals(42));
    unittest.expect(o.managedZonesPerNetwork, unittest.equals(42));
    unittest.expect(o.networksPerManagedZone, unittest.equals(42));
    unittest.expect(o.networksPerPolicy, unittest.equals(42));
    unittest.expect(o.policies, unittest.equals(42));
    unittest.expect(o.resourceRecordsPerRrset, unittest.equals(42));
    unittest.expect(o.rrsetAdditionsPerChange, unittest.equals(42));
    unittest.expect(o.rrsetDeletionsPerChange, unittest.equals(42));
    unittest.expect(o.rrsetsPerManagedZone, unittest.equals(42));
    unittest.expect(o.targetNameServersPerManagedZone, unittest.equals(42));
    unittest.expect(o.targetNameServersPerPolicy, unittest.equals(42));
    unittest.expect(o.totalRrdataSizePerChange, unittest.equals(42));
    checkUnnamed3366(o.whitelistedKeySpecs);
  }
  buildCounterQuota--;
}

core.int buildCounterRRSetRoutingPolicy = 0;
buildRRSetRoutingPolicy() {
  var o = new api.RRSetRoutingPolicy();
  buildCounterRRSetRoutingPolicy++;
  if (buildCounterRRSetRoutingPolicy < 3) {
    o.geoPolicy = buildRRSetRoutingPolicyGeoPolicy();
    o.kind = "foo";
    o.wrrPolicy = buildRRSetRoutingPolicyWrrPolicy();
  }
  buildCounterRRSetRoutingPolicy--;
  return o;
}

checkRRSetRoutingPolicy(api.RRSetRoutingPolicy o) {
  buildCounterRRSetRoutingPolicy++;
  if (buildCounterRRSetRoutingPolicy < 3) {
    checkRRSetRoutingPolicyGeoPolicy(o.geoPolicy);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkRRSetRoutingPolicyWrrPolicy(o.wrrPolicy);
  }
  buildCounterRRSetRoutingPolicy--;
}

buildUnnamed3367() {
  var o = new core.List<api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem>();
  o.add(buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem());
  o.add(buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem());
  return o;
}

checkUnnamed3367(core.List<api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(o[0]);
  checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(o[1]);
}

buildUnnamed3368() {
  var o = new core.List<api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem>();
  o.add(buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem());
  o.add(buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem());
  return o;
}

checkUnnamed3368(core.List<api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(o[0]);
  checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(o[1]);
}

core.int buildCounterRRSetRoutingPolicyGeoPolicy = 0;
buildRRSetRoutingPolicyGeoPolicy() {
  var o = new api.RRSetRoutingPolicyGeoPolicy();
  buildCounterRRSetRoutingPolicyGeoPolicy++;
  if (buildCounterRRSetRoutingPolicyGeoPolicy < 3) {
    o.failovers = buildUnnamed3367();
    o.items = buildUnnamed3368();
    o.kind = "foo";
  }
  buildCounterRRSetRoutingPolicyGeoPolicy--;
  return o;
}

checkRRSetRoutingPolicyGeoPolicy(api.RRSetRoutingPolicyGeoPolicy o) {
  buildCounterRRSetRoutingPolicyGeoPolicy++;
  if (buildCounterRRSetRoutingPolicyGeoPolicy < 3) {
    checkUnnamed3367(o.failovers);
    checkUnnamed3368(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterRRSetRoutingPolicyGeoPolicy--;
}

buildUnnamed3369() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3369(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3370() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3370(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem = 0;
buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem() {
  var o = new api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem();
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem++;
  if (buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem < 3) {
    o.kind = "foo";
    o.location = "foo";
    o.rrdatas = buildUnnamed3369();
    o.signatureRrdatas = buildUnnamed3370();
  }
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem--;
  return o;
}

checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(
    api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem o) {
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem++;
  if (buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed3369(o.rrdatas);
    checkUnnamed3370(o.signatureRrdatas);
  }
  buildCounterRRSetRoutingPolicyGeoPolicyGeoPolicyItem--;
}

buildUnnamed3371() {
  var o = new core.List<api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem>();
  o.add(buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem());
  o.add(buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem());
  return o;
}

checkUnnamed3371(core.List<api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(o[0]);
  checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(o[1]);
}

core.int buildCounterRRSetRoutingPolicyWrrPolicy = 0;
buildRRSetRoutingPolicyWrrPolicy() {
  var o = new api.RRSetRoutingPolicyWrrPolicy();
  buildCounterRRSetRoutingPolicyWrrPolicy++;
  if (buildCounterRRSetRoutingPolicyWrrPolicy < 3) {
    o.items = buildUnnamed3371();
    o.kind = "foo";
  }
  buildCounterRRSetRoutingPolicyWrrPolicy--;
  return o;
}

checkRRSetRoutingPolicyWrrPolicy(api.RRSetRoutingPolicyWrrPolicy o) {
  buildCounterRRSetRoutingPolicyWrrPolicy++;
  if (buildCounterRRSetRoutingPolicyWrrPolicy < 3) {
    checkUnnamed3371(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterRRSetRoutingPolicyWrrPolicy--;
}

buildUnnamed3372() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3373() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3373(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem = 0;
buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem() {
  var o = new api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem();
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem++;
  if (buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem < 3) {
    o.kind = "foo";
    o.rrdatas = buildUnnamed3372();
    o.signatureRrdatas = buildUnnamed3373();
    o.weight = 42.0;
  }
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem--;
  return o;
}

checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(
    api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem o) {
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem++;
  if (buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3372(o.rrdatas);
    checkUnnamed3373(o.signatureRrdatas);
    unittest.expect(o.weight, unittest.equals(42.0));
  }
  buildCounterRRSetRoutingPolicyWrrPolicyWrrPolicyItem--;
}

buildUnnamed3374() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceRecordSet = 0;
buildResourceRecordSet() {
  var o = new api.ResourceRecordSet();
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    o.kind = "foo";
    o.name = "foo";
    o.routingPolicy = buildRRSetRoutingPolicy();
    o.rrdatas = buildUnnamed3374();
    o.signatureRrdatas = buildUnnamed3375();
    o.ttl = 42;
    o.type = "foo";
  }
  buildCounterResourceRecordSet--;
  return o;
}

checkResourceRecordSet(api.ResourceRecordSet o) {
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkRRSetRoutingPolicy(o.routingPolicy);
    checkUnnamed3374(o.rrdatas);
    checkUnnamed3375(o.signatureRrdatas);
    unittest.expect(o.ttl, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceRecordSet--;
}

buildUnnamed3376() {
  var o = new core.List<api.ResourceRecordSet>();
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

checkUnnamed3376(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterResourceRecordSetsListResponse = 0;
buildResourceRecordSetsListResponse() {
  var o = new api.ResourceRecordSetsListResponse();
  buildCounterResourceRecordSetsListResponse++;
  if (buildCounterResourceRecordSetsListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.rrsets = buildUnnamed3376();
  }
  buildCounterResourceRecordSetsListResponse--;
  return o;
}

checkResourceRecordSetsListResponse(api.ResourceRecordSetsListResponse o) {
  buildCounterResourceRecordSetsListResponse++;
  if (buildCounterResourceRecordSetsListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3376(o.rrsets);
  }
  buildCounterResourceRecordSetsListResponse--;
}

core.int buildCounterResponseHeader = 0;
buildResponseHeader() {
  var o = new api.ResponseHeader();
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    o.operationId = "foo";
  }
  buildCounterResponseHeader--;
  return o;
}

checkResponseHeader(api.ResponseHeader o) {
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterResponseHeader--;
}

main() {
  unittest.group("obj-schema-Change", () {
    unittest.test("to-json--from-json", () {
      var o = buildChange();
      var od = new api.Change.fromJson(o.toJson());
      checkChange(od);
    });
  });

  unittest.group("obj-schema-ChangesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangesListResponse();
      var od = new api.ChangesListResponse.fromJson(o.toJson());
      checkChangesListResponse(od);
    });
  });

  unittest.group("obj-schema-DnsKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsKey();
      var od = new api.DnsKey.fromJson(o.toJson());
      checkDnsKey(od);
    });
  });

  unittest.group("obj-schema-DnsKeyDigest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsKeyDigest();
      var od = new api.DnsKeyDigest.fromJson(o.toJson());
      checkDnsKeyDigest(od);
    });
  });

  unittest.group("obj-schema-DnsKeySpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsKeySpec();
      var od = new api.DnsKeySpec.fromJson(o.toJson());
      checkDnsKeySpec(od);
    });
  });

  unittest.group("obj-schema-DnsKeysListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsKeysListResponse();
      var od = new api.DnsKeysListResponse.fromJson(o.toJson());
      checkDnsKeysListResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedZone", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZone();
      var od = new api.ManagedZone.fromJson(o.toJson());
      checkManagedZone(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneDnsSecConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneDnsSecConfig();
      var od = new api.ManagedZoneDnsSecConfig.fromJson(o.toJson());
      checkManagedZoneDnsSecConfig(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneForwardingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneForwardingConfig();
      var od = new api.ManagedZoneForwardingConfig.fromJson(o.toJson());
      checkManagedZoneForwardingConfig(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneForwardingConfigNameServerTarget", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneForwardingConfigNameServerTarget();
      var od = new api.ManagedZoneForwardingConfigNameServerTarget.fromJson(
          o.toJson());
      checkManagedZoneForwardingConfigNameServerTarget(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneOperationsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneOperationsListResponse();
      var od = new api.ManagedZoneOperationsListResponse.fromJson(o.toJson());
      checkManagedZoneOperationsListResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedZonePeeringConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZonePeeringConfig();
      var od = new api.ManagedZonePeeringConfig.fromJson(o.toJson());
      checkManagedZonePeeringConfig(od);
    });
  });

  unittest.group("obj-schema-ManagedZonePeeringConfigTargetNetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZonePeeringConfigTargetNetwork();
      var od =
          new api.ManagedZonePeeringConfigTargetNetwork.fromJson(o.toJson());
      checkManagedZonePeeringConfigTargetNetwork(od);
    });
  });

  unittest.group("obj-schema-ManagedZonePrivateVisibilityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZonePrivateVisibilityConfig();
      var od = new api.ManagedZonePrivateVisibilityConfig.fromJson(o.toJson());
      checkManagedZonePrivateVisibilityConfig(od);
    });
  });

  unittest.group("obj-schema-ManagedZonePrivateVisibilityConfigNetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZonePrivateVisibilityConfigNetwork();
      var od = new api.ManagedZonePrivateVisibilityConfigNetwork.fromJson(
          o.toJson());
      checkManagedZonePrivateVisibilityConfigNetwork(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneReverseLookupConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneReverseLookupConfig();
      var od = new api.ManagedZoneReverseLookupConfig.fromJson(o.toJson());
      checkManagedZoneReverseLookupConfig(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneServiceDirectoryConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneServiceDirectoryConfig();
      var od = new api.ManagedZoneServiceDirectoryConfig.fromJson(o.toJson());
      checkManagedZoneServiceDirectoryConfig(od);
    });
  });

  unittest.group("obj-schema-ManagedZoneServiceDirectoryConfigNamespace", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZoneServiceDirectoryConfigNamespace();
      var od = new api.ManagedZoneServiceDirectoryConfigNamespace.fromJson(
          o.toJson());
      checkManagedZoneServiceDirectoryConfigNamespace(od);
    });
  });

  unittest.group("obj-schema-ManagedZonesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedZonesListResponse();
      var od = new api.ManagedZonesListResponse.fromJson(o.toJson());
      checkManagedZonesListResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationDnsKeyContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationDnsKeyContext();
      var od = new api.OperationDnsKeyContext.fromJson(o.toJson());
      checkOperationDnsKeyContext(od);
    });
  });

  unittest.group("obj-schema-OperationManagedZoneContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationManagedZoneContext();
      var od = new api.OperationManagedZoneContext.fromJson(o.toJson());
      checkOperationManagedZoneContext(od);
    });
  });

  unittest.group("obj-schema-PoliciesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoliciesListResponse();
      var od = new api.PoliciesListResponse.fromJson(o.toJson());
      checkPoliciesListResponse(od);
    });
  });

  unittest.group("obj-schema-PoliciesPatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoliciesPatchResponse();
      var od = new api.PoliciesPatchResponse.fromJson(o.toJson());
      checkPoliciesPatchResponse(od);
    });
  });

  unittest.group("obj-schema-PoliciesUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoliciesUpdateResponse();
      var od = new api.PoliciesUpdateResponse.fromJson(o.toJson());
      checkPoliciesUpdateResponse(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PolicyAlternativeNameServerConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyAlternativeNameServerConfig();
      var od = new api.PolicyAlternativeNameServerConfig.fromJson(o.toJson());
      checkPolicyAlternativeNameServerConfig(od);
    });
  });

  unittest.group("obj-schema-PolicyAlternativeNameServerConfigTargetNameServer",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyAlternativeNameServerConfigTargetNameServer();
      var od =
          new api.PolicyAlternativeNameServerConfigTargetNameServer.fromJson(
              o.toJson());
      checkPolicyAlternativeNameServerConfigTargetNameServer(od);
    });
  });

  unittest.group("obj-schema-PolicyNetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyNetwork();
      var od = new api.PolicyNetwork.fromJson(o.toJson());
      checkPolicyNetwork(od);
    });
  });

  unittest.group("obj-schema-Project", () {
    unittest.test("to-json--from-json", () {
      var o = buildProject();
      var od = new api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });

  unittest.group("obj-schema-Quota", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuota();
      var od = new api.Quota.fromJson(o.toJson());
      checkQuota(od);
    });
  });

  unittest.group("obj-schema-RRSetRoutingPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildRRSetRoutingPolicy();
      var od = new api.RRSetRoutingPolicy.fromJson(o.toJson());
      checkRRSetRoutingPolicy(od);
    });
  });

  unittest.group("obj-schema-RRSetRoutingPolicyGeoPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildRRSetRoutingPolicyGeoPolicy();
      var od = new api.RRSetRoutingPolicyGeoPolicy.fromJson(o.toJson());
      checkRRSetRoutingPolicyGeoPolicy(od);
    });
  });

  unittest.group("obj-schema-RRSetRoutingPolicyGeoPolicyGeoPolicyItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildRRSetRoutingPolicyGeoPolicyGeoPolicyItem();
      var od =
          new api.RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromJson(o.toJson());
      checkRRSetRoutingPolicyGeoPolicyGeoPolicyItem(od);
    });
  });

  unittest.group("obj-schema-RRSetRoutingPolicyWrrPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildRRSetRoutingPolicyWrrPolicy();
      var od = new api.RRSetRoutingPolicyWrrPolicy.fromJson(o.toJson());
      checkRRSetRoutingPolicyWrrPolicy(od);
    });
  });

  unittest.group("obj-schema-RRSetRoutingPolicyWrrPolicyWrrPolicyItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildRRSetRoutingPolicyWrrPolicyWrrPolicyItem();
      var od =
          new api.RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromJson(o.toJson());
      checkRRSetRoutingPolicyWrrPolicyWrrPolicyItem(od);
    });
  });

  unittest.group("obj-schema-ResourceRecordSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceRecordSet();
      var od = new api.ResourceRecordSet.fromJson(o.toJson());
      checkResourceRecordSet(od);
    });
  });

  unittest.group("obj-schema-ResourceRecordSetsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceRecordSetsListResponse();
      var od = new api.ResourceRecordSetsListResponse.fromJson(o.toJson());
      checkResourceRecordSetsListResponse(od);
    });
  });

  unittest.group("obj-schema-ResponseHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponseHeader();
      var od = new api.ResponseHeader.fromJson(o.toJson());
      checkResponseHeader(od);
    });
  });

  unittest.group("resource-ChangesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DnsApi(mock).changes;
      var arg_request = buildChange();
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Change.fromJson(json);
        checkChange(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/changes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/changes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChange());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChange(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DnsApi(mock).changes;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_changeId = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/changes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/changes/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_changeId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChange());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone, arg_changeId,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChange(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DnsApi(mock).changes;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_sortBy = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_sortOrder = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/changes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/changes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["sortBy"].first, unittest.equals(arg_sortBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChangesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              sortBy: arg_sortBy,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChangesListResponse(response);
      })));
    });
  });

  unittest.group("resource-DnsKeysResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DnsKeysResourceApi res = new api.DnsApi(mock).dnsKeys;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_dnsKeyId = "foo";
      var arg_clientOperationId = "foo";
      var arg_digestType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/dnsKeys/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/dnsKeys/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dnsKeyId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(
            queryMap["digestType"].first, unittest.equals(arg_digestType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDnsKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone, arg_dnsKeyId,
              clientOperationId: arg_clientOperationId,
              digestType: arg_digestType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDnsKey(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DnsKeysResourceApi res = new api.DnsApi(mock).dnsKeys;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_digestType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/dnsKeys", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/dnsKeys"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["digestType"].first, unittest.equals(arg_digestType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDnsKeysListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              digestType: arg_digestType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDnsKeysListResponse(response);
      })));
    });
  });

  unittest.group("resource-ManagedZoneOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ManagedZoneOperationsResourceApi res =
          new api.DnsApi(mock).managedZoneOperations;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_operation = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/operations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_operation"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone, arg_operation,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ManagedZoneOperationsResourceApi res =
          new api.DnsApi(mock).managedZoneOperations;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_sortBy = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/operations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/operations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["sortBy"].first, unittest.equals(arg_sortBy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildManagedZoneOperationsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              sortBy: arg_sortBy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZoneOperationsListResponse(response);
      })));
    });
  });

  unittest.group("resource-ManagedZonesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ManagedZonesResourceApi res = new api.DnsApi(mock).managedZones;
      var arg_request = buildManagedZone();
      var arg_project = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedZone.fromJson(json);
        checkManagedZone(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/managedZones"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildManagedZone());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_project,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZone(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ManagedZonesResourceApi res = new api.DnsApi(mock).managedZones;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ManagedZonesResourceApi res = new api.DnsApi(mock).managedZones;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildManagedZone());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZone(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ManagedZonesResourceApi res = new api.DnsApi(mock).managedZones;
      var arg_project = "foo";
      var arg_pageToken = "foo";
      var arg_dnsName = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/managedZones"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["dnsName"].first, unittest.equals(arg_dnsName));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildManagedZonesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              pageToken: arg_pageToken,
              dnsName: arg_dnsName,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZonesListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ManagedZonesResourceApi res = new api.DnsApi(mock).managedZones;
      var arg_request = buildManagedZone();
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedZone.fromJson(json);
        checkManagedZone(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ManagedZonesResourceApi res = new api.DnsApi(mock).managedZones;
      var arg_request = buildManagedZone();
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedZone.fromJson(json);
        checkManagedZone(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-PoliciesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.DnsApi(mock).policies;
      var arg_request = buildPolicy();
      var arg_project = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/policies", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/policies"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_project,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.DnsApi(mock).policies;
      var arg_project = "foo";
      var arg_policy = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/policies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_policy"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.DnsApi(mock).policies;
      var arg_project = "foo";
      var arg_policy = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/policies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_policy"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.DnsApi(mock).policies;
      var arg_project = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/policies", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/policies"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPoliciesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoliciesListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.DnsApi(mock).policies;
      var arg_request = buildPolicy();
      var arg_project = "foo";
      var arg_policy = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/policies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_policy"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPoliciesPatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoliciesPatchResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.DnsApi(mock).policies;
      var arg_request = buildPolicy();
      var arg_project = "foo";
      var arg_policy = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/policies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_policy"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPoliciesUpdateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoliciesUpdateResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DnsApi(mock).projects;
      var arg_project = "foo";
      var arg_clientOperationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_project"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });
  });

  unittest.group("resource-ResourceRecordSetsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ResourceRecordSetsResourceApi res =
          new api.DnsApi(mock).resourceRecordSets;
      var arg_project = "foo";
      var arg_managedZone = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_name = "foo";
      var arg_type = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf("/managedZones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf("/rrsets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_managedZone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/rrsets"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildResourceRecordSetsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              name: arg_name,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourceRecordSetsListResponse(response);
      })));
    });
  });
}
