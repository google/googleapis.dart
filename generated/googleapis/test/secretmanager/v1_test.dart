library googleapis.secretmanager.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/secretmanager/v1.dart' as api;

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

core.int buildCounterAccessSecretVersionResponse = 0;
buildAccessSecretVersionResponse() {
  var o = new api.AccessSecretVersionResponse();
  buildCounterAccessSecretVersionResponse++;
  if (buildCounterAccessSecretVersionResponse < 3) {
    o.name = "foo";
    o.payload = buildSecretPayload();
  }
  buildCounterAccessSecretVersionResponse--;
  return o;
}

checkAccessSecretVersionResponse(api.AccessSecretVersionResponse o) {
  buildCounterAccessSecretVersionResponse++;
  if (buildCounterAccessSecretVersionResponse < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkSecretPayload(o.payload);
  }
  buildCounterAccessSecretVersionResponse--;
}

core.int buildCounterAddSecretVersionRequest = 0;
buildAddSecretVersionRequest() {
  var o = new api.AddSecretVersionRequest();
  buildCounterAddSecretVersionRequest++;
  if (buildCounterAddSecretVersionRequest < 3) {
    o.payload = buildSecretPayload();
  }
  buildCounterAddSecretVersionRequest--;
  return o;
}

checkAddSecretVersionRequest(api.AddSecretVersionRequest o) {
  buildCounterAddSecretVersionRequest++;
  if (buildCounterAddSecretVersionRequest < 3) {
    checkSecretPayload(o.payload);
  }
  buildCounterAddSecretVersionRequest--;
}

