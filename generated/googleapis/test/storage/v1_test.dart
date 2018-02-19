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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3102() {
  var o = new core.List<api.BucketAccessControl>();
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

checkUnnamed3102(core.List<api.BucketAccessControl> o) {
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

buildUnnamed3103() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3104() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3104(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3105() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3105(core.List<core.String> o) {
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
    o.method = buildUnnamed3103();
    o.origin = buildUnnamed3104();
    o.responseHeader = buildUnnamed3105();
  }
  buildCounterBucketCors--;
  return o;
}

checkBucketCors(api.BucketCors o) {
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    unittest.expect(o.maxAgeSeconds, unittest.equals(42));
    checkUnnamed3103(o.method);
    checkUnnamed3104(o.origin);
    checkUnnamed3105(o.responseHeader);
  }
  buildCounterBucketCors--;
}

buildUnnamed3106() {
  var o = new core.List<api.BucketCors>();
  o.add(buildBucketCors());
  o.add(buildBucketCors());
  return o;
}

checkUnnamed3106(core.List<api.BucketCors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketCors(o[0]);
  checkBucketCors(o[1]);
}

buildUnnamed3107() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed3107(core.List<api.ObjectAccessControl> o) {
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

buildUnnamed3108() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3108(core.Map<core.String, core.String> o) {
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

buildUnnamed3109() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3109(core.List<core.String> o) {
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
    o.matchesStorageClass = buildUnnamed3109();
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
    checkUnnamed3109(o.matchesStorageClass);
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

buildUnnamed3110() {
  var o = new core.List<api.BucketLifecycleRule>();
  o.add(buildBucketLifecycleRule());
  o.add(buildBucketLifecycleRule());
  return o;
}

checkUnnamed3110(core.List<api.BucketLifecycleRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketLifecycleRule(o[0]);
  checkBucketLifecycleRule(o[1]);
}

core.int buildCounterBucketLifecycle = 0;
buildBucketLifecycle() {
  var o = new api.BucketLifecycle();
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    o.rule = buildUnnamed3110();
  }
  buildCounterBucketLifecycle--;
  return o;
}

checkBucketLifecycle(api.BucketLifecycle o) {
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    checkUnnamed3110(o.rule);
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
    o.acl = buildUnnamed3102();
    o.billing = buildBucketBilling();
    o.cors = buildUnnamed3106();
    o.defaultEventBasedHold = true;
    o.defaultObjectAcl = buildUnnamed3107();
    o.encryption = buildBucketEncryption();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3108();
    o.lifecycle = buildBucketLifecycle();
    o.location = "foo";
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
    checkUnnamed3102(o.acl);
    checkBucketBilling(o.billing);
    checkUnnamed3106(o.cors);
    unittest.expect(o.defaultEventBasedHold, unittest.isTrue);
    checkUnnamed3107(o.defaultObjectAcl);
    checkBucketEncryption(o.encryption);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3108(o.labels);
    checkBucketLifecycle(o.lifecycle);
    unittest.expect(o.location, unittest.equals('foo'));
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

buildUnnamed3111() {
  var o = new core.List<api.BucketAccessControl>();
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

checkUnnamed3111(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketAccessControls = 0;
buildBucketAccessControls() {
  var o = new api.BucketAccessControls();
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    o.items = buildUnnamed3111();
    o.kind = "foo";
  }
  buildCounterBucketAccessControls--;
  return o;
}

checkBucketAccessControls(api.BucketAccessControls o) {
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    checkUnnamed3111(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBucketAccessControls--;
}

buildUnnamed3112() {
  var o = new core.List<api.Bucket>();
  o.add(buildBucket());
  o.add(buildBucket());
  return o;
}

checkUnnamed3112(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBuckets = 0;
buildBuckets() {
  var o = new api.Buckets();
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    o.items = buildUnnamed3112();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterBuckets--;
  return o;
}

checkBuckets(api.Buckets o) {
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    checkUnnamed3112(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuckets--;
}

buildUnnamed3113() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3113(core.Map<core.String, core.String> o) {
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
    o.params = buildUnnamed3113();
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
    checkUnnamed3113(o.params);
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

buildUnnamed3114() {
  var o = new core.List<api.ComposeRequestSourceObjects>();
  o.add(buildComposeRequestSourceObjects());
  o.add(buildComposeRequestSourceObjects());
  return o;
}

checkUnnamed3114(core.List<api.ComposeRequestSourceObjects> o) {
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
    o.sourceObjects = buildUnnamed3114();
  }
  buildCounterComposeRequest--;
  return o;
}

checkComposeRequest(api.ComposeRequest o) {
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    checkObject(o.destination);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3114(o.sourceObjects);
  }
  buildCounterComposeRequest--;
}

buildUnnamed3115() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3115(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3116() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.customAttributes = buildUnnamed3115();
    o.etag = "foo";
    o.eventTypes = buildUnnamed3116();
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
    checkUnnamed3115(o.customAttributes);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3116(o.eventTypes);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.objectNamePrefix, unittest.equals('foo'));
    unittest.expect(o.payloadFormat, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

buildUnnamed3117() {
  var o = new core.List<api.Notification>();
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

checkUnnamed3117(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotifications = 0;
buildNotifications() {
  var o = new api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.items = buildUnnamed3117();
    o.kind = "foo";
  }
  buildCounterNotifications--;
  return o;
}

checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    checkUnnamed3117(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterNotifications--;
}

buildUnnamed3118() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed3118(core.List<api.ObjectAccessControl> o) {
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

buildUnnamed3119() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3119(core.Map<core.String, core.String> o) {
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
    o.acl = buildUnnamed3118();
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
    o.metadata = buildUnnamed3119();
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
    checkUnnamed3118(o.acl);
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
    checkUnnamed3119(o.metadata);
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

buildUnnamed3120() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed3120(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectAccessControls = 0;
buildObjectAccessControls() {
  var o = new api.ObjectAccessControls();
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    o.items = buildUnnamed3120();
    o.kind = "foo";
  }
  buildCounterObjectAccessControls--;
  return o;
}

checkObjectAccessControls(api.ObjectAccessControls o) {
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    checkUnnamed3120(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterObjectAccessControls--;
}

buildUnnamed3121() {
  var o = new core.List<api.Object>();
  o.add(buildObject());
  o.add(buildObject());
  return o;
}

checkUnnamed3121(core.List<api.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObject(o[0]);
  checkObject(o[1]);
}

buildUnnamed3122() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3122(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjects = 0;
buildObjects() {
  var o = new api.Objects();
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    o.items = buildUnnamed3121();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.prefixes = buildUnnamed3122();
  }
  buildCounterObjects--;
  return o;
}

checkObjects(api.Objects o) {
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    checkUnnamed3121(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3122(o.prefixes);
  }
  buildCounterObjects--;
}

buildUnnamed3123() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3123(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicyBindings = 0;
buildPolicyBindings() {
  var o = new api.PolicyBindings();
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    o.condition = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.members = buildUnnamed3123();
    o.role = "foo";
  }
  buildCounterPolicyBindings--;
  return o;
}

checkPolicyBindings(api.PolicyBindings o) {
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    var casted1 = (o.condition) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted1["bool"], unittest.equals(true));
    unittest.expect(casted1["string"], unittest.equals('foo'));
    checkUnnamed3123(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPolicyBindings--;
}

buildUnnamed3124() {
  var o = new core.List<api.PolicyBindings>();
  o.add(buildPolicyBindings());
  o.add(buildPolicyBindings());
  return o;
}

checkUnnamed3124(core.List<api.PolicyBindings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBindings(o[0]);
  checkPolicyBindings(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed3124();
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
    checkUnnamed3124(o.bindings);
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

buildUnnamed3125() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3125(core.List<core.String> o) {
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
    o.permissions = buildUnnamed3125();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3125(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed3126() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3126(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3127() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3127(core.List<core.String> o) {
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
          .delete(arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
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
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.BucketAccessControl response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.BucketAccessControl response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BucketAccessControlsResourceApi res =
          new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildBucketAccessControls());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket, userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.BucketAccessControls response) {
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
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.BucketAccessControl response) {
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
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.BucketAccessControl response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              projection: arg_projection,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Bucket response) {
        checkBucket(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_bucket,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Policy response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project,
              predefinedAcl: arg_predefinedAcl,
              predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
              projection: arg_projection,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Bucket response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBuckets());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Buckets response) {
        checkBuckets(response);
      })));
    });

    unittest.test("method--lockRetentionPolicy", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lockRetentionPolicy(arg_bucket, arg_ifMetagenerationMatch,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Bucket response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              predefinedAcl: arg_predefinedAcl,
              predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
              projection: arg_projection,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Bucket response) {
        checkBucket(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildPolicy();
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_bucket,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_permissions = buildUnnamed3126();
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["permissions"], unittest.equals(arg_permissions));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_bucket, arg_permissions,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(
              unittest.expectAsync1(((api.TestIamPermissionsResponse response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              predefinedAcl: arg_predefinedAcl,
              predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
              projection: arg_projection,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Bucket response) {
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
          .delete(arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
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
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res =
          new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first,
            unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first,
            unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControls());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControls response) {
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
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_entity,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
          .delete(arg_bucket, arg_notification,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_bucket = "foo";
      var arg_notification = "foo";
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
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_notification,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notification response) {
        checkNotification(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notification response) {
        checkNotification(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.StorageApi(mock).notifications;
      var arg_bucket = "foo";
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
        var resp = convert.JSON.encode(buildNotifications());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket, userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notifications response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_bucket, arg_object,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControls());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket, arg_object,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControls response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_bucket, arg_object, arg_entity,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ObjectAccessControl response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .compose(arg_request, arg_destinationBucket, arg_destinationObject,
              destinationPredefinedAcl: arg_destinationPredefinedAcl,
              ifGenerationMatch: arg_ifGenerationMatch,
              ifMetagenerationMatch: arg_ifMetagenerationMatch,
              kmsKeyName: arg_kmsKeyName,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Object response) {
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
        unittest.expect(queryMap["sourceGeneration"].first,
            unittest.equals(arg_sourceGeneration));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
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
              sourceGeneration: arg_sourceGeneration,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Object response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
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
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_bucket, arg_object,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Policy response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
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
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_delimiter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["delimiter"].first, unittest.equals(arg_delimiter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(
            queryMap["versions"].first, unittest.equals("$arg_versions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjects());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_bucket,
              delimiter: arg_delimiter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              userProject: arg_userProject,
              versions: arg_versions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Objects response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
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
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Object response) {
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
        var resp = convert.JSON.encode(buildRewriteResponse());
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
              rewriteToken: arg_rewriteToken,
              sourceGeneration: arg_sourceGeneration,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.RewriteResponse response) {
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_bucket, arg_object,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_permissions = buildUnnamed3127();
      var arg_generation = "foo";
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["permissions"], unittest.equals(arg_permissions));
        unittest.expect(
            queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_bucket, arg_object, arg_permissions,
              generation: arg_generation,
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(
              unittest.expectAsync1(((api.TestIamPermissionsResponse response) {
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
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
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
              userProject: arg_userProject,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--watchAll", () {
      var mock = new HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildChannel();
      var arg_bucket = "foo";
      var arg_delimiter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["delimiter"].first, unittest.equals(arg_delimiter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["userProject"].first, unittest.equals(arg_userProject));
        unittest.expect(
            queryMap["versions"].first, unittest.equals("$arg_versions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watchAll(arg_request, arg_bucket,
              delimiter: arg_delimiter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              prefix: arg_prefix,
              projection: arg_projection,
              userProject: arg_userProject,
              versions: arg_versions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Channel response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group("resource-ProjectsServiceAccountResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountResourceApi res =
          new api.StorageApi(mock).projects.serviceAccount;
      var arg_projectId = "foo";
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
        var resp = convert.JSON.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId,
              userProject: arg_userProject, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ServiceAccount response) {
        checkServiceAccount(response);
      })));
    });
  });
}
