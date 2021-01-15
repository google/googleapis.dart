// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.storage.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/storage/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.BucketAccessControl> buildUnnamed3965() {
  var o = <api.BucketAccessControl>[];
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

void checkUnnamed3965(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketBilling = 0;
api.BucketBilling buildBucketBilling() {
  var o = api.BucketBilling();
  buildCounterBucketBilling++;
  if (buildCounterBucketBilling < 3) {
    o.requesterPays = true;
  }
  buildCounterBucketBilling--;
  return o;
}

void checkBucketBilling(api.BucketBilling o) {
  buildCounterBucketBilling++;
  if (buildCounterBucketBilling < 3) {
    unittest.expect(o.requesterPays, unittest.isTrue);
  }
  buildCounterBucketBilling--;
}

core.List<core.String> buildUnnamed3966() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3966(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3967() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3967(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3968() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3968(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBucketCors = 0;
api.BucketCors buildBucketCors() {
  var o = api.BucketCors();
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    o.maxAgeSeconds = 42;
    o.method = buildUnnamed3966();
    o.origin = buildUnnamed3967();
    o.responseHeader = buildUnnamed3968();
  }
  buildCounterBucketCors--;
  return o;
}

void checkBucketCors(api.BucketCors o) {
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    unittest.expect(o.maxAgeSeconds, unittest.equals(42));
    checkUnnamed3966(o.method);
    checkUnnamed3967(o.origin);
    checkUnnamed3968(o.responseHeader);
  }
  buildCounterBucketCors--;
}

core.List<api.BucketCors> buildUnnamed3969() {
  var o = <api.BucketCors>[];
  o.add(buildBucketCors());
  o.add(buildBucketCors());
  return o;
}

void checkUnnamed3969(core.List<api.BucketCors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketCors(o[0]);
  checkBucketCors(o[1]);
}

core.List<api.ObjectAccessControl> buildUnnamed3970() {
  var o = <api.ObjectAccessControl>[];
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

void checkUnnamed3970(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterBucketEncryption = 0;
api.BucketEncryption buildBucketEncryption() {
  var o = api.BucketEncryption();
  buildCounterBucketEncryption++;
  if (buildCounterBucketEncryption < 3) {
    o.defaultKmsKeyName = 'foo';
  }
  buildCounterBucketEncryption--;
  return o;
}

void checkBucketEncryption(api.BucketEncryption o) {
  buildCounterBucketEncryption++;
  if (buildCounterBucketEncryption < 3) {
    unittest.expect(o.defaultKmsKeyName, unittest.equals('foo'));
  }
  buildCounterBucketEncryption--;
}

core.int buildCounterBucketIamConfigurationBucketPolicyOnly = 0;
api.BucketIamConfigurationBucketPolicyOnly
    buildBucketIamConfigurationBucketPolicyOnly() {
  var o = api.BucketIamConfigurationBucketPolicyOnly();
  buildCounterBucketIamConfigurationBucketPolicyOnly++;
  if (buildCounterBucketIamConfigurationBucketPolicyOnly < 3) {
    o.enabled = true;
    o.lockedTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBucketIamConfigurationBucketPolicyOnly--;
  return o;
}

void checkBucketIamConfigurationBucketPolicyOnly(
    api.BucketIamConfigurationBucketPolicyOnly o) {
  buildCounterBucketIamConfigurationBucketPolicyOnly++;
  if (buildCounterBucketIamConfigurationBucketPolicyOnly < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.lockedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBucketIamConfigurationBucketPolicyOnly--;
}

core.int buildCounterBucketIamConfigurationUniformBucketLevelAccess = 0;
api.BucketIamConfigurationUniformBucketLevelAccess
    buildBucketIamConfigurationUniformBucketLevelAccess() {
  var o = api.BucketIamConfigurationUniformBucketLevelAccess();
  buildCounterBucketIamConfigurationUniformBucketLevelAccess++;
  if (buildCounterBucketIamConfigurationUniformBucketLevelAccess < 3) {
    o.enabled = true;
    o.lockedTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBucketIamConfigurationUniformBucketLevelAccess--;
  return o;
}

void checkBucketIamConfigurationUniformBucketLevelAccess(
    api.BucketIamConfigurationUniformBucketLevelAccess o) {
  buildCounterBucketIamConfigurationUniformBucketLevelAccess++;
  if (buildCounterBucketIamConfigurationUniformBucketLevelAccess < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.lockedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBucketIamConfigurationUniformBucketLevelAccess--;
}

core.int buildCounterBucketIamConfiguration = 0;
api.BucketIamConfiguration buildBucketIamConfiguration() {
  var o = api.BucketIamConfiguration();
  buildCounterBucketIamConfiguration++;
  if (buildCounterBucketIamConfiguration < 3) {
    o.bucketPolicyOnly = buildBucketIamConfigurationBucketPolicyOnly();
    o.uniformBucketLevelAccess =
        buildBucketIamConfigurationUniformBucketLevelAccess();
  }
  buildCounterBucketIamConfiguration--;
  return o;
}

void checkBucketIamConfiguration(api.BucketIamConfiguration o) {
  buildCounterBucketIamConfiguration++;
  if (buildCounterBucketIamConfiguration < 3) {
    checkBucketIamConfigurationBucketPolicyOnly(o.bucketPolicyOnly);
    checkBucketIamConfigurationUniformBucketLevelAccess(
        o.uniformBucketLevelAccess);
  }
  buildCounterBucketIamConfiguration--;
}

core.Map<core.String, core.String> buildUnnamed3971() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3971(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterBucketLifecycleRuleAction = 0;
api.BucketLifecycleRuleAction buildBucketLifecycleRuleAction() {
  var o = api.BucketLifecycleRuleAction();
  buildCounterBucketLifecycleRuleAction++;
  if (buildCounterBucketLifecycleRuleAction < 3) {
    o.storageClass = 'foo';
    o.type = 'foo';
  }
  buildCounterBucketLifecycleRuleAction--;
  return o;
}

void checkBucketLifecycleRuleAction(api.BucketLifecycleRuleAction o) {
  buildCounterBucketLifecycleRuleAction++;
  if (buildCounterBucketLifecycleRuleAction < 3) {
    unittest.expect(o.storageClass, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBucketLifecycleRuleAction--;
}

core.List<core.String> buildUnnamed3972() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3972(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBucketLifecycleRuleCondition = 0;
api.BucketLifecycleRuleCondition buildBucketLifecycleRuleCondition() {
  var o = api.BucketLifecycleRuleCondition();
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    o.age = 42;
    o.createdBefore = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.customTimeBefore = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.daysSinceCustomTime = 42;
    o.daysSinceNoncurrentTime = 42;
    o.isLive = true;
    o.matchesPattern = 'foo';
    o.matchesStorageClass = buildUnnamed3972();
    o.noncurrentTimeBefore = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.numNewerVersions = 42;
  }
  buildCounterBucketLifecycleRuleCondition--;
  return o;
}

void checkBucketLifecycleRuleCondition(api.BucketLifecycleRuleCondition o) {
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    unittest.expect(o.age, unittest.equals(42));
    unittest.expect(o.createdBefore,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.customTimeBefore,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.daysSinceCustomTime, unittest.equals(42));
    unittest.expect(o.daysSinceNoncurrentTime, unittest.equals(42));
    unittest.expect(o.isLive, unittest.isTrue);
    unittest.expect(o.matchesPattern, unittest.equals('foo'));
    checkUnnamed3972(o.matchesStorageClass);
    unittest.expect(o.noncurrentTimeBefore,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.numNewerVersions, unittest.equals(42));
  }
  buildCounterBucketLifecycleRuleCondition--;
}

core.int buildCounterBucketLifecycleRule = 0;
api.BucketLifecycleRule buildBucketLifecycleRule() {
  var o = api.BucketLifecycleRule();
  buildCounterBucketLifecycleRule++;
  if (buildCounterBucketLifecycleRule < 3) {
    o.action = buildBucketLifecycleRuleAction();
    o.condition = buildBucketLifecycleRuleCondition();
  }
  buildCounterBucketLifecycleRule--;
  return o;
}

void checkBucketLifecycleRule(api.BucketLifecycleRule o) {
  buildCounterBucketLifecycleRule++;
  if (buildCounterBucketLifecycleRule < 3) {
    checkBucketLifecycleRuleAction(o.action);
    checkBucketLifecycleRuleCondition(o.condition);
  }
  buildCounterBucketLifecycleRule--;
}

core.List<api.BucketLifecycleRule> buildUnnamed3973() {
  var o = <api.BucketLifecycleRule>[];
  o.add(buildBucketLifecycleRule());
  o.add(buildBucketLifecycleRule());
  return o;
}

void checkUnnamed3973(core.List<api.BucketLifecycleRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketLifecycleRule(o[0]);
  checkBucketLifecycleRule(o[1]);
}

core.int buildCounterBucketLifecycle = 0;
api.BucketLifecycle buildBucketLifecycle() {
  var o = api.BucketLifecycle();
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    o.rule = buildUnnamed3973();
  }
  buildCounterBucketLifecycle--;
  return o;
}

void checkBucketLifecycle(api.BucketLifecycle o) {
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    checkUnnamed3973(o.rule);
  }
  buildCounterBucketLifecycle--;
}

core.int buildCounterBucketLogging = 0;
api.BucketLogging buildBucketLogging() {
  var o = api.BucketLogging();
  buildCounterBucketLogging++;
  if (buildCounterBucketLogging < 3) {
    o.logBucket = 'foo';
    o.logObjectPrefix = 'foo';
  }
  buildCounterBucketLogging--;
  return o;
}

void checkBucketLogging(api.BucketLogging o) {
  buildCounterBucketLogging++;
  if (buildCounterBucketLogging < 3) {
    unittest.expect(o.logBucket, unittest.equals('foo'));
    unittest.expect(o.logObjectPrefix, unittest.equals('foo'));
  }
  buildCounterBucketLogging--;
}

core.int buildCounterBucketOwner = 0;
api.BucketOwner buildBucketOwner() {
  var o = api.BucketOwner();
  buildCounterBucketOwner++;
  if (buildCounterBucketOwner < 3) {
    o.entity = 'foo';
    o.entityId = 'foo';
  }
  buildCounterBucketOwner--;
  return o;
}

void checkBucketOwner(api.BucketOwner o) {
  buildCounterBucketOwner++;
  if (buildCounterBucketOwner < 3) {
    unittest.expect(o.entity, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
  }
  buildCounterBucketOwner--;
}

core.int buildCounterBucketRetentionPolicy = 0;
api.BucketRetentionPolicy buildBucketRetentionPolicy() {
  var o = api.BucketRetentionPolicy();
  buildCounterBucketRetentionPolicy++;
  if (buildCounterBucketRetentionPolicy < 3) {
    o.effectiveTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.isLocked = true;
    o.retentionPeriod = 'foo';
  }
  buildCounterBucketRetentionPolicy--;
  return o;
}

void checkBucketRetentionPolicy(api.BucketRetentionPolicy o) {
  buildCounterBucketRetentionPolicy++;
  if (buildCounterBucketRetentionPolicy < 3) {
    unittest.expect(o.effectiveTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.isLocked, unittest.isTrue);
    unittest.expect(o.retentionPeriod, unittest.equals('foo'));
  }
  buildCounterBucketRetentionPolicy--;
}

core.int buildCounterBucketVersioning = 0;
api.BucketVersioning buildBucketVersioning() {
  var o = api.BucketVersioning();
  buildCounterBucketVersioning++;
  if (buildCounterBucketVersioning < 3) {
    o.enabled = true;
  }
  buildCounterBucketVersioning--;
  return o;
}

void checkBucketVersioning(api.BucketVersioning o) {
  buildCounterBucketVersioning++;
  if (buildCounterBucketVersioning < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterBucketVersioning--;
}

core.int buildCounterBucketWebsite = 0;
api.BucketWebsite buildBucketWebsite() {
  var o = api.BucketWebsite();
  buildCounterBucketWebsite++;
  if (buildCounterBucketWebsite < 3) {
    o.mainPageSuffix = 'foo';
    o.notFoundPage = 'foo';
  }
  buildCounterBucketWebsite--;
  return o;
}

void checkBucketWebsite(api.BucketWebsite o) {
  buildCounterBucketWebsite++;
  if (buildCounterBucketWebsite < 3) {
    unittest.expect(o.mainPageSuffix, unittest.equals('foo'));
    unittest.expect(o.notFoundPage, unittest.equals('foo'));
  }
  buildCounterBucketWebsite--;
}

core.List<core.String> buildUnnamed3974() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3974(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBucket = 0;
api.Bucket buildBucket() {
  var o = api.Bucket();
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    o.acl = buildUnnamed3965();
    o.billing = buildBucketBilling();
    o.cors = buildUnnamed3969();
    o.defaultEventBasedHold = true;
    o.defaultObjectAcl = buildUnnamed3970();
    o.encryption = buildBucketEncryption();
    o.etag = 'foo';
    o.iamConfiguration = buildBucketIamConfiguration();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed3971();
    o.lifecycle = buildBucketLifecycle();
    o.location = 'foo';
    o.locationType = 'foo';
    o.logging = buildBucketLogging();
    o.metageneration = 'foo';
    o.name = 'foo';
    o.owner = buildBucketOwner();
    o.projectNumber = 'foo';
    o.retentionPolicy = buildBucketRetentionPolicy();
    o.selfLink = 'foo';
    o.storageClass = 'foo';
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.versioning = buildBucketVersioning();
    o.website = buildBucketWebsite();
    o.zoneAffinity = buildUnnamed3974();
  }
  buildCounterBucket--;
  return o;
}

void checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    checkUnnamed3965(o.acl);
    checkBucketBilling(o.billing);
    checkUnnamed3969(o.cors);
    unittest.expect(o.defaultEventBasedHold, unittest.isTrue);
    checkUnnamed3970(o.defaultObjectAcl);
    checkBucketEncryption(o.encryption);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkBucketIamConfiguration(o.iamConfiguration);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3971(o.labels);
    checkBucketLifecycle(o.lifecycle);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkBucketLogging(o.logging);
    unittest.expect(o.metageneration, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkBucketOwner(o.owner);
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkBucketRetentionPolicy(o.retentionPolicy);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.storageClass, unittest.equals('foo'));
    unittest.expect(o.timeCreated,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkBucketVersioning(o.versioning);
    checkBucketWebsite(o.website);
    checkUnnamed3974(o.zoneAffinity);
  }
  buildCounterBucket--;
}

core.int buildCounterBucketAccessControlProjectTeam = 0;
api.BucketAccessControlProjectTeam buildBucketAccessControlProjectTeam() {
  var o = api.BucketAccessControlProjectTeam();
  buildCounterBucketAccessControlProjectTeam++;
  if (buildCounterBucketAccessControlProjectTeam < 3) {
    o.projectNumber = 'foo';
    o.team = 'foo';
  }
  buildCounterBucketAccessControlProjectTeam--;
  return o;
}

void checkBucketAccessControlProjectTeam(api.BucketAccessControlProjectTeam o) {
  buildCounterBucketAccessControlProjectTeam++;
  if (buildCounterBucketAccessControlProjectTeam < 3) {
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.team, unittest.equals('foo'));
  }
  buildCounterBucketAccessControlProjectTeam--;
}

core.int buildCounterBucketAccessControl = 0;
api.BucketAccessControl buildBucketAccessControl() {
  var o = api.BucketAccessControl();
  buildCounterBucketAccessControl++;
  if (buildCounterBucketAccessControl < 3) {
    o.bucket = 'foo';
    o.domain = 'foo';
    o.email = 'foo';
    o.entity = 'foo';
    o.entityId = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.projectTeam = buildBucketAccessControlProjectTeam();
    o.role = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterBucketAccessControl--;
  return o;
}

void checkBucketAccessControl(api.BucketAccessControl o) {
  buildCounterBucketAccessControl++;
  if (buildCounterBucketAccessControl < 3) {
    unittest.expect(o.bucket, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.entity, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkBucketAccessControlProjectTeam(o.projectTeam);
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterBucketAccessControl--;
}

core.List<api.BucketAccessControl> buildUnnamed3975() {
  var o = <api.BucketAccessControl>[];
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

void checkUnnamed3975(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketAccessControls = 0;
api.BucketAccessControls buildBucketAccessControls() {
  var o = api.BucketAccessControls();
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    o.items = buildUnnamed3975();
    o.kind = 'foo';
  }
  buildCounterBucketAccessControls--;
  return o;
}

void checkBucketAccessControls(api.BucketAccessControls o) {
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    checkUnnamed3975(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBucketAccessControls--;
}

core.List<api.Bucket> buildUnnamed3976() {
  var o = <api.Bucket>[];
  o.add(buildBucket());
  o.add(buildBucket());
  return o;
}

void checkUnnamed3976(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBuckets = 0;
api.Buckets buildBuckets() {
  var o = api.Buckets();
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    o.items = buildUnnamed3976();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBuckets--;
  return o;
}

void checkBuckets(api.Buckets o) {
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    checkUnnamed3976(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuckets--;
}

core.Map<core.String, core.String> buildUnnamed3977() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3977(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed3977();
    o.payload = true;
    o.resourceId = 'foo';
    o.resourceUri = 'foo';
    o.token = 'foo';
    o.type = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3977(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterComposeRequestSourceObjectsObjectPreconditions = 0;
api.ComposeRequestSourceObjectsObjectPreconditions
    buildComposeRequestSourceObjectsObjectPreconditions() {
  var o = api.ComposeRequestSourceObjectsObjectPreconditions();
  buildCounterComposeRequestSourceObjectsObjectPreconditions++;
  if (buildCounterComposeRequestSourceObjectsObjectPreconditions < 3) {
    o.ifGenerationMatch = 'foo';
  }
  buildCounterComposeRequestSourceObjectsObjectPreconditions--;
  return o;
}

void checkComposeRequestSourceObjectsObjectPreconditions(
    api.ComposeRequestSourceObjectsObjectPreconditions o) {
  buildCounterComposeRequestSourceObjectsObjectPreconditions++;
  if (buildCounterComposeRequestSourceObjectsObjectPreconditions < 3) {
    unittest.expect(o.ifGenerationMatch, unittest.equals('foo'));
  }
  buildCounterComposeRequestSourceObjectsObjectPreconditions--;
}

core.int buildCounterComposeRequestSourceObjects = 0;
api.ComposeRequestSourceObjects buildComposeRequestSourceObjects() {
  var o = api.ComposeRequestSourceObjects();
  buildCounterComposeRequestSourceObjects++;
  if (buildCounterComposeRequestSourceObjects < 3) {
    o.generation = 'foo';
    o.name = 'foo';
    o.objectPreconditions =
        buildComposeRequestSourceObjectsObjectPreconditions();
  }
  buildCounterComposeRequestSourceObjects--;
  return o;
}

void checkComposeRequestSourceObjects(api.ComposeRequestSourceObjects o) {
  buildCounterComposeRequestSourceObjects++;
  if (buildCounterComposeRequestSourceObjects < 3) {
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkComposeRequestSourceObjectsObjectPreconditions(o.objectPreconditions);
  }
  buildCounterComposeRequestSourceObjects--;
}

core.List<api.ComposeRequestSourceObjects> buildUnnamed3978() {
  var o = <api.ComposeRequestSourceObjects>[];
  o.add(buildComposeRequestSourceObjects());
  o.add(buildComposeRequestSourceObjects());
  return o;
}

void checkUnnamed3978(core.List<api.ComposeRequestSourceObjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComposeRequestSourceObjects(o[0]);
  checkComposeRequestSourceObjects(o[1]);
}

core.int buildCounterComposeRequest = 0;
api.ComposeRequest buildComposeRequest() {
  var o = api.ComposeRequest();
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    o.destination = buildObject();
    o.kind = 'foo';
    o.sourceObjects = buildUnnamed3978();
  }
  buildCounterComposeRequest--;
  return o;
}

void checkComposeRequest(api.ComposeRequest o) {
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    checkObject(o.destination);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3978(o.sourceObjects);
  }
  buildCounterComposeRequest--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterHmacKey = 0;
api.HmacKey buildHmacKey() {
  var o = api.HmacKey();
  buildCounterHmacKey++;
  if (buildCounterHmacKey < 3) {
    o.kind = 'foo';
    o.metadata = buildHmacKeyMetadata();
    o.secret = 'foo';
  }
  buildCounterHmacKey--;
  return o;
}

void checkHmacKey(api.HmacKey o) {
  buildCounterHmacKey++;
  if (buildCounterHmacKey < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkHmacKeyMetadata(o.metadata);
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterHmacKey--;
}

core.int buildCounterHmacKeyMetadata = 0;
api.HmacKeyMetadata buildHmacKeyMetadata() {
  var o = api.HmacKeyMetadata();
  buildCounterHmacKeyMetadata++;
  if (buildCounterHmacKeyMetadata < 3) {
    o.accessId = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.projectId = 'foo';
    o.selfLink = 'foo';
    o.serviceAccountEmail = 'foo';
    o.state = 'foo';
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterHmacKeyMetadata--;
  return o;
}

void checkHmacKeyMetadata(api.HmacKeyMetadata o) {
  buildCounterHmacKeyMetadata++;
  if (buildCounterHmacKeyMetadata < 3) {
    unittest.expect(o.accessId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.timeCreated,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterHmacKeyMetadata--;
}

core.List<api.HmacKeyMetadata> buildUnnamed3979() {
  var o = <api.HmacKeyMetadata>[];
  o.add(buildHmacKeyMetadata());
  o.add(buildHmacKeyMetadata());
  return o;
}

void checkUnnamed3979(core.List<api.HmacKeyMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHmacKeyMetadata(o[0]);
  checkHmacKeyMetadata(o[1]);
}

core.int buildCounterHmacKeysMetadata = 0;
api.HmacKeysMetadata buildHmacKeysMetadata() {
  var o = api.HmacKeysMetadata();
  buildCounterHmacKeysMetadata++;
  if (buildCounterHmacKeysMetadata < 3) {
    o.items = buildUnnamed3979();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterHmacKeysMetadata--;
  return o;
}

void checkHmacKeysMetadata(api.HmacKeysMetadata o) {
  buildCounterHmacKeysMetadata++;
  if (buildCounterHmacKeysMetadata < 3) {
    checkUnnamed3979(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterHmacKeysMetadata--;
}

core.Map<core.String, core.String> buildUnnamed3980() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3980(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3981() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3981(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  var o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.customAttributes = buildUnnamed3980();
    o.etag = 'foo';
    o.eventTypes = buildUnnamed3981();
    o.id = 'foo';
    o.kind = 'foo';
    o.objectNamePrefix = 'foo';
    o.payloadFormat = 'foo';
    o.selfLink = 'foo';
    o.topic = 'foo';
  }
  buildCounterNotification--;
  return o;
}

void checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    checkUnnamed3980(o.customAttributes);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3981(o.eventTypes);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.objectNamePrefix, unittest.equals('foo'));
    unittest.expect(o.payloadFormat, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

core.List<api.Notification> buildUnnamed3982() {
  var o = <api.Notification>[];
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

void checkUnnamed3982(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotifications = 0;
api.Notifications buildNotifications() {
  var o = api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.items = buildUnnamed3982();
    o.kind = 'foo';
  }
  buildCounterNotifications--;
  return o;
}

void checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    checkUnnamed3982(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterNotifications--;
}

core.List<api.ObjectAccessControl> buildUnnamed3983() {
  var o = <api.ObjectAccessControl>[];
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

void checkUnnamed3983(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectCustomerEncryption = 0;
api.ObjectCustomerEncryption buildObjectCustomerEncryption() {
  var o = api.ObjectCustomerEncryption();
  buildCounterObjectCustomerEncryption++;
  if (buildCounterObjectCustomerEncryption < 3) {
    o.encryptionAlgorithm = 'foo';
    o.keySha256 = 'foo';
  }
  buildCounterObjectCustomerEncryption--;
  return o;
}

void checkObjectCustomerEncryption(api.ObjectCustomerEncryption o) {
  buildCounterObjectCustomerEncryption++;
  if (buildCounterObjectCustomerEncryption < 3) {
    unittest.expect(o.encryptionAlgorithm, unittest.equals('foo'));
    unittest.expect(o.keySha256, unittest.equals('foo'));
  }
  buildCounterObjectCustomerEncryption--;
}

core.Map<core.String, core.String> buildUnnamed3984() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3984(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterObjectOwner = 0;
api.ObjectOwner buildObjectOwner() {
  var o = api.ObjectOwner();
  buildCounterObjectOwner++;
  if (buildCounterObjectOwner < 3) {
    o.entity = 'foo';
    o.entityId = 'foo';
  }
  buildCounterObjectOwner--;
  return o;
}

void checkObjectOwner(api.ObjectOwner o) {
  buildCounterObjectOwner++;
  if (buildCounterObjectOwner < 3) {
    unittest.expect(o.entity, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
  }
  buildCounterObjectOwner--;
}

core.int buildCounterObject = 0;
api.Object buildObject() {
  var o = api.Object();
  buildCounterObject++;
  if (buildCounterObject < 3) {
    o.acl = buildUnnamed3983();
    o.bucket = 'foo';
    o.cacheControl = 'foo';
    o.componentCount = 42;
    o.contentDisposition = 'foo';
    o.contentEncoding = 'foo';
    o.contentLanguage = 'foo';
    o.contentType = 'foo';
    o.crc32c = 'foo';
    o.customTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.customerEncryption = buildObjectCustomerEncryption();
    o.etag = 'foo';
    o.eventBasedHold = true;
    o.generation = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.kmsKeyName = 'foo';
    o.md5Hash = 'foo';
    o.mediaLink = 'foo';
    o.metadata = buildUnnamed3984();
    o.metageneration = 'foo';
    o.name = 'foo';
    o.owner = buildObjectOwner();
    o.retentionExpirationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.selfLink = 'foo';
    o.size = 'foo';
    o.storageClass = 'foo';
    o.temporaryHold = true;
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeDeleted = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeStorageClassUpdated = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterObject--;
  return o;
}

void checkObject(api.Object o) {
  buildCounterObject++;
  if (buildCounterObject < 3) {
    checkUnnamed3983(o.acl);
    unittest.expect(o.bucket, unittest.equals('foo'));
    unittest.expect(o.cacheControl, unittest.equals('foo'));
    unittest.expect(o.componentCount, unittest.equals(42));
    unittest.expect(o.contentDisposition, unittest.equals('foo'));
    unittest.expect(o.contentEncoding, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.crc32c, unittest.equals('foo'));
    unittest.expect(o.customTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkObjectCustomerEncryption(o.customerEncryption);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventBasedHold, unittest.isTrue);
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    unittest.expect(o.mediaLink, unittest.equals('foo'));
    checkUnnamed3984(o.metadata);
    unittest.expect(o.metageneration, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkObjectOwner(o.owner);
    unittest.expect(o.retentionExpirationTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.storageClass, unittest.equals('foo'));
    unittest.expect(o.temporaryHold, unittest.isTrue);
    unittest.expect(o.timeCreated,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.timeDeleted,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.timeStorageClassUpdated,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterObject--;
}

core.int buildCounterObjectAccessControlProjectTeam = 0;
api.ObjectAccessControlProjectTeam buildObjectAccessControlProjectTeam() {
  var o = api.ObjectAccessControlProjectTeam();
  buildCounterObjectAccessControlProjectTeam++;
  if (buildCounterObjectAccessControlProjectTeam < 3) {
    o.projectNumber = 'foo';
    o.team = 'foo';
  }
  buildCounterObjectAccessControlProjectTeam--;
  return o;
}

void checkObjectAccessControlProjectTeam(api.ObjectAccessControlProjectTeam o) {
  buildCounterObjectAccessControlProjectTeam++;
  if (buildCounterObjectAccessControlProjectTeam < 3) {
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.team, unittest.equals('foo'));
  }
  buildCounterObjectAccessControlProjectTeam--;
}

core.int buildCounterObjectAccessControl = 0;
api.ObjectAccessControl buildObjectAccessControl() {
  var o = api.ObjectAccessControl();
  buildCounterObjectAccessControl++;
  if (buildCounterObjectAccessControl < 3) {
    o.bucket = 'foo';
    o.domain = 'foo';
    o.email = 'foo';
    o.entity = 'foo';
    o.entityId = 'foo';
    o.etag = 'foo';
    o.generation = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.object = 'foo';
    o.projectTeam = buildObjectAccessControlProjectTeam();
    o.role = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterObjectAccessControl--;
  return o;
}

void checkObjectAccessControl(api.ObjectAccessControl o) {
  buildCounterObjectAccessControl++;
  if (buildCounterObjectAccessControl < 3) {
    unittest.expect(o.bucket, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.entity, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.object, unittest.equals('foo'));
    checkObjectAccessControlProjectTeam(o.projectTeam);
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterObjectAccessControl--;
}

core.List<api.ObjectAccessControl> buildUnnamed3985() {
  var o = <api.ObjectAccessControl>[];
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

void checkUnnamed3985(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectAccessControls = 0;
api.ObjectAccessControls buildObjectAccessControls() {
  var o = api.ObjectAccessControls();
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    o.items = buildUnnamed3985();
    o.kind = 'foo';
  }
  buildCounterObjectAccessControls--;
  return o;
}

void checkObjectAccessControls(api.ObjectAccessControls o) {
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    checkUnnamed3985(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterObjectAccessControls--;
}

core.List<api.Object> buildUnnamed3986() {
  var o = <api.Object>[];
  o.add(buildObject());
  o.add(buildObject());
  return o;
}

void checkUnnamed3986(core.List<api.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObject(o[0]);
  checkObject(o[1]);
}

core.List<core.String> buildUnnamed3987() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjects = 0;
api.Objects buildObjects() {
  var o = api.Objects();
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    o.items = buildUnnamed3986();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.prefixes = buildUnnamed3987();
  }
  buildCounterObjects--;
  return o;
}

void checkObjects(api.Objects o) {
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    checkUnnamed3986(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3987(o.prefixes);
  }
  buildCounterObjects--;
}

core.List<core.String> buildUnnamed3988() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3988(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicyBindings = 0;
api.PolicyBindings buildPolicyBindings() {
  var o = api.PolicyBindings();
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3988();
    o.role = 'foo';
  }
  buildCounterPolicyBindings--;
  return o;
}

void checkPolicyBindings(api.PolicyBindings o) {
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    checkExpr(o.condition);
    checkUnnamed3988(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPolicyBindings--;
}

core.List<api.PolicyBindings> buildUnnamed3989() {
  var o = <api.PolicyBindings>[];
  o.add(buildPolicyBindings());
  o.add(buildPolicyBindings());
  return o;
}

void checkUnnamed3989(core.List<api.PolicyBindings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBindings(o[0]);
  checkPolicyBindings(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed3989();
    o.etag = 'foo';
    o.kind = 'foo';
    o.resourceId = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3989(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterRewriteResponse = 0;
api.RewriteResponse buildRewriteResponse() {
  var o = api.RewriteResponse();
  buildCounterRewriteResponse++;
  if (buildCounterRewriteResponse < 3) {
    o.done = true;
    o.kind = 'foo';
    o.objectSize = 'foo';
    o.resource = buildObject();
    o.rewriteToken = 'foo';
    o.totalBytesRewritten = 'foo';
  }
  buildCounterRewriteResponse--;
  return o;
}

void checkRewriteResponse(api.RewriteResponse o) {
  buildCounterRewriteResponse++;
  if (buildCounterRewriteResponse < 3) {
    unittest.expect(o.done, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.objectSize, unittest.equals('foo'));
    checkObject(o.resource);
    unittest.expect(o.rewriteToken, unittest.equals('foo'));
    unittest.expect(o.totalBytesRewritten, unittest.equals('foo'));
  }
  buildCounterRewriteResponse--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  var o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.emailAddress = 'foo';
    o.kind = 'foo';
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

core.List<core.String> buildUnnamed3990() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3990(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.kind = 'foo';
    o.permissions = buildUnnamed3990();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3990(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed3991() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3991(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3992() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3992(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-BucketBilling', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketBilling();
      var od = api.BucketBilling.fromJson(o.toJson());
      checkBucketBilling(od);
    });
  });

  unittest.group('obj-schema-BucketCors', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketCors();
      var od = api.BucketCors.fromJson(o.toJson());
      checkBucketCors(od);
    });
  });

  unittest.group('obj-schema-BucketEncryption', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketEncryption();
      var od = api.BucketEncryption.fromJson(o.toJson());
      checkBucketEncryption(od);
    });
  });

  unittest.group('obj-schema-BucketIamConfigurationBucketPolicyOnly', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketIamConfigurationBucketPolicyOnly();
      var od = api.BucketIamConfigurationBucketPolicyOnly.fromJson(o.toJson());
      checkBucketIamConfigurationBucketPolicyOnly(od);
    });
  });

  unittest.group('obj-schema-BucketIamConfigurationUniformBucketLevelAccess',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketIamConfigurationUniformBucketLevelAccess();
      var od = api.BucketIamConfigurationUniformBucketLevelAccess.fromJson(
          o.toJson());
      checkBucketIamConfigurationUniformBucketLevelAccess(od);
    });
  });

  unittest.group('obj-schema-BucketIamConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketIamConfiguration();
      var od = api.BucketIamConfiguration.fromJson(o.toJson());
      checkBucketIamConfiguration(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycleRuleAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketLifecycleRuleAction();
      var od = api.BucketLifecycleRuleAction.fromJson(o.toJson());
      checkBucketLifecycleRuleAction(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycleRuleCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketLifecycleRuleCondition();
      var od = api.BucketLifecycleRuleCondition.fromJson(o.toJson());
      checkBucketLifecycleRuleCondition(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycleRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketLifecycleRule();
      var od = api.BucketLifecycleRule.fromJson(o.toJson());
      checkBucketLifecycleRule(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycle', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketLifecycle();
      var od = api.BucketLifecycle.fromJson(o.toJson());
      checkBucketLifecycle(od);
    });
  });

  unittest.group('obj-schema-BucketLogging', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketLogging();
      var od = api.BucketLogging.fromJson(o.toJson());
      checkBucketLogging(od);
    });
  });

  unittest.group('obj-schema-BucketOwner', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketOwner();
      var od = api.BucketOwner.fromJson(o.toJson());
      checkBucketOwner(od);
    });
  });

  unittest.group('obj-schema-BucketRetentionPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketRetentionPolicy();
      var od = api.BucketRetentionPolicy.fromJson(o.toJson());
      checkBucketRetentionPolicy(od);
    });
  });

  unittest.group('obj-schema-BucketVersioning', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketVersioning();
      var od = api.BucketVersioning.fromJson(o.toJson());
      checkBucketVersioning(od);
    });
  });

  unittest.group('obj-schema-BucketWebsite', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketWebsite();
      var od = api.BucketWebsite.fromJson(o.toJson());
      checkBucketWebsite(od);
    });
  });

  unittest.group('obj-schema-Bucket', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucket();
      var od = api.Bucket.fromJson(o.toJson());
      checkBucket(od);
    });
  });

  unittest.group('obj-schema-BucketAccessControlProjectTeam', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketAccessControlProjectTeam();
      var od = api.BucketAccessControlProjectTeam.fromJson(o.toJson());
      checkBucketAccessControlProjectTeam(od);
    });
  });

  unittest.group('obj-schema-BucketAccessControl', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketAccessControl();
      var od = api.BucketAccessControl.fromJson(o.toJson());
      checkBucketAccessControl(od);
    });
  });

  unittest.group('obj-schema-BucketAccessControls', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketAccessControls();
      var od = api.BucketAccessControls.fromJson(o.toJson());
      checkBucketAccessControls(od);
    });
  });

  unittest.group('obj-schema-Buckets', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuckets();
      var od = api.Buckets.fromJson(o.toJson());
      checkBuckets(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ComposeRequestSourceObjectsObjectPreconditions',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildComposeRequestSourceObjectsObjectPreconditions();
      var od = api.ComposeRequestSourceObjectsObjectPreconditions.fromJson(
          o.toJson());
      checkComposeRequestSourceObjectsObjectPreconditions(od);
    });
  });

  unittest.group('obj-schema-ComposeRequestSourceObjects', () {
    unittest.test('to-json--from-json', () {
      var o = buildComposeRequestSourceObjects();
      var od = api.ComposeRequestSourceObjects.fromJson(o.toJson());
      checkComposeRequestSourceObjects(od);
    });
  });

  unittest.group('obj-schema-ComposeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildComposeRequest();
      var od = api.ComposeRequest.fromJson(o.toJson());
      checkComposeRequest(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-HmacKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildHmacKey();
      var od = api.HmacKey.fromJson(o.toJson());
      checkHmacKey(od);
    });
  });

  unittest.group('obj-schema-HmacKeyMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildHmacKeyMetadata();
      var od = api.HmacKeyMetadata.fromJson(o.toJson());
      checkHmacKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-HmacKeysMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildHmacKeysMetadata();
      var od = api.HmacKeysMetadata.fromJson(o.toJson());
      checkHmacKeysMetadata(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotification();
      var od = api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-Notifications', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotifications();
      var od = api.Notifications.fromJson(o.toJson());
      checkNotifications(od);
    });
  });

  unittest.group('obj-schema-ObjectCustomerEncryption', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectCustomerEncryption();
      var od = api.ObjectCustomerEncryption.fromJson(o.toJson());
      checkObjectCustomerEncryption(od);
    });
  });

  unittest.group('obj-schema-ObjectOwner', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectOwner();
      var od = api.ObjectOwner.fromJson(o.toJson());
      checkObjectOwner(od);
    });
  });

  unittest.group('obj-schema-Object', () {
    unittest.test('to-json--from-json', () {
      var o = buildObject();
      var od = api.Object.fromJson(o.toJson());
      checkObject(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControlProjectTeam', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectAccessControlProjectTeam();
      var od = api.ObjectAccessControlProjectTeam.fromJson(o.toJson());
      checkObjectAccessControlProjectTeam(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControl', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectAccessControl();
      var od = api.ObjectAccessControl.fromJson(o.toJson());
      checkObjectAccessControl(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControls', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectAccessControls();
      var od = api.ObjectAccessControls.fromJson(o.toJson());
      checkObjectAccessControls(od);
    });
  });

  unittest.group('obj-schema-Objects', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjects();
      var od = api.Objects.fromJson(o.toJson());
      checkObjects(od);
    });
  });

  unittest.group('obj-schema-PolicyBindings', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicyBindings();
      var od = api.PolicyBindings.fromJson(o.toJson());
      checkPolicyBindings(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-RewriteResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRewriteResponse();
      var od = api.RewriteResponse.fromJson(o.toJson());
      checkRewriteResponse(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceAccount();
      var od = api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('resource-BucketAccessControlsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucketAccessControls());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucketAccessControls(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucketAccessControl(response);
      })));
    });
  });

  unittest.group('resource-BucketsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_bucket = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_bucket = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucket(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_bucket = 'foo';
      var arg_optionsRequestedPolicyVersion = 42;
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["optionsRequestedPolicyVersion"].first),
            unittest.equals(arg_optionsRequestedPolicyVersion));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_bucket,
              optionsRequestedPolicyVersion: arg_optionsRequestedPolicyVersion,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_project = 'foo';
      var arg_predefinedAcl = 'foo';
      var arg_predefinedDefaultObjectAcl = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("b"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["project"].first, unittest.equals(arg_project));
        unittest.expect(queryMap["predefinedAcl"].first,
            unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["predefinedDefaultObjectAcl"].first,
            unittest.equals(arg_predefinedDefaultObjectAcl));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project,
              predefinedAcl: arg_predefinedAcl,
              predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucket(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_project = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_prefix = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("b"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["project"].first, unittest.equals(arg_project));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBuckets());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuckets(response);
      })));
    });

    unittest.test('method--lockRetentionPolicy', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_bucket = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/lockRetentionPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/lockRetentionPolicy"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lockRetentionPolicy(arg_bucket, arg_ifMetagenerationMatch,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucket(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_bucket = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_predefinedAcl = 'foo';
      var arg_predefinedDefaultObjectAcl = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first,
            unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["predefinedDefaultObjectAcl"].first,
            unittest.equals(arg_predefinedDefaultObjectAcl));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              predefinedAcl: arg_predefinedAcl,
              predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucket(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_request = buildPolicy();
      var arg_bucket = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_bucket = 'foo';
      var arg_permissions = buildUnnamed3991();
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/iam/testPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/iam/testPermissions"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["permissions"], unittest.equals(arg_permissions));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_bucket, arg_permissions,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.BucketsResourceApi res = api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_bucket = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_predefinedAcl = 'foo';
      var arg_predefinedDefaultObjectAcl = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first,
            unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["predefinedDefaultObjectAcl"].first,
            unittest.equals(arg_predefinedDefaultObjectAcl));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              predefinedAcl: arg_predefinedAcl,
              predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBucket(response);
      })));
    });
  });

  unittest.group('resource-ChannelsResourceApi', () {
    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      api.ChannelsResourceApi res = api.StorageApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("channels/stop"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-DefaultObjectAccessControlsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/defaultObjectAcl"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/defaultObjectAcl"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControls());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControls(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = 'foo';
      var arg_entity = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });
  });

  unittest.group('resource-NotificationsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.NotificationsResourceApi res = api.StorageApi(mock).notifications;
      var arg_bucket = 'foo';
      var arg_notification = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/notificationConfigs/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_notification'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_notification,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.NotificationsResourceApi res = api.StorageApi(mock).notifications;
      var arg_bucket = 'foo';
      var arg_notification = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/notificationConfigs/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_notification'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_notification,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotification(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.NotificationsResourceApi res = api.StorageApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_bucket = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Notification.fromJson(json);
        checkNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/notificationConfigs"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotification(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.NotificationsResourceApi res = api.StorageApi(mock).notifications;
      var arg_bucket = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/notificationConfigs"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotifications());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotifications(response);
      })));
    });
  });

  unittest.group('resource-ObjectAccessControlsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          api.StorageApi(mock).objectAccessControls;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_entity = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          api.StorageApi(mock).objectAccessControls;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_entity = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket, arg_object,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          api.StorageApi(mock).objectAccessControls;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControls());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket, arg_object,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControls(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_entity = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_entity = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entity'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjectAccessControl(response);
      })));
    });
  });

  unittest.group('resource-ObjectsResourceApi', () {
    unittest.test('method--compose', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildComposeRequest();
      var arg_destinationBucket = 'foo';
      var arg_destinationObject = 'foo';
      var arg_destinationPredefinedAcl = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_kmsKeyName = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ComposeRequest.fromJson(json);
        checkComposeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_destinationBucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/compose', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_destinationObject'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/compose"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["destinationPredefinedAcl"].first,
            unittest.equals(arg_destinationPredefinedAcl));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(
            queryMap["kmsKeyName"].first, unittest.equals(arg_kmsKeyName));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .compose(arg_request, arg_destinationBucket, arg_destinationObject,
              destinationPredefinedAcl: arg_destinationPredefinedAcl,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              kmsKeyName: arg_kmsKeyName,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObject(response);
      })));
    });

    unittest.test('method--copy', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_sourceBucket = 'foo';
      var arg_sourceObject = 'foo';
      var arg_destinationBucket = 'foo';
      var arg_destinationObject = 'foo';
      var arg_destinationKmsKeyName = 'foo';
      var arg_destinationPredefinedAcl = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_ifSourceGenerationMatch = 'foo';
      var arg_ifSourceGenerationNotMatch = 'foo';
      var arg_ifSourceMetagenerationMatch = 'foo';
      var arg_ifSourceMetagenerationNotMatch = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_sourceGeneration = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_sourceBucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/copyTo/b/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_sourceObject'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/copyTo/b/"));
        pathOffset += 10;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_destinationBucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_destinationObject'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["destinationKmsKeyName"].first,
            unittest.equals(arg_destinationKmsKeyName));
        unittest.expect(queryMap["destinationPredefinedAcl"].first,
            unittest.equals(arg_destinationPredefinedAcl));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["ifSourceGenerationMatch"].first,
            unittest.equals(arg_ifSourceGenerationMatch));
        unittest.expect(queryMap["ifSourceGenerationNotMatch"].first,
            unittest.equals(arg_ifSourceGenerationNotMatch));
        unittest.expect(queryMap["ifSourceMetagenerationMatch"].first,
            unittest.equals(arg_ifSourceMetagenerationMatch));
        unittest.expect(queryMap["ifSourceMetagenerationNotMatch"].first,
            unittest.equals(arg_ifSourceMetagenerationNotMatch));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(queryMap["sourceGeneration"].first,
            unittest.equals(arg_sourceGeneration));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copy(arg_request, arg_sourceBucket, arg_sourceObject,
              arg_destinationBucket, arg_destinationObject,
              destinationKmsKeyName: arg_destinationKmsKeyName,
              destinationPredefinedAcl: arg_destinationPredefinedAcl,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              ifSourceGenerationMatch: arg_ifSourceGenerationMatch,
              ifSourceGenerationNotMatch: arg_ifSourceGenerationNotMatch,
              ifSourceMetagenerationMatch: arg_ifSourceMetagenerationMatch,
              ifSourceMetagenerationNotMatch:
                  arg_ifSourceMetagenerationNotMatch,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              sourceGeneration: arg_sourceGeneration,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObject(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_object'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_object,
              generation: arg_generation,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_object'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_object,
              generation: arg_generation,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObject(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_bucket, arg_object,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--insert', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = 'foo';
      var arg_contentEncoding = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_kmsKeyName = 'foo';
      var arg_name = 'foo';
      var arg_predefinedAcl = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("/o"));
        pathOffset += 2;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["contentEncoding"].first,
            unittest.equals(arg_contentEncoding));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(
            queryMap["kmsKeyName"].first, unittest.equals(arg_kmsKeyName));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["predefinedAcl"].first,
            unittest.equals(arg_predefinedAcl));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              contentEncoding: arg_contentEncoding,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              kmsKeyName: arg_kmsKeyName,
              name: arg_name,
              predefinedAcl: arg_predefinedAcl,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObject(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_bucket = 'foo';
      var arg_delimiter = 'foo';
      var arg_endOffset = 'foo';
      var arg_includeTrailingDelimiter = true;
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_prefix = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_startOffset = 'foo';
      var arg_userProject = 'foo';
      var arg_versions = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("/o"));
        pathOffset += 2;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["delimiter"].first, unittest.equals(arg_delimiter));
        unittest.expect(
            queryMap["endOffset"].first, unittest.equals(arg_endOffset));
        unittest.expect(queryMap["includeTrailingDelimiter"].first,
            unittest.equals("$arg_includeTrailingDelimiter"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["startOffset"].first, unittest.equals(arg_startOffset));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(
            queryMap["versions"].first, unittest.equals("$arg_versions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObjects());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              delimiter: arg_delimiter,
              endOffset: arg_endOffset,
              includeTrailingDelimiter: arg_includeTrailingDelimiter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              startOffset: arg_startOffset,
              userProject: arg_userProject,
              versions: arg_versions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjects(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_predefinedAcl = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_object'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first,
            unittest.equals(arg_predefinedAcl));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_object,
              generation: arg_generation,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              predefinedAcl: arg_predefinedAcl,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObject(response);
      })));
    });

    unittest.test('method--rewrite', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_sourceBucket = 'foo';
      var arg_sourceObject = 'foo';
      var arg_destinationBucket = 'foo';
      var arg_destinationObject = 'foo';
      var arg_destinationKmsKeyName = 'foo';
      var arg_destinationPredefinedAcl = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_ifSourceGenerationMatch = 'foo';
      var arg_ifSourceGenerationNotMatch = 'foo';
      var arg_ifSourceMetagenerationMatch = 'foo';
      var arg_ifSourceMetagenerationNotMatch = 'foo';
      var arg_maxBytesRewrittenPerCall = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_rewriteToken = 'foo';
      var arg_sourceGeneration = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_sourceBucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/rewriteTo/b/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_sourceObject'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/rewriteTo/b/"));
        pathOffset += 13;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_destinationBucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_destinationObject'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["destinationKmsKeyName"].first,
            unittest.equals(arg_destinationKmsKeyName));
        unittest.expect(queryMap["destinationPredefinedAcl"].first,
            unittest.equals(arg_destinationPredefinedAcl));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["ifSourceGenerationMatch"].first,
            unittest.equals(arg_ifSourceGenerationMatch));
        unittest.expect(queryMap["ifSourceGenerationNotMatch"].first,
            unittest.equals(arg_ifSourceGenerationNotMatch));
        unittest.expect(queryMap["ifSourceMetagenerationMatch"].first,
            unittest.equals(arg_ifSourceMetagenerationMatch));
        unittest.expect(queryMap["ifSourceMetagenerationNotMatch"].first,
            unittest.equals(arg_ifSourceMetagenerationNotMatch));
        unittest.expect(queryMap["maxBytesRewrittenPerCall"].first,
            unittest.equals(arg_maxBytesRewrittenPerCall));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["rewriteToken"].first, unittest.equals(arg_rewriteToken));
        unittest.expect(queryMap["sourceGeneration"].first,
            unittest.equals(arg_sourceGeneration));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRewriteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rewrite(arg_request, arg_sourceBucket, arg_sourceObject,
              arg_destinationBucket, arg_destinationObject,
              destinationKmsKeyName: arg_destinationKmsKeyName,
              destinationPredefinedAcl: arg_destinationPredefinedAcl,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              ifSourceGenerationMatch: arg_ifSourceGenerationMatch,
              ifSourceGenerationNotMatch: arg_ifSourceGenerationNotMatch,
              ifSourceMetagenerationMatch: arg_ifSourceMetagenerationMatch,
              ifSourceMetagenerationNotMatch:
                  arg_ifSourceMetagenerationNotMatch,
              maxBytesRewrittenPerCall: arg_maxBytesRewrittenPerCall,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              rewriteToken: arg_rewriteToken,
              sourceGeneration: arg_sourceGeneration,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRewriteResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildPolicy();
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_bucket, arg_object,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_permissions = buildUnnamed3992();
      var arg_generation = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf('/iam/testPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_object'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/iam/testPermissions"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["permissions"], unittest.equals(arg_permissions));
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_bucket, arg_object, arg_permissions,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = 'foo';
      var arg_object = 'foo';
      var arg_generation = 'foo';
      var arg_ifGenerationMatch = 'foo';
      var arg_ifGenerationNotMatch = 'foo';
      var arg_ifMetagenerationMatch = 'foo';
      var arg_ifMetagenerationNotMatch = 'foo';
      var arg_predefinedAcl = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_object'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first,
            unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first,
            unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first,
            unittest.equals(arg_predefinedAcl));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_object,
              generation: arg_generation,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifGenerationNotMatch: arg_ifGenerationNotMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              predefinedAcl: arg_predefinedAcl,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObject(response);
      })));
    });

    unittest.test('method--watchAll', () {
      var mock = HttpServerMock();
      api.ObjectsResourceApi res = api.StorageApi(mock).objects;
      var arg_request = buildChannel();
      var arg_bucket = 'foo';
      var arg_delimiter = 'foo';
      var arg_endOffset = 'foo';
      var arg_includeTrailingDelimiter = true;
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_prefix = 'foo';
      var arg_projection = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_startOffset = 'foo';
      var arg_userProject = 'foo';
      var arg_versions = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf('/o/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_bucket'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/o/watch"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["delimiter"].first, unittest.equals(arg_delimiter));
        unittest.expect(
            queryMap["endOffset"].first, unittest.equals(arg_endOffset));
        unittest.expect(queryMap["includeTrailingDelimiter"].first,
            unittest.equals("$arg_includeTrailingDelimiter"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["startOffset"].first, unittest.equals(arg_startOffset));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(
            queryMap["versions"].first, unittest.equals("$arg_versions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watchAll(arg_request, arg_bucket,
              delimiter: arg_delimiter,
              endOffset: arg_endOffset,
              includeTrailingDelimiter: arg_includeTrailingDelimiter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              startOffset: arg_startOffset,
              userProject: arg_userProject,
              versions: arg_versions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group('resource-ProjectsHmacKeysResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = 'foo';
      var arg_serviceAccountEmail = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf('/hmacKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/hmacKeys"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["serviceAccountEmail"].first,
            unittest.equals(arg_serviceAccountEmail));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHmacKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_projectId, arg_serviceAccountEmail,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKey(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = 'foo';
      var arg_accessId = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf('/hmacKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/hmacKeys/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accessId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_accessId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = 'foo';
      var arg_accessId = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf('/hmacKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/hmacKeys/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accessId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHmacKeyMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_accessId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKeyMetadata(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_serviceAccountEmail = 'foo';
      var arg_showDeletedKeys = true;
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf('/hmacKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/hmacKeys"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["serviceAccountEmail"].first,
            unittest.equals(arg_serviceAccountEmail));
        unittest.expect(queryMap["showDeletedKeys"].first,
            unittest.equals("$arg_showDeletedKeys"));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHmacKeysMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              serviceAccountEmail: arg_serviceAccountEmail,
              showDeletedKeys: arg_showDeletedKeys,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKeysMetadata(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          api.StorageApi(mock).projects.hmacKeys;
      var arg_request = buildHmacKeyMetadata();
      var arg_projectId = 'foo';
      var arg_accessId = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.HmacKeyMetadata.fromJson(json);
        checkHmacKeyMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf('/hmacKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/hmacKeys/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accessId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHmacKeyMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_accessId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKeyMetadata(response);
      })));
    });
  });

  unittest.group('resource-ProjectsServiceAccountResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsServiceAccountResourceApi res =
          api.StorageApi(mock).projects.serviceAccount;
      var arg_projectId = 'foo';
      var arg_provisionalUserProject = 'foo';
      var arg_userProject = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf('/serviceAccount', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/serviceAccount"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response);
      })));
    });
  });
}