buildUnnamed3831() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed3831(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3831();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3831(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed3832() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3832(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3832();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3832(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAutomatic = 0;
buildAutomatic() {
  var o = new api.Automatic();
  buildCounterAutomatic++;
  if (buildCounterAutomatic < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryption();
  }
  buildCounterAutomatic--;
  return o;
}

checkAutomatic(api.Automatic o) {
  buildCounterAutomatic++;
  if (buildCounterAutomatic < 3) {
    checkCustomerManagedEncryption(o.customerManagedEncryption);
  }
  buildCounterAutomatic--;
}

core.int buildCounterAutomaticStatus = 0;
buildAutomaticStatus() {
  var o = new api.AutomaticStatus();
  buildCounterAutomaticStatus++;
  if (buildCounterAutomaticStatus < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryptionStatus();
  }
  buildCounterAutomaticStatus--;
  return o;
}

checkAutomaticStatus(api.AutomaticStatus o) {
  buildCounterAutomaticStatus++;
  if (buildCounterAutomaticStatus < 3) {
    checkCustomerManagedEncryptionStatus(o.customerManagedEncryption);
  }
  buildCounterAutomaticStatus--;
}

buildUnnamed3833() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3833(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = "foo";
    o.condition = buildExpr();
    o.members = buildUnnamed3833();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed3833(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCustomerManagedEncryption = 0;
buildCustomerManagedEncryption() {
  var o = new api.CustomerManagedEncryption();
  buildCounterCustomerManagedEncryption++;
  if (buildCounterCustomerManagedEncryption < 3) {
    o.kmsKeyName = "foo";
  }
  buildCounterCustomerManagedEncryption--;
  return o;
}

checkCustomerManagedEncryption(api.CustomerManagedEncryption o) {
  buildCounterCustomerManagedEncryption++;
  if (buildCounterCustomerManagedEncryption < 3) {
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
  }
  buildCounterCustomerManagedEncryption--;
}

core.int buildCounterCustomerManagedEncryptionStatus = 0;
buildCustomerManagedEncryptionStatus() {
  var o = new api.CustomerManagedEncryptionStatus();
  buildCounterCustomerManagedEncryptionStatus++;
  if (buildCounterCustomerManagedEncryptionStatus < 3) {
    o.kmsKeyVersionName = "foo";
  }
  buildCounterCustomerManagedEncryptionStatus--;
  return o;
}

checkCustomerManagedEncryptionStatus(api.CustomerManagedEncryptionStatus o) {
  buildCounterCustomerManagedEncryptionStatus++;
  if (buildCounterCustomerManagedEncryptionStatus < 3) {
    unittest.expect(o.kmsKeyVersionName, unittest.equals('foo'));
  }
  buildCounterCustomerManagedEncryptionStatus--;
}

core.int buildCounterDestroySecretVersionRequest = 0;
buildDestroySecretVersionRequest() {
  var o = new api.DestroySecretVersionRequest();
  buildCounterDestroySecretVersionRequest++;
  if (buildCounterDestroySecretVersionRequest < 3) {}
  buildCounterDestroySecretVersionRequest--;
  return o;
}

checkDestroySecretVersionRequest(api.DestroySecretVersionRequest o) {
  buildCounterDestroySecretVersionRequest++;
  if (buildCounterDestroySecretVersionRequest < 3) {}
  buildCounterDestroySecretVersionRequest--;
}

core.int buildCounterDisableSecretVersionRequest = 0;
buildDisableSecretVersionRequest() {
  var o = new api.DisableSecretVersionRequest();
  buildCounterDisableSecretVersionRequest++;
  if (buildCounterDisableSecretVersionRequest < 3) {}
  buildCounterDisableSecretVersionRequest--;
  return o;
}

checkDisableSecretVersionRequest(api.DisableSecretVersionRequest o) {
  buildCounterDisableSecretVersionRequest++;
  if (buildCounterDisableSecretVersionRequest < 3) {}
  buildCounterDisableSecretVersionRequest--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnableSecretVersionRequest = 0;
buildEnableSecretVersionRequest() {
  var o = new api.EnableSecretVersionRequest();
  buildCounterEnableSecretVersionRequest++;
  if (buildCounterEnableSecretVersionRequest < 3) {}
  buildCounterEnableSecretVersionRequest--;
  return o;
}

checkEnableSecretVersionRequest(api.EnableSecretVersionRequest o) {
  buildCounterEnableSecretVersionRequest++;
  if (buildCounterEnableSecretVersionRequest < 3) {}
  buildCounterEnableSecretVersionRequest--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed3834() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed3834(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed3834();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed3834(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed3835() {
  var o = new core.List<api.SecretVersion>();
  o.add(buildSecretVersion());
  o.add(buildSecretVersion());
  return o;
}

checkUnnamed3835(core.List<api.SecretVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretVersion(o[0]);
  checkSecretVersion(o[1]);
}

core.int buildCounterListSecretVersionsResponse = 0;
buildListSecretVersionsResponse() {
  var o = new api.ListSecretVersionsResponse();
  buildCounterListSecretVersionsResponse++;
  if (buildCounterListSecretVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.totalSize = 42;
    o.versions = buildUnnamed3835();
  }
  buildCounterListSecretVersionsResponse--;
  return o;
}

checkListSecretVersionsResponse(api.ListSecretVersionsResponse o) {
  buildCounterListSecretVersionsResponse++;
  if (buildCounterListSecretVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
    checkUnnamed3835(o.versions);
  }
  buildCounterListSecretVersionsResponse--;
}

buildUnnamed3836() {
  var o = new core.List<api.Secret>();
  o.add(buildSecret());
  o.add(buildSecret());
  return o;
}

checkUnnamed3836(core.List<api.Secret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecret(o[0]);
  checkSecret(o[1]);
}

core.int buildCounterListSecretsResponse = 0;
buildListSecretsResponse() {
  var o = new api.ListSecretsResponse();
  buildCounterListSecretsResponse++;
  if (buildCounterListSecretsResponse < 3) {
    o.nextPageToken = "foo";
    o.secrets = buildUnnamed3836();
    o.totalSize = 42;
  }
  buildCounterListSecretsResponse--;
  return o;
}

checkListSecretsResponse(api.ListSecretsResponse o) {
  buildCounterListSecretsResponse++;
  if (buildCounterListSecretsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3836(o.secrets);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListSecretsResponse--;
}

buildUnnamed3837() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3837(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3838() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3838(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed3837();
    o.locationId = "foo";
    o.metadata = buildUnnamed3838();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3837(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed3838(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed3839() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed3839(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed3840() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3840(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3839();
    o.bindings = buildUnnamed3840();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3839(o.auditConfigs);
    checkUnnamed3840(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterReplica = 0;
buildReplica() {
  var o = new api.Replica();
  buildCounterReplica++;
  if (buildCounterReplica < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryption();
    o.location = "foo";
  }
  buildCounterReplica--;
  return o;
}

checkReplica(api.Replica o) {
  buildCounterReplica++;
  if (buildCounterReplica < 3) {
    checkCustomerManagedEncryption(o.customerManagedEncryption);
    unittest.expect(o.location, unittest.equals('foo'));
  }
  buildCounterReplica--;
}

core.int buildCounterReplicaStatus = 0;
buildReplicaStatus() {
  var o = new api.ReplicaStatus();
  buildCounterReplicaStatus++;
  if (buildCounterReplicaStatus < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryptionStatus();
    o.location = "foo";
  }
  buildCounterReplicaStatus--;
  return o;
}

checkReplicaStatus(api.ReplicaStatus o) {
  buildCounterReplicaStatus++;
  if (buildCounterReplicaStatus < 3) {
    checkCustomerManagedEncryptionStatus(o.customerManagedEncryption);
    unittest.expect(o.location, unittest.equals('foo'));
  }
  buildCounterReplicaStatus--;
}

core.int buildCounterReplication = 0;
buildReplication() {
  var o = new api.Replication();
  buildCounterReplication++;
  if (buildCounterReplication < 3) {
    o.automatic = buildAutomatic();
    o.userManaged = buildUserManaged();
  }
  buildCounterReplication--;
  return o;
}

checkReplication(api.Replication o) {
  buildCounterReplication++;
  if (buildCounterReplication < 3) {
    checkAutomatic(o.automatic);
    checkUserManaged(o.userManaged);
  }
  buildCounterReplication--;
}

core.int buildCounterReplicationStatus = 0;
buildReplicationStatus() {
  var o = new api.ReplicationStatus();
  buildCounterReplicationStatus++;
  if (buildCounterReplicationStatus < 3) {
    o.automatic = buildAutomaticStatus();
    o.userManaged = buildUserManagedStatus();
  }
  buildCounterReplicationStatus--;
  return o;
}

checkReplicationStatus(api.ReplicationStatus o) {
  buildCounterReplicationStatus++;
  if (buildCounterReplicationStatus < 3) {
    checkAutomaticStatus(o.automatic);
    checkUserManagedStatus(o.userManaged);
  }
  buildCounterReplicationStatus--;
}

buildUnnamed3841() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3841(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSecret = 0;
buildSecret() {
  var o = new api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.createTime = "foo";
    o.labels = buildUnnamed3841();
    o.name = "foo";
    o.replication = buildReplication();
  }
  buildCounterSecret--;
  return o;
}

checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed3841(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkReplication(o.replication);
  }
  buildCounterSecret--;
}

core.int buildCounterSecretPayload = 0;
buildSecretPayload() {
  var o = new api.SecretPayload();
  buildCounterSecretPayload++;
  if (buildCounterSecretPayload < 3) {
    o.data = "foo";
  }
  buildCounterSecretPayload--;
  return o;
}

checkSecretPayload(api.SecretPayload o) {
  buildCounterSecretPayload++;
  if (buildCounterSecretPayload < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
  }
  buildCounterSecretPayload--;
}

core.int buildCounterSecretVersion = 0;
buildSecretVersion() {
  var o = new api.SecretVersion();
  buildCounterSecretVersion++;
  if (buildCounterSecretVersion < 3) {
    o.createTime = "foo";
    o.destroyTime = "foo";
    o.name = "foo";
    o.replicationStatus = buildReplicationStatus();
    o.state = "foo";
  }
  buildCounterSecretVersion--;
  return o;
}

checkSecretVersion(api.SecretVersion o) {
  buildCounterSecretVersion++;
  if (buildCounterSecretVersion < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.destroyTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkReplicationStatus(o.replicationStatus);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterSecretVersion--;
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

buildUnnamed3842() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3842(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3842();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3842(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3843() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3843(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3843();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3843(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed3844() {
  var o = new core.List<api.Replica>();
  o.add(buildReplica());
  o.add(buildReplica());
  return o;
}

checkUnnamed3844(core.List<api.Replica> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplica(o[0]);
  checkReplica(o[1]);
}

core.int buildCounterUserManaged = 0;
buildUserManaged() {
  var o = new api.UserManaged();
  buildCounterUserManaged++;
  if (buildCounterUserManaged < 3) {
    o.replicas = buildUnnamed3844();
  }
  buildCounterUserManaged--;
  return o;
}

checkUserManaged(api.UserManaged o) {
  buildCounterUserManaged++;
  if (buildCounterUserManaged < 3) {
    checkUnnamed3844(o.replicas);
  }
  buildCounterUserManaged--;
}

buildUnnamed3845() {
  var o = new core.List<api.ReplicaStatus>();
  o.add(buildReplicaStatus());
  o.add(buildReplicaStatus());
  return o;
}

checkUnnamed3845(core.List<api.ReplicaStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaStatus(o[0]);
  checkReplicaStatus(o[1]);
}

core.int buildCounterUserManagedStatus = 0;
buildUserManagedStatus() {
  var o = new api.UserManagedStatus();
  buildCounterUserManagedStatus++;
  if (buildCounterUserManagedStatus < 3) {
    o.replicas = buildUnnamed3845();
  }
  buildCounterUserManagedStatus--;
  return o;
}

checkUserManagedStatus(api.UserManagedStatus o) {
  buildCounterUserManagedStatus++;
  if (buildCounterUserManagedStatus < 3) {
    checkUnnamed3845(o.replicas);
  }
  buildCounterUserManagedStatus--;
}

main() {
  unittest.group("obj-schema-AccessSecretVersionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessSecretVersionResponse();
      var od = new api.AccessSecretVersionResponse.fromJson(o.toJson());
      checkAccessSecretVersionResponse(od);
    });
  });

  unittest.group("obj-schema-AddSecretVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddSecretVersionRequest();
      var od = new api.AddSecretVersionRequest.fromJson(o.toJson());
      checkAddSecretVersionRequest(od);
    });
  });

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

  unittest.group("obj-schema-Automatic", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutomatic();
      var od = new api.Automatic.fromJson(o.toJson());
      checkAutomatic(od);
    });
  });

  unittest.group("obj-schema-AutomaticStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutomaticStatus();
      var od = new api.AutomaticStatus.fromJson(o.toJson());
      checkAutomaticStatus(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-CustomerManagedEncryption", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerManagedEncryption();
      var od = new api.CustomerManagedEncryption.fromJson(o.toJson());
      checkCustomerManagedEncryption(od);
    });
  });

  unittest.group("obj-schema-CustomerManagedEncryptionStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerManagedEncryptionStatus();
      var od = new api.CustomerManagedEncryptionStatus.fromJson(o.toJson());
      checkCustomerManagedEncryptionStatus(od);
    });
  });

  unittest.group("obj-schema-DestroySecretVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestroySecretVersionRequest();
      var od = new api.DestroySecretVersionRequest.fromJson(o.toJson());
      checkDestroySecretVersionRequest(od);
    });
  });

  unittest.group("obj-schema-DisableSecretVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisableSecretVersionRequest();
      var od = new api.DisableSecretVersionRequest.fromJson(o.toJson());
      checkDisableSecretVersionRequest(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EnableSecretVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnableSecretVersionRequest();
      var od = new api.EnableSecretVersionRequest.fromJson(o.toJson());
      checkEnableSecretVersionRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSecretVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSecretVersionsResponse();
      var od = new api.ListSecretVersionsResponse.fromJson(o.toJson());
      checkListSecretVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSecretsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSecretsResponse();
      var od = new api.ListSecretsResponse.fromJson(o.toJson());
      checkListSecretsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-Replica", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplica();
      var od = new api.Replica.fromJson(o.toJson());
      checkReplica(od);
    });
  });

  unittest.group("obj-schema-ReplicaStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaStatus();
      var od = new api.ReplicaStatus.fromJson(o.toJson());
      checkReplicaStatus(od);
    });
  });

  unittest.group("obj-schema-Replication", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplication();
      var od = new api.Replication.fromJson(o.toJson());
      checkReplication(od);
    });
  });

  unittest.group("obj-schema-ReplicationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicationStatus();
      var od = new api.ReplicationStatus.fromJson(o.toJson());
      checkReplicationStatus(od);
    });
  });

  unittest.group("obj-schema-Secret", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecret();
      var od = new api.Secret.fromJson(o.toJson());
      checkSecret(od);
    });
  });

  unittest.group("obj-schema-SecretPayload", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecretPayload();
      var od = new api.SecretPayload.fromJson(o.toJson());
      checkSecretPayload(od);
    });
  });

  unittest.group("obj-schema-SecretVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecretVersion();
      var od = new api.SecretVersion.fromJson(o.toJson());
      checkSecretVersion(od);
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

  unittest.group("obj-schema-UserManaged", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserManaged();
      var od = new api.UserManaged.fromJson(o.toJson());
      checkUserManaged(od);
    });
  });

  unittest.group("obj-schema-UserManagedStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserManagedStatus();
      var od = new api.UserManagedStatus.fromJson(o.toJson());
      checkUserManagedStatus(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.SecretmanagerApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.SecretmanagerApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsSecretsResourceApi", () {
    unittest.test("method--addVersion", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_request = buildAddSecretVersionRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddSecretVersionRequest.fromJson(json);
        checkAddSecretVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecretVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addVersion(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecretVersion(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_request = buildSecret();
      var arg_parent = "foo";
      var arg_secretId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Secret.fromJson(json);
        checkSecret(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["secretId"].first, unittest.equals(arg_secretId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecret());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              secretId: arg_secretId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecret(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecret());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecret(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_parent = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSecretsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSecretsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_request = buildSecret();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Secret.fromJson(json);
        checkSecret(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecret());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecret(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsSecretsVersionsResourceApi", () {
    unittest.test("method--access", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsVersionsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets.versions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccessSecretVersionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .access(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessSecretVersionResponse(response);
      })));
    });

    unittest.test("method--destroy", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsVersionsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets.versions;
      var arg_request = buildDestroySecretVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DestroySecretVersionRequest.fromJson(json);
        checkDestroySecretVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecretVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .destroy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecretVersion(response);
      })));
    });

    unittest.test("method--disable", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsVersionsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets.versions;
      var arg_request = buildDisableSecretVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DisableSecretVersionRequest.fromJson(json);
        checkDisableSecretVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecretVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .disable(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecretVersion(response);
      })));
    });

    unittest.test("method--enable", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsVersionsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets.versions;
      var arg_request = buildEnableSecretVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnableSecretVersionRequest.fromJson(json);
        checkEnableSecretVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecretVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enable(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecretVersion(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsVersionsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets.versions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecretVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecretVersion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsSecretsVersionsResourceApi res =
          new api.SecretmanagerApi(mock).projects.secrets.versions;
      var arg_parent = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSecretVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSecretVersionsResponse(response);
      })));
    });
  });
}
