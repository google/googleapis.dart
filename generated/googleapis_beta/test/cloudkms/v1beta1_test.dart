library googleapis_beta.cloudkms.v1beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/cloudkms/v1beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3320() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed3320(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

buildUnnamed3321() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3321(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3320();
    o.exemptedMembers = buildUnnamed3321();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3320(o.auditLogConfigs);
    checkUnnamed3321(o.exemptedMembers);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed3322() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3322(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3322();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3322(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed3323() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.members = buildUnnamed3323();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkUnnamed3323(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCloudAuditOptions = 0;
buildCloudAuditOptions() {
  var o = new api.CloudAuditOptions();
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
  }
  buildCounterCloudAuditOptions--;
  return o;
}

checkCloudAuditOptions(api.CloudAuditOptions o) {
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
  }
  buildCounterCloudAuditOptions--;
}

buildUnnamed3324() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3324(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
buildCondition() {
  var o = new api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = "foo";
    o.op = "foo";
    o.svc = "foo";
    o.sys = "foo";
    o.value = "foo";
    o.values = buildUnnamed3324();
  }
  buildCounterCondition--;
  return o;
}

checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(o.iam, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.svc, unittest.equals('foo'));
    unittest.expect(o.sys, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    checkUnnamed3324(o.values);
  }
  buildCounterCondition--;
}

core.int buildCounterCounterOptions = 0;
buildCounterOptions() {
  var o = new api.CounterOptions();
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    o.field = "foo";
    o.metric = "foo";
  }
  buildCounterCounterOptions--;
  return o;
}

checkCounterOptions(api.CounterOptions o) {
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterCounterOptions--;
}

core.int buildCounterCryptoKey = 0;
buildCryptoKey() {
  var o = new api.CryptoKey();
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.nextRotationTime = "foo";
    o.primary = buildCryptoKeyVersion();
    o.purpose = "foo";
    o.rotationPeriod = "foo";
  }
  buildCounterCryptoKey--;
  return o;
}

checkCryptoKey(api.CryptoKey o) {
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nextRotationTime, unittest.equals('foo'));
    checkCryptoKeyVersion(o.primary);
    unittest.expect(o.purpose, unittest.equals('foo'));
    unittest.expect(o.rotationPeriod, unittest.equals('foo'));
  }
  buildCounterCryptoKey--;
}

core.int buildCounterCryptoKeyVersion = 0;
buildCryptoKeyVersion() {
  var o = new api.CryptoKeyVersion();
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    o.createTime = "foo";
    o.destroyEventTime = "foo";
    o.destroyTime = "foo";
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterCryptoKeyVersion--;
  return o;
}

checkCryptoKeyVersion(api.CryptoKeyVersion o) {
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.destroyEventTime, unittest.equals('foo'));
    unittest.expect(o.destroyTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterCryptoKeyVersion--;
}

core.int buildCounterDataAccessOptions = 0;
buildDataAccessOptions() {
  var o = new api.DataAccessOptions();
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
  }
  buildCounterDataAccessOptions--;
  return o;
}

checkDataAccessOptions(api.DataAccessOptions o) {
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
  }
  buildCounterDataAccessOptions--;
}

core.int buildCounterDecryptRequest = 0;
buildDecryptRequest() {
  var o = new api.DecryptRequest();
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    o.additionalAuthenticatedData = "foo";
    o.ciphertext = "foo";
  }
  buildCounterDecryptRequest--;
  return o;
}

checkDecryptRequest(api.DecryptRequest o) {
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    unittest.expect(o.additionalAuthenticatedData, unittest.equals('foo'));
    unittest.expect(o.ciphertext, unittest.equals('foo'));
  }
  buildCounterDecryptRequest--;
}

core.int buildCounterDecryptResponse = 0;
buildDecryptResponse() {
  var o = new api.DecryptResponse();
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    o.plaintext = "foo";
  }
  buildCounterDecryptResponse--;
  return o;
}

