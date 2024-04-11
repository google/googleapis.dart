// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/storage/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnywhereCache = 0;
api.AnywhereCache buildAnywhereCache() {
  final o = api.AnywhereCache();
  buildCounterAnywhereCache++;
  if (buildCounterAnywhereCache < 3) {
    o.admissionPolicy = 'foo';
    o.anywhereCacheId = 'foo';
    o.bucket = 'foo';
    o.createTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.pendingUpdate = true;
    o.selfLink = 'foo';
    o.state = 'foo';
    o.ttl = 'foo';
    o.updateTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.zone = 'foo';
  }
  buildCounterAnywhereCache--;
  return o;
}

void checkAnywhereCache(api.AnywhereCache o) {
  buildCounterAnywhereCache++;
  if (buildCounterAnywhereCache < 3) {
    unittest.expect(
      o.admissionPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.anywhereCacheId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pendingUpdate!, unittest.isTrue);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnywhereCache--;
}

core.List<api.AnywhereCache> buildUnnamed0() => [
      buildAnywhereCache(),
      buildAnywhereCache(),
    ];

void checkUnnamed0(core.List<api.AnywhereCache> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnywhereCache(o[0]);
  checkAnywhereCache(o[1]);
}

core.int buildCounterAnywhereCaches = 0;
api.AnywhereCaches buildAnywhereCaches() {
  final o = api.AnywhereCaches();
  buildCounterAnywhereCaches++;
  if (buildCounterAnywhereCaches < 3) {
    o.items = buildUnnamed0();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAnywhereCaches--;
  return o;
}

void checkAnywhereCaches(api.AnywhereCaches o) {
  buildCounterAnywhereCaches++;
  if (buildCounterAnywhereCaches < 3) {
    checkUnnamed0(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnywhereCaches--;
}

core.List<api.BucketAccessControl> buildUnnamed1() => [
      buildBucketAccessControl(),
      buildBucketAccessControl(),
    ];

void checkUnnamed1(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketAutoclass = 0;
api.BucketAutoclass buildBucketAutoclass() {
  final o = api.BucketAutoclass();
  buildCounterBucketAutoclass++;
  if (buildCounterBucketAutoclass < 3) {
    o.enabled = true;
    o.terminalStorageClass = 'foo';
    o.terminalStorageClassUpdateTime =
        core.DateTime.parse('2002-02-27T14:01:02Z');
    o.toggleTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterBucketAutoclass--;
  return o;
}

void checkBucketAutoclass(api.BucketAutoclass o) {
  buildCounterBucketAutoclass++;
  if (buildCounterBucketAutoclass < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.terminalStorageClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.terminalStorageClassUpdateTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.toggleTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterBucketAutoclass--;
}

core.int buildCounterBucketBilling = 0;
api.BucketBilling buildBucketBilling() {
  final o = api.BucketBilling();
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
    unittest.expect(o.requesterPays!, unittest.isTrue);
  }
  buildCounterBucketBilling--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterBucketCors = 0;
api.BucketCors buildBucketCors() {
  final o = api.BucketCors();
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    o.maxAgeSeconds = 42;
    o.method = buildUnnamed2();
    o.origin = buildUnnamed3();
    o.responseHeader = buildUnnamed4();
  }
  buildCounterBucketCors--;
  return o;
}

void checkBucketCors(api.BucketCors o) {
  buildCounterBucketCors++;
  if (buildCounterBucketCors < 3) {
    unittest.expect(
      o.maxAgeSeconds!,
      unittest.equals(42),
    );
    checkUnnamed2(o.method!);
    checkUnnamed3(o.origin!);
    checkUnnamed4(o.responseHeader!);
  }
  buildCounterBucketCors--;
}

core.List<api.BucketCors> buildUnnamed5() => [
      buildBucketCors(),
      buildBucketCors(),
    ];

void checkUnnamed5(core.List<api.BucketCors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketCors(o[0]);
  checkBucketCors(o[1]);
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

core.int buildCounterBucketCustomPlacementConfig = 0;
api.BucketCustomPlacementConfig buildBucketCustomPlacementConfig() {
  final o = api.BucketCustomPlacementConfig();
  buildCounterBucketCustomPlacementConfig++;
  if (buildCounterBucketCustomPlacementConfig < 3) {
    o.dataLocations = buildUnnamed6();
  }
  buildCounterBucketCustomPlacementConfig--;
  return o;
}

void checkBucketCustomPlacementConfig(api.BucketCustomPlacementConfig o) {
  buildCounterBucketCustomPlacementConfig++;
  if (buildCounterBucketCustomPlacementConfig < 3) {
    checkUnnamed6(o.dataLocations!);
  }
  buildCounterBucketCustomPlacementConfig--;
}

core.List<api.ObjectAccessControl> buildUnnamed7() => [
      buildObjectAccessControl(),
      buildObjectAccessControl(),
    ];

void checkUnnamed7(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterBucketEncryption = 0;
api.BucketEncryption buildBucketEncryption() {
  final o = api.BucketEncryption();
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
    unittest.expect(
      o.defaultKmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketEncryption--;
}

core.int buildCounterBucketHierarchicalNamespace = 0;
api.BucketHierarchicalNamespace buildBucketHierarchicalNamespace() {
  final o = api.BucketHierarchicalNamespace();
  buildCounterBucketHierarchicalNamespace++;
  if (buildCounterBucketHierarchicalNamespace < 3) {
    o.enabled = true;
  }
  buildCounterBucketHierarchicalNamespace--;
  return o;
}

void checkBucketHierarchicalNamespace(api.BucketHierarchicalNamespace o) {
  buildCounterBucketHierarchicalNamespace++;
  if (buildCounterBucketHierarchicalNamespace < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBucketHierarchicalNamespace--;
}

core.int buildCounterBucketIamConfigurationBucketPolicyOnly = 0;
api.BucketIamConfigurationBucketPolicyOnly
    buildBucketIamConfigurationBucketPolicyOnly() {
  final o = api.BucketIamConfigurationBucketPolicyOnly();
  buildCounterBucketIamConfigurationBucketPolicyOnly++;
  if (buildCounterBucketIamConfigurationBucketPolicyOnly < 3) {
    o.enabled = true;
    o.lockedTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterBucketIamConfigurationBucketPolicyOnly--;
  return o;
}

void checkBucketIamConfigurationBucketPolicyOnly(
    api.BucketIamConfigurationBucketPolicyOnly o) {
  buildCounterBucketIamConfigurationBucketPolicyOnly++;
  if (buildCounterBucketIamConfigurationBucketPolicyOnly < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.lockedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterBucketIamConfigurationBucketPolicyOnly--;
}

core.int buildCounterBucketIamConfigurationUniformBucketLevelAccess = 0;
api.BucketIamConfigurationUniformBucketLevelAccess
    buildBucketIamConfigurationUniformBucketLevelAccess() {
  final o = api.BucketIamConfigurationUniformBucketLevelAccess();
  buildCounterBucketIamConfigurationUniformBucketLevelAccess++;
  if (buildCounterBucketIamConfigurationUniformBucketLevelAccess < 3) {
    o.enabled = true;
    o.lockedTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterBucketIamConfigurationUniformBucketLevelAccess--;
  return o;
}

void checkBucketIamConfigurationUniformBucketLevelAccess(
    api.BucketIamConfigurationUniformBucketLevelAccess o) {
  buildCounterBucketIamConfigurationUniformBucketLevelAccess++;
  if (buildCounterBucketIamConfigurationUniformBucketLevelAccess < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.lockedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterBucketIamConfigurationUniformBucketLevelAccess--;
}

core.int buildCounterBucketIamConfiguration = 0;
api.BucketIamConfiguration buildBucketIamConfiguration() {
  final o = api.BucketIamConfiguration();
  buildCounterBucketIamConfiguration++;
  if (buildCounterBucketIamConfiguration < 3) {
    o.bucketPolicyOnly = buildBucketIamConfigurationBucketPolicyOnly();
    o.publicAccessPrevention = 'foo';
    o.uniformBucketLevelAccess =
        buildBucketIamConfigurationUniformBucketLevelAccess();
  }
  buildCounterBucketIamConfiguration--;
  return o;
}

void checkBucketIamConfiguration(api.BucketIamConfiguration o) {
  buildCounterBucketIamConfiguration++;
  if (buildCounterBucketIamConfiguration < 3) {
    checkBucketIamConfigurationBucketPolicyOnly(o.bucketPolicyOnly!);
    unittest.expect(
      o.publicAccessPrevention!,
      unittest.equals('foo'),
    );
    checkBucketIamConfigurationUniformBucketLevelAccess(
        o.uniformBucketLevelAccess!);
  }
  buildCounterBucketIamConfiguration--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.int buildCounterBucketLifecycleRuleAction = 0;
api.BucketLifecycleRuleAction buildBucketLifecycleRuleAction() {
  final o = api.BucketLifecycleRuleAction();
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
    unittest.expect(
      o.storageClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketLifecycleRuleAction--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterBucketLifecycleRuleCondition = 0;
api.BucketLifecycleRuleCondition buildBucketLifecycleRuleCondition() {
  final o = api.BucketLifecycleRuleCondition();
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    o.age = 42;
    o.createdBefore = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.customTimeBefore = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.daysSinceCustomTime = 42;
    o.daysSinceNoncurrentTime = 42;
    o.isLive = true;
    o.matchesPattern = 'foo';
    o.matchesPrefix = buildUnnamed9();
    o.matchesStorageClass = buildUnnamed10();
    o.matchesSuffix = buildUnnamed11();
    o.noncurrentTimeBefore = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.numNewerVersions = 42;
  }
  buildCounterBucketLifecycleRuleCondition--;
  return o;
}

void checkBucketLifecycleRuleCondition(api.BucketLifecycleRuleCondition o) {
  buildCounterBucketLifecycleRuleCondition++;
  if (buildCounterBucketLifecycleRuleCondition < 3) {
    unittest.expect(
      o.age!,
      unittest.equals(42),
    );
    unittest.expect(
      o.createdBefore!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.customTimeBefore!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.daysSinceCustomTime!,
      unittest.equals(42),
    );
    unittest.expect(
      o.daysSinceNoncurrentTime!,
      unittest.equals(42),
    );
    unittest.expect(o.isLive!, unittest.isTrue);
    unittest.expect(
      o.matchesPattern!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.matchesPrefix!);
    checkUnnamed10(o.matchesStorageClass!);
    checkUnnamed11(o.matchesSuffix!);
    unittest.expect(
      o.noncurrentTimeBefore!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.numNewerVersions!,
      unittest.equals(42),
    );
  }
  buildCounterBucketLifecycleRuleCondition--;
}

core.int buildCounterBucketLifecycleRule = 0;
api.BucketLifecycleRule buildBucketLifecycleRule() {
  final o = api.BucketLifecycleRule();
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
    checkBucketLifecycleRuleAction(o.action!);
    checkBucketLifecycleRuleCondition(o.condition!);
  }
  buildCounterBucketLifecycleRule--;
}

core.List<api.BucketLifecycleRule> buildUnnamed12() => [
      buildBucketLifecycleRule(),
      buildBucketLifecycleRule(),
    ];

void checkUnnamed12(core.List<api.BucketLifecycleRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketLifecycleRule(o[0]);
  checkBucketLifecycleRule(o[1]);
}

core.int buildCounterBucketLifecycle = 0;
api.BucketLifecycle buildBucketLifecycle() {
  final o = api.BucketLifecycle();
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    o.rule = buildUnnamed12();
  }
  buildCounterBucketLifecycle--;
  return o;
}

void checkBucketLifecycle(api.BucketLifecycle o) {
  buildCounterBucketLifecycle++;
  if (buildCounterBucketLifecycle < 3) {
    checkUnnamed12(o.rule!);
  }
  buildCounterBucketLifecycle--;
}

core.int buildCounterBucketLogging = 0;
api.BucketLogging buildBucketLogging() {
  final o = api.BucketLogging();
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
    unittest.expect(
      o.logBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logObjectPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketLogging--;
}

core.int buildCounterBucketObjectRetention = 0;
api.BucketObjectRetention buildBucketObjectRetention() {
  final o = api.BucketObjectRetention();
  buildCounterBucketObjectRetention++;
  if (buildCounterBucketObjectRetention < 3) {
    o.mode = 'foo';
  }
  buildCounterBucketObjectRetention--;
  return o;
}

void checkBucketObjectRetention(api.BucketObjectRetention o) {
  buildCounterBucketObjectRetention++;
  if (buildCounterBucketObjectRetention < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketObjectRetention--;
}

core.int buildCounterBucketOwner = 0;
api.BucketOwner buildBucketOwner() {
  final o = api.BucketOwner();
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
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketOwner--;
}

core.int buildCounterBucketRetentionPolicy = 0;
api.BucketRetentionPolicy buildBucketRetentionPolicy() {
  final o = api.BucketRetentionPolicy();
  buildCounterBucketRetentionPolicy++;
  if (buildCounterBucketRetentionPolicy < 3) {
    o.effectiveTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.isLocked = true;
    o.retentionPeriod = 'foo';
  }
  buildCounterBucketRetentionPolicy--;
  return o;
}

void checkBucketRetentionPolicy(api.BucketRetentionPolicy o) {
  buildCounterBucketRetentionPolicy++;
  if (buildCounterBucketRetentionPolicy < 3) {
    unittest.expect(
      o.effectiveTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.isLocked!, unittest.isTrue);
    unittest.expect(
      o.retentionPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketRetentionPolicy--;
}

core.int buildCounterBucketSoftDeletePolicy = 0;
api.BucketSoftDeletePolicy buildBucketSoftDeletePolicy() {
  final o = api.BucketSoftDeletePolicy();
  buildCounterBucketSoftDeletePolicy++;
  if (buildCounterBucketSoftDeletePolicy < 3) {
    o.effectiveTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.retentionDurationSeconds = 'foo';
  }
  buildCounterBucketSoftDeletePolicy--;
  return o;
}

void checkBucketSoftDeletePolicy(api.BucketSoftDeletePolicy o) {
  buildCounterBucketSoftDeletePolicy++;
  if (buildCounterBucketSoftDeletePolicy < 3) {
    unittest.expect(
      o.effectiveTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.retentionDurationSeconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketSoftDeletePolicy--;
}

core.int buildCounterBucketVersioning = 0;
api.BucketVersioning buildBucketVersioning() {
  final o = api.BucketVersioning();
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
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBucketVersioning--;
}

core.int buildCounterBucketWebsite = 0;
api.BucketWebsite buildBucketWebsite() {
  final o = api.BucketWebsite();
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
    unittest.expect(
      o.mainPageSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notFoundPage!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketWebsite--;
}

core.int buildCounterBucket = 0;
api.Bucket buildBucket() {
  final o = api.Bucket();
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    o.acl = buildUnnamed1();
    o.autoclass = buildBucketAutoclass();
    o.billing = buildBucketBilling();
    o.cors = buildUnnamed5();
    o.customPlacementConfig = buildBucketCustomPlacementConfig();
    o.defaultEventBasedHold = true;
    o.defaultObjectAcl = buildUnnamed7();
    o.encryption = buildBucketEncryption();
    o.etag = 'foo';
    o.hierarchicalNamespace = buildBucketHierarchicalNamespace();
    o.iamConfiguration = buildBucketIamConfiguration();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed8();
    o.lifecycle = buildBucketLifecycle();
    o.location = 'foo';
    o.locationType = 'foo';
    o.logging = buildBucketLogging();
    o.metageneration = 'foo';
    o.name = 'foo';
    o.objectRetention = buildBucketObjectRetention();
    o.owner = buildBucketOwner();
    o.projectNumber = 'foo';
    o.retentionPolicy = buildBucketRetentionPolicy();
    o.rpo = 'foo';
    o.satisfiesPZS = true;
    o.selfLink = 'foo';
    o.softDeletePolicy = buildBucketSoftDeletePolicy();
    o.storageClass = 'foo';
    o.timeCreated = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.updated = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.versioning = buildBucketVersioning();
    o.website = buildBucketWebsite();
  }
  buildCounterBucket--;
  return o;
}

void checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    checkUnnamed1(o.acl!);
    checkBucketAutoclass(o.autoclass!);
    checkBucketBilling(o.billing!);
    checkUnnamed5(o.cors!);
    checkBucketCustomPlacementConfig(o.customPlacementConfig!);
    unittest.expect(o.defaultEventBasedHold!, unittest.isTrue);
    checkUnnamed7(o.defaultObjectAcl!);
    checkBucketEncryption(o.encryption!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkBucketHierarchicalNamespace(o.hierarchicalNamespace!);
    checkBucketIamConfiguration(o.iamConfiguration!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
    checkBucketLifecycle(o.lifecycle!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
    checkBucketLogging(o.logging!);
    unittest.expect(
      o.metageneration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkBucketObjectRetention(o.objectRetention!);
    checkBucketOwner(o.owner!);
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    checkBucketRetentionPolicy(o.retentionPolicy!);
    unittest.expect(
      o.rpo!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPZS!, unittest.isTrue);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkBucketSoftDeletePolicy(o.softDeletePolicy!);
    unittest.expect(
      o.storageClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeCreated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkBucketVersioning(o.versioning!);
    checkBucketWebsite(o.website!);
  }
  buildCounterBucket--;
}

core.int buildCounterBucketAccessControlProjectTeam = 0;
api.BucketAccessControlProjectTeam buildBucketAccessControlProjectTeam() {
  final o = api.BucketAccessControlProjectTeam();
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
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.team!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketAccessControlProjectTeam--;
}

core.int buildCounterBucketAccessControl = 0;
api.BucketAccessControl buildBucketAccessControl() {
  final o = api.BucketAccessControl();
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
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkBucketAccessControlProjectTeam(o.projectTeam!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketAccessControl--;
}

core.List<api.BucketAccessControl> buildUnnamed13() => [
      buildBucketAccessControl(),
      buildBucketAccessControl(),
    ];

void checkUnnamed13(core.List<api.BucketAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketAccessControl(o[0]);
  checkBucketAccessControl(o[1]);
}

core.int buildCounterBucketAccessControls = 0;
api.BucketAccessControls buildBucketAccessControls() {
  final o = api.BucketAccessControls();
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    o.items = buildUnnamed13();
    o.kind = 'foo';
  }
  buildCounterBucketAccessControls--;
  return o;
}

void checkBucketAccessControls(api.BucketAccessControls o) {
  buildCounterBucketAccessControls++;
  if (buildCounterBucketAccessControls < 3) {
    checkUnnamed13(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketAccessControls--;
}

core.List<api.Bucket> buildUnnamed14() => [
      buildBucket(),
      buildBucket(),
    ];

void checkUnnamed14(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBuckets = 0;
api.Buckets buildBuckets() {
  final o = api.Buckets();
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    o.items = buildUnnamed14();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBuckets--;
  return o;
}

void checkBuckets(api.Buckets o) {
  buildCounterBuckets++;
  if (buildCounterBuckets < 3) {
    checkUnnamed14(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuckets--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterBulkRestoreObjectsRequest = 0;
api.BulkRestoreObjectsRequest buildBulkRestoreObjectsRequest() {
  final o = api.BulkRestoreObjectsRequest();
  buildCounterBulkRestoreObjectsRequest++;
  if (buildCounterBulkRestoreObjectsRequest < 3) {
    o.allowOverwrite = true;
    o.copySourceAcl = true;
    o.matchGlobs = buildUnnamed15();
    o.softDeletedAfterTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.softDeletedBeforeTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterBulkRestoreObjectsRequest--;
  return o;
}

void checkBulkRestoreObjectsRequest(api.BulkRestoreObjectsRequest o) {
  buildCounterBulkRestoreObjectsRequest++;
  if (buildCounterBulkRestoreObjectsRequest < 3) {
    unittest.expect(o.allowOverwrite!, unittest.isTrue);
    unittest.expect(o.copySourceAcl!, unittest.isTrue);
    checkUnnamed15(o.matchGlobs!);
    unittest.expect(
      o.softDeletedAfterTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.softDeletedBeforeTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterBulkRestoreObjectsRequest--;
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed16();
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
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.params!);
    unittest.expect(o.payload!, unittest.isTrue);
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannel--;
}

core.int buildCounterComposeRequestSourceObjectsObjectPreconditions = 0;
api.ComposeRequestSourceObjectsObjectPreconditions
    buildComposeRequestSourceObjectsObjectPreconditions() {
  final o = api.ComposeRequestSourceObjectsObjectPreconditions();
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
    unittest.expect(
      o.ifGenerationMatch!,
      unittest.equals('foo'),
    );
  }
  buildCounterComposeRequestSourceObjectsObjectPreconditions--;
}

core.int buildCounterComposeRequestSourceObjects = 0;
api.ComposeRequestSourceObjects buildComposeRequestSourceObjects() {
  final o = api.ComposeRequestSourceObjects();
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
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkComposeRequestSourceObjectsObjectPreconditions(o.objectPreconditions!);
  }
  buildCounterComposeRequestSourceObjects--;
}

core.List<api.ComposeRequestSourceObjects> buildUnnamed17() => [
      buildComposeRequestSourceObjects(),
      buildComposeRequestSourceObjects(),
    ];

void checkUnnamed17(core.List<api.ComposeRequestSourceObjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComposeRequestSourceObjects(o[0]);
  checkComposeRequestSourceObjects(o[1]);
}

core.int buildCounterComposeRequest = 0;
api.ComposeRequest buildComposeRequest() {
  final o = api.ComposeRequest();
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    o.destination = buildObject();
    o.kind = 'foo';
    o.sourceObjects = buildUnnamed17();
  }
  buildCounterComposeRequest--;
  return o;
}

void checkComposeRequest(api.ComposeRequest o) {
  buildCounterComposeRequest++;
  if (buildCounterComposeRequest < 3) {
    checkObject(o.destination!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.sourceObjects!);
  }
  buildCounterComposeRequest--;
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

core.int buildCounterFolderPendingRenameInfo = 0;
api.FolderPendingRenameInfo buildFolderPendingRenameInfo() {
  final o = api.FolderPendingRenameInfo();
  buildCounterFolderPendingRenameInfo++;
  if (buildCounterFolderPendingRenameInfo < 3) {
    o.operationId = 'foo';
  }
  buildCounterFolderPendingRenameInfo--;
  return o;
}

void checkFolderPendingRenameInfo(api.FolderPendingRenameInfo o) {
  buildCounterFolderPendingRenameInfo++;
  if (buildCounterFolderPendingRenameInfo < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFolderPendingRenameInfo--;
}

core.int buildCounterFolder = 0;
api.Folder buildFolder() {
  final o = api.Folder();
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    o.bucket = 'foo';
    o.createTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.metageneration = 'foo';
    o.name = 'foo';
    o.pendingRenameInfo = buildFolderPendingRenameInfo();
    o.selfLink = 'foo';
    o.updateTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterFolder--;
  return o;
}

void checkFolder(api.Folder o) {
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metageneration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFolderPendingRenameInfo(o.pendingRenameInfo!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterFolder--;
}

core.List<api.Folder> buildUnnamed18() => [
      buildFolder(),
      buildFolder(),
    ];

void checkUnnamed18(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.int buildCounterFolders = 0;
api.Folders buildFolders() {
  final o = api.Folders();
  buildCounterFolders++;
  if (buildCounterFolders < 3) {
    o.items = buildUnnamed18();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFolders--;
  return o;
}

void checkFolders(api.Folders o) {
  buildCounterFolders++;
  if (buildCounterFolders < 3) {
    checkUnnamed18(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFolders--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed19() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed19(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed19();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed20();
    o.name = 'foo';
    o.response = buildUnnamed21();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed20(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed23() => [
      buildUnnamed22(),
      buildUnnamed22(),
    ];

void checkUnnamed23(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed22(o[0]);
  checkUnnamed22(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed23();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed23(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterHmacKey = 0;
api.HmacKey buildHmacKey() {
  final o = api.HmacKey();
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
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkHmacKeyMetadata(o.metadata!);
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
  }
  buildCounterHmacKey--;
}

core.int buildCounterHmacKeyMetadata = 0;
api.HmacKeyMetadata buildHmacKeyMetadata() {
  final o = api.HmacKeyMetadata();
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
    o.timeCreated = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.updated = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterHmacKeyMetadata--;
  return o;
}

void checkHmacKeyMetadata(api.HmacKeyMetadata o) {
  buildCounterHmacKeyMetadata++;
  if (buildCounterHmacKeyMetadata < 3) {
    unittest.expect(
      o.accessId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeCreated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterHmacKeyMetadata--;
}

core.List<api.HmacKeyMetadata> buildUnnamed24() => [
      buildHmacKeyMetadata(),
      buildHmacKeyMetadata(),
    ];

void checkUnnamed24(core.List<api.HmacKeyMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHmacKeyMetadata(o[0]);
  checkHmacKeyMetadata(o[1]);
}

core.int buildCounterHmacKeysMetadata = 0;
api.HmacKeysMetadata buildHmacKeysMetadata() {
  final o = api.HmacKeysMetadata();
  buildCounterHmacKeysMetadata++;
  if (buildCounterHmacKeysMetadata < 3) {
    o.items = buildUnnamed24();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterHmacKeysMetadata--;
  return o;
}

void checkHmacKeysMetadata(api.HmacKeysMetadata o) {
  buildCounterHmacKeysMetadata++;
  if (buildCounterHmacKeysMetadata < 3) {
    checkUnnamed24(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterHmacKeysMetadata--;
}

core.int buildCounterManagedFolder = 0;
api.ManagedFolder buildManagedFolder() {
  final o = api.ManagedFolder();
  buildCounterManagedFolder++;
  if (buildCounterManagedFolder < 3) {
    o.bucket = 'foo';
    o.createTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.metageneration = 'foo';
    o.name = 'foo';
    o.selfLink = 'foo';
    o.updateTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterManagedFolder--;
  return o;
}

void checkManagedFolder(api.ManagedFolder o) {
  buildCounterManagedFolder++;
  if (buildCounterManagedFolder < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metageneration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterManagedFolder--;
}

core.List<api.ManagedFolder> buildUnnamed25() => [
      buildManagedFolder(),
      buildManagedFolder(),
    ];

void checkUnnamed25(core.List<api.ManagedFolder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedFolder(o[0]);
  checkManagedFolder(o[1]);
}

core.int buildCounterManagedFolders = 0;
api.ManagedFolders buildManagedFolders() {
  final o = api.ManagedFolders();
  buildCounterManagedFolders++;
  if (buildCounterManagedFolders < 3) {
    o.items = buildUnnamed25();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterManagedFolders--;
  return o;
}

void checkManagedFolders(api.ManagedFolders o) {
  buildCounterManagedFolders++;
  if (buildCounterManagedFolders < 3) {
    checkUnnamed25(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedFolders--;
}

core.Map<core.String, core.String> buildUnnamed26() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed26(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  final o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.customAttributes = buildUnnamed26();
    o.etag = 'foo';
    o.eventTypes = buildUnnamed27();
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
    checkUnnamed26(o.customAttributes!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.eventTypes!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectNamePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payloadFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotification--;
}

core.List<api.Notification> buildUnnamed28() => [
      buildNotification(),
      buildNotification(),
    ];

void checkUnnamed28(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotifications = 0;
api.Notifications buildNotifications() {
  final o = api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.items = buildUnnamed28();
    o.kind = 'foo';
  }
  buildCounterNotifications--;
  return o;
}

void checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    checkUnnamed28(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotifications--;
}

core.List<api.ObjectAccessControl> buildUnnamed29() => [
      buildObjectAccessControl(),
      buildObjectAccessControl(),
    ];

void checkUnnamed29(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectCustomerEncryption = 0;
api.ObjectCustomerEncryption buildObjectCustomerEncryption() {
  final o = api.ObjectCustomerEncryption();
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
    unittest.expect(
      o.encryptionAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keySha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectCustomerEncryption--;
}

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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

core.int buildCounterObjectOwner = 0;
api.ObjectOwner buildObjectOwner() {
  final o = api.ObjectOwner();
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
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectOwner--;
}

core.int buildCounterObjectRetention = 0;
api.ObjectRetention buildObjectRetention() {
  final o = api.ObjectRetention();
  buildCounterObjectRetention++;
  if (buildCounterObjectRetention < 3) {
    o.mode = 'foo';
    o.retainUntilTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterObjectRetention--;
  return o;
}

void checkObjectRetention(api.ObjectRetention o) {
  buildCounterObjectRetention++;
  if (buildCounterObjectRetention < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retainUntilTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterObjectRetention--;
}

core.int buildCounterObject = 0;
api.Object buildObject() {
  final o = api.Object();
  buildCounterObject++;
  if (buildCounterObject < 3) {
    o.acl = buildUnnamed29();
    o.bucket = 'foo';
    o.cacheControl = 'foo';
    o.componentCount = 42;
    o.contentDisposition = 'foo';
    o.contentEncoding = 'foo';
    o.contentLanguage = 'foo';
    o.contentType = 'foo';
    o.crc32c = 'foo';
    o.customTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.customerEncryption = buildObjectCustomerEncryption();
    o.etag = 'foo';
    o.eventBasedHold = true;
    o.generation = 'foo';
    o.hardDeleteTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.kmsKeyName = 'foo';
    o.md5Hash = 'foo';
    o.mediaLink = 'foo';
    o.metadata = buildUnnamed30();
    o.metageneration = 'foo';
    o.name = 'foo';
    o.owner = buildObjectOwner();
    o.retention = buildObjectRetention();
    o.retentionExpirationTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.selfLink = 'foo';
    o.size = 'foo';
    o.softDeleteTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.storageClass = 'foo';
    o.temporaryHold = true;
    o.timeCreated = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.timeDeleted = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.timeStorageClassUpdated = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.updated = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterObject--;
  return o;
}

void checkObject(api.Object o) {
  buildCounterObject++;
  if (buildCounterObject < 3) {
    checkUnnamed29(o.acl!);
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cacheControl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.componentCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.contentDisposition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkObjectCustomerEncryption(o.customerEncryption!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.eventBasedHold!, unittest.isTrue);
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hardDeleteTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaLink!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.metageneration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkObjectOwner(o.owner!);
    checkObjectRetention(o.retention!);
    unittest.expect(
      o.retentionExpirationTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.softDeleteTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.storageClass!,
      unittest.equals('foo'),
    );
    unittest.expect(o.temporaryHold!, unittest.isTrue);
    unittest.expect(
      o.timeCreated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.timeDeleted!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.timeStorageClassUpdated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterObject--;
}

core.int buildCounterObjectAccessControlProjectTeam = 0;
api.ObjectAccessControlProjectTeam buildObjectAccessControlProjectTeam() {
  final o = api.ObjectAccessControlProjectTeam();
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
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.team!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectAccessControlProjectTeam--;
}

core.int buildCounterObjectAccessControl = 0;
api.ObjectAccessControl buildObjectAccessControl() {
  final o = api.ObjectAccessControl();
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
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.object!,
      unittest.equals('foo'),
    );
    checkObjectAccessControlProjectTeam(o.projectTeam!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectAccessControl--;
}

core.List<api.ObjectAccessControl> buildUnnamed31() => [
      buildObjectAccessControl(),
      buildObjectAccessControl(),
    ];

void checkUnnamed31(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.int buildCounterObjectAccessControls = 0;
api.ObjectAccessControls buildObjectAccessControls() {
  final o = api.ObjectAccessControls();
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    o.items = buildUnnamed31();
    o.kind = 'foo';
  }
  buildCounterObjectAccessControls--;
  return o;
}

void checkObjectAccessControls(api.ObjectAccessControls o) {
  buildCounterObjectAccessControls++;
  if (buildCounterObjectAccessControls < 3) {
    checkUnnamed31(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectAccessControls--;
}

core.List<api.Object> buildUnnamed32() => [
      buildObject(),
      buildObject(),
    ];

void checkUnnamed32(core.List<api.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObject(o[0]);
  checkObject(o[1]);
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterObjects = 0;
api.Objects buildObjects() {
  final o = api.Objects();
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    o.items = buildUnnamed32();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.prefixes = buildUnnamed33();
  }
  buildCounterObjects--;
  return o;
}

void checkObjects(api.Objects o) {
  buildCounterObjects++;
  if (buildCounterObjects < 3) {
    checkUnnamed32(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.prefixes!);
  }
  buildCounterObjects--;
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.int buildCounterPolicyBindings = 0;
api.PolicyBindings buildPolicyBindings() {
  final o = api.PolicyBindings();
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed34();
    o.role = 'foo';
  }
  buildCounterPolicyBindings--;
  return o;
}

void checkPolicyBindings(api.PolicyBindings o) {
  buildCounterPolicyBindings++;
  if (buildCounterPolicyBindings < 3) {
    checkExpr(o.condition!);
    checkUnnamed34(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyBindings--;
}

core.List<api.PolicyBindings> buildUnnamed35() => [
      buildPolicyBindings(),
      buildPolicyBindings(),
    ];

void checkUnnamed35(core.List<api.PolicyBindings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBindings(o[0]);
  checkPolicyBindings(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed35();
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
    checkUnnamed35(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterRewriteResponse = 0;
api.RewriteResponse buildRewriteResponse() {
  final o = api.RewriteResponse();
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
    unittest.expect(o.done!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectSize!,
      unittest.equals('foo'),
    );
    checkObject(o.resource!);
    unittest.expect(
      o.rewriteToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalBytesRewritten!,
      unittest.equals('foo'),
    );
  }
  buildCounterRewriteResponse--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
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
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceAccount--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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
    o.kind = 'foo';
    o.permissions = buildUnnamed36();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AnywhereCache', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnywhereCache();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnywhereCache.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnywhereCache(od);
    });
  });

  unittest.group('obj-schema-AnywhereCaches', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnywhereCaches();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnywhereCaches.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnywhereCaches(od);
    });
  });

  unittest.group('obj-schema-BucketAutoclass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketAutoclass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketAutoclass.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketAutoclass(od);
    });
  });

  unittest.group('obj-schema-BucketBilling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketBilling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketBilling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketBilling(od);
    });
  });

  unittest.group('obj-schema-BucketCors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketCors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BucketCors.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBucketCors(od);
    });
  });

  unittest.group('obj-schema-BucketCustomPlacementConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketCustomPlacementConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketCustomPlacementConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketCustomPlacementConfig(od);
    });
  });

  unittest.group('obj-schema-BucketEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketEncryption(od);
    });
  });

  unittest.group('obj-schema-BucketHierarchicalNamespace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketHierarchicalNamespace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketHierarchicalNamespace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketHierarchicalNamespace(od);
    });
  });

  unittest.group('obj-schema-BucketIamConfigurationBucketPolicyOnly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketIamConfigurationBucketPolicyOnly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketIamConfigurationBucketPolicyOnly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketIamConfigurationBucketPolicyOnly(od);
    });
  });

  unittest.group('obj-schema-BucketIamConfigurationUniformBucketLevelAccess',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketIamConfigurationUniformBucketLevelAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketIamConfigurationUniformBucketLevelAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketIamConfigurationUniformBucketLevelAccess(od);
    });
  });

  unittest.group('obj-schema-BucketIamConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketIamConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketIamConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketIamConfiguration(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycleRuleAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketLifecycleRuleAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketLifecycleRuleAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketLifecycleRuleAction(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycleRuleCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketLifecycleRuleCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketLifecycleRuleCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketLifecycleRuleCondition(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycleRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketLifecycleRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketLifecycleRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketLifecycleRule(od);
    });
  });

  unittest.group('obj-schema-BucketLifecycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketLifecycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketLifecycle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketLifecycle(od);
    });
  });

  unittest.group('obj-schema-BucketLogging', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketLogging();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketLogging.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketLogging(od);
    });
  });

  unittest.group('obj-schema-BucketObjectRetention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketObjectRetention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketObjectRetention.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketObjectRetention(od);
    });
  });

  unittest.group('obj-schema-BucketOwner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketOwner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketOwner.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketOwner(od);
    });
  });

  unittest.group('obj-schema-BucketRetentionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketRetentionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketRetentionPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketRetentionPolicy(od);
    });
  });

  unittest.group('obj-schema-BucketSoftDeletePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketSoftDeletePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketSoftDeletePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketSoftDeletePolicy(od);
    });
  });

  unittest.group('obj-schema-BucketVersioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketVersioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketVersioning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketVersioning(od);
    });
  });

  unittest.group('obj-schema-BucketWebsite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketWebsite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketWebsite.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketWebsite(od);
    });
  });

  unittest.group('obj-schema-Bucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Bucket.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBucket(od);
    });
  });

  unittest.group('obj-schema-BucketAccessControlProjectTeam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketAccessControlProjectTeam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketAccessControlProjectTeam.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketAccessControlProjectTeam(od);
    });
  });

  unittest.group('obj-schema-BucketAccessControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketAccessControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketAccessControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketAccessControl(od);
    });
  });

  unittest.group('obj-schema-BucketAccessControls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketAccessControls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketAccessControls.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketAccessControls(od);
    });
  });

  unittest.group('obj-schema-Buckets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuckets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Buckets.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuckets(od);
    });
  });

  unittest.group('obj-schema-BulkRestoreObjectsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkRestoreObjectsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkRestoreObjectsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBulkRestoreObjectsRequest(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ComposeRequestSourceObjectsObjectPreconditions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildComposeRequestSourceObjectsObjectPreconditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComposeRequestSourceObjectsObjectPreconditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComposeRequestSourceObjectsObjectPreconditions(od);
    });
  });

  unittest.group('obj-schema-ComposeRequestSourceObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComposeRequestSourceObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComposeRequestSourceObjects.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComposeRequestSourceObjects(od);
    });
  });

  unittest.group('obj-schema-ComposeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComposeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComposeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComposeRequest(od);
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

  unittest.group('obj-schema-FolderPendingRenameInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolderPendingRenameInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FolderPendingRenameInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFolderPendingRenameInfo(od);
    });
  });

  unittest.group('obj-schema-Folder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Folder.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFolder(od);
    });
  });

  unittest.group('obj-schema-Folders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Folders.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFolders(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-HmacKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHmacKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HmacKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHmacKey(od);
    });
  });

  unittest.group('obj-schema-HmacKeyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHmacKeyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HmacKeyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHmacKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-HmacKeysMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHmacKeysMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HmacKeysMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHmacKeysMetadata(od);
    });
  });

  unittest.group('obj-schema-ManagedFolder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedFolder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedFolder(od);
    });
  });

  unittest.group('obj-schema-ManagedFolders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedFolders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedFolders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedFolders(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-Notifications', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifications();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notifications.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotifications(od);
    });
  });

  unittest.group('obj-schema-ObjectCustomerEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectCustomerEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectCustomerEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectCustomerEncryption(od);
    });
  });

  unittest.group('obj-schema-ObjectOwner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectOwner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectOwner.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectOwner(od);
    });
  });

  unittest.group('obj-schema-ObjectRetention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectRetention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectRetention.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectRetention(od);
    });
  });

  unittest.group('obj-schema-Object', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Object.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObject(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControlProjectTeam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectAccessControlProjectTeam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectAccessControlProjectTeam.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectAccessControlProjectTeam(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectAccessControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectAccessControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectAccessControl(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectAccessControls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectAccessControls.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectAccessControls(od);
    });
  });

  unittest.group('obj-schema-Objects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Objects.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObjects(od);
    });
  });

  unittest.group('obj-schema-PolicyBindings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyBindings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyBindings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBindings(od);
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

  unittest.group('obj-schema-RewriteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRewriteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RewriteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRewriteResponse(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccount(od);
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

  unittest.group('resource-AnywhereCachesResource', () {
    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_bucket = 'foo';
      final arg_anywhereCacheId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/anywhereCaches/'),
        );
        pathOffset += 16;
        index = path.indexOf('/disable', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_anywhereCacheId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/disable'),
        );
        pathOffset += 8;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAnywhereCache());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.disable(arg_bucket, arg_anywhereCacheId,
          $fields: arg_$fields);
      checkAnywhereCache(response as api.AnywhereCache);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_bucket = 'foo';
      final arg_anywhereCacheId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/anywhereCaches/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_anywhereCacheId'),
        );

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAnywhereCache());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_bucket, arg_anywhereCacheId, $fields: arg_$fields);
      checkAnywhereCache(response as api.AnywhereCache);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_request = buildAnywhereCache();
      final arg_bucket = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnywhereCache.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnywhereCache(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/anywhereCaches'),
        );
        pathOffset += 15;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_bucket, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_bucket = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/anywhereCaches'),
        );
        pathOffset += 15;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAnywhereCaches());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAnywhereCaches(response as api.AnywhereCaches);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_bucket = 'foo';
      final arg_anywhereCacheId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/anywhereCaches/'),
        );
        pathOffset += 16;
        index = path.indexOf('/pause', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_anywhereCacheId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/pause'),
        );
        pathOffset += 6;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAnywhereCache());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pause(arg_bucket, arg_anywhereCacheId,
          $fields: arg_$fields);
      checkAnywhereCache(response as api.AnywhereCache);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_bucket = 'foo';
      final arg_anywhereCacheId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/anywhereCaches/'),
        );
        pathOffset += 16;
        index = path.indexOf('/resume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_anywhereCacheId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/resume'),
        );
        pathOffset += 7;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAnywhereCache());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resume(arg_bucket, arg_anywhereCacheId,
          $fields: arg_$fields);
      checkAnywhereCache(response as api.AnywhereCache);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).anywhereCaches;
      final arg_request = buildAnywhereCache();
      final arg_bucket = 'foo';
      final arg_anywhereCacheId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnywhereCache.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnywhereCache(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/anywhereCaches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/anywhereCaches/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_anywhereCacheId'),
        );

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_bucket, arg_anywhereCacheId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-BucketAccessControlsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).bucketAccessControls;
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).bucketAccessControls;
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
      checkBucketAccessControl(response as api.BucketAccessControl);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).bucketAccessControls;
      final arg_request = buildBucketAccessControl();
      final arg_bucket = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BucketAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBucketAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/acl'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_bucket,
          userProject: arg_userProject, $fields: arg_$fields);
      checkBucketAccessControl(response as api.BucketAccessControl);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).bucketAccessControls;
      final arg_bucket = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/acl'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucketAccessControls());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          userProject: arg_userProject, $fields: arg_$fields);
      checkBucketAccessControls(response as api.BucketAccessControls);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).bucketAccessControls;
      final arg_request = buildBucketAccessControl();
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BucketAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBucketAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
      checkBucketAccessControl(response as api.BucketAccessControl);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).bucketAccessControls;
      final arg_request = buildBucketAccessControl();
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BucketAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBucketAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucketAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
      checkBucketAccessControl(response as api.BucketAccessControl);
    });
  });

  unittest.group('resource-BucketsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_bucket = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_bucket,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          userProject: arg_userProject,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_bucket = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_bucket = 'foo';
      final arg_optionsRequestedPolicyVersion = 42;
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/iam'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          core.int.parse(queryMap['optionsRequestedPolicyVersion']!.first),
          unittest.equals(arg_optionsRequestedPolicyVersion),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      final response = await res.getIamPolicy(arg_bucket,
          optionsRequestedPolicyVersion: arg_optionsRequestedPolicyVersion,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_request = buildBucket();
      final arg_project = 'foo';
      final arg_enableObjectRetention = true;
      final arg_predefinedAcl = 'foo';
      final arg_predefinedDefaultObjectAcl = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Bucket.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBucket(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('b'),
        );
        pathOffset += 1;

        final query = req.url.query;
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
          queryMap['project']!.first,
          unittest.equals(arg_project),
        );
        unittest.expect(
          queryMap['enableObjectRetention']!.first,
          unittest.equals('$arg_enableObjectRetention'),
        );
        unittest.expect(
          queryMap['predefinedAcl']!.first,
          unittest.equals(arg_predefinedAcl),
        );
        unittest.expect(
          queryMap['predefinedDefaultObjectAcl']!.first,
          unittest.equals(arg_predefinedDefaultObjectAcl),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_project,
          enableObjectRetention: arg_enableObjectRetention,
          predefinedAcl: arg_predefinedAcl,
          predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_project = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_prefix = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('b'),
        );
        pathOffset += 1;

        final query = req.url.query;
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
          queryMap['project']!.first,
          unittest.equals(arg_project),
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
          queryMap['prefix']!.first,
          unittest.equals(arg_prefix),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuckets());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          prefix: arg_prefix,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkBuckets(response as api.Buckets);
    });

    unittest.test('method--lockRetentionPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_bucket = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/lockRetentionPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/lockRetentionPolicy'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lockRetentionPolicy(
          arg_bucket, arg_ifMetagenerationMatch,
          userProject: arg_userProject, $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_request = buildBucket();
      final arg_bucket = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_predefinedAcl = 'foo';
      final arg_predefinedDefaultObjectAcl = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Bucket.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBucket(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['predefinedAcl']!.first,
          unittest.equals(arg_predefinedAcl),
        );
        unittest.expect(
          queryMap['predefinedDefaultObjectAcl']!.first,
          unittest.equals(arg_predefinedDefaultObjectAcl),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_bucket,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          predefinedAcl: arg_predefinedAcl,
          predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_request = buildPolicy();
      final arg_bucket = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/iam'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      final response = await res.setIamPolicy(arg_request, arg_bucket,
          userProject: arg_userProject, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_bucket = 'foo';
      final arg_permissions = buildUnnamed37();
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/iam/testPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/iam/testPermissions'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
          queryMap['permissions']!,
          unittest.equals(arg_permissions),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
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
      final response = await res.testIamPermissions(arg_bucket, arg_permissions,
          userProject: arg_userProject, $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).buckets;
      final arg_request = buildBucket();
      final arg_bucket = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_predefinedAcl = 'foo';
      final arg_predefinedDefaultObjectAcl = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Bucket.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBucket(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['predefinedAcl']!.first,
          unittest.equals(arg_predefinedAcl),
        );
        unittest.expect(
          queryMap['predefinedDefaultObjectAcl']!.first,
          unittest.equals(arg_predefinedDefaultObjectAcl),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_bucket,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          predefinedAcl: arg_predefinedAcl,
          predefinedDefaultObjectAcl: arg_predefinedDefaultObjectAcl,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).channels;
      final arg_request = buildChannel();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('channels/stop'),
        );
        pathOffset += 13;

        final query = req.url.query;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.stop(arg_request, $fields: arg_$fields);
    });
  });

  unittest.group('resource-DefaultObjectAccessControlsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).defaultObjectAccessControls;
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/defaultObjectAcl/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).defaultObjectAccessControls;
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/defaultObjectAcl/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).defaultObjectAccessControls;
      final arg_request = buildObjectAccessControl();
      final arg_bucket = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObjectAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObjectAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/defaultObjectAcl'),
        );
        pathOffset += 17;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_bucket,
          userProject: arg_userProject, $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).defaultObjectAccessControls;
      final arg_bucket = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/defaultObjectAcl'),
        );
        pathOffset += 17;

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControls());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObjectAccessControls(response as api.ObjectAccessControls);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).defaultObjectAccessControls;
      final arg_request = buildObjectAccessControl();
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObjectAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObjectAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/defaultObjectAcl/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).defaultObjectAccessControls;
      final arg_request = buildObjectAccessControl();
      final arg_bucket = 'foo';
      final arg_entity = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObjectAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObjectAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/defaultObjectAcl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/defaultObjectAcl/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_bucket, arg_entity,
          userProject: arg_userProject, $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });
  });

  unittest.group('resource-FoldersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).folders;
      final arg_bucket = 'foo';
      final arg_folder = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folder'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
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
      await res.delete(arg_bucket, arg_folder,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).folders;
      final arg_bucket = 'foo';
      final arg_folder = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folder'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_folder,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).folders;
      final arg_request = buildFolder();
      final arg_bucket = 'foo';
      final arg_recursive = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Folder.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFolder(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/folders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/folders'),
        );
        pathOffset += 8;

        final query = req.url.query;
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
          queryMap['recursive']!.first,
          unittest.equals('$arg_recursive'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_bucket,
          recursive: arg_recursive, $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).folders;
      final arg_bucket = 'foo';
      final arg_delimiter = 'foo';
      final arg_endOffset = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_prefix = 'foo';
      final arg_startOffset = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/folders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/folders'),
        );
        pathOffset += 8;

        final query = req.url.query;
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
          queryMap['delimiter']!.first,
          unittest.equals(arg_delimiter),
        );
        unittest.expect(
          queryMap['endOffset']!.first,
          unittest.equals(arg_endOffset),
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
          queryMap['prefix']!.first,
          unittest.equals(arg_prefix),
        );
        unittest.expect(
          queryMap['startOffset']!.first,
          unittest.equals(arg_startOffset),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFolders());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          delimiter: arg_delimiter,
          endOffset: arg_endOffset,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          prefix: arg_prefix,
          startOffset: arg_startOffset,
          $fields: arg_$fields);
      checkFolders(response as api.Folders);
    });

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).folders;
      final arg_bucket = 'foo';
      final arg_sourceFolder = 'foo';
      final arg_destinationFolder = 'foo';
      final arg_ifSourceMetagenerationMatch = 'foo';
      final arg_ifSourceMetagenerationNotMatch = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        index = path.indexOf('/renameTo/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sourceFolder'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/renameTo/folders/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationFolder'),
        );

        final query = req.url.query;
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
          queryMap['ifSourceMetagenerationMatch']!.first,
          unittest.equals(arg_ifSourceMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifSourceMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifSourceMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rename(
          arg_bucket, arg_sourceFolder, arg_destinationFolder,
          ifSourceMetagenerationMatch: arg_ifSourceMetagenerationMatch,
          ifSourceMetagenerationNotMatch: arg_ifSourceMetagenerationNotMatch,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ManagedFoldersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_bucket = 'foo';
      final arg_managedFolder = 'foo';
      final arg_allowNonEmpty = true;
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/managedFolders/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedFolder'),
        );

        final query = req.url.query;
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
          queryMap['allowNonEmpty']!.first,
          unittest.equals('$arg_allowNonEmpty'),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
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
      await res.delete(arg_bucket, arg_managedFolder,
          allowNonEmpty: arg_allowNonEmpty,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_bucket = 'foo';
      final arg_managedFolder = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/managedFolders/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedFolder'),
        );

        final query = req.url.query;
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
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildManagedFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_managedFolder,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          $fields: arg_$fields);
      checkManagedFolder(response as api.ManagedFolder);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_bucket = 'foo';
      final arg_managedFolder = 'foo';
      final arg_optionsRequestedPolicyVersion = 42;
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/managedFolders/'),
        );
        pathOffset += 16;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedFolder'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/iam'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          core.int.parse(queryMap['optionsRequestedPolicyVersion']!.first),
          unittest.equals(arg_optionsRequestedPolicyVersion),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      final response = await res.getIamPolicy(arg_bucket, arg_managedFolder,
          optionsRequestedPolicyVersion: arg_optionsRequestedPolicyVersion,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_request = buildManagedFolder();
      final arg_bucket = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedFolder.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedFolder(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/managedFolders'),
        );
        pathOffset += 15;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildManagedFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_bucket, $fields: arg_$fields);
      checkManagedFolder(response as api.ManagedFolder);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_bucket = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_prefix = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/managedFolders'),
        );
        pathOffset += 15;

        final query = req.url.query;
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
          queryMap['prefix']!.first,
          unittest.equals(arg_prefix),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildManagedFolders());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          prefix: arg_prefix,
          $fields: arg_$fields);
      checkManagedFolders(response as api.ManagedFolders);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_request = buildPolicy();
      final arg_bucket = 'foo';
      final arg_managedFolder = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/managedFolders/'),
        );
        pathOffset += 16;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedFolder'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/iam'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      final response = await res.setIamPolicy(
          arg_request, arg_bucket, arg_managedFolder,
          userProject: arg_userProject, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).managedFolders;
      final arg_bucket = 'foo';
      final arg_managedFolder = 'foo';
      final arg_permissions = buildUnnamed38();
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/managedFolders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/managedFolders/'),
        );
        pathOffset += 16;
        index = path.indexOf('/iam/testPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedFolder'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/iam/testPermissions'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
          queryMap['permissions']!,
          unittest.equals(arg_permissions),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
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
      final response = await res.testIamPermissions(
          arg_bucket, arg_managedFolder, arg_permissions,
          userProject: arg_userProject, $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-NotificationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).notifications;
      final arg_bucket = 'foo';
      final arg_notification = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/notificationConfigs/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_notification'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_bucket, arg_notification,
          userProject: arg_userProject, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).notifications;
      final arg_bucket = 'foo';
      final arg_notification = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/notificationConfigs/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_notification'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNotification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_notification,
          userProject: arg_userProject, $fields: arg_$fields);
      checkNotification(response as api.Notification);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).notifications;
      final arg_request = buildNotification();
      final arg_bucket = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Notification.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNotification(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/notificationConfigs'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNotification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_bucket,
          userProject: arg_userProject, $fields: arg_$fields);
      checkNotification(response as api.Notification);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).notifications;
      final arg_bucket = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/notificationConfigs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/notificationConfigs'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNotifications());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          userProject: arg_userProject, $fields: arg_$fields);
      checkNotifications(response as api.Notifications);
    });
  });

  unittest.group('resource-ObjectAccessControlsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objectAccessControls;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_entity = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_bucket, arg_object, arg_entity,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objectAccessControls;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_entity = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_object, arg_entity,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objectAccessControls;
      final arg_request = buildObjectAccessControl();
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObjectAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObjectAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/acl'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_bucket, arg_object,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objectAccessControls;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/acl'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControls());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket, arg_object,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObjectAccessControls(response as api.ObjectAccessControls);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objectAccessControls;
      final arg_request = buildObjectAccessControl();
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_entity = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObjectAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObjectAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_bucket, arg_object, arg_entity,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objectAccessControls;
      final arg_request = buildObjectAccessControl();
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_entity = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObjectAccessControl.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObjectAccessControl(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/acl/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entity'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjectAccessControl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_bucket, arg_object, arg_entity,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObjectAccessControl(response as api.ObjectAccessControl);
    });
  });

  unittest.group('resource-ObjectsResource', () {
    unittest.test('method--bulkRestore', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildBulkRestoreObjectsRequest();
      final arg_bucket = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BulkRestoreObjectsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkRestoreObjectsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/bulkRestore', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/o/bulkRestore'),
        );
        pathOffset += 14;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.bulkRestore(arg_request, arg_bucket, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--compose', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildComposeRequest();
      final arg_destinationBucket = 'foo';
      final arg_destinationObject = 'foo';
      final arg_destinationPredefinedAcl = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_kmsKeyName = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ComposeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComposeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationBucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/compose', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationObject'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/compose'),
        );
        pathOffset += 8;

        final query = req.url.query;
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
          queryMap['destinationPredefinedAcl']!.first,
          unittest.equals(arg_destinationPredefinedAcl),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['kmsKeyName']!.first,
          unittest.equals(arg_kmsKeyName),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.compose(
          arg_request, arg_destinationBucket, arg_destinationObject,
          destinationPredefinedAcl: arg_destinationPredefinedAcl,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          kmsKeyName: arg_kmsKeyName,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--copy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildObject();
      final arg_sourceBucket = 'foo';
      final arg_sourceObject = 'foo';
      final arg_destinationBucket = 'foo';
      final arg_destinationObject = 'foo';
      final arg_destinationKmsKeyName = 'foo';
      final arg_destinationPredefinedAcl = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_ifSourceGenerationMatch = 'foo';
      final arg_ifSourceGenerationNotMatch = 'foo';
      final arg_ifSourceMetagenerationMatch = 'foo';
      final arg_ifSourceMetagenerationNotMatch = 'foo';
      final arg_projection = 'foo';
      final arg_sourceGeneration = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Object.fromJson(json as core.Map<core.String, core.dynamic>);
        checkObject(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sourceBucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/copyTo/b/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sourceObject'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/copyTo/b/'),
        );
        pathOffset += 10;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationBucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationObject'),
        );

        final query = req.url.query;
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
          queryMap['destinationKmsKeyName']!.first,
          unittest.equals(arg_destinationKmsKeyName),
        );
        unittest.expect(
          queryMap['destinationPredefinedAcl']!.first,
          unittest.equals(arg_destinationPredefinedAcl),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifSourceGenerationMatch']!.first,
          unittest.equals(arg_ifSourceGenerationMatch),
        );
        unittest.expect(
          queryMap['ifSourceGenerationNotMatch']!.first,
          unittest.equals(arg_ifSourceGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifSourceMetagenerationMatch']!.first,
          unittest.equals(arg_ifSourceMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifSourceMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifSourceMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['sourceGeneration']!.first,
          unittest.equals(arg_sourceGeneration),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.copy(arg_request, arg_sourceBucket,
          arg_sourceObject, arg_destinationBucket, arg_destinationObject,
          destinationKmsKeyName: arg_destinationKmsKeyName,
          destinationPredefinedAcl: arg_destinationPredefinedAcl,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          ifSourceGenerationMatch: arg_ifSourceGenerationMatch,
          ifSourceGenerationNotMatch: arg_ifSourceGenerationNotMatch,
          ifSourceMetagenerationMatch: arg_ifSourceMetagenerationMatch,
          ifSourceMetagenerationNotMatch: arg_ifSourceMetagenerationNotMatch,
          projection: arg_projection,
          sourceGeneration: arg_sourceGeneration,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_bucket, arg_object,
          generation: arg_generation,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          userProject: arg_userProject,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_projection = 'foo';
      final arg_softDeleted = true;
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['softDeleted']!.first,
          unittest.equals('$arg_softDeleted'),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_bucket, arg_object,
          generation: arg_generation,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          projection: arg_projection,
          softDeleted: arg_softDeleted,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/iam'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      final response = await res.getIamPolicy(arg_bucket, arg_object,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildObject();
      final arg_bucket = 'foo';
      final arg_contentEncoding = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_kmsKeyName = 'foo';
      final arg_name = 'foo';
      final arg_predefinedAcl = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Object.fromJson(json as core.Map<core.String, core.dynamic>);
        checkObject(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('/o'),
        );
        pathOffset += 2;

        final query = req.url.query;
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
          queryMap['contentEncoding']!.first,
          unittest.equals(arg_contentEncoding),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['kmsKeyName']!.first,
          unittest.equals(arg_kmsKeyName),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['predefinedAcl']!.first,
          unittest.equals(arg_predefinedAcl),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_bucket,
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
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_bucket = 'foo';
      final arg_delimiter = 'foo';
      final arg_endOffset = 'foo';
      final arg_includeFoldersAsPrefixes = true;
      final arg_includeTrailingDelimiter = true;
      final arg_matchGlob = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_prefix = 'foo';
      final arg_projection = 'foo';
      final arg_softDeleted = true;
      final arg_startOffset = 'foo';
      final arg_userProject = 'foo';
      final arg_versions = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('/o'),
        );
        pathOffset += 2;

        final query = req.url.query;
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
          queryMap['delimiter']!.first,
          unittest.equals(arg_delimiter),
        );
        unittest.expect(
          queryMap['endOffset']!.first,
          unittest.equals(arg_endOffset),
        );
        unittest.expect(
          queryMap['includeFoldersAsPrefixes']!.first,
          unittest.equals('$arg_includeFoldersAsPrefixes'),
        );
        unittest.expect(
          queryMap['includeTrailingDelimiter']!.first,
          unittest.equals('$arg_includeTrailingDelimiter'),
        );
        unittest.expect(
          queryMap['matchGlob']!.first,
          unittest.equals(arg_matchGlob),
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
          queryMap['prefix']!.first,
          unittest.equals(arg_prefix),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['softDeleted']!.first,
          unittest.equals('$arg_softDeleted'),
        );
        unittest.expect(
          queryMap['startOffset']!.first,
          unittest.equals(arg_startOffset),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['versions']!.first,
          unittest.equals('$arg_versions'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObjects());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          delimiter: arg_delimiter,
          endOffset: arg_endOffset,
          includeFoldersAsPrefixes: arg_includeFoldersAsPrefixes,
          includeTrailingDelimiter: arg_includeTrailingDelimiter,
          matchGlob: arg_matchGlob,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          prefix: arg_prefix,
          projection: arg_projection,
          softDeleted: arg_softDeleted,
          startOffset: arg_startOffset,
          userProject: arg_userProject,
          versions: arg_versions,
          $fields: arg_$fields);
      checkObjects(response as api.Objects);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildObject();
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_overrideUnlockedRetention = true;
      final arg_predefinedAcl = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Object.fromJson(json as core.Map<core.String, core.dynamic>);
        checkObject(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['overrideUnlockedRetention']!.first,
          unittest.equals('$arg_overrideUnlockedRetention'),
        );
        unittest.expect(
          queryMap['predefinedAcl']!.first,
          unittest.equals(arg_predefinedAcl),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_bucket, arg_object,
          generation: arg_generation,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          overrideUnlockedRetention: arg_overrideUnlockedRetention,
          predefinedAcl: arg_predefinedAcl,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_copySourceAcl = true;
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/restore', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/restore'),
        );
        pathOffset += 8;

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['copySourceAcl']!.first,
          unittest.equals('$arg_copySourceAcl'),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.restore(arg_bucket, arg_object, arg_generation,
          copySourceAcl: arg_copySourceAcl,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--rewrite', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildObject();
      final arg_sourceBucket = 'foo';
      final arg_sourceObject = 'foo';
      final arg_destinationBucket = 'foo';
      final arg_destinationObject = 'foo';
      final arg_destinationKmsKeyName = 'foo';
      final arg_destinationPredefinedAcl = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_ifSourceGenerationMatch = 'foo';
      final arg_ifSourceGenerationNotMatch = 'foo';
      final arg_ifSourceMetagenerationMatch = 'foo';
      final arg_ifSourceMetagenerationNotMatch = 'foo';
      final arg_maxBytesRewrittenPerCall = 'foo';
      final arg_projection = 'foo';
      final arg_rewriteToken = 'foo';
      final arg_sourceGeneration = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Object.fromJson(json as core.Map<core.String, core.dynamic>);
        checkObject(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sourceBucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/rewriteTo/b/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sourceObject'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/rewriteTo/b/'),
        );
        pathOffset += 13;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationBucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_destinationObject'),
        );

        final query = req.url.query;
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
          queryMap['destinationKmsKeyName']!.first,
          unittest.equals(arg_destinationKmsKeyName),
        );
        unittest.expect(
          queryMap['destinationPredefinedAcl']!.first,
          unittest.equals(arg_destinationPredefinedAcl),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifSourceGenerationMatch']!.first,
          unittest.equals(arg_ifSourceGenerationMatch),
        );
        unittest.expect(
          queryMap['ifSourceGenerationNotMatch']!.first,
          unittest.equals(arg_ifSourceGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifSourceMetagenerationMatch']!.first,
          unittest.equals(arg_ifSourceMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifSourceMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifSourceMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['maxBytesRewrittenPerCall']!.first,
          unittest.equals(arg_maxBytesRewrittenPerCall),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['rewriteToken']!.first,
          unittest.equals(arg_rewriteToken),
        );
        unittest.expect(
          queryMap['sourceGeneration']!.first,
          unittest.equals(arg_sourceGeneration),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRewriteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rewrite(arg_request, arg_sourceBucket,
          arg_sourceObject, arg_destinationBucket, arg_destinationObject,
          destinationKmsKeyName: arg_destinationKmsKeyName,
          destinationPredefinedAcl: arg_destinationPredefinedAcl,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          ifSourceGenerationMatch: arg_ifSourceGenerationMatch,
          ifSourceGenerationNotMatch: arg_ifSourceGenerationNotMatch,
          ifSourceMetagenerationMatch: arg_ifSourceMetagenerationMatch,
          ifSourceMetagenerationNotMatch: arg_ifSourceMetagenerationNotMatch,
          maxBytesRewrittenPerCall: arg_maxBytesRewrittenPerCall,
          projection: arg_projection,
          rewriteToken: arg_rewriteToken,
          sourceGeneration: arg_sourceGeneration,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkRewriteResponse(response as api.RewriteResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildPolicy();
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/iam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/iam'),
        );
        pathOffset += 4;

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      final response = await res.setIamPolicy(
          arg_request, arg_bucket, arg_object,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_permissions = buildUnnamed39();
      final arg_generation = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        index = path.indexOf('/iam/testPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/iam/testPermissions'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
          queryMap['permissions']!,
          unittest.equals(arg_permissions),
        );
        unittest.expect(
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
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
      final response = await res.testIamPermissions(
          arg_bucket, arg_object, arg_permissions,
          generation: arg_generation,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildObject();
      final arg_bucket = 'foo';
      final arg_object = 'foo';
      final arg_generation = 'foo';
      final arg_ifGenerationMatch = 'foo';
      final arg_ifGenerationNotMatch = 'foo';
      final arg_ifMetagenerationMatch = 'foo';
      final arg_ifMetagenerationNotMatch = 'foo';
      final arg_overrideUnlockedRetention = true;
      final arg_predefinedAcl = 'foo';
      final arg_projection = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Object.fromJson(json as core.Map<core.String, core.dynamic>);
        checkObject(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('/o/'),
        );
        pathOffset += 3;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_object'),
        );

        final query = req.url.query;
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
          queryMap['generation']!.first,
          unittest.equals(arg_generation),
        );
        unittest.expect(
          queryMap['ifGenerationMatch']!.first,
          unittest.equals(arg_ifGenerationMatch),
        );
        unittest.expect(
          queryMap['ifGenerationNotMatch']!.first,
          unittest.equals(arg_ifGenerationNotMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationMatch']!.first,
          unittest.equals(arg_ifMetagenerationMatch),
        );
        unittest.expect(
          queryMap['ifMetagenerationNotMatch']!.first,
          unittest.equals(arg_ifMetagenerationNotMatch),
        );
        unittest.expect(
          queryMap['overrideUnlockedRetention']!.first,
          unittest.equals('$arg_overrideUnlockedRetention'),
        );
        unittest.expect(
          queryMap['predefinedAcl']!.first,
          unittest.equals(arg_predefinedAcl),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_bucket, arg_object,
          generation: arg_generation,
          ifGenerationMatch: arg_ifGenerationMatch,
          ifGenerationNotMatch: arg_ifGenerationNotMatch,
          ifMetagenerationMatch: arg_ifMetagenerationMatch,
          ifMetagenerationNotMatch: arg_ifMetagenerationNotMatch,
          overrideUnlockedRetention: arg_overrideUnlockedRetention,
          predefinedAcl: arg_predefinedAcl,
          projection: arg_projection,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkObject(response as api.Object);
    });

    unittest.test('method--watchAll', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).objects;
      final arg_request = buildChannel();
      final arg_bucket = 'foo';
      final arg_delimiter = 'foo';
      final arg_endOffset = 'foo';
      final arg_includeTrailingDelimiter = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_prefix = 'foo';
      final arg_projection = 'foo';
      final arg_startOffset = 'foo';
      final arg_userProject = 'foo';
      final arg_versions = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/o/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/o/watch'),
        );
        pathOffset += 8;

        final query = req.url.query;
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
          queryMap['delimiter']!.first,
          unittest.equals(arg_delimiter),
        );
        unittest.expect(
          queryMap['endOffset']!.first,
          unittest.equals(arg_endOffset),
        );
        unittest.expect(
          queryMap['includeTrailingDelimiter']!.first,
          unittest.equals('$arg_includeTrailingDelimiter'),
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
          queryMap['prefix']!.first,
          unittest.equals(arg_prefix),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['startOffset']!.first,
          unittest.equals(arg_startOffset),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['versions']!.first,
          unittest.equals('$arg_versions'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watchAll(arg_request, arg_bucket,
          delimiter: arg_delimiter,
          endOffset: arg_endOffset,
          includeTrailingDelimiter: arg_includeTrailingDelimiter,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          prefix: arg_prefix,
          projection: arg_projection,
          startOffset: arg_startOffset,
          userProject: arg_userProject,
          versions: arg_versions,
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).operations;
      final arg_bucket = 'foo';
      final arg_operationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        index = path.indexOf('/cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/cancel'),
        );
        pathOffset += 7;

        final query = req.url.query;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.cancel(arg_bucket, arg_operationId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).operations;
      final arg_bucket = 'foo';
      final arg_operationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
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
          unittest.equals('$arg_operationId'),
        );

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_bucket, arg_operationId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).operations;
      final arg_bucket = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 2),
          unittest.equals('b/'),
        );
        pathOffset += 2;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_bucket'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/operations'),
        );
        pathOffset += 11;

        final query = req.url.query;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_bucket,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsHmacKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).projects.hmacKeys;
      final arg_projectId = 'foo';
      final arg_serviceAccountEmail = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/hmacKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/hmacKeys'),
        );
        pathOffset += 9;

        final query = req.url.query;
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
          queryMap['serviceAccountEmail']!.first,
          unittest.equals(arg_serviceAccountEmail),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHmacKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_projectId, arg_serviceAccountEmail,
          userProject: arg_userProject, $fields: arg_$fields);
      checkHmacKey(response as api.HmacKey);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).projects.hmacKeys;
      final arg_projectId = 'foo';
      final arg_accessId = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/hmacKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/hmacKeys/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accessId'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
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
      await res.delete(arg_projectId, arg_accessId,
          userProject: arg_userProject, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).projects.hmacKeys;
      final arg_projectId = 'foo';
      final arg_accessId = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/hmacKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/hmacKeys/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accessId'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHmacKeyMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_accessId,
          userProject: arg_userProject, $fields: arg_$fields);
      checkHmacKeyMetadata(response as api.HmacKeyMetadata);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).projects.hmacKeys;
      final arg_projectId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_serviceAccountEmail = 'foo';
      final arg_showDeletedKeys = true;
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/hmacKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/hmacKeys'),
        );
        pathOffset += 9;

        final query = req.url.query;
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
          queryMap['serviceAccountEmail']!.first,
          unittest.equals(arg_serviceAccountEmail),
        );
        unittest.expect(
          queryMap['showDeletedKeys']!.first,
          unittest.equals('$arg_showDeletedKeys'),
        );
        unittest.expect(
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHmacKeysMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          serviceAccountEmail: arg_serviceAccountEmail,
          showDeletedKeys: arg_showDeletedKeys,
          userProject: arg_userProject,
          $fields: arg_$fields);
      checkHmacKeysMetadata(response as api.HmacKeysMetadata);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).projects.hmacKeys;
      final arg_request = buildHmacKeyMetadata();
      final arg_projectId = 'foo';
      final arg_accessId = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.HmacKeyMetadata.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkHmacKeyMetadata(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/hmacKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/hmacKeys/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accessId'),
        );

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHmacKeyMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_projectId, arg_accessId,
          userProject: arg_userProject, $fields: arg_$fields);
      checkHmacKeyMetadata(response as api.HmacKeyMetadata);
    });
  });

  unittest.group('resource-ProjectsServiceAccountResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageApi(mock).projects.serviceAccount;
      final arg_projectId = 'foo';
      final arg_userProject = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('storage/v1/'),
        );
        pathOffset += 11;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/serviceAccount', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/serviceAccount'),
        );
        pathOffset += 15;

        final query = req.url.query;
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
          queryMap['userProject']!.first,
          unittest.equals(arg_userProject),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId,
          userProject: arg_userProject, $fields: arg_$fields);
      checkServiceAccount(response as api.ServiceAccount);
    });
  });
}
