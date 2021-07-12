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

import 'package:googleapis/secretmanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessSecretVersionResponse = 0;
api.AccessSecretVersionResponse buildAccessSecretVersionResponse() {
  final o = api.AccessSecretVersionResponse();
  buildCounterAccessSecretVersionResponse++;
  if (buildCounterAccessSecretVersionResponse < 3) {
    o.name = 'foo';
    o.payload = buildSecretPayload();
  }
  buildCounterAccessSecretVersionResponse--;
  return o;
}

void checkAccessSecretVersionResponse(api.AccessSecretVersionResponse o) {
  buildCounterAccessSecretVersionResponse++;
  if (buildCounterAccessSecretVersionResponse < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSecretPayload(o.payload!);
  }
  buildCounterAccessSecretVersionResponse--;
}

core.int buildCounterAddSecretVersionRequest = 0;
api.AddSecretVersionRequest buildAddSecretVersionRequest() {
  final o = api.AddSecretVersionRequest();
  buildCounterAddSecretVersionRequest++;
  if (buildCounterAddSecretVersionRequest < 3) {
    o.payload = buildSecretPayload();
  }
  buildCounterAddSecretVersionRequest--;
  return o;
}

void checkAddSecretVersionRequest(api.AddSecretVersionRequest o) {
  buildCounterAddSecretVersionRequest++;
  if (buildCounterAddSecretVersionRequest < 3) {
    checkSecretPayload(o.payload!);
  }
  buildCounterAddSecretVersionRequest--;
}

