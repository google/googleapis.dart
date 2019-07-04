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

buildUnnamed4742() {
  var o = new core.List<api.BucketAccessControl>();
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

checkUnnamed4742(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketBilling = 0;
buildBucketBilling() {
  var o = new api.BucketBilling();
  buildCounterBucketBilling++;
  if (buildCounterBucketBilling < 3) {
    o.requesterPays = true;
  }
  buildCounterBucketBilling--;
  return o;
}

checkBucketBilling(api.BucketBilling o) {
  buildCounterBucketBilling++;
  if (buildCounterBucketBilling < 3) {
    unittest.expect(o.requesterPays, unittest.isTrue);
  }
  buildCounterBucketBilling--;
}

buildUnnamed4743() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4743(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4744() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4744(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4745() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4745(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBucketCors = 0;
buildBucketCors() {
  var o = new api.BucketCors();
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    o.maxAgeSeconds = 42;
    o.method = buildUnnamed4743();
    o.origin = buildUnnamed4744();
    o.responseHeader = buildUnnamed4745();
  }
  buildCounterBucketCors--;
  return o;
}

checkBucketCors(api.BucketCors o) {
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    unittest.expect(o.maxAgeSeconds, unittest.equals(42));
    checkUnnamed4743(o.method);
    checkUnnamed4744(o.origin);
    checkUnnamed4745(o.responseHeader);
  }
  buildCounterBucketCors--;
}

buildUnnamed4746() {
  var o = new core.List<api.BucketCors>();
  o.add(buildBucketCors());
  o.add(buildBucketCors());
  return o;
}

checkUnnamed4746(core.List<api.BucketCors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketCors(o[0]);
  checkBucketCors(o[1]);
}

buildUnnamed4747() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed4747(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterBucketEncryption = 0;
buildBucketEncryption() {
  var o = new api.BucketEncryption();
  buildCounterBucketEncryption++;
  if (buildCounterBucketEncryption < 3) {
    o.defaultKmsKeyName = "foo";
  }
  buildCounterBucketEncryption--;
  return o;
}

checkBucketEncryption(api.BucketEncryption o) {
  buildCounterBucketEncryption++;
  if (buildCounterBucketEncryption < 3) {
    unittest.expect(o.defaultKmsKeyName, unittest.equals('foo'));
  }
  buildCounterBucketEncryption--;
}

core.int buildCounterBucketIamConfigurationBucketPolicyOnly = 0;
buildBucketIamConfigurationBucketPolicyOnly() {
  var o = new api.BucketIamConfigurationBucketPolicyOnly();
  buildCounterBucketIamConfigurationBucketPolicyOnly++;
  if (buildCounterBucketIamConfigurationBucketPolicyOnly < 3) {
    o.enabled = true;
    o.lockedTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBucketIamConfigurationBucketPolicyOnly--;
  return o;
}

checkBucketIamConfigurationBucketPolicyOnly(
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
buildBucketIamConfigurationUniformBucketLevelAccess() {
  var o = new api.BucketIamConfigurationUniformBucketLevelAccess();
  buildCounterBucketIamConfigurationUniformBucketLevelAccess++;
  if (buildCounterBucketIamConfigurationUniformBucketLevelAccess < 3) {
    o.enabled = true;
    o.lockedTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBucketIamConfigurationUniformBucketLevelAccess--;
  return o;
}

checkBucketIamConfigurationUniformBucketLevelAccess(
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
buildBucketIamConfiguration() {
  var o = new api.BucketIamConfiguration();
  buildCounterBucketIamConfiguration++;
  if (buildCounterBucketIamConfiguration < 3) {
    o.bucketPolicyOnly = buildBucketIamConfigurationBucketPolicyOnly();
    o.uniformBucketLevelAccess =
        buildBucketIamConfigurationUniformBucketLevelAccess();
  }
  buildCounterBucketIamConfiguration--;
  return o;
}

checkBucketIamConfiguration(api.BucketIamConfiguration o) {
  buildCounterBucketIamConfiguration++;
  if (buildCounterBucketIamConfiguration < 3) {
    checkBucketIamConfigurationBucketPolicyOnly(o.bucketPolicyOnly);
    checkBucketIamConfigurationUniformBucketLevelAccess(
        o.uniformBucketLevelAccess);
  }
  buildCounterBucketIamConfiguration--;
}

buildUnnamed4748() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4748(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterBucketLifecycleRuleAction = 0;
buildBucketLifecycleRuleAction() {
  var o = new api.BucketLifecycleRuleAction();
  buildCounterBucketLifecycleRuleAction++;
  if (buildCounterBucketLifecycleRuleAction < 3) {
    o.storageClass = "foo";
    o.type = "foo";
  }
  buildCounterBucketLifecycleRuleAction--;
  return o;
}

checkBucketLifecycleRuleAction(api.BucketLifecycleRuleAction o) {
  buildCounterBucketLifecycleRuleAction++;
  if (buildCounterBucketLifecycleRuleAction < 3) {
    unittest.expect(o.storageClass, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBucketLifecycleRuleAction--;
}

buildUnnamed4749() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4749(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBucketLifecycleRuleCondition = 0;
buildBucketLifecycleRuleCondition() {
  var o = new api.BucketLifecycleRuleCondition();
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    o.age = 42;
    o.createdBefore = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.isLive = true;
    o.matchesPattern = "foo";
    o.matchesStorageClass = buildUnnamed4749();
    o.numNewerVersions = 42;
  }
  buildCounterBucketLifecycleRuleCondition--;
  return o;
}

checkBucketLifecycleRuleCondition(api.BucketLifecycleRuleCondition o) {
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    unittest.expect(o.age, unittest.equals(42));
    unittest.expect(o.createdBefore,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.isLive, unittest.isTrue);
    unittest.expect(o.matchesPattern, unittest.equals('foo'));
    checkUnnamed4749(o.matchesStorageClass);
    unittest.expect(o.numNewerVersions, unittest.equals(42));
  }
  buildCounterBucketLifecycleRuleCondition--;
}

core.int buildCounterBucketLifecycleRule = 0;
buildBucketLifecycleRule() {
  var o = new api.BucketLifecycleRule();
  buildCounterBucketLifecycleRule++;
  if (buildCounterBucketLifecycleRule < 3) {
    o.action = buildBucketLifecycleRuleAction();
    o.condition = buildBucketLifecycleRuleCondition();
  }
  buildCounterBucketLifecycleRule--;
  return o;
}

checkBucketLifecycleRule(api.BucketLifecycleRule o) {
  buildCounterBucketLifecycleRule++;
  if (buildCounterBucketLifecycleRule < 3) {
    checkBucketLifecycleRuleAction(o.action);
    checkBucketLifecycleRuleCondition(o.condition);
  }
  buildCounterBucketLifecycleRule--;
}

buildUnnamed4750() {
  var o = new core.List<api.BucketLifecycleRule>();
  o.add(buildBucketLifecycleRule());
  o.add(buildBucketLifecycleRule());
  return o;
}

checkUnnamed4750(core.List<api.BucketLifecycleRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketLifecycleRule(o[0]);
  checkBucketLifecycleRule(o[1]);
}

core.int buildCounterBucketLifecycle = 0;
buildBucketLifecycle() {
  var o = new api.BucketLifecycle();
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    o.rule = buildUnnamed4750();
  }
  buildCounterBucketLifecycle--;
  return o;
}

checkBucketLifecycle(api.BucketLifecycle o) {
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    checkUnnamed4750(o.rule);
  }
  buildCounterBucketLifecycle--;
}

core.int buildCounterBucketLogging = 0;
buildBucketLogging() {
  var o = new api.BucketLogging();
  buildCounterBucketLogging++;
  if (buildCounterBucketLogging < 3) {
    o.logBucket = "foo";
    o.logObjectPrefix = "foo";
  }
  buildCounterBucketLogging--;
  return o;
}

checkBucketLogging(api.BucketLogging o) {
  buildCounterBucketLogging++;
  if (buildCounterBucketLogging < 3) {
    unittest.expect(o.logBucket, unittest.equals('foo'));
    unittest.expect(o.logObjectPrefix, unittest.equals('foo'));
  }
  buildCounterBucketLogging--;
}

core.int buildCounterBucketOwner = 0;
buildBucketOwner() {
  var o = new api.BucketOwner();
  buildCounterBucketOwner++;
  if (buildCounterBucketOwner < 3) {
    o.entity = "foo";
    o.entityId = "foo";
  }
  buildCounterBucketOwner--;
  return o;
}

checkBucketOwner(api.BucketOwner o) {
  buildCounterBucketOwner++;
  if (buildCounterBucketOwner < 3) {
    unittest.expect(o.entity, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
  }
  buildCounterBucketOwner--;
}

core.int buildCounterBucketRetentionPolicy = 0;
buildBucketRetentionPolicy() {
  var o = new api.BucketRetentionPolicy();
  buildCounterBucketRetentionPolicy++;
  if (buildCounterBucketRetentionPolicy < 3) {
    o.effectiveTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.isLocked = true;
    o.retentionPeriod = "foo";
  }
  buildCounterBucketRetentionPolicy--;
  return o;
}

checkBucketRetentionPolicy(api.BucketRetentionPolicy o) {
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
buildBucketVersioning() {
  var o = new api.BucketVersioning();
  buildCounterBucketVersioning++;
  if (buildCounterBucketVersioning < 3) {
    o.enabled = true;
  }
  buildCounterBucketVersioning--;
  return o;
}

checkBucketVersioning(api.BucketVersioning o) {
  buildCounterBucketVersioning++;
  if (buildCounterBucketVersioning < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterBucketVersioning--;
}

core.int buildCounterBucketWebsite = 0;
buildBucketWebsite() {
  var o = new api.BucketWebsite();
  buildCounterBucketWebsite++;
  if (buildCounterBucketWebsite < 3) {
    o.mainPageSuffix = "foo";
    o.notFoundPage = "foo";
  }
  buildCounterBucketWebsite--;
  return o;
}

checkBucketWebsite(api.BucketWebsite o) {
  buildCounterBucketWebsite++;
  if (buildCounterBucketWebsite < 3) {
    unittest.expect(o.mainPageSuffix, unittest.equals('foo'));
    unittest.expect(o.notFoundPage, unittest.equals('foo'));
  }
  buildCounterBucketWebsite--;
}

core.int buildCounterBucket = 0;
buildBucket() {
  var o = new api.Bucket();
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    o.acl = buildUnnamed4742();
    o.billing = buildBucketBilling();
    o.cors = buildUnnamed4746();
    o.defaultEventBasedHold = true;
    o.defaultObjectAcl = buildUnnamed4747();
    o.encryption = buildBucketEncryption();
    o.etag = "foo";
    o.iamConfiguration = buildBucketIamConfiguration();
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed4748();
    o.lifecycle = buildBucketLifecycle();
    o.location = "foo";
    o.locationType = "foo";
    o.logging = buildBucketLogging();
    o.metageneration = "foo";
    o.name = "foo";
    o.owner = buildBucketOwner();
    o.projectNumber = "foo";
    o.retentionPolicy = buildBucketRetentionPolicy();
    o.selfLink = "foo";
    o.storageClass = "foo";
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.versioning = buildBucketVersioning();
    o.website = buildBucketWebsite();
  }
  buildCounterBucket--;
  return o;
}

checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    checkUnnamed4742(o.acl);
    checkBucketBilling(o.billing);
    checkUnnamed4746(o.cors);
    unittest.expect(o.defaultEventBasedHold, unittest.isTrue);
    checkUnnamed4747(o.defaultObjectAcl);
    checkBucketEncryption(o.encryption);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkBucketIamConfiguration(o.iamConfiguration);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4748(o.labels);
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
  }
  buildCounterBucket--;
}

core.int buildCounterBucketAccessControlProjectTeam = 0;
buildBucketAccessControlProjectTeam() {
  var o = new api.BucketAccessControlProjectTeam();
  buildCounterBucketAccessControlProjectTeam++;
  if (buildCounterBucketAccessControlProjectTeam < 3) {
    o.projectNumber = "foo";
    o.team = "foo";
  }
  buildCounterBucketAccessControlProjectTeam--;
  return o;
}

checkBucketAccessControlProjectTeam(api.BucketAccessControlProjectTeam o) {
  buildCounterBucketAccessControlProjectTeam++;
  if (buildCounterBucketAccessControlProjectTeam < 3) {
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.team, unittest.equals('foo'));
  }
  buildCounterBucketAccessControlProjectTeam--;
}

core.int buildCounterBucketAccessControl = 0;
buildBucketAccessControl() {
  var o = new api.BucketAccessControl();
  buildCounterBucketAccessControl++;
  if (buildCounterBucketAccessControl < 3) {
    o.bucket = "foo";
    o.domain = "foo";
    o.email = "foo";
    o.entity = "foo";
    o.entityId = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.projectTeam = buildBucketAccessControlProjectTeam();
    o.role = "foo";
    o.selfLink = "foo";
  }
  buildCounterBucketAccessControl--;
  return o;
}

checkBucketAccessControl(api.BucketAccessControl o) {
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

buildUnnamed4751() {
  var o = new core.List<api.BucketAccessControl>();
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

checkUnnamed4751(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketAccessControls = 0;
buildBucketAccessControls() {
  var o = new api.BucketAccessControls();
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    o.items = buildUnnamed4751();
    o.kind = "foo";
  }
  buildCounterBucketAccessControls--;
  return o;
}

checkBucketAccessControls(api.BucketAccessControls o) {
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    checkUnnamed4751(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBucketAccessControls--;
}

buildUnnamed4752() {
  var o = new core.List<api.Bucket>();
  o.add(buildBucket());
  o.add(buildBucket());
  return o;
}

checkUnnamed4752(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBuckets = 0;
buildBuckets() {
  var o = new api.Buckets();
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    o.items = buildUnnamed4752();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterBuckets--;
  return o;
}

checkBuckets(api.Buckets o) {
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    checkUnnamed4752(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuckets--;
}

buildUnnamed4753() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4753(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = "foo";
    o.expiration = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.params = buildUnnamed4753();
    o.payload = true;
    o.resourceId = "foo";
    o.resourceUri = "foo";
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4753(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterComposeRequestSourceObjectsObjectPreconditions = 0;
buildComposeRequestSourceObjectsObjectPreconditions() {
  var o = new api.ComposeRequestSourceObjectsObjectPreconditions();
  buildCounterComposeRequestSourceObjectsObjectPreconditions++;
  if (buildCounterComposeRequestSourceObjectsObjectPreconditions < 3) {
    o.ifGenerationMatch = "foo";
  }
  buildCounterComposeRequestSourceObjectsObjectPreconditions--;
  return o;
}

checkComposeRequestSourceObjectsObjectPreconditions(
    api.ComposeRequestSourceObjectsObjectPreconditions o) {
  buildCounterComposeRequestSourceObjectsObjectPreconditions++;
  if (buildCounterComposeRequestSourceObjectsObjectPreconditions < 3) {
    unittest.expect(o.ifGenerationMatch, unittest.equals('foo'));
  }
  buildCounterComposeRequestSourceObjectsObjectPreconditions--;
}

core.int buildCounterComposeRequestSourceObjects = 0;
buildComposeRequestSourceObjects() {
  var o = new api.ComposeRequestSourceObjects();
  buildCounterComposeRequestSourceObjects++;
  if (buildCounterComposeRequestSourceObjects < 3) {
    o.generation = "foo";
    o.name = "foo";
    o.objectPreconditions =
        buildComposeRequestSourceObjectsObjectPreconditions();
  }
  buildCounterComposeRequestSourceObjects--;
  return o;
}

checkComposeRequestSourceObjects(api.ComposeRequestSourceObjects o) {
  buildCounterComposeRequestSourceObjects++;
  if (buildCounterComposeRequestSourceObjects < 3) {
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkComposeRequestSourceObjectsObjectPreconditions(o.objectPreconditions);
  }
  buildCounterComposeRequestSourceObjects--;
}

buildUnnamed4754() {
  var o = new core.List<api.ComposeRequestSourceObjects>();
  o.add(buildComposeRequestSourceObjects());
  o.add(buildComposeRequestSourceObjects());
  return o;
}

checkUnnamed4754(core.List<api.ComposeRequestSourceObjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComposeRequestSourceObjects(o[0]);
  checkComposeRequestSourceObjects(o[1]);
}

core.int buildCounterComposeRequest = 0;
buildComposeRequest() {
  var o = new api.ComposeRequest();
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    o.destination = buildObject();
    o.kind = "foo";
    o.sourceObjects = buildUnnamed4754();
  }
  buildCounterComposeRequest--;
  return o;
}

checkComposeRequest(api.ComposeRequest o) {
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    checkObject(o.destination);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4754(o.sourceObjects);
  }
  buildCounterComposeRequest--;
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

core.int buildCounterHmacKey = 0;
buildHmacKey() {
  var o = new api.HmacKey();
  buildCounterHmacKey++;
  if (buildCounterHmacKey < 3) {
    o.kind = "foo";
    o.metadata = buildHmacKeyMetadata();
    o.secret = "foo";
  }
  buildCounterHmacKey--;
  return o;
}

checkHmacKey(api.HmacKey o) {
  buildCounterHmacKey++;
  if (buildCounterHmacKey < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkHmacKeyMetadata(o.metadata);
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterHmacKey--;
}

core.int buildCounterHmacKeyMetadata = 0;
buildHmacKeyMetadata() {
  var o = new api.HmacKeyMetadata();
  buildCounterHmacKeyMetadata++;
  if (buildCounterHmacKeyMetadata < 3) {
    o.accessId = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.projectId = "foo";
    o.selfLink = "foo";
    o.serviceAccountEmail = "foo";
    o.state = "foo";
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterHmacKeyMetadata--;
  return o;
}

checkHmacKeyMetadata(api.HmacKeyMetadata o) {
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

buildUnnamed4755() {
  var o = new core.List<api.HmacKeyMetadata>();
  o.add(buildHmacKeyMetadata());
  o.add(buildHmacKeyMetadata());
  return o;
}

checkUnnamed4755(core.List<api.HmacKeyMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHmacKeyMetadata(o[0]);
  checkHmacKeyMetadata(o[1]);
}

core.int buildCounterHmacKeysMetadata = 0;
buildHmacKeysMetadata() {
  var o = new api.HmacKeysMetadata();
  buildCounterHmacKeysMetadata++;
  if (buildCounterHmacKeysMetadata < 3) {
    o.items = buildUnnamed4755();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterHmacKeysMetadata--;
  return o;
}

checkHmacKeysMetadata(api.HmacKeysMetadata o) {
  buildCounterHmacKeysMetadata++;
  if (buildCounterHmacKeysMetadata < 3) {
    checkUnnamed4755(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterHmacKeysMetadata--;
}

buildUnnamed4756() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4756(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4757() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4757(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.customAttributes = buildUnnamed4756();
    o.etag = "foo";
    o.eventTypes = buildUnnamed4757();
    o.id = "foo";
    o.kind = "foo";
    o.objectNamePrefix = "foo";
    o.payloadFormat = "foo";
    o.selfLink = "foo";
    o.topic = "foo";
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    checkUnnamed4756(o.customAttributes);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4757(o.eventTypes);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.objectNamePrefix, unittest.equals('foo'));
    unittest.expect(o.payloadFormat, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

buildUnnamed4758() {
  var o = new core.List<api.Notification>();
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

checkUnnamed4758(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotifications = 0;
buildNotifications() {
  var o = new api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.items = buildUnnamed4758();
    o.kind = "foo";
  }
  buildCounterNotifications--;
  return o;
}

checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    checkUnnamed4758(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterNotifications--;
}

buildUnnamed4759() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed4759(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectCustomerEncryption = 0;
buildObjectCustomerEncryption() {
  var o = new api.ObjectCustomerEncryption();
  buildCounterObjectCustomerEncryption++;
  if (buildCounterObjectCustomerEncryption < 3) {
    o.encryptionAlgorithm = "foo";
    o.keySha256 = "foo";
  }
  buildCounterObjectCustomerEncryption--;
  return o;
}

checkObjectCustomerEncryption(api.ObjectCustomerEncryption o) {
  buildCounterObjectCustomerEncryption++;
  if (buildCounterObjectCustomerEncryption < 3) {
    unittest.expect(o.encryptionAlgorithm, unittest.equals('foo'));
    unittest.expect(o.keySha256, unittest.equals('foo'));
  }
  buildCounterObjectCustomerEncryption--;
}

buildUnnamed4760() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4760(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterObjectOwner = 0;
buildObjectOwner() {
  var o = new api.ObjectOwner();
  buildCounterObjectOwner++;
  if (buildCounterObjectOwner < 3) {
    o.entity = "foo";
    o.entityId = "foo";
  }
  buildCounterObjectOwner--;
  return o;
}

checkObjectOwner(api.ObjectOwner o) {
  buildCounterObjectOwner++;
  if (buildCounterObjectOwner < 3) {
    unittest.expect(o.entity, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
  }
  buildCounterObjectOwner--;
}

core.int buildCounterObject = 0;
buildObject() {
  var o = new api.Object();
  buildCounterObject++;
  if (buildCounterObject < 3) {
    o.acl = buildUnnamed4759();
    o.bucket = "foo";
    o.cacheControl = "foo";
    o.componentCount = 42;
    o.contentDisposition = "foo";
    o.contentEncoding = "foo";
    o.contentLanguage = "foo";
    o.contentType = "foo";
    o.crc32c = "foo";
    o.customerEncryption = buildObjectCustomerEncryption();
    o.etag = "foo";
    o.eventBasedHold = true;
    o.generation = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.kmsKeyName = "foo";
    o.md5Hash = "foo";
    o.mediaLink = "foo";
    o.metadata = buildUnnamed4760();
    o.metageneration = "foo";
    o.name = "foo";
    o.owner = buildObjectOwner();
    o.retentionExpirationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.selfLink = "foo";
    o.size = "foo";
    o.storageClass = "foo";
    o.temporaryHold = true;
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeDeleted = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeStorageClassUpdated = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterObject--;
  return o;
}

checkObject(api.Object o) {
  buildCounterObject++;
  if (buildCounterObject < 3) {
    checkUnnamed4759(o.acl);
    unittest.expect(o.bucket, unittest.equals('foo'));
    unittest.expect(o.cacheControl, unittest.equals('foo'));
    unittest.expect(o.componentCount, unittest.equals(42));
    unittest.expect(o.contentDisposition, unittest.equals('foo'));
    unittest.expect(o.contentEncoding, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.crc32c, unittest.equals('foo'));
    checkObjectCustomerEncryption(o.customerEncryption);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventBasedHold, unittest.isTrue);
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    unittest.expect(o.mediaLink, unittest.equals('foo'));
    checkUnnamed4760(o.metadata);
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
buildObjectAccessControlProjectTeam() {
  var o = new api.ObjectAccessControlProjectTeam();
  buildCounterObjectAccessControlProjectTeam++;
  if (buildCounterObjectAccessControlProjectTeam < 3) {
    o.projectNumber = "foo";
    o.team = "foo";
  }
  buildCounterObjectAccessControlProjectTeam--;
  return o;
}

checkObjectAccessControlProjectTeam(api.ObjectAccessControlProjectTeam o) {
  buildCounterObjectAccessControlProjectTeam++;
  if (buildCounterObjectAccessControlProjectTeam < 3) {
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.team, unittest.equals('foo'));
  }
  buildCounterObjectAccessControlProjectTeam--;
}

core.int buildCounterObjectAccessControl = 0;
buildObjectAccessControl() {
  var o = new api.ObjectAccessControl();
  buildCounterObjectAccessControl++;
  if (buildCounterObjectAccessControl < 3) {
    o.bucket = "foo";
    o.domain = "foo";
    o.email = "foo";
    o.entity = "foo";
    o.entityId = "foo";
    o.etag = "foo";
    o.generation = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.object = "foo";
    o.projectTeam = buildObjectAccessControlProjectTeam();
    o.role = "foo";
    o.selfLink = "foo";
  }
  buildCounterObjectAccessControl--;
  return o;
}

checkObjectAccessControl(api.ObjectAccessControl o) {
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

buildUnnamed4761() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed4761(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectAccessControls = 0;
buildObjectAccessControls() {
  var o = new api.ObjectAccessControls();
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    o.items = buildUnnamed4761();
    o.kind = "foo";
  }
  buildCounterObjectAccessControls--;
  return o;
}

checkObjectAccessControls(api.ObjectAccessControls o) {
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    checkUnnamed4761(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterObjectAccessControls--;
}

buildUnnamed4762() {
  var o = new core.List<api.Object>();
  o.add(buildObject());
  o.add(buildObject());
  return o;
}

checkUnnamed4762(core.List<api.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObject(o[0]);
  checkObject(o[1]);
}

buildUnnamed4763() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4763(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjects = 0;
buildObjects() {
  var o = new api.Objects();
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    o.items = buildUnnamed4762();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.prefixes = buildUnnamed4763();
  }
  buildCounterObjects--;
  return o;
}

checkObjects(api.Objects o) {
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    checkUnnamed4762(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4763(o.prefixes);
  }
  buildCounterObjects--;
}

buildUnnamed4764() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4764(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicyBindings = 0;
buildPolicyBindings() {
  var o = new api.PolicyBindings();
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed4764();
    o.role = "foo";
  }
  buildCounterPolicyBindings--;
  return o;
}

checkPolicyBindings(api.PolicyBindings o) {
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    checkExpr(o.condition);
    checkUnnamed4764(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPolicyBindings--;
}

buildUnnamed4765() {
  var o = new core.List<api.PolicyBindings>();
  o.add(buildPolicyBindings());
  o.add(buildPolicyBindings());
  return o;
}

checkUnnamed4765(core.List<api.PolicyBindings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBindings(o[0]);
  checkPolicyBindings(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed4765();
    o.etag = "foo";
    o.kind = "foo";
    o.resourceId = "foo";
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4765(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
  }
  buildCounterPolicy--;
}

core.int buildCounterRewriteResponse = 0;
buildRewriteResponse() {
  var o = new api.RewriteResponse();
  buildCounterRewriteResponse++;
  if (buildCounterRewriteResponse < 3) {
    o.done = true;
    o.kind = "foo";
    o.objectSize = "foo";
    o.resource = buildObject();
    o.rewriteToken = "foo";
    o.totalBytesRewritten = "foo";
  }
  buildCounterRewriteResponse--;
  return o;
}

checkRewriteResponse(api.RewriteResponse o) {
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
buildServiceAccount() {
  var o = new api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.emailAddress = "foo";
    o.kind = "foo";
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

buildUnnamed4766() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4766(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.kind = "foo";
    o.permissions = buildUnnamed4766();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4766(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed4767() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4767(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4768() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-BucketBilling", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketBilling();
      var od = new api.BucketBilling.fromJson(o.toJson());
      checkBucketBilling(od);
    });
  });

  unittest.group("obj-schema-BucketCors", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketCors();
      var od = new api.BucketCors.fromJson(o.toJson());
      checkBucketCors(od);
    });
  });

  unittest.group("obj-schema-BucketEncryption", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketEncryption();
      var od = new api.BucketEncryption.fromJson(o.toJson());
      checkBucketEncryption(od);
    });
  });

  unittest.group("obj-schema-BucketIamConfigurationBucketPolicyOnly", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketIamConfigurationBucketPolicyOnly();
      var od =
          new api.BucketIamConfigurationBucketPolicyOnly.fromJson(o.toJson());
      checkBucketIamConfigurationBucketPolicyOnly(od);
    });
  });

  unittest.group("obj-schema-BucketIamConfigurationUniformBucketLevelAccess",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketIamConfigurationUniformBucketLevelAccess();
      var od = new api.BucketIamConfigurationUniformBucketLevelAccess.fromJson(
          o.toJson());
      checkBucketIamConfigurationUniformBucketLevelAccess(od);
    });
  });

  unittest.group("obj-schema-BucketIamConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketIamConfiguration();
      var od = new api.BucketIamConfiguration.fromJson(o.toJson());
      checkBucketIamConfiguration(od);
    });
  });

  unittest.group("obj-schema-BucketLifecycleRuleAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketLifecycleRuleAction();
      var od = new api.BucketLifecycleRuleAction.fromJson(o.toJson());
      checkBucketLifecycleRuleAction(od);
    });
  });

  unittest.group("obj-schema-BucketLifecycleRuleCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketLifecycleRuleCondition();
      var od = new api.BucketLifecycleRuleCondition.fromJson(o.toJson());
      checkBucketLifecycleRuleCondition(od);
    });
  });

  unittest.group("obj-schema-BucketLifecycleRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketLifecycleRule();
      var od = new api.BucketLifecycleRule.fromJson(o.toJson());
      checkBucketLifecycleRule(od);
    });
  });

  unittest.group("obj-schema-BucketLifecycle", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketLifecycle();
      var od = new api.BucketLifecycle.fromJson(o.toJson());
      checkBucketLifecycle(od);
    });
  });

  unittest.group("obj-schema-BucketLogging", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketLogging();
      var od = new api.BucketLogging.fromJson(o.toJson());
      checkBucketLogging(od);
    });
  });

  unittest.group("obj-schema-BucketOwner", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketOwner();
      var od = new api.BucketOwner.fromJson(o.toJson());
      checkBucketOwner(od);
    });
  });

  unittest.group("obj-schema-BucketRetentionPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketRetentionPolicy();
      var od = new api.BucketRetentionPolicy.fromJson(o.toJson());
      checkBucketRetentionPolicy(od);
    });
  });

  unittest.group("obj-schema-BucketVersioning", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketVersioning();
      var od = new api.BucketVersioning.fromJson(o.toJson());
      checkBucketVersioning(od);
    });
  });

  unittest.group("obj-schema-BucketWebsite", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketWebsite();
      var od = new api.BucketWebsite.fromJson(o.toJson());
      checkBucketWebsite(od);
    });
  });

  unittest.group("obj-schema-Bucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucket();
      var od = new api.Bucket.fromJson(o.toJson());
      checkBucket(od);
    });
  });

  unittest.group("obj-schema-BucketAccessControlProjectTeam", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketAccessControlProjectTeam();
      var od = new api.BucketAccessControlProjectTeam.fromJson(o.toJson());
      checkBucketAccessControlProjectTeam(od);
    });
  });

  unittest.group("obj-schema-BucketAccessControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketAccessControl();
      var od = new api.BucketAccessControl.fromJson(o.toJson());
      checkBucketAccessControl(od);
    });
  });

  unittest.group("obj-schema-BucketAccessControls", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketAccessControls();
      var od = new api.BucketAccessControls.fromJson(o.toJson());
      checkBucketAccessControls(od);
    });
  });

  unittest.group("obj-schema-Buckets", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuckets();
      var od = new api.Buckets.fromJson(o.toJson());
      checkBuckets(od);
    });
  });

  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group("obj-schema-ComposeRequestSourceObjectsObjectPreconditions",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildComposeRequestSourceObjectsObjectPreconditions();
      var od = new api.ComposeRequestSourceObjectsObjectPreconditions.fromJson(
          o.toJson());
      checkComposeRequestSourceObjectsObjectPreconditions(od);
    });
  });

  unittest.group("obj-schema-ComposeRequestSourceObjects", () {
    unittest.test("to-json--from-json", () {
      var o = buildComposeRequestSourceObjects();
      var od = new api.ComposeRequestSourceObjects.fromJson(o.toJson());
      checkComposeRequestSourceObjects(od);
    });
  });

  unittest.group("obj-schema-ComposeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildComposeRequest();
      var od = new api.ComposeRequest.fromJson(o.toJson());
      checkComposeRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-HmacKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildHmacKey();
      var od = new api.HmacKey.fromJson(o.toJson());
      checkHmacKey(od);
    });
  });

  unittest.group("obj-schema-HmacKeyMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildHmacKeyMetadata();
      var od = new api.HmacKeyMetadata.fromJson(o.toJson());
      checkHmacKeyMetadata(od);
    });
  });

  unittest.group("obj-schema-HmacKeysMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildHmacKeysMetadata();
      var od = new api.HmacKeysMetadata.fromJson(o.toJson());
      checkHmacKeysMetadata(od);
    });
  });

  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group("obj-schema-Notifications", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotifications();
      var od = new api.Notifications.fromJson(o.toJson());
      checkNotifications(od);
    });
  });

  unittest.group("obj-schema-ObjectCustomerEncryption", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectCustomerEncryption();
      var od = new api.ObjectCustomerEncryption.fromJson(o.toJson());
      checkObjectCustomerEncryption(od);
    });
  });

  unittest.group("obj-schema-ObjectOwner", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectOwner();
      var od = new api.ObjectOwner.fromJson(o.toJson());
      checkObjectOwner(od);
    });
  });

  unittest.group("obj-schema-Object", () {
    unittest.test("to-json--from-json", () {
      var o = buildObject();
      var od = new api.Object.fromJson(o.toJson());
      checkObject(od);
    });
  });

  unittest.group("obj-schema-ObjectAccessControlProjectTeam", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectAccessControlProjectTeam();
      var od = new api.ObjectAccessControlProjectTeam.fromJson(o.toJson());
      checkObjectAccessControlProjectTeam(od);
    });
  });

  unittest.group("obj-schema-ObjectAccessControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectAccessControl();
      var od = new api.ObjectAccessControl.fromJson(o.toJson());
      checkObjectAccessControl(od);
    });
  });

  unittest.group("obj-schema-ObjectAccessControls", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectAccessControls();
      var od = new api.ObjectAccessControls.fromJson(o.toJson());
      checkObjectAccessControls(od);
    });
  });

  unittest.group("obj-schema-Objects", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjects();
      var od = new api.Objects.fromJson(o.toJson());
      checkObjects(od);
    });
  });

  unittest.group("obj-schema-PolicyBindings", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyBindings();
      var od = new api.PolicyBindings.fromJson(o.toJson());
      checkPolicyBindings(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-RewriteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRewriteResponse();
      var od = new api.RewriteResponse.fromJson(o.toJson());
      checkRewriteResponse(od);
    });
  });

  unittest.group("obj-schema-ServiceAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccount();
      var od = new api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("resource-BucketAccessControlsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucketAccessControls());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-BucketsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(subPart, unittest.equals("$arg_bucket"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(subPart, unittest.equals("$arg_bucket"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/iam", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_bucket,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_project = "foo";
      var arg_predefinedAcl = "foo";
      var arg_predefinedDefaultObjectAcl = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_project = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBuckets());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--lockRetentionPolicy", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/lockRetentionPolicy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/lockRetentionPolicy"));
        pathOffset += 20;

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
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_predefinedAcl = "foo";
      var arg_predefinedDefaultObjectAcl = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(subPart, unittest.equals("$arg_bucket"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildPolicy();
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/iam", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_permissions = buildUnnamed4767();
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/iam/testPermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/iam/testPermissions"));
        pathOffset += 20;

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
            queryMap["permissions"], unittest.equals(arg_permissions));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_predefinedAcl = "foo";
      var arg_predefinedDefaultObjectAcl = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(subPart, unittest.equals("$arg_bucket"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {
      var mock = new HttpServerMock();
      api.ChannelsResourceApi res = new api.StorageApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-DefaultObjectAccessControlsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_entity,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/defaultObjectAcl"));
        pathOffset += 17;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/defaultObjectAcl"));
        pathOffset += 17;

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControls());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/defaultObjectAcl/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-NotificationsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_bucket = "foo";
      var arg_notification = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/notificationConfigs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/notificationConfigs/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notification"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_notification,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_bucket = "foo";
      var arg_notification = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/notificationConfigs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/notificationConfigs/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notification"));

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Notification.fromJson(json);
        checkNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/notificationConfigs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/notificationConfigs"));
        pathOffset += 20;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_bucket = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/notificationConfigs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/notificationConfigs"));
        pathOffset += 20;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotifications());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-ObjectAccessControlsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).objectAccessControls;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).objectAccessControls;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).objectAccessControls;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControls());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entity"));

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-ObjectsResourceApi", () {
    unittest.test("method--compose", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildComposeRequest();
      var arg_destinationBucket = "foo";
      var arg_destinationObject = "foo";
      var arg_destinationPredefinedAcl = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_kmsKeyName = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ComposeRequest.fromJson(json);
        checkComposeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationBucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/compose", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationObject"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/compose"));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--copy", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_sourceBucket = "foo";
      var arg_sourceObject = "foo";
      var arg_destinationBucket = "foo";
      var arg_destinationObject = "foo";
      var arg_destinationPredefinedAcl = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_ifSourceGenerationMatch = "foo";
      var arg_ifSourceGenerationNotMatch = "foo";
      var arg_ifSourceMetagenerationMatch = "foo";
      var arg_ifSourceMetagenerationNotMatch = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_sourceGeneration = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sourceBucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/copyTo/b/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sourceObject"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/copyTo/b/"));
        pathOffset += 10;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationBucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_destinationObject"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copy(arg_request, arg_sourceBucket, arg_sourceObject,
              arg_destinationBucket, arg_destinationObject,
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

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_object"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_object"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/iam", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = "foo";
      var arg_contentEncoding = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_kmsKeyName = "foo";
      var arg_name = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("/o"));
        pathOffset += 2;

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_delimiter = "foo";
      var arg_includeTrailingDelimiter = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_versions = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("/o"));
        pathOffset += 2;

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
            queryMap["delimiter"].first, unittest.equals(arg_delimiter));
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
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(
            queryMap["versions"].first, unittest.equals("$arg_versions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObjects());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              delimiter: arg_delimiter,
              includeTrailingDelimiter: arg_includeTrailingDelimiter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              versions: arg_versions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkObjects(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_object"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--rewrite", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_sourceBucket = "foo";
      var arg_sourceObject = "foo";
      var arg_destinationBucket = "foo";
      var arg_destinationObject = "foo";
      var arg_destinationKmsKeyName = "foo";
      var arg_destinationPredefinedAcl = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_ifSourceGenerationMatch = "foo";
      var arg_ifSourceGenerationNotMatch = "foo";
      var arg_ifSourceMetagenerationMatch = "foo";
      var arg_ifSourceMetagenerationNotMatch = "foo";
      var arg_maxBytesRewrittenPerCall = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_rewriteToken = "foo";
      var arg_sourceGeneration = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sourceBucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/rewriteTo/b/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sourceObject"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/rewriteTo/b/"));
        pathOffset += 13;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationBucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_destinationObject"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRewriteResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildPolicy();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/iam", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/iam"));
        pathOffset += 4;

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
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_permissions = buildUnnamed4768();
      var arg_generation = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/iam/testPermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/iam/testPermissions"));
        pathOffset += 20;

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
            queryMap["permissions"], unittest.equals(arg_permissions));
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_object"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--watchAll", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildChannel();
      var arg_bucket = "foo";
      var arg_delimiter = "foo";
      var arg_includeTrailingDelimiter = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_versions = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/o/watch"));
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
        unittest.expect(
            queryMap["delimiter"].first, unittest.equals(arg_delimiter));
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
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(
            queryMap["versions"].first, unittest.equals("$arg_versions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watchAll(arg_request, arg_bucket,
              delimiter: arg_delimiter,
              includeTrailingDelimiter: arg_includeTrailingDelimiter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              provisionalUserProject: arg_provisionalUserProject,
              userProject: arg_userProject,
              versions: arg_versions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group("resource-ProjectsHmacKeysResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          new api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = "foo";
      var arg_serviceAccountEmail = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/hmacKeys", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/hmacKeys"));
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
        unittest.expect(queryMap["serviceAccountEmail"].first,
            unittest.equals(arg_serviceAccountEmail));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHmacKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_projectId, arg_serviceAccountEmail,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKey(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          new api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = "foo";
      var arg_accessId = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/hmacKeys/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/hmacKeys/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accessId"));

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
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_accessId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          new api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = "foo";
      var arg_accessId = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/hmacKeys/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/hmacKeys/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accessId"));

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
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHmacKeyMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_accessId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKeyMetadata(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          new api.StorageApi(mock).projects.hmacKeys;
      var arg_projectId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_serviceAccountEmail = "foo";
      var arg_showDeletedKeys = true;
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/hmacKeys", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/hmacKeys"));
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
        unittest.expect(queryMap["serviceAccountEmail"].first,
            unittest.equals(arg_serviceAccountEmail));
        unittest.expect(queryMap["showDeletedKeys"].first,
            unittest.equals("$arg_showDeletedKeys"));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHmacKeysMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsHmacKeysResourceApi res =
          new api.StorageApi(mock).projects.hmacKeys;
      var arg_request = buildHmacKeyMetadata();
      var arg_projectId = "foo";
      var arg_accessId = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HmacKeyMetadata.fromJson(json);
        checkHmacKeyMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/hmacKeys/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/hmacKeys/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accessId"));

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
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHmacKeyMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_accessId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHmacKeyMetadata(response);
      })));
    });
  });

  unittest.group("resource-ProjectsServiceAccountResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountResourceApi res =
          new api.StorageApi(mock).projects.serviceAccount;
      var arg_projectId = "foo";
      var arg_provisionalUserProject = "foo";
      var arg_userProject = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/serviceAccount", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/serviceAccount"));
        pathOffset += 15;

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
        unittest.expect(queryMap["provisionalUserProject"].first,
            unittest.equals(arg_provisionalUserProject));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
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
