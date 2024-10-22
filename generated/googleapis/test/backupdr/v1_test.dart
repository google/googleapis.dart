// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/backupdr/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbandonBackupRequest = 0;
api.AbandonBackupRequest buildAbandonBackupRequest() {
  final o = api.AbandonBackupRequest();
  buildCounterAbandonBackupRequest++;
  if (buildCounterAbandonBackupRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterAbandonBackupRequest--;
  return o;
}

void checkAbandonBackupRequest(api.AbandonBackupRequest o) {
  buildCounterAbandonBackupRequest++;
  if (buildCounterAbandonBackupRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAbandonBackupRequest--;
}

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 42;
    o.acceleratorType = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(
      o.acceleratorCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.acceleratorType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAccessConfig = 0;
api.AccessConfig buildAccessConfig() {
  final o = api.AccessConfig();
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    o.externalIpv6 = 'foo';
    o.externalIpv6PrefixLength = 42;
    o.name = 'foo';
    o.natIP = 'foo';
    o.networkTier = 'foo';
    o.publicPtrDomainName = 'foo';
    o.setPublicPtr = true;
    o.type = 'foo';
  }
  buildCounterAccessConfig--;
  return o;
}

void checkAccessConfig(api.AccessConfig o) {
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    unittest.expect(
      o.externalIpv6!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalIpv6PrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.natIP!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicPtrDomainName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.setPublicPtr!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessConfig--;
}

core.int buildCounterAdvancedMachineFeatures = 0;
api.AdvancedMachineFeatures buildAdvancedMachineFeatures() {
  final o = api.AdvancedMachineFeatures();
  buildCounterAdvancedMachineFeatures++;
  if (buildCounterAdvancedMachineFeatures < 3) {
    o.enableNestedVirtualization = true;
    o.enableUefiNetworking = true;
    o.threadsPerCore = 42;
    o.visibleCoreCount = 42;
  }
  buildCounterAdvancedMachineFeatures--;
  return o;
}

void checkAdvancedMachineFeatures(api.AdvancedMachineFeatures o) {
  buildCounterAdvancedMachineFeatures++;
  if (buildCounterAdvancedMachineFeatures < 3) {
    unittest.expect(o.enableNestedVirtualization!, unittest.isTrue);
    unittest.expect(o.enableUefiNetworking!, unittest.isTrue);
    unittest.expect(
      o.threadsPerCore!,
      unittest.equals(42),
    );
    unittest.expect(
      o.visibleCoreCount!,
      unittest.equals(42),
    );
  }
  buildCounterAdvancedMachineFeatures--;
}

core.int buildCounterAliasIpRange = 0;
api.AliasIpRange buildAliasIpRange() {
  final o = api.AliasIpRange();
  buildCounterAliasIpRange++;
  if (buildCounterAliasIpRange < 3) {
    o.ipCidrRange = 'foo';
    o.subnetworkRangeName = 'foo';
  }
  buildCounterAliasIpRange--;
  return o;
}

void checkAliasIpRange(api.AliasIpRange o) {
  buildCounterAliasIpRange++;
  if (buildCounterAliasIpRange < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetworkRangeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAliasIpRange--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterAllocationAffinity = 0;
api.AllocationAffinity buildAllocationAffinity() {
  final o = api.AllocationAffinity();
  buildCounterAllocationAffinity++;
  if (buildCounterAllocationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed0();
  }
  buildCounterAllocationAffinity--;
  return o;
}

void checkAllocationAffinity(api.AllocationAffinity o) {
  buildCounterAllocationAffinity++;
  if (buildCounterAllocationAffinity < 3) {
    unittest.expect(
      o.consumeReservationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.values!);
  }
  buildCounterAllocationAffinity--;
}

core.List<api.GuestOsFeature> buildUnnamed1() => [
      buildGuestOsFeature(),
      buildGuestOsFeature(),
    ];

void checkUnnamed1(core.List<api.GuestOsFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestOsFeature(o[0]);
  checkGuestOsFeature(o[1]);
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

core.int buildCounterAttachedDisk = 0;
api.AttachedDisk buildAttachedDisk() {
  final o = api.AttachedDisk();
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    o.autoDelete = true;
    o.boot = true;
    o.deviceName = 'foo';
    o.diskEncryptionKey = buildCustomerEncryptionKey();
    o.diskInterface = 'foo';
    o.diskSizeGb = 'foo';
    o.diskType = 'foo';
    o.diskTypeDeprecated = 'foo';
    o.guestOsFeature = buildUnnamed1();
    o.index = 'foo';
    o.initializeParams = buildInitializeParams();
    o.kind = 'foo';
    o.license = buildUnnamed2();
    o.mode = 'foo';
    o.savedState = 'foo';
    o.source = 'foo';
    o.type = 'foo';
  }
  buildCounterAttachedDisk--;
  return o;
}

void checkAttachedDisk(api.AttachedDisk o) {
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    unittest.expect(o.autoDelete!, unittest.isTrue);
    unittest.expect(o.boot!, unittest.isTrue);
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
    checkCustomerEncryptionKey(o.diskEncryptionKey!);
    unittest.expect(
      o.diskInterface!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskTypeDeprecated!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.guestOsFeature!);
    unittest.expect(
      o.index!,
      unittest.equals('foo'),
    );
    checkInitializeParams(o.initializeParams!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.license!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.savedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachedDisk--;
}

core.List<api.AuditLogConfig> buildUnnamed3() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed3(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<api.BackupLock> buildUnnamed5() => [
      buildBackupLock(),
      buildBackupLock(),
    ];

void checkUnnamed5(core.List<api.BackupLock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupLock(o[0]);
  checkBackupLock(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.List<api.BackupLock> buildUnnamed7() => [
      buildBackupLock(),
      buildBackupLock(),
    ];

void checkUnnamed7(core.List<api.BackupLock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupLock(o[0]);
  checkBackupLock(o[1]);
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.backupApplianceBackupProperties = buildBackupApplianceBackupProperties();
    o.backupApplianceLocks = buildUnnamed5();
    o.backupType = 'foo';
    o.computeInstanceBackupProperties = buildComputeInstanceBackupProperties();
    o.consistencyTime = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.enforcedRetentionEndTime = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.gcpBackupPlanInfo = buildGCPBackupPlanInfo();
    o.labels = buildUnnamed6();
    o.name = 'foo';
    o.resourceSizeBytes = 'foo';
    o.serviceLocks = buildUnnamed7();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    checkBackupApplianceBackupProperties(o.backupApplianceBackupProperties!);
    checkUnnamed5(o.backupApplianceLocks!);
    unittest.expect(
      o.backupType!,
      unittest.equals('foo'),
    );
    checkComputeInstanceBackupProperties(o.computeInstanceBackupProperties!);
    unittest.expect(
      o.consistencyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enforcedRetentionEndTime!,
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
    checkGCPBackupPlanInfo(o.gcpBackupPlanInfo!);
    checkUnnamed6(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceSizeBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.serviceLocks!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackup--;
}

core.int buildCounterBackupApplianceBackupConfig = 0;
api.BackupApplianceBackupConfig buildBackupApplianceBackupConfig() {
  final o = api.BackupApplianceBackupConfig();
  buildCounterBackupApplianceBackupConfig++;
  if (buildCounterBackupApplianceBackupConfig < 3) {
    o.applicationName = 'foo';
    o.backupApplianceId = 'foo';
    o.backupApplianceName = 'foo';
    o.hostName = 'foo';
    o.slaId = 'foo';
    o.slpName = 'foo';
    o.sltName = 'foo';
  }
  buildCounterBackupApplianceBackupConfig--;
  return o;
}

void checkBackupApplianceBackupConfig(api.BackupApplianceBackupConfig o) {
  buildCounterBackupApplianceBackupConfig++;
  if (buildCounterBackupApplianceBackupConfig < 3) {
    unittest.expect(
      o.applicationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupApplianceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupApplianceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slpName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sltName!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupApplianceBackupConfig--;
}

core.int buildCounterBackupApplianceBackupProperties = 0;
api.BackupApplianceBackupProperties buildBackupApplianceBackupProperties() {
  final o = api.BackupApplianceBackupProperties();
  buildCounterBackupApplianceBackupProperties++;
  if (buildCounterBackupApplianceBackupProperties < 3) {
    o.finalizeTime = 'foo';
    o.generationId = 42;
    o.recoveryRangeEndTime = 'foo';
    o.recoveryRangeStartTime = 'foo';
  }
  buildCounterBackupApplianceBackupProperties--;
  return o;
}

void checkBackupApplianceBackupProperties(
    api.BackupApplianceBackupProperties o) {
  buildCounterBackupApplianceBackupProperties++;
  if (buildCounterBackupApplianceBackupProperties < 3) {
    unittest.expect(
      o.finalizeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generationId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.recoveryRangeEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryRangeStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupApplianceBackupProperties--;
}

core.int buildCounterBackupApplianceLockInfo = 0;
api.BackupApplianceLockInfo buildBackupApplianceLockInfo() {
  final o = api.BackupApplianceLockInfo();
  buildCounterBackupApplianceLockInfo++;
  if (buildCounterBackupApplianceLockInfo < 3) {
    o.backupApplianceId = 'foo';
    o.backupApplianceName = 'foo';
    o.backupImage = 'foo';
    o.jobName = 'foo';
    o.lockReason = 'foo';
    o.slaId = 'foo';
  }
  buildCounterBackupApplianceLockInfo--;
  return o;
}

void checkBackupApplianceLockInfo(api.BackupApplianceLockInfo o) {
  buildCounterBackupApplianceLockInfo++;
  if (buildCounterBackupApplianceLockInfo < 3) {
    unittest.expect(
      o.backupApplianceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupApplianceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lockReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slaId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupApplianceLockInfo--;
}

core.int buildCounterBackupConfigInfo = 0;
api.BackupConfigInfo buildBackupConfigInfo() {
  final o = api.BackupConfigInfo();
  buildCounterBackupConfigInfo++;
  if (buildCounterBackupConfigInfo < 3) {
    o.backupApplianceBackupConfig = buildBackupApplianceBackupConfig();
    o.gcpBackupConfig = buildGcpBackupConfig();
    o.lastBackupError = buildStatus();
    o.lastBackupState = 'foo';
    o.lastSuccessfulBackupConsistencyTime = 'foo';
  }
  buildCounterBackupConfigInfo--;
  return o;
}

void checkBackupConfigInfo(api.BackupConfigInfo o) {
  buildCounterBackupConfigInfo++;
  if (buildCounterBackupConfigInfo < 3) {
    checkBackupApplianceBackupConfig(o.backupApplianceBackupConfig!);
    checkGcpBackupConfig(o.gcpBackupConfig!);
    checkStatus(o.lastBackupError!);
    unittest.expect(
      o.lastBackupState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSuccessfulBackupConsistencyTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupConfigInfo--;
}

core.int buildCounterBackupLock = 0;
api.BackupLock buildBackupLock() {
  final o = api.BackupLock();
  buildCounterBackupLock++;
  if (buildCounterBackupLock < 3) {
    o.backupApplianceLockInfo = buildBackupApplianceLockInfo();
    o.lockUntilTime = 'foo';
    o.serviceLockInfo = buildServiceLockInfo();
  }
  buildCounterBackupLock--;
  return o;
}

void checkBackupLock(api.BackupLock o) {
  buildCounterBackupLock++;
  if (buildCounterBackupLock < 3) {
    checkBackupApplianceLockInfo(o.backupApplianceLockInfo!);
    unittest.expect(
      o.lockUntilTime!,
      unittest.equals('foo'),
    );
    checkServiceLockInfo(o.serviceLockInfo!);
  }
  buildCounterBackupLock--;
}

core.List<api.BackupRule> buildUnnamed8() => [
      buildBackupRule(),
      buildBackupRule(),
    ];

void checkUnnamed8(core.List<api.BackupRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupRule(o[0]);
  checkBackupRule(o[1]);
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterBackupPlan = 0;
api.BackupPlan buildBackupPlan() {
  final o = api.BackupPlan();
  buildCounterBackupPlan++;
  if (buildCounterBackupPlan < 3) {
    o.backupRules = buildUnnamed8();
    o.backupVault = 'foo';
    o.backupVaultServiceAccount = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed9();
    o.name = 'foo';
    o.resourceType = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBackupPlan--;
  return o;
}

void checkBackupPlan(api.BackupPlan o) {
  buildCounterBackupPlan++;
  if (buildCounterBackupPlan < 3) {
    checkUnnamed8(o.backupRules!);
    unittest.expect(
      o.backupVault!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupVaultServiceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupPlan--;
}

core.List<api.RuleConfigInfo> buildUnnamed10() => [
      buildRuleConfigInfo(),
      buildRuleConfigInfo(),
    ];

void checkUnnamed10(core.List<api.RuleConfigInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleConfigInfo(o[0]);
  checkRuleConfigInfo(o[1]);
}

core.int buildCounterBackupPlanAssociation = 0;
api.BackupPlanAssociation buildBackupPlanAssociation() {
  final o = api.BackupPlanAssociation();
  buildCounterBackupPlanAssociation++;
  if (buildCounterBackupPlanAssociation < 3) {
    o.backupPlan = 'foo';
    o.createTime = 'foo';
    o.dataSource = 'foo';
    o.name = 'foo';
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.rulesConfigInfo = buildUnnamed10();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBackupPlanAssociation--;
  return o;
}

void checkBackupPlanAssociation(api.BackupPlanAssociation o) {
  buildCounterBackupPlanAssociation++;
  if (buildCounterBackupPlanAssociation < 3) {
    unittest.expect(
      o.backupPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.rulesConfigInfo!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupPlanAssociation--;
}

core.int buildCounterBackupRule = 0;
api.BackupRule buildBackupRule() {
  final o = api.BackupRule();
  buildCounterBackupRule++;
  if (buildCounterBackupRule < 3) {
    o.backupRetentionDays = 42;
    o.ruleId = 'foo';
    o.standardSchedule = buildStandardSchedule();
  }
  buildCounterBackupRule--;
  return o;
}

void checkBackupRule(api.BackupRule o) {
  buildCounterBackupRule++;
  if (buildCounterBackupRule < 3) {
    unittest.expect(
      o.backupRetentionDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
    checkStandardSchedule(o.standardSchedule!);
  }
  buildCounterBackupRule--;
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.int buildCounterBackupVault = 0;
api.BackupVault buildBackupVault() {
  final o = api.BackupVault();
  buildCounterBackupVault++;
  if (buildCounterBackupVault < 3) {
    o.accessRestriction = 'foo';
    o.annotations = buildUnnamed11();
    o.backupCount = 'foo';
    o.backupMinimumEnforcedRetentionDuration = 'foo';
    o.createTime = 'foo';
    o.deletable = true;
    o.description = 'foo';
    o.effectiveTime = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed12();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.totalStoredBytes = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBackupVault--;
  return o;
}

void checkBackupVault(api.BackupVault o) {
  buildCounterBackupVault++;
  if (buildCounterBackupVault < 3) {
    unittest.expect(
      o.accessRestriction!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.annotations!);
    unittest.expect(
      o.backupCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupMinimumEnforcedRetentionDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deletable!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.effectiveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalStoredBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupVault--;
}

core.int buildCounterBackupWindow = 0;
api.BackupWindow buildBackupWindow() {
  final o = api.BackupWindow();
  buildCounterBackupWindow++;
  if (buildCounterBackupWindow < 3) {
    o.endHourOfDay = 42;
    o.startHourOfDay = 42;
  }
  buildCounterBackupWindow--;
  return o;
}

void checkBackupWindow(api.BackupWindow o) {
  buildCounterBackupWindow++;
  if (buildCounterBackupWindow < 3) {
    unittest.expect(
      o.endHourOfDay!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startHourOfDay!,
      unittest.equals(42),
    );
  }
  buildCounterBackupWindow--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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
    o.members = buildUnnamed13();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed13(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.List<api.AttachedDisk> buildUnnamed14() => [
      buildAttachedDisk(),
      buildAttachedDisk(),
    ];

void checkUnnamed14(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

core.List<api.AcceleratorConfig> buildUnnamed15() => [
      buildAcceleratorConfig(),
      buildAcceleratorConfig(),
    ];

void checkUnnamed15(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
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

core.List<api.NetworkInterface> buildUnnamed17() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed17(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

core.List<api.ServiceAccount> buildUnnamed18() => [
      buildServiceAccount(),
      buildServiceAccount(),
    ];

void checkUnnamed18(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterComputeInstanceBackupProperties = 0;
api.ComputeInstanceBackupProperties buildComputeInstanceBackupProperties() {
  final o = api.ComputeInstanceBackupProperties();
  buildCounterComputeInstanceBackupProperties++;
  if (buildCounterComputeInstanceBackupProperties < 3) {
    o.canIpForward = true;
    o.description = 'foo';
    o.disk = buildUnnamed14();
    o.guestAccelerator = buildUnnamed15();
    o.keyRevocationActionType = 'foo';
    o.labels = buildUnnamed16();
    o.machineType = 'foo';
    o.metadata = buildMetadata();
    o.minCpuPlatform = 'foo';
    o.networkInterface = buildUnnamed17();
    o.scheduling = buildScheduling();
    o.serviceAccount = buildUnnamed18();
    o.sourceInstance = 'foo';
    o.tags = buildTags();
  }
  buildCounterComputeInstanceBackupProperties--;
  return o;
}

void checkComputeInstanceBackupProperties(
    api.ComputeInstanceBackupProperties o) {
  buildCounterComputeInstanceBackupProperties++;
  if (buildCounterComputeInstanceBackupProperties < 3) {
    unittest.expect(o.canIpForward!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.disk!);
    checkUnnamed15(o.guestAccelerator!);
    unittest.expect(
      o.keyRevocationActionType!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkMetadata(o.metadata!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.networkInterface!);
    checkScheduling(o.scheduling!);
    checkUnnamed18(o.serviceAccount!);
    unittest.expect(
      o.sourceInstance!,
      unittest.equals('foo'),
    );
    checkTags(o.tags!);
  }
  buildCounterComputeInstanceBackupProperties--;
}

core.int buildCounterComputeInstanceDataSourceProperties = 0;
api.ComputeInstanceDataSourceProperties
    buildComputeInstanceDataSourceProperties() {
  final o = api.ComputeInstanceDataSourceProperties();
  buildCounterComputeInstanceDataSourceProperties++;
  if (buildCounterComputeInstanceDataSourceProperties < 3) {
    o.description = 'foo';
    o.machineType = 'foo';
    o.name = 'foo';
    o.totalDiskCount = 'foo';
    o.totalDiskSizeGb = 'foo';
  }
  buildCounterComputeInstanceDataSourceProperties--;
  return o;
}

void checkComputeInstanceDataSourceProperties(
    api.ComputeInstanceDataSourceProperties o) {
  buildCounterComputeInstanceDataSourceProperties++;
  if (buildCounterComputeInstanceDataSourceProperties < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalDiskCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalDiskSizeGb!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeInstanceDataSourceProperties--;
}

core.List<api.AttachedDisk> buildUnnamed19() => [
      buildAttachedDisk(),
      buildAttachedDisk(),
    ];

void checkUnnamed19(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

core.List<api.AcceleratorConfig> buildUnnamed20() => [
      buildAcceleratorConfig(),
      buildAcceleratorConfig(),
    ];

void checkUnnamed20(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkInterface> buildUnnamed22() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed22(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.List<api.ServiceAccount> buildUnnamed24() => [
      buildServiceAccount(),
      buildServiceAccount(),
    ];

void checkUnnamed24(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterComputeInstanceRestoreProperties = 0;
api.ComputeInstanceRestoreProperties buildComputeInstanceRestoreProperties() {
  final o = api.ComputeInstanceRestoreProperties();
  buildCounterComputeInstanceRestoreProperties++;
  if (buildCounterComputeInstanceRestoreProperties < 3) {
    o.advancedMachineFeatures = buildAdvancedMachineFeatures();
    o.canIpForward = true;
    o.confidentialInstanceConfig = buildConfidentialInstanceConfig();
    o.deletionProtection = true;
    o.description = 'foo';
    o.disks = buildUnnamed19();
    o.displayDevice = buildDisplayDevice();
    o.guestAccelerators = buildUnnamed20();
    o.hostname = 'foo';
    o.instanceEncryptionKey = buildCustomerEncryptionKey();
    o.keyRevocationActionType = 'foo';
    o.labels = buildUnnamed21();
    o.machineType = 'foo';
    o.metadata = buildMetadata();
    o.minCpuPlatform = 'foo';
    o.name = 'foo';
    o.networkInterfaces = buildUnnamed22();
    o.networkPerformanceConfig = buildNetworkPerformanceConfig();
    o.params = buildInstanceParams();
    o.privateIpv6GoogleAccess = 'foo';
    o.reservationAffinity = buildAllocationAffinity();
    o.resourcePolicies = buildUnnamed23();
    o.scheduling = buildScheduling();
    o.serviceAccounts = buildUnnamed24();
    o.tags = buildTags();
  }
  buildCounterComputeInstanceRestoreProperties--;
  return o;
}

void checkComputeInstanceRestoreProperties(
    api.ComputeInstanceRestoreProperties o) {
  buildCounterComputeInstanceRestoreProperties++;
  if (buildCounterComputeInstanceRestoreProperties < 3) {
    checkAdvancedMachineFeatures(o.advancedMachineFeatures!);
    unittest.expect(o.canIpForward!, unittest.isTrue);
    checkConfidentialInstanceConfig(o.confidentialInstanceConfig!);
    unittest.expect(o.deletionProtection!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.disks!);
    checkDisplayDevice(o.displayDevice!);
    checkUnnamed20(o.guestAccelerators!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkCustomerEncryptionKey(o.instanceEncryptionKey!);
    unittest.expect(
      o.keyRevocationActionType!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkMetadata(o.metadata!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.networkInterfaces!);
    checkNetworkPerformanceConfig(o.networkPerformanceConfig!);
    checkInstanceParams(o.params!);
    unittest.expect(
      o.privateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    checkAllocationAffinity(o.reservationAffinity!);
    checkUnnamed23(o.resourcePolicies!);
    checkScheduling(o.scheduling!);
    checkUnnamed24(o.serviceAccounts!);
    checkTags(o.tags!);
  }
  buildCounterComputeInstanceRestoreProperties--;
}

core.int buildCounterComputeInstanceTargetEnvironment = 0;
api.ComputeInstanceTargetEnvironment buildComputeInstanceTargetEnvironment() {
  final o = api.ComputeInstanceTargetEnvironment();
  buildCounterComputeInstanceTargetEnvironment++;
  if (buildCounterComputeInstanceTargetEnvironment < 3) {
    o.project = 'foo';
    o.zone = 'foo';
  }
  buildCounterComputeInstanceTargetEnvironment--;
  return o;
}

void checkComputeInstanceTargetEnvironment(
    api.ComputeInstanceTargetEnvironment o) {
  buildCounterComputeInstanceTargetEnvironment++;
  if (buildCounterComputeInstanceTargetEnvironment < 3) {
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeInstanceTargetEnvironment--;
}

core.int buildCounterConfidentialInstanceConfig = 0;
api.ConfidentialInstanceConfig buildConfidentialInstanceConfig() {
  final o = api.ConfidentialInstanceConfig();
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    o.enableConfidentialCompute = true;
  }
  buildCounterConfidentialInstanceConfig--;
  return o;
}

void checkConfidentialInstanceConfig(api.ConfidentialInstanceConfig o) {
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    unittest.expect(o.enableConfidentialCompute!, unittest.isTrue);
  }
  buildCounterConfidentialInstanceConfig--;
}

core.int buildCounterCustomerEncryptionKey = 0;
api.CustomerEncryptionKey buildCustomerEncryptionKey() {
  final o = api.CustomerEncryptionKey();
  buildCounterCustomerEncryptionKey++;
  if (buildCounterCustomerEncryptionKey < 3) {
    o.kmsKeyName = 'foo';
    o.kmsKeyServiceAccount = 'foo';
    o.rawKey = 'foo';
    o.rsaEncryptedKey = 'foo';
  }
  buildCounterCustomerEncryptionKey--;
  return o;
}

void checkCustomerEncryptionKey(api.CustomerEncryptionKey o) {
  buildCounterCustomerEncryptionKey++;
  if (buildCounterCustomerEncryptionKey < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyServiceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rsaEncryptedKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerEncryptionKey--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.backupConfigInfo = buildBackupConfigInfo();
    o.backupCount = 'foo';
    o.configState = 'foo';
    o.createTime = 'foo';
    o.dataSourceBackupApplianceApplication =
        buildDataSourceBackupApplianceApplication();
    o.dataSourceGcpResource = buildDataSourceGcpResource();
    o.etag = 'foo';
    o.labels = buildUnnamed25();
    o.name = 'foo';
    o.state = 'foo';
    o.totalStoredBytes = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    checkBackupConfigInfo(o.backupConfigInfo!);
    unittest.expect(
      o.backupCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDataSourceBackupApplianceApplication(
        o.dataSourceBackupApplianceApplication!);
    checkDataSourceGcpResource(o.dataSourceGcpResource!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalStoredBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSource--;
}

core.int buildCounterDataSourceBackupApplianceApplication = 0;
api.DataSourceBackupApplianceApplication
    buildDataSourceBackupApplianceApplication() {
  final o = api.DataSourceBackupApplianceApplication();
  buildCounterDataSourceBackupApplianceApplication++;
  if (buildCounterDataSourceBackupApplianceApplication < 3) {
    o.applianceId = 'foo';
    o.applicationId = 'foo';
    o.applicationName = 'foo';
    o.backupAppliance = 'foo';
    o.hostId = 'foo';
    o.hostname = 'foo';
    o.type = 'foo';
  }
  buildCounterDataSourceBackupApplianceApplication--;
  return o;
}

void checkDataSourceBackupApplianceApplication(
    api.DataSourceBackupApplianceApplication o) {
  buildCounterDataSourceBackupApplianceApplication++;
  if (buildCounterDataSourceBackupApplianceApplication < 3) {
    unittest.expect(
      o.applianceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applicationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applicationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupAppliance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceBackupApplianceApplication--;
}

core.int buildCounterDataSourceGcpResource = 0;
api.DataSourceGcpResource buildDataSourceGcpResource() {
  final o = api.DataSourceGcpResource();
  buildCounterDataSourceGcpResource++;
  if (buildCounterDataSourceGcpResource < 3) {
    o.computeInstanceDatasourceProperties =
        buildComputeInstanceDataSourceProperties();
    o.gcpResourcename = 'foo';
    o.location = 'foo';
    o.type = 'foo';
  }
  buildCounterDataSourceGcpResource--;
  return o;
}

void checkDataSourceGcpResource(api.DataSourceGcpResource o) {
  buildCounterDataSourceGcpResource++;
  if (buildCounterDataSourceGcpResource < 3) {
    checkComputeInstanceDataSourceProperties(
        o.computeInstanceDatasourceProperties!);
    unittest.expect(
      o.gcpResourcename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceGcpResource--;
}

core.int buildCounterDisplayDevice = 0;
api.DisplayDevice buildDisplayDevice() {
  final o = api.DisplayDevice();
  buildCounterDisplayDevice++;
  if (buildCounterDisplayDevice < 3) {
    o.enableDisplay = true;
  }
  buildCounterDisplayDevice--;
  return o;
}

void checkDisplayDevice(api.DisplayDevice o) {
  buildCounterDisplayDevice++;
  if (buildCounterDisplayDevice < 3) {
    unittest.expect(o.enableDisplay!, unittest.isTrue);
  }
  buildCounterDisplayDevice--;
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

core.int buildCounterEntry = 0;
api.Entry buildEntry() {
  final o = api.Entry();
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterEntry--;
  return o;
}

void checkEntry(api.Entry o) {
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntry--;
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

core.int buildCounterFetchAccessTokenRequest = 0;
api.FetchAccessTokenRequest buildFetchAccessTokenRequest() {
  final o = api.FetchAccessTokenRequest();
  buildCounterFetchAccessTokenRequest++;
  if (buildCounterFetchAccessTokenRequest < 3) {
    o.generationId = 42;
  }
  buildCounterFetchAccessTokenRequest--;
  return o;
}

void checkFetchAccessTokenRequest(api.FetchAccessTokenRequest o) {
  buildCounterFetchAccessTokenRequest++;
  if (buildCounterFetchAccessTokenRequest < 3) {
    unittest.expect(
      o.generationId!,
      unittest.equals(42),
    );
  }
  buildCounterFetchAccessTokenRequest--;
}

core.int buildCounterFetchAccessTokenResponse = 0;
api.FetchAccessTokenResponse buildFetchAccessTokenResponse() {
  final o = api.FetchAccessTokenResponse();
  buildCounterFetchAccessTokenResponse++;
  if (buildCounterFetchAccessTokenResponse < 3) {
    o.expireTime = 'foo';
    o.readLocation = 'foo';
    o.token = 'foo';
    o.writeLocation = 'foo';
  }
  buildCounterFetchAccessTokenResponse--;
  return o;
}

void checkFetchAccessTokenResponse(api.FetchAccessTokenResponse o) {
  buildCounterFetchAccessTokenResponse++;
  if (buildCounterFetchAccessTokenResponse < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchAccessTokenResponse--;
}

core.List<api.BackupVault> buildUnnamed26() => [
      buildBackupVault(),
      buildBackupVault(),
    ];

void checkUnnamed26(core.List<api.BackupVault> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupVault(o[0]);
  checkBackupVault(o[1]);
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

core.int buildCounterFetchUsableBackupVaultsResponse = 0;
api.FetchUsableBackupVaultsResponse buildFetchUsableBackupVaultsResponse() {
  final o = api.FetchUsableBackupVaultsResponse();
  buildCounterFetchUsableBackupVaultsResponse++;
  if (buildCounterFetchUsableBackupVaultsResponse < 3) {
    o.backupVaults = buildUnnamed26();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed27();
  }
  buildCounterFetchUsableBackupVaultsResponse--;
  return o;
}

void checkFetchUsableBackupVaultsResponse(
    api.FetchUsableBackupVaultsResponse o) {
  buildCounterFetchUsableBackupVaultsResponse++;
  if (buildCounterFetchUsableBackupVaultsResponse < 3) {
    checkUnnamed26(o.backupVaults!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.unreachable!);
  }
  buildCounterFetchUsableBackupVaultsResponse--;
}

core.int buildCounterFinalizeBackupRequest = 0;
api.FinalizeBackupRequest buildFinalizeBackupRequest() {
  final o = api.FinalizeBackupRequest();
  buildCounterFinalizeBackupRequest++;
  if (buildCounterFinalizeBackupRequest < 3) {
    o.backupId = 'foo';
    o.consistencyTime = 'foo';
    o.description = 'foo';
    o.recoveryRangeEndTime = 'foo';
    o.recoveryRangeStartTime = 'foo';
    o.requestId = 'foo';
    o.retentionDuration = 'foo';
  }
  buildCounterFinalizeBackupRequest--;
  return o;
}

void checkFinalizeBackupRequest(api.FinalizeBackupRequest o) {
  buildCounterFinalizeBackupRequest++;
  if (buildCounterFinalizeBackupRequest < 3) {
    unittest.expect(
      o.backupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consistencyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryRangeEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryRangeStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retentionDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterFinalizeBackupRequest--;
}

core.int buildCounterGCPBackupPlanInfo = 0;
api.GCPBackupPlanInfo buildGCPBackupPlanInfo() {
  final o = api.GCPBackupPlanInfo();
  buildCounterGCPBackupPlanInfo++;
  if (buildCounterGCPBackupPlanInfo < 3) {
    o.backupPlan = 'foo';
    o.backupPlanRuleId = 'foo';
  }
  buildCounterGCPBackupPlanInfo--;
  return o;
}

void checkGCPBackupPlanInfo(api.GCPBackupPlanInfo o) {
  buildCounterGCPBackupPlanInfo++;
  if (buildCounterGCPBackupPlanInfo < 3) {
    unittest.expect(
      o.backupPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupPlanRuleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGCPBackupPlanInfo--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterGcpBackupConfig = 0;
api.GcpBackupConfig buildGcpBackupConfig() {
  final o = api.GcpBackupConfig();
  buildCounterGcpBackupConfig++;
  if (buildCounterGcpBackupConfig < 3) {
    o.backupPlan = 'foo';
    o.backupPlanAssociation = 'foo';
    o.backupPlanDescription = 'foo';
    o.backupPlanRules = buildUnnamed28();
  }
  buildCounterGcpBackupConfig--;
  return o;
}

void checkGcpBackupConfig(api.GcpBackupConfig o) {
  buildCounterGcpBackupConfig++;
  if (buildCounterGcpBackupConfig < 3) {
    unittest.expect(
      o.backupPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupPlanAssociation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupPlanDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.backupPlanRules!);
  }
  buildCounterGcpBackupConfig--;
}

core.int buildCounterGuestOsFeature = 0;
api.GuestOsFeature buildGuestOsFeature() {
  final o = api.GuestOsFeature();
  buildCounterGuestOsFeature++;
  if (buildCounterGuestOsFeature < 3) {
    o.type = 'foo';
  }
  buildCounterGuestOsFeature--;
  return o;
}

void checkGuestOsFeature(api.GuestOsFeature o) {
  buildCounterGuestOsFeature++;
  if (buildCounterGuestOsFeature < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuestOsFeature--;
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterInitializeParams = 0;
api.InitializeParams buildInitializeParams() {
  final o = api.InitializeParams();
  buildCounterInitializeParams++;
  if (buildCounterInitializeParams < 3) {
    o.diskName = 'foo';
    o.replicaZones = buildUnnamed29();
  }
  buildCounterInitializeParams--;
  return o;
}

void checkInitializeParams(api.InitializeParams o) {
  buildCounterInitializeParams++;
  if (buildCounterInitializeParams < 3) {
    unittest.expect(
      o.diskName!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.replicaZones!);
  }
  buildCounterInitializeParams--;
}

core.int buildCounterInitiateBackupRequest = 0;
api.InitiateBackupRequest buildInitiateBackupRequest() {
  final o = api.InitiateBackupRequest();
  buildCounterInitiateBackupRequest++;
  if (buildCounterInitiateBackupRequest < 3) {
    o.backupId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterInitiateBackupRequest--;
  return o;
}

void checkInitiateBackupRequest(api.InitiateBackupRequest o) {
  buildCounterInitiateBackupRequest++;
  if (buildCounterInitiateBackupRequest < 3) {
    unittest.expect(
      o.backupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInitiateBackupRequest--;
}

core.int buildCounterInitiateBackupResponse = 0;
api.InitiateBackupResponse buildInitiateBackupResponse() {
  final o = api.InitiateBackupResponse();
  buildCounterInitiateBackupResponse++;
  if (buildCounterInitiateBackupResponse < 3) {
    o.backup = 'foo';
    o.baseBackupGenerationId = 42;
    o.newBackupGenerationId = 42;
  }
  buildCounterInitiateBackupResponse--;
  return o;
}

void checkInitiateBackupResponse(api.InitiateBackupResponse o) {
  buildCounterInitiateBackupResponse++;
  if (buildCounterInitiateBackupResponse < 3) {
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseBackupGenerationId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.newBackupGenerationId!,
      unittest.equals(42),
    );
  }
  buildCounterInitiateBackupResponse--;
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

core.int buildCounterInstanceParams = 0;
api.InstanceParams buildInstanceParams() {
  final o = api.InstanceParams();
  buildCounterInstanceParams++;
  if (buildCounterInstanceParams < 3) {
    o.resourceManagerTags = buildUnnamed30();
  }
  buildCounterInstanceParams--;
  return o;
}

void checkInstanceParams(api.InstanceParams o) {
  buildCounterInstanceParams++;
  if (buildCounterInstanceParams < 3) {
    checkUnnamed30(o.resourceManagerTags!);
  }
  buildCounterInstanceParams--;
}

core.List<api.BackupPlanAssociation> buildUnnamed31() => [
      buildBackupPlanAssociation(),
      buildBackupPlanAssociation(),
    ];

void checkUnnamed31(core.List<api.BackupPlanAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupPlanAssociation(o[0]);
  checkBackupPlanAssociation(o[1]);
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.int buildCounterListBackupPlanAssociationsResponse = 0;
api.ListBackupPlanAssociationsResponse
    buildListBackupPlanAssociationsResponse() {
  final o = api.ListBackupPlanAssociationsResponse();
  buildCounterListBackupPlanAssociationsResponse++;
  if (buildCounterListBackupPlanAssociationsResponse < 3) {
    o.backupPlanAssociations = buildUnnamed31();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed32();
  }
  buildCounterListBackupPlanAssociationsResponse--;
  return o;
}

void checkListBackupPlanAssociationsResponse(
    api.ListBackupPlanAssociationsResponse o) {
  buildCounterListBackupPlanAssociationsResponse++;
  if (buildCounterListBackupPlanAssociationsResponse < 3) {
    checkUnnamed31(o.backupPlanAssociations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.unreachable!);
  }
  buildCounterListBackupPlanAssociationsResponse--;
}

core.List<api.BackupPlan> buildUnnamed33() => [
      buildBackupPlan(),
      buildBackupPlan(),
    ];

void checkUnnamed33(core.List<api.BackupPlan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupPlan(o[0]);
  checkBackupPlan(o[1]);
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

core.int buildCounterListBackupPlansResponse = 0;
api.ListBackupPlansResponse buildListBackupPlansResponse() {
  final o = api.ListBackupPlansResponse();
  buildCounterListBackupPlansResponse++;
  if (buildCounterListBackupPlansResponse < 3) {
    o.backupPlans = buildUnnamed33();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed34();
  }
  buildCounterListBackupPlansResponse--;
  return o;
}

void checkListBackupPlansResponse(api.ListBackupPlansResponse o) {
  buildCounterListBackupPlansResponse++;
  if (buildCounterListBackupPlansResponse < 3) {
    checkUnnamed33(o.backupPlans!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListBackupPlansResponse--;
}

core.List<api.BackupVault> buildUnnamed35() => [
      buildBackupVault(),
      buildBackupVault(),
    ];

void checkUnnamed35(core.List<api.BackupVault> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupVault(o[0]);
  checkBackupVault(o[1]);
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

core.int buildCounterListBackupVaultsResponse = 0;
api.ListBackupVaultsResponse buildListBackupVaultsResponse() {
  final o = api.ListBackupVaultsResponse();
  buildCounterListBackupVaultsResponse++;
  if (buildCounterListBackupVaultsResponse < 3) {
    o.backupVaults = buildUnnamed35();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed36();
  }
  buildCounterListBackupVaultsResponse--;
  return o;
}

void checkListBackupVaultsResponse(api.ListBackupVaultsResponse o) {
  buildCounterListBackupVaultsResponse++;
  if (buildCounterListBackupVaultsResponse < 3) {
    checkUnnamed35(o.backupVaults!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.unreachable!);
  }
  buildCounterListBackupVaultsResponse--;
}

core.List<api.Backup> buildUnnamed37() => [
      buildBackup(),
      buildBackup(),
    ];

void checkUnnamed37(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
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

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed37();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed38();
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed37(o.backups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.unreachable!);
  }
  buildCounterListBackupsResponse--;
}

core.List<api.DataSource> buildUnnamed39() => [
      buildDataSource(),
      buildDataSource(),
    ];

void checkUnnamed39(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.int buildCounterListDataSourcesResponse = 0;
api.ListDataSourcesResponse buildListDataSourcesResponse() {
  final o = api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSources = buildUnnamed39();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed40();
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

void checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed39(o.dataSources!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.unreachable!);
  }
  buildCounterListDataSourcesResponse--;
}

core.List<api.Location> buildUnnamed41() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed41(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed41();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed41(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.ManagementServer> buildUnnamed42() => [
      buildManagementServer(),
      buildManagementServer(),
    ];

void checkUnnamed42(core.List<api.ManagementServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagementServer(o[0]);
  checkManagementServer(o[1]);
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.int buildCounterListManagementServersResponse = 0;
api.ListManagementServersResponse buildListManagementServersResponse() {
  final o = api.ListManagementServersResponse();
  buildCounterListManagementServersResponse++;
  if (buildCounterListManagementServersResponse < 3) {
    o.managementServers = buildUnnamed42();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed43();
  }
  buildCounterListManagementServersResponse--;
  return o;
}

void checkListManagementServersResponse(api.ListManagementServersResponse o) {
  buildCounterListManagementServersResponse++;
  if (buildCounterListManagementServersResponse < 3) {
    checkUnnamed42(o.managementServers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.unreachable!);
  }
  buildCounterListManagementServersResponse--;
}

core.List<api.Operation> buildUnnamed44() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed44(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed44();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed45() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed45(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed46() => {
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

void checkUnnamed46(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed45();
    o.locationId = 'foo';
    o.metadata = buildUnnamed46();
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
    checkUnnamed45(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed48() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed48(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkConfig> buildUnnamed49() => [
      buildNetworkConfig(),
      buildNetworkConfig(),
    ];

void checkUnnamed49(core.List<api.NetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfig(o[0]);
  checkNetworkConfig(o[1]);
}

core.int buildCounterManagementServer = 0;
api.ManagementServer buildManagementServer() {
  final o = api.ManagementServer();
  buildCounterManagementServer++;
  if (buildCounterManagementServer < 3) {
    o.baProxyUri = buildUnnamed47();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed48();
    o.managementUri = buildManagementURI();
    o.name = 'foo';
    o.networks = buildUnnamed49();
    o.oauth2ClientId = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.workforceIdentityBasedManagementUri =
        buildWorkforceIdentityBasedManagementURI();
    o.workforceIdentityBasedOauth2ClientId =
        buildWorkforceIdentityBasedOAuth2ClientID();
  }
  buildCounterManagementServer--;
  return o;
}

void checkManagementServer(api.ManagementServer o) {
  buildCounterManagementServer++;
  if (buildCounterManagementServer < 3) {
    checkUnnamed47(o.baProxyUri!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.labels!);
    checkManagementURI(o.managementUri!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.networks!);
    unittest.expect(
      o.oauth2ClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkWorkforceIdentityBasedManagementURI(
        o.workforceIdentityBasedManagementUri!);
    checkWorkforceIdentityBasedOAuth2ClientID(
        o.workforceIdentityBasedOauth2ClientId!);
  }
  buildCounterManagementServer--;
}

core.int buildCounterManagementURI = 0;
api.ManagementURI buildManagementURI() {
  final o = api.ManagementURI();
  buildCounterManagementURI++;
  if (buildCounterManagementURI < 3) {
    o.api = 'foo';
    o.webUi = 'foo';
  }
  buildCounterManagementURI--;
  return o;
}

void checkManagementURI(api.ManagementURI o) {
  buildCounterManagementURI++;
  if (buildCounterManagementURI < 3) {
    unittest.expect(
      o.api!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webUi!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagementURI--;
}

core.List<api.Entry> buildUnnamed50() => [
      buildEntry(),
      buildEntry(),
    ];

void checkUnnamed50(core.List<api.Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntry(o[0]);
  checkEntry(o[1]);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.items = buildUnnamed50();
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed50(o.items!);
  }
  buildCounterMetadata--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.network = 'foo';
    o.peeringMode = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeringMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConfig--;
}

core.List<api.AccessConfig> buildUnnamed51() => [
      buildAccessConfig(),
      buildAccessConfig(),
    ];

void checkUnnamed51(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

core.List<api.AliasIpRange> buildUnnamed52() => [
      buildAliasIpRange(),
      buildAliasIpRange(),
    ];

void checkUnnamed52(core.List<api.AliasIpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAliasIpRange(o[0]);
  checkAliasIpRange(o[1]);
}

core.List<api.AccessConfig> buildUnnamed53() => [
      buildAccessConfig(),
      buildAccessConfig(),
    ];

void checkUnnamed53(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

core.int buildCounterNetworkInterface = 0;
api.NetworkInterface buildNetworkInterface() {
  final o = api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.accessConfigs = buildUnnamed51();
    o.aliasIpRanges = buildUnnamed52();
    o.internalIpv6PrefixLength = 42;
    o.ipv6AccessConfigs = buildUnnamed53();
    o.ipv6AccessType = 'foo';
    o.ipv6Address = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.networkAttachment = 'foo';
    o.networkIP = 'foo';
    o.nicType = 'foo';
    o.queueCount = 42;
    o.stackType = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterNetworkInterface--;
  return o;
}

void checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    checkUnnamed51(o.accessConfigs!);
    checkUnnamed52(o.aliasIpRanges!);
    unittest.expect(
      o.internalIpv6PrefixLength!,
      unittest.equals(42),
    );
    checkUnnamed53(o.ipv6AccessConfigs!);
    unittest.expect(
      o.ipv6AccessType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipv6Address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkAttachment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkIP!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nicType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queueCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stackType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkInterface--;
}

core.int buildCounterNetworkPerformanceConfig = 0;
api.NetworkPerformanceConfig buildNetworkPerformanceConfig() {
  final o = api.NetworkPerformanceConfig();
  buildCounterNetworkPerformanceConfig++;
  if (buildCounterNetworkPerformanceConfig < 3) {
    o.totalEgressBandwidthTier = 'foo';
  }
  buildCounterNetworkPerformanceConfig--;
  return o;
}

void checkNetworkPerformanceConfig(api.NetworkPerformanceConfig o) {
  buildCounterNetworkPerformanceConfig++;
  if (buildCounterNetworkPerformanceConfig < 3) {
    unittest.expect(
      o.totalEgressBandwidthTier!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkPerformanceConfig--;
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterNodeAffinity = 0;
api.NodeAffinity buildNodeAffinity() {
  final o = api.NodeAffinity();
  buildCounterNodeAffinity++;
  if (buildCounterNodeAffinity < 3) {
    o.key = 'foo';
    o.operator = 'foo';
    o.values = buildUnnamed54();
  }
  buildCounterNodeAffinity--;
  return o;
}

void checkNodeAffinity(api.NodeAffinity o) {
  buildCounterNodeAffinity++;
  if (buildCounterNodeAffinity < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.values!);
  }
  buildCounterNodeAffinity--;
}

core.Map<core.String, core.Object?> buildUnnamed55() => {
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

void checkUnnamed55(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed56() => {
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

void checkUnnamed56(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed55();
    o.name = 'foo';
    o.response = buildUnnamed56();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed55(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed57() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed57(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed58() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed58(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed57();
    o.bindings = buildUnnamed58();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed57(o.auditConfigs!);
    checkUnnamed58(o.bindings!);
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

core.int buildCounterRemoveDataSourceRequest = 0;
api.RemoveDataSourceRequest buildRemoveDataSourceRequest() {
  final o = api.RemoveDataSourceRequest();
  buildCounterRemoveDataSourceRequest++;
  if (buildCounterRemoveDataSourceRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterRemoveDataSourceRequest--;
  return o;
}

void checkRemoveDataSourceRequest(api.RemoveDataSourceRequest o) {
  buildCounterRemoveDataSourceRequest++;
  if (buildCounterRemoveDataSourceRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveDataSourceRequest--;
}

core.int buildCounterRestoreBackupRequest = 0;
api.RestoreBackupRequest buildRestoreBackupRequest() {
  final o = api.RestoreBackupRequest();
  buildCounterRestoreBackupRequest++;
  if (buildCounterRestoreBackupRequest < 3) {
    o.computeInstanceRestoreProperties =
        buildComputeInstanceRestoreProperties();
    o.computeInstanceTargetEnvironment =
        buildComputeInstanceTargetEnvironment();
    o.requestId = 'foo';
  }
  buildCounterRestoreBackupRequest--;
  return o;
}

void checkRestoreBackupRequest(api.RestoreBackupRequest o) {
  buildCounterRestoreBackupRequest++;
  if (buildCounterRestoreBackupRequest < 3) {
    checkComputeInstanceRestoreProperties(o.computeInstanceRestoreProperties!);
    checkComputeInstanceTargetEnvironment(o.computeInstanceTargetEnvironment!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreBackupRequest--;
}

core.int buildCounterRuleConfigInfo = 0;
api.RuleConfigInfo buildRuleConfigInfo() {
  final o = api.RuleConfigInfo();
  buildCounterRuleConfigInfo++;
  if (buildCounterRuleConfigInfo < 3) {
    o.lastBackupError = buildStatus();
    o.lastBackupState = 'foo';
    o.lastSuccessfulBackupConsistencyTime = 'foo';
    o.ruleId = 'foo';
  }
  buildCounterRuleConfigInfo--;
  return o;
}

void checkRuleConfigInfo(api.RuleConfigInfo o) {
  buildCounterRuleConfigInfo++;
  if (buildCounterRuleConfigInfo < 3) {
    checkStatus(o.lastBackupError!);
    unittest.expect(
      o.lastBackupState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSuccessfulBackupConsistencyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuleConfigInfo--;
}

core.List<api.NodeAffinity> buildUnnamed59() => [
      buildNodeAffinity(),
      buildNodeAffinity(),
    ];

void checkUnnamed59(core.List<api.NodeAffinity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeAffinity(o[0]);
  checkNodeAffinity(o[1]);
}

core.int buildCounterScheduling = 0;
api.Scheduling buildScheduling() {
  final o = api.Scheduling();
  buildCounterScheduling++;
  if (buildCounterScheduling < 3) {
    o.automaticRestart = true;
    o.instanceTerminationAction = 'foo';
    o.localSsdRecoveryTimeout = buildSchedulingDuration();
    o.minNodeCpus = 42;
    o.nodeAffinities = buildUnnamed59();
    o.onHostMaintenance = 'foo';
    o.preemptible = true;
    o.provisioningModel = 'foo';
  }
  buildCounterScheduling--;
  return o;
}

void checkScheduling(api.Scheduling o) {
  buildCounterScheduling++;
  if (buildCounterScheduling < 3) {
    unittest.expect(o.automaticRestart!, unittest.isTrue);
    unittest.expect(
      o.instanceTerminationAction!,
      unittest.equals('foo'),
    );
    checkSchedulingDuration(o.localSsdRecoveryTimeout!);
    unittest.expect(
      o.minNodeCpus!,
      unittest.equals(42),
    );
    checkUnnamed59(o.nodeAffinities!);
    unittest.expect(
      o.onHostMaintenance!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preemptible!, unittest.isTrue);
    unittest.expect(
      o.provisioningModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduling--;
}

core.int buildCounterSchedulingDuration = 0;
api.SchedulingDuration buildSchedulingDuration() {
  final o = api.SchedulingDuration();
  buildCounterSchedulingDuration++;
  if (buildCounterSchedulingDuration < 3) {
    o.nanos = 42;
    o.seconds = 'foo';
  }
  buildCounterSchedulingDuration--;
  return o;
}

void checkSchedulingDuration(api.SchedulingDuration o) {
  buildCounterSchedulingDuration++;
  if (buildCounterSchedulingDuration < 3) {
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedulingDuration--;
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scopes = buildUnnamed60();
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.scopes!);
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceLockInfo = 0;
api.ServiceLockInfo buildServiceLockInfo() {
  final o = api.ServiceLockInfo();
  buildCounterServiceLockInfo++;
  if (buildCounterServiceLockInfo < 3) {
    o.operation = 'foo';
  }
  buildCounterServiceLockInfo--;
  return o;
}

void checkServiceLockInfo(api.ServiceLockInfo o) {
  buildCounterServiceLockInfo++;
  if (buildCounterServiceLockInfo < 3) {
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceLockInfo--;
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

core.int buildCounterSetInternalStatusRequest = 0;
api.SetInternalStatusRequest buildSetInternalStatusRequest() {
  final o = api.SetInternalStatusRequest();
  buildCounterSetInternalStatusRequest++;
  if (buildCounterSetInternalStatusRequest < 3) {
    o.backupConfigState = 'foo';
    o.requestId = 'foo';
    o.value = 'foo';
  }
  buildCounterSetInternalStatusRequest--;
  return o;
}

void checkSetInternalStatusRequest(api.SetInternalStatusRequest o) {
  buildCounterSetInternalStatusRequest++;
  if (buildCounterSetInternalStatusRequest < 3) {
    unittest.expect(
      o.backupConfigState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetInternalStatusRequest--;
}

core.List<core.int> buildUnnamed61() => [
      42,
      42,
    ];

void checkUnnamed61(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.int buildCounterStandardSchedule = 0;
api.StandardSchedule buildStandardSchedule() {
  final o = api.StandardSchedule();
  buildCounterStandardSchedule++;
  if (buildCounterStandardSchedule < 3) {
    o.backupWindow = buildBackupWindow();
    o.daysOfMonth = buildUnnamed61();
    o.daysOfWeek = buildUnnamed62();
    o.hourlyFrequency = 42;
    o.months = buildUnnamed63();
    o.recurrenceType = 'foo';
    o.timeZone = 'foo';
    o.weekDayOfMonth = buildWeekDayOfMonth();
  }
  buildCounterStandardSchedule--;
  return o;
}

void checkStandardSchedule(api.StandardSchedule o) {
  buildCounterStandardSchedule++;
  if (buildCounterStandardSchedule < 3) {
    checkBackupWindow(o.backupWindow!);
    checkUnnamed61(o.daysOfMonth!);
    checkUnnamed62(o.daysOfWeek!);
    unittest.expect(
      o.hourlyFrequency!,
      unittest.equals(42),
    );
    checkUnnamed63(o.months!);
    unittest.expect(
      o.recurrenceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    checkWeekDayOfMonth(o.weekDayOfMonth!);
  }
  buildCounterStandardSchedule--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed65() => [
      buildUnnamed64(),
      buildUnnamed64(),
    ];

void checkUnnamed65(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed64(o[0]);
  checkUnnamed64(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed65();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed65(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.int buildCounterTags = 0;
api.Tags buildTags() {
  final o = api.Tags();
  buildCounterTags++;
  if (buildCounterTags < 3) {
    o.items = buildUnnamed66();
  }
  buildCounterTags--;
  return o;
}

void checkTags(api.Tags o) {
  buildCounterTags++;
  if (buildCounterTags < 3) {
    checkUnnamed66(o.items!);
  }
  buildCounterTags--;
}

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
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
    o.permissions = buildUnnamed67();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed67(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed68() => [
      'foo',
      'foo',
    ];

void checkUnnamed68(core.List<core.String> o) {
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
    o.permissions = buildUnnamed68();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed68(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTriggerBackupRequest = 0;
api.TriggerBackupRequest buildTriggerBackupRequest() {
  final o = api.TriggerBackupRequest();
  buildCounterTriggerBackupRequest++;
  if (buildCounterTriggerBackupRequest < 3) {
    o.requestId = 'foo';
    o.ruleId = 'foo';
  }
  buildCounterTriggerBackupRequest--;
  return o;
}

void checkTriggerBackupRequest(api.TriggerBackupRequest o) {
  buildCounterTriggerBackupRequest++;
  if (buildCounterTriggerBackupRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTriggerBackupRequest--;
}

core.int buildCounterWeekDayOfMonth = 0;
api.WeekDayOfMonth buildWeekDayOfMonth() {
  final o = api.WeekDayOfMonth();
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    o.dayOfWeek = 'foo';
    o.weekOfMonth = 'foo';
  }
  buildCounterWeekDayOfMonth--;
  return o;
}

void checkWeekDayOfMonth(api.WeekDayOfMonth o) {
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weekOfMonth!,
      unittest.equals('foo'),
    );
  }
  buildCounterWeekDayOfMonth--;
}

core.int buildCounterWorkforceIdentityBasedManagementURI = 0;
api.WorkforceIdentityBasedManagementURI
    buildWorkforceIdentityBasedManagementURI() {
  final o = api.WorkforceIdentityBasedManagementURI();
  buildCounterWorkforceIdentityBasedManagementURI++;
  if (buildCounterWorkforceIdentityBasedManagementURI < 3) {
    o.firstPartyManagementUri = 'foo';
    o.thirdPartyManagementUri = 'foo';
  }
  buildCounterWorkforceIdentityBasedManagementURI--;
  return o;
}

void checkWorkforceIdentityBasedManagementURI(
    api.WorkforceIdentityBasedManagementURI o) {
  buildCounterWorkforceIdentityBasedManagementURI++;
  if (buildCounterWorkforceIdentityBasedManagementURI < 3) {
    unittest.expect(
      o.firstPartyManagementUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thirdPartyManagementUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkforceIdentityBasedManagementURI--;
}

core.int buildCounterWorkforceIdentityBasedOAuth2ClientID = 0;
api.WorkforceIdentityBasedOAuth2ClientID
    buildWorkforceIdentityBasedOAuth2ClientID() {
  final o = api.WorkforceIdentityBasedOAuth2ClientID();
  buildCounterWorkforceIdentityBasedOAuth2ClientID++;
  if (buildCounterWorkforceIdentityBasedOAuth2ClientID < 3) {
    o.firstPartyOauth2ClientId = 'foo';
    o.thirdPartyOauth2ClientId = 'foo';
  }
  buildCounterWorkforceIdentityBasedOAuth2ClientID--;
  return o;
}

void checkWorkforceIdentityBasedOAuth2ClientID(
    api.WorkforceIdentityBasedOAuth2ClientID o) {
  buildCounterWorkforceIdentityBasedOAuth2ClientID++;
  if (buildCounterWorkforceIdentityBasedOAuth2ClientID < 3) {
    unittest.expect(
      o.firstPartyOauth2ClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thirdPartyOauth2ClientId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkforceIdentityBasedOAuth2ClientID--;
}

void main() {
  unittest.group('obj-schema-AbandonBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbandonBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbandonBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbandonBackupRequest(od);
    });
  });

  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-AccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessConfig(od);
    });
  });

  unittest.group('obj-schema-AdvancedMachineFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedMachineFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedMachineFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvancedMachineFeatures(od);
    });
  });

  unittest.group('obj-schema-AliasIpRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAliasIpRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AliasIpRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAliasIpRange(od);
    });
  });

  unittest.group('obj-schema-AllocationAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllocationAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllocationAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllocationAffinity(od);
    });
  });

  unittest.group('obj-schema-AttachedDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachedDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttachedDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachedDisk(od);
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

  unittest.group('obj-schema-Backup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Backup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackup(od);
    });
  });

  unittest.group('obj-schema-BackupApplianceBackupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupApplianceBackupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupApplianceBackupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupApplianceBackupConfig(od);
    });
  });

  unittest.group('obj-schema-BackupApplianceBackupProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupApplianceBackupProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupApplianceBackupProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupApplianceBackupProperties(od);
    });
  });

  unittest.group('obj-schema-BackupApplianceLockInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupApplianceLockInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupApplianceLockInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupApplianceLockInfo(od);
    });
  });

  unittest.group('obj-schema-BackupConfigInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupConfigInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupConfigInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupConfigInfo(od);
    });
  });

  unittest.group('obj-schema-BackupLock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupLock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BackupLock.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupLock(od);
    });
  });

  unittest.group('obj-schema-BackupPlan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupPlan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BackupPlan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupPlan(od);
    });
  });

  unittest.group('obj-schema-BackupPlanAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupPlanAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupPlanAssociation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupPlanAssociation(od);
    });
  });

  unittest.group('obj-schema-BackupRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BackupRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupRule(od);
    });
  });

  unittest.group('obj-schema-BackupVault', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupVault();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupVault.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupVault(od);
    });
  });

  unittest.group('obj-schema-BackupWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupWindow(od);
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

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeInstanceBackupProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInstanceBackupProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInstanceBackupProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeInstanceBackupProperties(od);
    });
  });

  unittest.group('obj-schema-ComputeInstanceDataSourceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInstanceDataSourceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInstanceDataSourceProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeInstanceDataSourceProperties(od);
    });
  });

  unittest.group('obj-schema-ComputeInstanceRestoreProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInstanceRestoreProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInstanceRestoreProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeInstanceRestoreProperties(od);
    });
  });

  unittest.group('obj-schema-ComputeInstanceTargetEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInstanceTargetEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInstanceTargetEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeInstanceTargetEnvironment(od);
    });
  });

  unittest.group('obj-schema-ConfidentialInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfidentialInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfidentialInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfidentialInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-CustomerEncryptionKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerEncryptionKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerEncryptionKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerEncryptionKey(od);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataSource(od);
    });
  });

  unittest.group('obj-schema-DataSourceBackupApplianceApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceBackupApplianceApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceBackupApplianceApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceBackupApplianceApplication(od);
    });
  });

  unittest.group('obj-schema-DataSourceGcpResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceGcpResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceGcpResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceGcpResource(od);
    });
  });

  unittest.group('obj-schema-DisplayDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplayDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisplayDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisplayDevice(od);
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

  unittest.group('obj-schema-Entry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntry(od);
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

  unittest.group('obj-schema-FetchAccessTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAccessTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAccessTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchAccessTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchAccessTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAccessTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAccessTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchAccessTokenResponse(od);
    });
  });

  unittest.group('obj-schema-FetchUsableBackupVaultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchUsableBackupVaultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchUsableBackupVaultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchUsableBackupVaultsResponse(od);
    });
  });

  unittest.group('obj-schema-FinalizeBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinalizeBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinalizeBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinalizeBackupRequest(od);
    });
  });

  unittest.group('obj-schema-GCPBackupPlanInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGCPBackupPlanInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GCPBackupPlanInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGCPBackupPlanInfo(od);
    });
  });

  unittest.group('obj-schema-GcpBackupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpBackupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpBackupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcpBackupConfig(od);
    });
  });

  unittest.group('obj-schema-GuestOsFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestOsFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestOsFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestOsFeature(od);
    });
  });

  unittest.group('obj-schema-InitializeParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitializeParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitializeParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitializeParams(od);
    });
  });

  unittest.group('obj-schema-InitiateBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitiateBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitiateBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitiateBackupRequest(od);
    });
  });

  unittest.group('obj-schema-InitiateBackupResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitiateBackupResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitiateBackupResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitiateBackupResponse(od);
    });
  });

  unittest.group('obj-schema-InstanceParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceParams(od);
    });
  });

  unittest.group('obj-schema-ListBackupPlanAssociationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupPlanAssociationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupPlanAssociationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupPlanAssociationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupPlansResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupPlansResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupPlansResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupPlansResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupVaultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupVaultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupVaultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupVaultsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDataSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDataSourcesResponse(od);
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

  unittest.group('obj-schema-ListManagementServersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListManagementServersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListManagementServersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListManagementServersResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
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

  unittest.group('obj-schema-ManagementServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagementServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagementServer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagementServer(od);
    });
  });

  unittest.group('obj-schema-ManagementURI', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagementURI();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagementURI.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagementURI(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkInterface(od);
    });
  });

  unittest.group('obj-schema-NetworkPerformanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPerformanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPerformanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPerformanceConfig(od);
    });
  });

  unittest.group('obj-schema-NodeAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeAffinity(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-RemoveDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDataSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreBackupRequest(od);
    });
  });

  unittest.group('obj-schema-RuleConfigInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleConfigInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuleConfigInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuleConfigInfo(od);
    });
  });

  unittest.group('obj-schema-Scheduling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Scheduling.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScheduling(od);
    });
  });

  unittest.group('obj-schema-SchedulingDuration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulingDuration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulingDuration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchedulingDuration(od);
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

  unittest.group('obj-schema-ServiceLockInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLockInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLockInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceLockInfo(od);
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

  unittest.group('obj-schema-SetInternalStatusRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetInternalStatusRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetInternalStatusRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetInternalStatusRequest(od);
    });
  });

  unittest.group('obj-schema-StandardSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardSchedule(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Tags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Tags.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTags(od);
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

  unittest.group('obj-schema-TriggerBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggerBackupRequest(od);
    });
  });

  unittest.group('obj-schema-WeekDayOfMonth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeekDayOfMonth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeekDayOfMonth.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeekDayOfMonth(od);
    });
  });

  unittest.group('obj-schema-WorkforceIdentityBasedManagementURI', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforceIdentityBasedManagementURI();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforceIdentityBasedManagementURI.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkforceIdentityBasedManagementURI(od);
    });
  });

  unittest.group('obj-schema-WorkforceIdentityBasedOAuth2ClientID', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforceIdentityBasedOAuth2ClientID();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforceIdentityBasedOAuth2ClientID.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkforceIdentityBasedOAuth2ClientID(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

  unittest.group('resource-ProjectsLocationsBackupPlanAssociationsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupPlanAssociations;
      final arg_request = buildBackupPlanAssociation();
      final arg_parent = 'foo';
      final arg_backupPlanAssociationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupPlanAssociation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupPlanAssociation(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['backupPlanAssociationId']!.first,
          unittest.equals(arg_backupPlanAssociationId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.create(arg_request, arg_parent,
          backupPlanAssociationId: arg_backupPlanAssociationId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupPlanAssociations;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupPlanAssociations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildBackupPlanAssociation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackupPlanAssociation(response as api.BackupPlanAssociation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupPlanAssociations;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            convert.json.encode(buildListBackupPlanAssociationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupPlanAssociationsResponse(
          response as api.ListBackupPlanAssociationsResponse);
    });

    unittest.test('method--triggerBackup', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupPlanAssociations;
      final arg_request = buildTriggerBackupRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TriggerBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTriggerBackupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.triggerBackup(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupPlansResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupPlans;
      final arg_request = buildBackupPlan();
      final arg_parent = 'foo';
      final arg_backupPlanId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupPlan.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupPlan(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['backupPlanId']!.first,
          unittest.equals(arg_backupPlanId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.create(arg_request, arg_parent,
          backupPlanId: arg_backupPlanId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupPlans;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupPlans;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildBackupPlan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackupPlan(response as api.BackupPlan);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupPlans;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListBackupPlansResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupPlansResponse(response as api.ListBackupPlansResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupVaultsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_request = buildBackupVault();
      final arg_parent = 'foo';
      final arg_backupVaultId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupVault.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupVault(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['backupVaultId']!.first,
          unittest.equals(arg_backupVaultId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(arg_request, arg_parent,
          backupVaultId: arg_backupVaultId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_ignoreBackupPlanReferences = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['ignoreBackupPlanReferences']!.first,
          unittest.equals('$arg_ignoreBackupPlanReferences'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          force: arg_force,
          ignoreBackupPlanReferences: arg_ignoreBackupPlanReferences,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchUsable', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
            convert.json.encode(buildFetchUsableBackupVaultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchUsable(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkFetchUsableBackupVaultsResponse(
          response as api.FetchUsableBackupVaultsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBackupVault());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkBackupVault(response as api.BackupVault);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBackupVaultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListBackupVaultsResponse(response as api.ListBackupVaultsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_request = buildBackupVault();
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupVault.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupVault(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(arg_request, arg_name,
          force: arg_force,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.backupVaults;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupVaultsDataSourcesResource',
      () {
    unittest.test('method--abandonBackup', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildAbandonBackupRequest();
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AbandonBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAbandonBackupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.abandonBackup(arg_request, arg_dataSource,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchAccessToken', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildFetchAccessTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchAccessTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildFetchAccessTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchAccessToken(arg_request, arg_name,
          $fields: arg_$fields);
      checkFetchAccessTokenResponse(response as api.FetchAccessTokenResponse);
    });

    unittest.test('method--finalizeBackup', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildFinalizeBackupRequest();
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FinalizeBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFinalizeBackupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.finalizeBackup(arg_request, arg_dataSource,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--initiateBackup', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildInitiateBackupRequest();
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InitiateBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInitiateBackupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildInitiateBackupResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.initiateBackup(arg_request, arg_dataSource,
          $fields: arg_$fields);
      checkInitiateBackupResponse(response as api.InitiateBackupResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListDataSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildDataSource();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DataSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDataSource(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildRemoveDataSourceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveDataSourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDataSourceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.remove(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setInternalStatus', () async {
      final mock = HttpServerMock();
      final res =
          api.BackupdrApi(mock).projects.locations.backupVaults.dataSources;
      final arg_request = buildSetInternalStatusRequest();
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetInternalStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetInternalStatusRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setInternalStatus(arg_request, arg_dataSource,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsBackupVaultsDataSourcesBackupsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock)
          .projects
          .locations
          .backupVaults
          .dataSources
          .backups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock)
          .projects
          .locations
          .backupVaults
          .dataSources
          .backups;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkBackup(response as api.Backup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock)
          .projects
          .locations
          .backupVaults
          .dataSources
          .backups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBackupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListBackupsResponse(response as api.ListBackupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock)
          .projects
          .locations
          .backupVaults
          .dataSources
          .backups;
      final arg_request = buildBackup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock)
          .projects
          .locations
          .backupVaults
          .dataSources
          .backups;
      final arg_request = buildRestoreBackupRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreBackupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsManagementServersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_request = buildManagementServer();
      final arg_parent = 'foo';
      final arg_managementServerId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagementServer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagementServer(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['managementServerId']!.first,
          unittest.equals(arg_managementServerId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.create(arg_request, arg_parent,
          managementServerId: arg_managementServerId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildManagementServer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkManagementServer(response as api.ManagementServer);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListManagementServersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListManagementServersResponse(
          response as api.ListManagementServersResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.managementServers;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BackupdrApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
