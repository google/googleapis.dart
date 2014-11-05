library googleapis.storage.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/storage/v1.dart' as api;



buildUnnamed1032() {
  var o = new core.List<api.BucketAccessControl>();
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

checkUnnamed1032(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

buildUnnamed1033() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1033(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1034() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1034(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1035() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1035(core.List<core.String> o) {
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
    o.method = buildUnnamed1033();
    o.origin = buildUnnamed1034();
    o.responseHeader = buildUnnamed1035();
  }
  buildCounterBucketCors--;
  return o;
}

checkBucketCors(api.BucketCors o) {
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    unittest.expect(o.maxAgeSeconds, unittest.equals(42));
    checkUnnamed1033(o.method);
    checkUnnamed1034(o.origin);
    checkUnnamed1035(o.responseHeader);
  }
  buildCounterBucketCors--;
}

buildUnnamed1036() {
  var o = new core.List<api.BucketCors>();
  o.add(buildBucketCors());
  o.add(buildBucketCors());
  return o;
}

checkUnnamed1036(core.List<api.BucketCors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketCors(o[0]);
  checkBucketCors(o[1]);
}

buildUnnamed1037() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed1037(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterBucketLifecycleRuleAction = 0;
buildBucketLifecycleRuleAction() {
  var o = new api.BucketLifecycleRuleAction();
  buildCounterBucketLifecycleRuleAction++;
  if (buildCounterBucketLifecycleRuleAction < 3) {
    o.type = "foo";
  }
  buildCounterBucketLifecycleRuleAction--;
  return o;
}

checkBucketLifecycleRuleAction(api.BucketLifecycleRuleAction o) {
  buildCounterBucketLifecycleRuleAction++;
  if (buildCounterBucketLifecycleRuleAction < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBucketLifecycleRuleAction--;
}

core.int buildCounterBucketLifecycleRuleCondition = 0;
buildBucketLifecycleRuleCondition() {
  var o = new api.BucketLifecycleRuleCondition();
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    o.age = 42;
    o.createdBefore = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.isLive = true;
    o.numNewerVersions = 42;
  }
  buildCounterBucketLifecycleRuleCondition--;
  return o;
}

checkBucketLifecycleRuleCondition(api.BucketLifecycleRuleCondition o) {
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    unittest.expect(o.age, unittest.equals(42));
    unittest.expect(o.createdBefore, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.isLive, unittest.isTrue);
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

buildUnnamed1038() {
  var o = new core.List<api.BucketLifecycleRule>();
  o.add(buildBucketLifecycleRule());
  o.add(buildBucketLifecycleRule());
  return o;
}

checkUnnamed1038(core.List<api.BucketLifecycleRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketLifecycleRule(o[0]);
  checkBucketLifecycleRule(o[1]);
}

core.int buildCounterBucketLifecycle = 0;
buildBucketLifecycle() {
  var o = new api.BucketLifecycle();
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    o.rule = buildUnnamed1038();
  }
  buildCounterBucketLifecycle--;
  return o;
}

checkBucketLifecycle(api.BucketLifecycle o) {
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    checkUnnamed1038(o.rule);
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
    o.acl = buildUnnamed1032();
    o.cors = buildUnnamed1036();
    o.defaultObjectAcl = buildUnnamed1037();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lifecycle = buildBucketLifecycle();
    o.location = "foo";
    o.logging = buildBucketLogging();
    o.metageneration = "foo";
    o.name = "foo";
    o.owner = buildBucketOwner();
    o.projectNumber = "foo";
    o.selfLink = "foo";
    o.storageClass = "foo";
    o.timeCreated = core.DateTime.parse("2002-02-27T14:01:02");
    o.versioning = buildBucketVersioning();
    o.website = buildBucketWebsite();
  }
  buildCounterBucket--;
  return o;
}

checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    checkUnnamed1032(o.acl);
    checkUnnamed1036(o.cors);
    checkUnnamed1037(o.defaultObjectAcl);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkBucketLifecycle(o.lifecycle);
    unittest.expect(o.location, unittest.equals('foo'));
    checkBucketLogging(o.logging);
    unittest.expect(o.metageneration, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkBucketOwner(o.owner);
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.storageClass, unittest.equals('foo'));
    unittest.expect(o.timeCreated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
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

buildUnnamed1039() {
  var o = new core.List<api.BucketAccessControl>();
  o.add(buildBucketAccessControl());
  o.add(buildBucketAccessControl());
  return o;
}

checkUnnamed1039(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketAccessControls = 0;
buildBucketAccessControls() {
  var o = new api.BucketAccessControls();
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    o.items = buildUnnamed1039();
    o.kind = "foo";
  }
  buildCounterBucketAccessControls--;
  return o;
}

checkBucketAccessControls(api.BucketAccessControls o) {
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    checkUnnamed1039(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBucketAccessControls--;
}

buildUnnamed1040() {
  var o = new core.List<api.Bucket>();
  o.add(buildBucket());
  o.add(buildBucket());
  return o;
}

checkUnnamed1040(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBuckets = 0;
buildBuckets() {
  var o = new api.Buckets();
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    o.items = buildUnnamed1040();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterBuckets--;
  return o;
}

checkBuckets(api.Buckets o) {
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    checkUnnamed1040(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuckets--;
}

buildUnnamed1041() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1041(core.Map<core.String, core.String> o) {
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
    o.params = buildUnnamed1041();
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
    checkUnnamed1041(o.params);
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

checkComposeRequestSourceObjectsObjectPreconditions(api.ComposeRequestSourceObjectsObjectPreconditions o) {
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
    o.objectPreconditions = buildComposeRequestSourceObjectsObjectPreconditions();
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

buildUnnamed1042() {
  var o = new core.List<api.ComposeRequestSourceObjects>();
  o.add(buildComposeRequestSourceObjects());
  o.add(buildComposeRequestSourceObjects());
  return o;
}

checkUnnamed1042(core.List<api.ComposeRequestSourceObjects> o) {
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
    o.sourceObjects = buildUnnamed1042();
  }
  buildCounterComposeRequest--;
  return o;
}

checkComposeRequest(api.ComposeRequest o) {
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    checkObject(o.destination);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1042(o.sourceObjects);
  }
  buildCounterComposeRequest--;
}

buildUnnamed1043() {
  var o = new core.List<api.ObjectAccessControl>();
  o.add(buildObjectAccessControl());
  o.add(buildObjectAccessControl());
  return o;
}

checkUnnamed1043(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

buildUnnamed1044() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1044(core.Map<core.String, core.String> o) {
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
    o.acl = buildUnnamed1043();
    o.bucket = "foo";
    o.cacheControl = "foo";
    o.componentCount = 42;
    o.contentDisposition = "foo";
    o.contentEncoding = "foo";
    o.contentLanguage = "foo";
    o.contentType = "foo";
    o.crc32c = "foo";
    o.etag = "foo";
    o.generation = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.md5Hash = "foo";
    o.mediaLink = "foo";
    o.metadata = buildUnnamed1044();
    o.metageneration = "foo";
    o.name = "foo";
    o.owner = buildObjectOwner();
    o.selfLink = "foo";
    o.size = "foo";
    o.storageClass = "foo";
    o.timeDeleted = core.DateTime.parse("2002-02-27T14:01:02");
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterObject--;
  return o;
}

checkObject(api.Object o) {
  buildCounterObject++;
  if (buildCounterObject < 3) {
    checkUnnamed1043(o.acl);
    unittest.expect(o.bucket, unittest.equals('foo'));
    unittest.expect(o.cacheControl, unittest.equals('foo'));
    unittest.expect(o.componentCount, unittest.equals(42));
    unittest.expect(o.contentDisposition, unittest.equals('foo'));
    unittest.expect(o.contentEncoding, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.crc32c, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    unittest.expect(o.mediaLink, unittest.equals('foo'));
    checkUnnamed1044(o.metadata);
    unittest.expect(o.metageneration, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkObjectOwner(o.owner);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.storageClass, unittest.equals('foo'));
    unittest.expect(o.timeDeleted, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
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

buildUnnamed1045() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed1045(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o[1]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

core.int buildCounterObjectAccessControls = 0;
buildObjectAccessControls() {
  var o = new api.ObjectAccessControls();
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    o.items = buildUnnamed1045();
    o.kind = "foo";
  }
  buildCounterObjectAccessControls--;
  return o;
}

checkObjectAccessControls(api.ObjectAccessControls o) {
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    checkUnnamed1045(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterObjectAccessControls--;
}

buildUnnamed1046() {
  var o = new core.List<api.Object>();
  o.add(buildObject());
  o.add(buildObject());
  return o;
}

checkUnnamed1046(core.List<api.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObject(o[0]);
  checkObject(o[1]);
}

buildUnnamed1047() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1047(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjects = 0;
buildObjects() {
  var o = new api.Objects();
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    o.items = buildUnnamed1046();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.prefixes = buildUnnamed1047();
  }
  buildCounterObjects--;
  return o;
}

checkObjects(api.Objects o) {
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    checkUnnamed1046(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1047(o.prefixes);
  }
  buildCounterObjects--;
}


main() {
  unittest.group("obj-schema-BucketCors", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketCors();
      var od = new api.BucketCors.fromJson(o.toJson());
      checkBucketCors(od);
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


  unittest.group("obj-schema-ComposeRequestSourceObjectsObjectPreconditions", () {
    unittest.test("to-json--from-json", () {
      var o = buildComposeRequestSourceObjectsObjectPreconditions();
      var od = new api.ComposeRequestSourceObjectsObjectPreconditions.fromJson(o.toJson());
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


  unittest.group("resource-BucketAccessControlsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.BucketAccessControlsResourceApi res = new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_bucket, arg_entity).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.BucketAccessControlsResourceApi res = new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_bucket, arg_entity).then(unittest.expectAsync(((api.BucketAccessControl response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.BucketAccessControlsResourceApi res = new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("/acl"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_bucket).then(unittest.expectAsync(((api.BucketAccessControl response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.BucketAccessControlsResourceApi res = new api.StorageApi(mock).bucketAccessControls;
      var arg_bucket = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("/acl"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucketAccessControls());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_bucket).then(unittest.expectAsync(((api.BucketAccessControls response) {
        checkBucketAccessControls(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.BucketAccessControlsResourceApi res = new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_bucket, arg_entity).then(unittest.expectAsync(((api.BucketAccessControl response) {
        checkBucketAccessControl(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.BucketAccessControlsResourceApi res = new api.StorageApi(mock).bucketAccessControls;
      var arg_request = buildBucketAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BucketAccessControl.fromJson(json);
        checkBucketAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucketAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_bucket, arg_entity).then(unittest.expectAsync(((api.BucketAccessControl response) {
        checkBucketAccessControl(response);
      })));
    });

  });


  unittest.group("resource-BucketsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_bucket, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_bucket, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, projection: arg_projection).then(unittest.expectAsync(((api.Bucket response) {
        checkBucket(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_project = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("b"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["project"].first, unittest.equals(arg_project));
        unittest.expect(queryMap["predefinedAcl"].first, unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, predefinedAcl: arg_predefinedAcl, projection: arg_projection).then(unittest.expectAsync(((api.Bucket response) {
        checkBucket(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_project = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("b"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["project"].first, unittest.equals(arg_project));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBuckets());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, maxResults: arg_maxResults, pageToken: arg_pageToken, projection: arg_projection).then(unittest.expectAsync(((api.Buckets response) {
        checkBuckets(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first, unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_bucket, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, predefinedAcl: arg_predefinedAcl, projection: arg_projection).then(unittest.expectAsync(((api.Bucket response) {
        checkBucket(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.BucketsResourceApi res = new api.StorageApi(mock).buckets;
      var arg_request = buildBucket();
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Bucket.fromJson(json);
        checkBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first, unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBucket());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_bucket, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, predefinedAcl: arg_predefinedAcl, projection: arg_projection).then(unittest.expectAsync(((api.Bucket response) {
        checkBucket(response);
      })));
    });

  });


  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {

      var mock = new common_test.HttpServerMock();
      api.ChannelsResourceApi res = new api.StorageApi(mock).channels;
      var arg_request = buildChannel();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("channels/stop"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.stop(arg_request).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-DefaultObjectAccessControlsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res = new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/defaultObjectAcl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_bucket, arg_entity).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res = new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/defaultObjectAcl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_bucket, arg_entity).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res = new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/defaultObjectAcl"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_bucket).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res = new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_bucket = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/defaultObjectAcl"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControls());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_bucket, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch).then(unittest.expectAsync(((api.ObjectAccessControls response) {
        checkObjectAccessControls(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res = new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/defaultObjectAcl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_bucket, arg_entity).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.DefaultObjectAccessControlsResourceApi res = new api.StorageApi(mock).defaultObjectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_entity = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/defaultObjectAcl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/defaultObjectAcl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_bucket, arg_entity).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

  });


  unittest.group("resource-ObjectAccessControlsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectAccessControlsResourceApi res = new api.StorageApi(mock).objectAccessControls;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_bucket, arg_object, arg_entity, generation: arg_generation).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectAccessControlsResourceApi res = new api.StorageApi(mock).objectAccessControls;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_bucket, arg_object, arg_entity, generation: arg_generation).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectAccessControlsResourceApi res = new api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("/acl"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_bucket, arg_object, generation: arg_generation).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectAccessControlsResourceApi res = new api.StorageApi(mock).objectAccessControls;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("/acl"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControls());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_bucket, arg_object, generation: arg_generation).then(unittest.expectAsync(((api.ObjectAccessControls response) {
        checkObjectAccessControls(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectAccessControlsResourceApi res = new api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_bucket, arg_object, arg_entity, generation: arg_generation).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectAccessControlsResourceApi res = new api.StorageApi(mock).objectAccessControls;
      var arg_request = buildObjectAccessControl();
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_entity = "foo";
      var arg_generation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ObjectAccessControl.fromJson(json);
        checkObjectAccessControl(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_object"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjectAccessControl());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_bucket, arg_object, arg_entity, generation: arg_generation).then(unittest.expectAsync(((api.ObjectAccessControl response) {
        checkObjectAccessControl(response);
      })));
    });

  });


  unittest.group("resource-ObjectsResourceApi", () {
    unittest.test("method--compose", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildComposeRequest();
      var arg_destinationBucket = "foo";
      var arg_destinationObject = "foo";
      var arg_destinationPredefinedAcl = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ComposeRequest.fromJson(json);
        checkComposeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationBucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/compose", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationObject"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/compose"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["destinationPredefinedAcl"].first, unittest.equals(arg_destinationPredefinedAcl));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.compose(arg_request, arg_destinationBucket, arg_destinationObject, destinationPredefinedAcl: arg_destinationPredefinedAcl, ifGenerationMatch: arg_ifGenerationMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch).then(unittest.expectAsync(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--copy", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sourceBucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
        pathOffset += 3;
        index = path.indexOf("/copyTo/b/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sourceObject"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/copyTo/b/"));
        pathOffset += 10;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_destinationBucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["destinationPredefinedAcl"].first, unittest.equals(arg_destinationPredefinedAcl));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first, unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["ifSourceGenerationMatch"].first, unittest.equals(arg_ifSourceGenerationMatch));
        unittest.expect(queryMap["ifSourceGenerationNotMatch"].first, unittest.equals(arg_ifSourceGenerationNotMatch));
        unittest.expect(queryMap["ifSourceMetagenerationMatch"].first, unittest.equals(arg_ifSourceMetagenerationMatch));
        unittest.expect(queryMap["ifSourceMetagenerationNotMatch"].first, unittest.equals(arg_ifSourceMetagenerationNotMatch));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["sourceGeneration"].first, unittest.equals(arg_sourceGeneration));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.copy(arg_request, arg_sourceBucket, arg_sourceObject, arg_destinationBucket, arg_destinationObject, destinationPredefinedAcl: arg_destinationPredefinedAcl, ifGenerationMatch: arg_ifGenerationMatch, ifGenerationNotMatch: arg_ifGenerationNotMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, ifSourceGenerationMatch: arg_ifSourceGenerationMatch, ifSourceGenerationNotMatch: arg_ifSourceGenerationNotMatch, ifSourceMetagenerationMatch: arg_ifSourceMetagenerationMatch, ifSourceMetagenerationNotMatch: arg_ifSourceMetagenerationNotMatch, projection: arg_projection, sourceGeneration: arg_sourceGeneration).then(unittest.expectAsync(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first, unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_bucket, arg_object, generation: arg_generation, ifGenerationMatch: arg_ifGenerationMatch, ifGenerationNotMatch: arg_ifGenerationNotMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_object = "foo";
      var arg_generation = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first, unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_bucket, arg_object, generation: arg_generation, ifGenerationMatch: arg_ifGenerationMatch, ifGenerationNotMatch: arg_ifGenerationNotMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, projection: arg_projection).then(unittest.expectAsync(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildObject();
      var arg_bucket = "foo";
      var arg_contentEncoding = "foo";
      var arg_ifGenerationMatch = "foo";
      var arg_ifGenerationNotMatch = "foo";
      var arg_ifMetagenerationMatch = "foo";
      var arg_ifMetagenerationNotMatch = "foo";
      var arg_name = "foo";
      var arg_predefinedAcl = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("/o"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["contentEncoding"].first, unittest.equals(arg_contentEncoding));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first, unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["predefinedAcl"].first, unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_bucket, contentEncoding: arg_contentEncoding, ifGenerationMatch: arg_ifGenerationMatch, ifGenerationNotMatch: arg_ifGenerationNotMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, name: arg_name, predefinedAcl: arg_predefinedAcl, projection: arg_projection).then(unittest.expectAsync(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_bucket = "foo";
      var arg_delimiter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
      var arg_versions = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("/o"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["delimiter"].first, unittest.equals(arg_delimiter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["versions"].first, unittest.equals("$arg_versions"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObjects());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_bucket, delimiter: arg_delimiter, maxResults: arg_maxResults, pageToken: arg_pageToken, prefix: arg_prefix, projection: arg_projection, versions: arg_versions).then(unittest.expectAsync(((api.Objects response) {
        checkObjects(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first, unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first, unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_bucket, arg_object, generation: arg_generation, ifGenerationMatch: arg_ifGenerationMatch, ifGenerationNotMatch: arg_ifGenerationNotMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, predefinedAcl: arg_predefinedAcl, projection: arg_projection).then(unittest.expectAsync(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Object.fromJson(json);
        checkObject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("/o/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["generation"].first, unittest.equals(arg_generation));
        unittest.expect(queryMap["ifGenerationMatch"].first, unittest.equals(arg_ifGenerationMatch));
        unittest.expect(queryMap["ifGenerationNotMatch"].first, unittest.equals(arg_ifGenerationNotMatch));
        unittest.expect(queryMap["ifMetagenerationMatch"].first, unittest.equals(arg_ifMetagenerationMatch));
        unittest.expect(queryMap["ifMetagenerationNotMatch"].first, unittest.equals(arg_ifMetagenerationNotMatch));
        unittest.expect(queryMap["predefinedAcl"].first, unittest.equals(arg_predefinedAcl));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildObject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_bucket, arg_object, generation: arg_generation, ifGenerationMatch: arg_ifGenerationMatch, ifGenerationNotMatch: arg_ifGenerationNotMatch, ifMetagenerationMatch: arg_ifMetagenerationMatch, ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch, predefinedAcl: arg_predefinedAcl, projection: arg_projection).then(unittest.expectAsync(((api.Object response) {
        checkObject(response);
      })));
    });

    unittest.test("method--watchAll", () {

      var mock = new common_test.HttpServerMock();
      api.ObjectsResourceApi res = new api.StorageApi(mock).objects;
      var arg_request = buildChannel();
      var arg_bucket = "foo";
      var arg_delimiter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_prefix = "foo";
      var arg_projection = "foo";
      var arg_versions = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("storage/v1/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("b/"));
        pathOffset += 2;
        index = path.indexOf("/o/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_bucket"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/o/watch"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["delimiter"].first, unittest.equals(arg_delimiter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["prefix"].first, unittest.equals(arg_prefix));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["versions"].first, unittest.equals("$arg_versions"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.watchAll(arg_request, arg_bucket, delimiter: arg_delimiter, maxResults: arg_maxResults, pageToken: arg_pageToken, prefix: arg_prefix, projection: arg_projection, versions: arg_versions).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


}