checkDecryptResponse(api.DecryptResponse o) {
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    unittest.expect(o.plaintext, unittest.equals('foo'));
  }
  buildCounterDecryptResponse--;
}

core.int buildCounterDestroyCryptoKeyVersionRequest = 0;
buildDestroyCryptoKeyVersionRequest() {
  var o = new api.DestroyCryptoKeyVersionRequest();
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {
  }
  buildCounterDestroyCryptoKeyVersionRequest--;
  return o;
}

checkDestroyCryptoKeyVersionRequest(api.DestroyCryptoKeyVersionRequest o) {
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {
  }
  buildCounterDestroyCryptoKeyVersionRequest--;
}

core.int buildCounterEncryptRequest = 0;
buildEncryptRequest() {
  var o = new api.EncryptRequest();
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    o.additionalAuthenticatedData = "foo";
    o.plaintext = "foo";
  }
  buildCounterEncryptRequest--;
  return o;
}

checkEncryptRequest(api.EncryptRequest o) {
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    unittest.expect(o.additionalAuthenticatedData, unittest.equals('foo'));
    unittest.expect(o.plaintext, unittest.equals('foo'));
  }
  buildCounterEncryptRequest--;
}

core.int buildCounterEncryptResponse = 0;
buildEncryptResponse() {
  var o = new api.EncryptResponse();
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    o.ciphertext = "foo";
    o.name = "foo";
  }
  buildCounterEncryptResponse--;
  return o;
}

checkEncryptResponse(api.EncryptResponse o) {
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    unittest.expect(o.ciphertext, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterEncryptResponse--;
}

core.int buildCounterKeyRing = 0;
buildKeyRing() {
  var o = new api.KeyRing();
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    o.createTime = "foo";
    o.name = "foo";
  }
  buildCounterKeyRing--;
  return o;
}

checkKeyRing(api.KeyRing o) {
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterKeyRing--;
}

buildUnnamed3325() {
  var o = new core.List<api.CryptoKeyVersion>();
  o.add(buildCryptoKeyVersion());
  o.add(buildCryptoKeyVersion());
  return o;
}

checkUnnamed3325(core.List<api.CryptoKeyVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKeyVersion(o[0]);
  checkCryptoKeyVersion(o[1]);
}

core.int buildCounterListCryptoKeyVersionsResponse = 0;
buildListCryptoKeyVersionsResponse() {
  var o = new api.ListCryptoKeyVersionsResponse();
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    o.cryptoKeyVersions = buildUnnamed3325();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCryptoKeyVersionsResponse--;
  return o;
}