core.List<api.AuditLogConfig> buildUnnamed6632() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed6632(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed6632();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed6632(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed6633() => [
      'foo',
      'foo',
    ];

void checkUnnamed6633(core.List<core.String> o) {
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed6633();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed6633(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAutomatic = 0;
api.Automatic buildAutomatic() {
  final o = api.Automatic();
  buildCounterAutomatic++;
  if (buildCounterAutomatic < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryption();
  }
  buildCounterAutomatic--;
  return o;
}

void checkAutomatic(api.Automatic o) {
  buildCounterAutomatic++;
  if (buildCounterAutomatic < 3) {
    checkCustomerManagedEncryption(o.customerManagedEncryption!);
  }
  buildCounterAutomatic--;
}

core.int buildCounterAutomaticStatus = 0;
api.AutomaticStatus buildAutomaticStatus() {
  final o = api.AutomaticStatus();
  buildCounterAutomaticStatus++;
  if (buildCounterAutomaticStatus < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryptionStatus();
  }
  buildCounterAutomaticStatus--;
  return o;
}

void checkAutomaticStatus(api.AutomaticStatus o) {
  buildCounterAutomaticStatus++;
  if (buildCounterAutomaticStatus < 3) {
    checkCustomerManagedEncryptionStatus(o.customerManagedEncryption!);
  }
  buildCounterAutomaticStatus--;
}

core.List<core.String> buildUnnamed6634() => [
      'foo',
      'foo',
    ];

void checkUnnamed6634(core.List<core.String> o) {
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
    o.members = buildUnnamed6634();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed6634(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCustomerManagedEncryption = 0;
api.CustomerManagedEncryption buildCustomerManagedEncryption() {
  final o = api.CustomerManagedEncryption();
  buildCounterCustomerManagedEncryption++;
  if (buildCounterCustomerManagedEncryption < 3) {
    o.kmsKeyName = 'foo';
  }
  buildCounterCustomerManagedEncryption--;
  return o;
}

void checkCustomerManagedEncryption(api.CustomerManagedEncryption o) {
  buildCounterCustomerManagedEncryption++;
  if (buildCounterCustomerManagedEncryption < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerManagedEncryption--;
}

core.int buildCounterCustomerManagedEncryptionStatus = 0;
api.CustomerManagedEncryptionStatus buildCustomerManagedEncryptionStatus() {
  final o = api.CustomerManagedEncryptionStatus();
  buildCounterCustomerManagedEncryptionStatus++;
  if (buildCounterCustomerManagedEncryptionStatus < 3) {
    o.kmsKeyVersionName = 'foo';
  }
  buildCounterCustomerManagedEncryptionStatus--;
  return o;
}

void checkCustomerManagedEncryptionStatus(
    api.CustomerManagedEncryptionStatus o) {
  buildCounterCustomerManagedEncryptionStatus++;
  if (buildCounterCustomerManagedEncryptionStatus < 3) {
    unittest.expect(
      o.kmsKeyVersionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerManagedEncryptionStatus--;
}

core.int buildCounterDestroySecretVersionRequest = 0;
api.DestroySecretVersionRequest buildDestroySecretVersionRequest() {
  final o = api.DestroySecretVersionRequest();
  buildCounterDestroySecretVersionRequest++;
  if (buildCounterDestroySecretVersionRequest < 3) {
    o.etag = 'foo';
  }
  buildCounterDestroySecretVersionRequest--;
  return o;
}

void checkDestroySecretVersionRequest(api.DestroySecretVersionRequest o) {
  buildCounterDestroySecretVersionRequest++;
  if (buildCounterDestroySecretVersionRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestroySecretVersionRequest--;
}

core.int buildCounterDisableSecretVersionRequest = 0;
api.DisableSecretVersionRequest buildDisableSecretVersionRequest() {
  final o = api.DisableSecretVersionRequest();
  buildCounterDisableSecretVersionRequest++;
  if (buildCounterDisableSecretVersionRequest < 3) {
    o.etag = 'foo';
  }
  buildCounterDisableSecretVersionRequest--;
  return o;
}

void checkDisableSecretVersionRequest(api.DisableSecretVersionRequest o) {
  buildCounterDisableSecretVersionRequest++;
  if (buildCounterDisableSecretVersionRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisableSecretVersionRequest--;
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

core.int buildCounterEnableSecretVersionRequest = 0;
api.EnableSecretVersionRequest buildEnableSecretVersionRequest() {
  final o = api.EnableSecretVersionRequest();
  buildCounterEnableSecretVersionRequest++;
  if (buildCounterEnableSecretVersionRequest < 3) {
    o.etag = 'foo';
  }
  buildCounterEnableSecretVersionRequest--;
  return o;
}

void checkEnableSecretVersionRequest(api.EnableSecretVersionRequest o) {
  buildCounterEnableSecretVersionRequest++;
  if (buildCounterEnableSecretVersionRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnableSecretVersionRequest--;
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

core.List<api.Location> buildUnnamed6635() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed6635(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6635();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6635(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.SecretVersion> buildUnnamed6636() => [
      buildSecretVersion(),
      buildSecretVersion(),
    ];

void checkUnnamed6636(core.List<api.SecretVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretVersion(o[0]);
  checkSecretVersion(o[1]);
}

core.int buildCounterListSecretVersionsResponse = 0;
api.ListSecretVersionsResponse buildListSecretVersionsResponse() {
  final o = api.ListSecretVersionsResponse();
  buildCounterListSecretVersionsResponse++;
  if (buildCounterListSecretVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.versions = buildUnnamed6636();
  }
  buildCounterListSecretVersionsResponse--;
  return o;
}

void checkListSecretVersionsResponse(api.ListSecretVersionsResponse o) {
  buildCounterListSecretVersionsResponse++;
  if (buildCounterListSecretVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
    checkUnnamed6636(o.versions!);
  }
  buildCounterListSecretVersionsResponse--;
}

core.List<api.Secret> buildUnnamed6637() => [
      buildSecret(),
      buildSecret(),
    ];

void checkUnnamed6637(core.List<api.Secret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecret(o[0]);
  checkSecret(o[1]);
}

core.int buildCounterListSecretsResponse = 0;
api.ListSecretsResponse buildListSecretsResponse() {
  final o = api.ListSecretsResponse();
  buildCounterListSecretsResponse++;
  if (buildCounterListSecretsResponse < 3) {
    o.nextPageToken = 'foo';
    o.secrets = buildUnnamed6637();
    o.totalSize = 42;
  }
  buildCounterListSecretsResponse--;
  return o;
}

void checkListSecretsResponse(api.ListSecretsResponse o) {
  buildCounterListSecretsResponse++;
  if (buildCounterListSecretsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6637(o.secrets!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListSecretsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6638() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6638(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed6639() => {
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

void checkUnnamed6639(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed6638();
    o.locationId = 'foo';
    o.metadata = buildUnnamed6639();
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
    checkUnnamed6638(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed6639(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<api.AuditConfig> buildUnnamed6640() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed6640(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed6641() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed6641(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed6640();
    o.bindings = buildUnnamed6641();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6640(o.auditConfigs!);
    checkUnnamed6641(o.bindings!);
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

core.int buildCounterReplica = 0;
api.Replica buildReplica() {
  final o = api.Replica();
  buildCounterReplica++;
  if (buildCounterReplica < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryption();
    o.location = 'foo';
  }
  buildCounterReplica--;
  return o;
}

void checkReplica(api.Replica o) {
  buildCounterReplica++;
  if (buildCounterReplica < 3) {
    checkCustomerManagedEncryption(o.customerManagedEncryption!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplica--;
}

core.int buildCounterReplicaStatus = 0;
api.ReplicaStatus buildReplicaStatus() {
  final o = api.ReplicaStatus();
  buildCounterReplicaStatus++;
  if (buildCounterReplicaStatus < 3) {
    o.customerManagedEncryption = buildCustomerManagedEncryptionStatus();
    o.location = 'foo';
  }
  buildCounterReplicaStatus--;
  return o;
}

void checkReplicaStatus(api.ReplicaStatus o) {
  buildCounterReplicaStatus++;
  if (buildCounterReplicaStatus < 3) {
    checkCustomerManagedEncryptionStatus(o.customerManagedEncryption!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicaStatus--;
}

core.int buildCounterReplication = 0;
api.Replication buildReplication() {
  final o = api.Replication();
  buildCounterReplication++;
  if (buildCounterReplication < 3) {
    o.automatic = buildAutomatic();
    o.userManaged = buildUserManaged();
  }
  buildCounterReplication--;
  return o;
}

void checkReplication(api.Replication o) {
  buildCounterReplication++;
  if (buildCounterReplication < 3) {
    checkAutomatic(o.automatic!);
    checkUserManaged(o.userManaged!);
  }
  buildCounterReplication--;
}

core.int buildCounterReplicationStatus = 0;
api.ReplicationStatus buildReplicationStatus() {
  final o = api.ReplicationStatus();
  buildCounterReplicationStatus++;
  if (buildCounterReplicationStatus < 3) {
    o.automatic = buildAutomaticStatus();
    o.userManaged = buildUserManagedStatus();
  }
  buildCounterReplicationStatus--;
  return o;
}

void checkReplicationStatus(api.ReplicationStatus o) {
  buildCounterReplicationStatus++;
  if (buildCounterReplicationStatus < 3) {
    checkAutomaticStatus(o.automatic!);
    checkUserManagedStatus(o.userManaged!);
  }
  buildCounterReplicationStatus--;
}

core.int buildCounterRotation = 0;
api.Rotation buildRotation() {
  final o = api.Rotation();
  buildCounterRotation++;
  if (buildCounterRotation < 3) {
    o.nextRotationTime = 'foo';
    o.rotationPeriod = 'foo';
  }
  buildCounterRotation--;
  return o;
}

void checkRotation(api.Rotation o) {
  buildCounterRotation++;
  if (buildCounterRotation < 3) {
    unittest.expect(
      o.nextRotationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rotationPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterRotation--;
}

core.Map<core.String, core.String> buildUnnamed6642() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6642(core.Map<core.String, core.String> o) {
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

core.List<api.Topic> buildUnnamed6643() => [
      buildTopic(),
      buildTopic(),
    ];

void checkUnnamed6643(core.List<api.Topic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTopic(o[0]);
  checkTopic(o[1]);
}

core.int buildCounterSecret = 0;
api.Secret buildSecret() {
  final o = api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.createTime = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.labels = buildUnnamed6642();
    o.name = 'foo';
    o.replication = buildReplication();
    o.rotation = buildRotation();
    o.topics = buildUnnamed6643();
    o.ttl = 'foo';
  }
  buildCounterSecret--;
  return o;
}

void checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed6642(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkReplication(o.replication!);
    checkRotation(o.rotation!);
    checkUnnamed6643(o.topics!);
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecret--;
}

core.int buildCounterSecretPayload = 0;
api.SecretPayload buildSecretPayload() {
  final o = api.SecretPayload();
  buildCounterSecretPayload++;
  if (buildCounterSecretPayload < 3) {
    o.data = 'foo';
  }
  buildCounterSecretPayload--;
  return o;
}

void checkSecretPayload(api.SecretPayload o) {
  buildCounterSecretPayload++;
  if (buildCounterSecretPayload < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretPayload--;
}

core.int buildCounterSecretVersion = 0;
api.SecretVersion buildSecretVersion() {
  final o = api.SecretVersion();
  buildCounterSecretVersion++;
  if (buildCounterSecretVersion < 3) {
    o.createTime = 'foo';
    o.destroyTime = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.replicationStatus = buildReplicationStatus();
    o.state = 'foo';
  }
  buildCounterSecretVersion--;
  return o;
}

void checkSecretVersion(api.SecretVersion o) {
  buildCounterSecretVersion++;
  if (buildCounterSecretVersion < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyTime!,
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
    checkReplicationStatus(o.replicationStatus!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretVersion--;
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
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed6644() => [
      'foo',
      'foo',
    ];

void checkUnnamed6644(core.List<core.String> o) {
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
    o.permissions = buildUnnamed6644();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6644(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed6645() => [
      'foo',
      'foo',
    ];

void checkUnnamed6645(core.List<core.String> o) {
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
    o.permissions = buildUnnamed6645();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed6645(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  final o = api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.name = 'foo';
  }
  buildCounterTopic--;
  return o;
}

void checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterTopic--;
}

core.List<api.Replica> buildUnnamed6646() => [
      buildReplica(),
      buildReplica(),
    ];

void checkUnnamed6646(core.List<api.Replica> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplica(o[0]);
  checkReplica(o[1]);
}

core.int buildCounterUserManaged = 0;
api.UserManaged buildUserManaged() {
  final o = api.UserManaged();
  buildCounterUserManaged++;
  if (buildCounterUserManaged < 3) {
    o.replicas = buildUnnamed6646();
  }
  buildCounterUserManaged--;
  return o;
}

void checkUserManaged(api.UserManaged o) {
  buildCounterUserManaged++;
  if (buildCounterUserManaged < 3) {
    checkUnnamed6646(o.replicas!);
  }
  buildCounterUserManaged--;
}

core.List<api.ReplicaStatus> buildUnnamed6647() => [
      buildReplicaStatus(),
      buildReplicaStatus(),
    ];

void checkUnnamed6647(core.List<api.ReplicaStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaStatus(o[0]);
  checkReplicaStatus(o[1]);
}

core.int buildCounterUserManagedStatus = 0;
api.UserManagedStatus buildUserManagedStatus() {
  final o = api.UserManagedStatus();
  buildCounterUserManagedStatus++;
  if (buildCounterUserManagedStatus < 3) {
    o.replicas = buildUnnamed6647();
  }
  buildCounterUserManagedStatus--;
  return o;
}

void checkUserManagedStatus(api.UserManagedStatus o) {
  buildCounterUserManagedStatus++;
  if (buildCounterUserManagedStatus < 3) {
    checkUnnamed6647(o.replicas!);
  }
  buildCounterUserManagedStatus--;
}

void main() {
  unittest.group('obj-schema-AccessSecretVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSecretVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSecretVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessSecretVersionResponse(od);
    });
  });

  unittest.group('obj-schema-AddSecretVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSecretVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSecretVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSecretVersionRequest(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Automatic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomatic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Automatic.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutomatic(od);
    });
  });

  unittest.group('obj-schema-AutomaticStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomaticStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomaticStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutomaticStatus(od);
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

  unittest.group('obj-schema-CustomerManagedEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerManagedEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerManagedEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerManagedEncryption(od);
    });
  });

  unittest.group('obj-schema-CustomerManagedEncryptionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerManagedEncryptionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerManagedEncryptionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerManagedEncryptionStatus(od);
    });
  });

  unittest.group('obj-schema-DestroySecretVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestroySecretVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestroySecretVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestroySecretVersionRequest(od);
    });
  });

  unittest.group('obj-schema-DisableSecretVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableSecretVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableSecretVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableSecretVersionRequest(od);
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

  unittest.group('obj-schema-EnableSecretVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableSecretVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableSecretVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableSecretVersionRequest(od);
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

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSecretVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSecretVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSecretVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSecretVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSecretsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSecretsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSecretsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSecretsResponse(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-Replica', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplica();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Replica.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReplica(od);
    });
  });

  unittest.group('obj-schema-ReplicaStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicaStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicaStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicaStatus(od);
    });
  });

  unittest.group('obj-schema-Replication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Replication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplication(od);
    });
  });

  unittest.group('obj-schema-ReplicationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicationStatus(od);
    });
  });

  unittest.group('obj-schema-Rotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rotation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRotation(od);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Secret.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSecret(od);
    });
  });

  unittest.group('obj-schema-SecretPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretPayload(od);
    });
  });

  unittest.group('obj-schema-SecretVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretVersion(od);
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

  unittest.group('obj-schema-Topic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Topic.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTopic(od);
    });
  });

  unittest.group('obj-schema-UserManaged', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserManaged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserManaged.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserManaged(od);
    });
  });

  unittest.group('obj-schema-UserManagedStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserManagedStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserManagedStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserManagedStatus(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final res = api.SecretManagerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

  unittest.group('resource-ProjectsSecretsResource', () {
    unittest.test('method--addVersion', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_request = buildAddSecretVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddSecretVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddSecretVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecretVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addVersion(arg_request, arg_parent, $fields: arg_$fields);
      checkSecretVersion(response as api.SecretVersion);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_request = buildSecret();
      final arg_parent = 'foo';
      final arg_secretId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Secret.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSecret(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['secretId']!.first,
          unittest.equals(arg_secretId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          secretId: arg_secretId, $fields: arg_$fields);
      checkSecret(response as api.Secret);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
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
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSecret(response as api.Secret);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListSecretsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSecretsResponse(response as api.ListSecretsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_request = buildSecret();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Secret.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSecret(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSecret(response as api.Secret);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final res = api.SecretManagerApi(mock).projects.secrets;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
  });

  unittest.group('resource-ProjectsSecretsVersionsResource', () {
    unittest.test('method--access', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets.versions;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccessSecretVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.access(arg_name, $fields: arg_$fields);
      checkAccessSecretVersionResponse(
          response as api.AccessSecretVersionResponse);
    });

    unittest.test('method--destroy', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets.versions;
      final arg_request = buildDestroySecretVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DestroySecretVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDestroySecretVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecretVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.destroy(arg_request, arg_name, $fields: arg_$fields);
      checkSecretVersion(response as api.SecretVersion);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets.versions;
      final arg_request = buildDisableSecretVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableSecretVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableSecretVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecretVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkSecretVersion(response as api.SecretVersion);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets.versions;
      final arg_request = buildEnableSecretVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableSecretVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableSecretVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecretVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkSecretVersion(response as api.SecretVersion);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets.versions;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecretVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSecretVersion(response as api.SecretVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecretManagerApi(mock).projects.secrets.versions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListSecretVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSecretVersionsResponse(
          response as api.ListSecretVersionsResponse);
    });
  });
}