checkListCryptoKeyVersionsResponse(api.ListCryptoKeyVersionsResponse o) {
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    checkUnnamed3325(o.cryptoKeyVersions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCryptoKeyVersionsResponse--;
}

buildUnnamed3326() {
  var o = new core.List<api.CryptoKey>();
  o.add(buildCryptoKey());
  o.add(buildCryptoKey());
  return o;
}

checkUnnamed3326(core.List<api.CryptoKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKey(o[0]);
  checkCryptoKey(o[1]);
}

core.int buildCounterListCryptoKeysResponse = 0;
buildListCryptoKeysResponse() {
  var o = new api.ListCryptoKeysResponse();
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    o.cryptoKeys = buildUnnamed3326();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCryptoKeysResponse--;
  return o;
}

checkListCryptoKeysResponse(api.ListCryptoKeysResponse o) {
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    checkUnnamed3326(o.cryptoKeys);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCryptoKeysResponse--;
}

buildUnnamed3327() {
  var o = new core.List<api.KeyRing>();
  o.add(buildKeyRing());
  o.add(buildKeyRing());
  return o;
}

checkUnnamed3327(core.List<api.KeyRing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRing(o[0]);
  checkKeyRing(o[1]);
}

core.int buildCounterListKeyRingsResponse = 0;
buildListKeyRingsResponse() {
  var o = new api.ListKeyRingsResponse();
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    o.keyRings = buildUnnamed3327();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListKeyRingsResponse--;
  return o;
}

checkListKeyRingsResponse(api.ListKeyRingsResponse o) {
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    checkUnnamed3327(o.keyRings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListKeyRingsResponse--;
}

buildUnnamed3328() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed3328(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed3328();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed3328(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed3329() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3329(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3330() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3330(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.labels = buildUnnamed3329();
    o.locationId = "foo";
    o.metadata = buildUnnamed3330();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed3329(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed3330(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLogConfig = 0;
buildLogConfig() {
  var o = new api.LogConfig();
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    o.cloudAudit = buildCloudAuditOptions();
    o.counter = buildCounterOptions();
    o.dataAccess = buildDataAccessOptions();
  }
  buildCounterLogConfig--;
  return o;
}

checkLogConfig(api.LogConfig o) {
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    checkCloudAuditOptions(o.cloudAudit);
    checkCounterOptions(o.counter);
    checkDataAccessOptions(o.dataAccess);
  }
  buildCounterLogConfig--;
}

buildUnnamed3331() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed3331(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed3332() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3332(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

buildUnnamed3333() {
  var o = new core.List<api.Rule>();
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

checkUnnamed3333(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3331();
    o.bindings = buildUnnamed3332();
    o.etag = "foo";
    o.iamOwned = true;
    o.rules = buildUnnamed3333();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3331(o.auditConfigs);
    checkUnnamed3332(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.iamOwned, unittest.isTrue);
    checkUnnamed3333(o.rules);
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterRestoreCryptoKeyVersionRequest = 0;
buildRestoreCryptoKeyVersionRequest() {
  var o = new api.RestoreCryptoKeyVersionRequest();
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {
  }
  buildCounterRestoreCryptoKeyVersionRequest--;
  return o;
}

checkRestoreCryptoKeyVersionRequest(api.RestoreCryptoKeyVersionRequest o) {
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {
  }
  buildCounterRestoreCryptoKeyVersionRequest--;
}

buildUnnamed3334() {
  var o = new core.List<api.Condition>();
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

checkUnnamed3334(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

buildUnnamed3335() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3335(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3336() {
  var o = new core.List<api.LogConfig>();
  o.add(buildLogConfig());
  o.add(buildLogConfig());
  return o;
}

checkUnnamed3336(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0]);
  checkLogConfig(o[1]);
}

buildUnnamed3337() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3337(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3338() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3338(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
buildRule() {
  var o = new api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = "foo";
    o.conditions = buildUnnamed3334();
    o.description = "foo";
    o.in_ = buildUnnamed3335();
    o.logConfig = buildUnnamed3336();
    o.notIn = buildUnnamed3337();
    o.permissions = buildUnnamed3338();
  }
  buildCounterRule--;
  return o;
}

checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed3334(o.conditions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3335(o.in_);
    checkUnnamed3336(o.logConfig);
    checkUnnamed3337(o.notIn);
    checkUnnamed3338(o.permissions);
  }
  buildCounterRule--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed3339() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3339(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3339();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3339(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3340() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3340(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3340();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3340(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpdateCryptoKeyPrimaryVersionRequest = 0;
buildUpdateCryptoKeyPrimaryVersionRequest() {
  var o = new api.UpdateCryptoKeyPrimaryVersionRequest();
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    o.cryptoKeyVersionId = "foo";
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
  return o;
}

checkUpdateCryptoKeyPrimaryVersionRequest(api.UpdateCryptoKeyPrimaryVersionRequest o) {
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    unittest.expect(o.cryptoKeyVersionId, unittest.equals('foo'));
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
}


main() {
  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });


  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });


  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });


  unittest.group("obj-schema-CloudAuditOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudAuditOptions();
      var od = new api.CloudAuditOptions.fromJson(o.toJson());
      checkCloudAuditOptions(od);
    });
  });


  unittest.group("obj-schema-Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildCondition();
      var od = new api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });


  unittest.group("obj-schema-CounterOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterOptions();
      var od = new api.CounterOptions.fromJson(o.toJson());
      checkCounterOptions(od);
    });
  });


  unittest.group("obj-schema-CryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKey();
      var od = new api.CryptoKey.fromJson(o.toJson());
      checkCryptoKey(od);
    });
  });


  unittest.group("obj-schema-CryptoKeyVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKeyVersion();
      var od = new api.CryptoKeyVersion.fromJson(o.toJson());
      checkCryptoKeyVersion(od);
    });
  });


  unittest.group("obj-schema-DataAccessOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataAccessOptions();
      var od = new api.DataAccessOptions.fromJson(o.toJson());
      checkDataAccessOptions(od);
    });
  });


  unittest.group("obj-schema-DecryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDecryptRequest();
      var od = new api.DecryptRequest.fromJson(o.toJson());
      checkDecryptRequest(od);
    });
  });


  unittest.group("obj-schema-DecryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDecryptResponse();
      var od = new api.DecryptResponse.fromJson(o.toJson());
      checkDecryptResponse(od);
    });
  });


  unittest.group("obj-schema-DestroyCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestroyCryptoKeyVersionRequest();
      var od = new api.DestroyCryptoKeyVersionRequest.fromJson(o.toJson());
      checkDestroyCryptoKeyVersionRequest(od);
    });
  });


  unittest.group("obj-schema-EncryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptRequest();
      var od = new api.EncryptRequest.fromJson(o.toJson());
      checkEncryptRequest(od);
    });
  });


  unittest.group("obj-schema-EncryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptResponse();
      var od = new api.EncryptResponse.fromJson(o.toJson());
      checkEncryptResponse(od);
    });
  });


  unittest.group("obj-schema-KeyRing", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRing();
      var od = new api.KeyRing.fromJson(o.toJson());
      checkKeyRing(od);
    });
  });


  unittest.group("obj-schema-ListCryptoKeyVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCryptoKeyVersionsResponse();
      var od = new api.ListCryptoKeyVersionsResponse.fromJson(o.toJson());
      checkListCryptoKeyVersionsResponse(od);
    });
  });


  unittest.group("obj-schema-ListCryptoKeysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCryptoKeysResponse();
      var od = new api.ListCryptoKeysResponse.fromJson(o.toJson());
      checkListCryptoKeysResponse(od);
    });
  });


  unittest.group("obj-schema-ListKeyRingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListKeyRingsResponse();
      var od = new api.ListKeyRingsResponse.fromJson(o.toJson());
      checkListKeyRingsResponse(od);
    });
  });


  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });


  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });


  unittest.group("obj-schema-LogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfig();
      var od = new api.LogConfig.fromJson(o.toJson());
      checkLogConfig(od);
    });
  });


  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });


  unittest.group("obj-schema-RestoreCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreCryptoKeyVersionRequest();
      var od = new api.RestoreCryptoKeyVersionRequest.fromJson(o.toJson());
      checkRestoreCryptoKeyVersionRequest(od);
    });
  });


  unittest.group("obj-schema-Rule", () {
    unittest.test("to-json--from-json", () {
      var o = buildRule();
      var od = new api.Rule.fromJson(o.toJson());
      checkRule(od);
    });
  });


  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });


  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });


  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });


  unittest.group("obj-schema-UpdateCryptoKeyPrimaryVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateCryptoKeyPrimaryVersionRequest();
      var od = new api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(o.toJson());
      checkUpdateCryptoKeyPrimaryVersionRequest(od);
    });
  });


  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res = new api.CloudkmsApi(mock).projects.locations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.Location response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res = new api.CloudkmsApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, pageToken: arg_pageToken, pageSize: arg_pageSize, filter: arg_filter).then(unittest.expectAsync(((api.ListLocationsResponse response) {
        checkListLocationsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLocationsKeyRingsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildKeyRing();
      var arg_parent = "foo";
      var arg_keyRingId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.KeyRing.fromJson(json);
        checkKeyRing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["keyRingId"].first, unittest.equals(arg_keyRingId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildKeyRing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent, keyRingId: arg_keyRingId).then(unittest.expectAsync(((api.KeyRing response) {
        checkKeyRing(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildKeyRing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.KeyRing response) {
        checkKeyRing(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIamPolicy(arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListKeyRingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListKeyRingsResponse response) {
        checkListKeyRingsResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setIamPolicy(arg_request, arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.testIamPermissions(arg_request, arg_resource).then(unittest.expectAsync(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLocationsKeyRingsCryptoKeysResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildCryptoKey();
      var arg_parent = "foo";
      var arg_cryptoKeyId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CryptoKey.fromJson(json);
        checkCryptoKey(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["cryptoKeyId"].first, unittest.equals(arg_cryptoKeyId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent, cryptoKeyId: arg_cryptoKeyId).then(unittest.expectAsync(((api.CryptoKey response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--decrypt", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildDecryptRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DecryptRequest.fromJson(json);
        checkDecryptRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDecryptResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.decrypt(arg_request, arg_name).then(unittest.expectAsync(((api.DecryptResponse response) {
        checkDecryptResponse(response);
      })));
    });

    unittest.test("method--encrypt", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildEncryptRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.EncryptRequest.fromJson(json);
        checkEncryptRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEncryptResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.encrypt(arg_request, arg_name).then(unittest.expectAsync(((api.EncryptResponse response) {
        checkEncryptResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.CryptoKey response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIamPolicy(arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCryptoKeysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListCryptoKeysResponse response) {
        checkListCryptoKeysResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildCryptoKey();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CryptoKey.fromJson(json);
        checkCryptoKey(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_name, updateMask: arg_updateMask).then(unittest.expectAsync(((api.CryptoKey response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setIamPolicy(arg_request, arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.testIamPermissions(arg_request, arg_resource).then(unittest.expectAsync(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--updatePrimaryVersion", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildUpdateCryptoKeyPrimaryVersionRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(json);
        checkUpdateCryptoKeyPrimaryVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updatePrimaryVersion(arg_request, arg_name).then(unittest.expectAsync(((api.CryptoKey response) {
        checkCryptoKey(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys.cryptoKeyVersions;
      var arg_request = buildCryptoKeyVersion();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CryptoKeyVersion.fromJson(json);
        checkCryptoKeyVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync(((api.CryptoKeyVersion response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--destroy", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys.cryptoKeyVersions;
      var arg_request = buildDestroyCryptoKeyVersionRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DestroyCryptoKeyVersionRequest.fromJson(json);
        checkDestroyCryptoKeyVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.destroy(arg_request, arg_name).then(unittest.expectAsync(((api.CryptoKeyVersion response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys.cryptoKeyVersions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.CryptoKeyVersion response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys.cryptoKeyVersions;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCryptoKeyVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListCryptoKeyVersionsResponse response) {
        checkListCryptoKeyVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys.cryptoKeyVersions;
      var arg_request = buildCryptoKeyVersion();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CryptoKeyVersion.fromJson(json);
        checkCryptoKeyVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_name, updateMask: arg_updateMask).then(unittest.expectAsync(((api.CryptoKeyVersion response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--restore", () {

      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res = new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys.cryptoKeyVersions;
      var arg_request = buildRestoreCryptoKeyVersionRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RestoreCryptoKeyVersionRequest.fromJson(json);
        checkRestoreCryptoKeyVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.restore(arg_request, arg_name).then(unittest.expectAsync(((api.CryptoKeyVersion response) {
        checkCryptoKeyVersion(response);
      })));
    });

  });


}

